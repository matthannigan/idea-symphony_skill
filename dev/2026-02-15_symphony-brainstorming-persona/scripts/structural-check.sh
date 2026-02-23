#!/bin/bash
# structural-check.sh — Format compliance verification
# Checks each response file for: frontmatter, heading count, bullet count,
# questions addressed, total responses claimed
#
# Usage: bash scripts/structural-check.sh [YYYY-MM-DD]
# If no date provided, auto-detects the most recent persona-eval test run date.

REPO_ROOT="$(cd "$(dirname "$0")/../../../.." && pwd)"
TEST_DIR="$REPO_ROOT/test-runs"
DATE="${1:-}"

# Auto-detect most recent date if not provided
if [ -z "$DATE" ]; then
  DATE=$(ls -d "$TEST_DIR"/persona-eval-*/ 2>/dev/null \
    | sed 's|.*/persona-eval-.*_\([0-9-]*\)/|\1|' \
    | sort -ru | head -1)
  [ -z "$DATE" ] && echo "Error: No persona-eval test runs found in $TEST_DIR" && exit 1
  echo "Auto-detected date: $DATE"
fi

SESSIONS=(
  "persona-eval-space-party_$DATE"
  "persona-eval-tool-library_$DATE"
  "persona-eval-habit-tracker_$DATE"
)

echo "============================================"
echo "STRUCTURAL CHECK — FORMAT COMPLIANCE"
echo "Generated: $(date '+%Y-%m-%d %H:%M')"
echo "============================================"
echo ""

# --- Section 1: Per-file structural metrics ---
echo "=== FILE STRUCTURE METRICS ==="
echo "session|cluster|persona|has_frontmatter|h2_count|bullet_count|claimed_questions|claimed_responses"

issues=()

for session in "${SESSIONS[@]}"; do
  resp_dir="$TEST_DIR/$session/responses"
  [ -d "$resp_dir" ] || continue

  for file in $(find "$resp_dir" -name "*.md" -type f | sort); do
    cluster=$(basename "$(dirname "$file")")
    persona=$(basename "$file" .md)

    # Check frontmatter (starts with ---)
    has_fm="no"
    head -1 "$file" | grep -q "^---" && has_fm="yes"

    # Count ## headings (questions)
    h2_count=$(grep -c "^## " "$file")

    # Count bullet points (* **...)
    bullet_count=$(grep -c "^\* \*\*" "$file")

    # Extract claimed counts from footer
    claimed_q=$(grep -o "Questions addressed.*: [0-9]*" "$file" | grep -o "[0-9]*$" || echo "n/a")
    claimed_r=$(grep -o "Total responses.*: [0-9]*" "$file" | grep -o "[0-9]*$" || echo "n/a")

    [ -z "$claimed_q" ] && claimed_q="n/a"
    [ -z "$claimed_r" ] && claimed_r="n/a"

    echo "$session|$cluster|$persona|$has_fm|$h2_count|$bullet_count|$claimed_q|$claimed_r"

    # Flag issues
    if [ "$has_fm" = "no" ]; then
      issues+=("MISSING FRONTMATTER: $session/$cluster/$persona")
    fi
    if [ "$h2_count" -lt 2 ]; then
      issues+=("LOW HEADING COUNT ($h2_count): $session/$cluster/$persona")
    fi
    if [ "$bullet_count" -lt 3 ]; then
      issues+=("LOW BULLET COUNT ($bullet_count): $session/$cluster/$persona")
    fi
  done
done

echo ""

# --- Section 2: Summary statistics ---
echo "=== SUMMARY ==="

total_files=$(find "$TEST_DIR"/persona-eval-*_$DATE/responses -name "*.md" -type f | wc -l | tr -d ' ')
fm_count=0
total_h2=0
total_bullets=0

for session in "${SESSIONS[@]}"; do
  resp_dir="$TEST_DIR/$session/responses"
  [ -d "$resp_dir" ] || continue

  for file in $(find "$resp_dir" -name "*.md" -type f); do
    head -1 "$file" | grep -q "^---" && fm_count=$((fm_count + 1))
    h2=$(grep -c "^## " "$file")
    bullets=$(grep -c "^\* \*\*" "$file")
    total_h2=$((total_h2 + h2))
    total_bullets=$((total_bullets + bullets))
  done
done

avg_h2=$(echo "scale=1; $total_h2 / $total_files" | bc)
avg_bullets=$(echo "scale=1; $total_bullets / $total_files" | bc)

echo "Total files: $total_files"
echo "Files with frontmatter: $fm_count / $total_files"
echo "Total ## headings: $total_h2 (avg: $avg_h2 per file)"
echo "Total bullet responses: $total_bullets (avg: $avg_bullets per file)"

echo ""

# --- Section 3: Issues ---
echo "=== FLAGGED ISSUES ==="

if [ ${#issues[@]} -eq 0 ]; then
  echo "No issues found."
else
  for issue in "${issues[@]}"; do
    echo "  ! $issue"
  done
fi

echo ""

# --- Section 4: Heading count distribution ---
echo "=== HEADING COUNT DISTRIBUTION ==="
echo "h2_count|file_count"

for session in "${SESSIONS[@]}"; do
  resp_dir="$TEST_DIR/$session/responses"
  [ -d "$resp_dir" ] || continue

  for file in $(find "$resp_dir" -name "*.md" -type f); do
    grep -c "^## " "$file"
  done
done | sort -n | uniq -c | awk '{print $2"|"$1}'

echo ""

# --- Section 5: Bullet count distribution ---
echo "=== BULLET COUNT DISTRIBUTION ==="
echo "range|file_count"

for session in "${SESSIONS[@]}"; do
  resp_dir="$TEST_DIR/$session/responses"
  [ -d "$resp_dir" ] || continue

  for file in $(find "$resp_dir" -name "*.md" -type f); do
    bullets=$(grep -c "^\* \*\*" "$file")
    if [ "$bullets" -lt 5 ]; then
      echo "0-4"
    elif [ "$bullets" -lt 10 ]; then
      echo "5-9"
    elif [ "$bullets" -lt 15 ]; then
      echo "10-14"
    elif [ "$bullets" -lt 20 ]; then
      echo "15-19"
    elif [ "$bullets" -lt 25 ]; then
      echo "20-24"
    else
      echo "25+"
    fi
  done
done | sort | uniq -c | awk '{print $2"|"$1}'

#!/bin/bash
# question-structural-check.sh — Format compliance and structural metrics
# Checks each question file for: frontmatter, cluster count, question count,
# footer presence, claimed totals
#
# Usage: bash scripts/question-structural-check.sh [YYYY-MM-DD]
# If no date provided, auto-detects the most recent eval test run date.

REPO_ROOT="$(cd "$(dirname "$0")/../../../.." && pwd)"
TEST_DIR="$REPO_ROOT/test-runs/symphony-phase2-questions-persona-eval"
DATE="${1:-}"

# Auto-detect most recent date if not provided
if [ -z "$DATE" ]; then
  DATE=$(ls -d "$TEST_DIR"/*_*/ 2>/dev/null \
    | sed 's|.*/.*_\([0-9-]*\)/|\1|' \
    | sort -ru | head -1)
  [ -z "$DATE" ] && echo "Error: No question-gen eval test runs found in $TEST_DIR" && exit 1
  echo "Auto-detected date: $DATE"
fi

TOPICS=(
  "space-party"
  "tool-library"
  "habit-tracker"
)

echo "============================================"
echo "STRUCTURAL CHECK — FORMAT COMPLIANCE"
echo "Generated: $(date '+%Y-%m-%d %H:%M')"
echo "============================================"
echo ""

# --- Section 1: Per-file structural metrics ---
echo "=== FILE STRUCTURE METRICS ==="
echo "topic|persona|has_frontmatter|h2_count|question_count|has_footer|claimed_questions|claimed_clusters"

issues=()

for topic in "${TOPICS[@]}"; do
  by_persona="$TEST_DIR/${topic}_$DATE/questions/by-persona"
  [ -d "$by_persona" ] || continue

  for file in $(find "$by_persona" -name "*.md" -type f | sort); do
    persona=$(basename "$file" .md)

    # Check frontmatter (starts with ---)
    has_fm="no"
    head -1 "$file" | grep -q "^---" && has_fm="yes"

    # Count ## headings (topic clusters)
    h2_count=$(grep -c "^## " "$file")

    # Count questions: lines matching **[^*]+**: (bold-summary format)
    question_count=$(grep -cE '^\*\*[^*]+\*\*' "$file")

    # Check footer presence
    has_footer="no"
    grep -q '\*\*Total questions\*\*' "$file" && has_footer="yes"

    # Extract claimed counts from footer
    # Format: **Total questions**: N / **Topic clusters**: N
    claimed_q=$(grep -oE '\*\*Total questions\*\*:?\s*[0-9]+' "$file" | grep -oE '[0-9]+$' || echo "")
    claimed_c=$(grep -oE '\*\*Topic clusters\*\*:?\s*[0-9]+' "$file" | grep -oE '[0-9]+$' || echo "")

    [ -z "$claimed_q" ] && claimed_q="n/a"
    [ -z "$claimed_c" ] && claimed_c="n/a"

    echo "$topic|$persona|$has_fm|$h2_count|$question_count|$has_footer|$claimed_q|$claimed_c"

    # Flag issues
    if [ "$has_fm" = "no" ]; then
      issues+=("MISSING FRONTMATTER: $topic/$persona")
    fi
    if [ "$h2_count" -lt 2 ]; then
      issues+=("LOW CLUSTER COUNT ($h2_count): $topic/$persona")
    fi
    if [ "$has_footer" = "no" ]; then
      issues+=("MISSING FOOTER: $topic/$persona")
    fi
    # Check question count mismatch vs claimed
    if [ "$claimed_q" != "n/a" ] && [ "$question_count" != "$claimed_q" ]; then
      issues+=("QUESTION COUNT MISMATCH (actual=$question_count, claimed=$claimed_q): $topic/$persona")
    fi
  done
done

echo ""

# --- Section 2: Summary statistics ---
echo "=== SUMMARY ==="

total_files=0
fm_count=0
footer_count=0
total_h2=0
total_questions=0

for topic in "${TOPICS[@]}"; do
  by_persona="$TEST_DIR/${topic}_$DATE/questions/by-persona"
  [ -d "$by_persona" ] || continue

  for file in $(find "$by_persona" -name "*.md" -type f); do
    total_files=$((total_files + 1))
    head -1 "$file" | grep -q "^---" && fm_count=$((fm_count + 1))
    grep -q '\*\*Total questions\*\*' "$file" && footer_count=$((footer_count + 1))
    h2=$(grep -c "^## " "$file")
    questions=$(grep -cE '^\*\*[^*]+\*\*' "$file")
    total_h2=$((total_h2 + h2))
    total_questions=$((total_questions + questions))
  done
done

avg_h2=$(echo "scale=1; $total_h2 / $total_files" | bc)
avg_questions=$(echo "scale=1; $total_questions / $total_files" | bc)

echo "Total files: $total_files"
echo "Files with frontmatter: $fm_count / $total_files"
echo "Files with footer: $footer_count / $total_files"
echo "Total clusters (## headings): $total_h2 (avg: $avg_h2 per file)"
echo "Total questions: $total_questions (avg: $avg_questions per file)"

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

# --- Section 4: Cluster count distribution ---
echo "=== CLUSTER COUNT DISTRIBUTION ==="
echo "h2_count|file_count"

for topic in "${TOPICS[@]}"; do
  by_persona="$TEST_DIR/${topic}_$DATE/questions/by-persona"
  [ -d "$by_persona" ] || continue

  for file in $(find "$by_persona" -name "*.md" -type f); do
    grep -c "^## " "$file"
  done
done | sort -n | uniq -c | awk '{print $2"|"$1}'

echo ""

# --- Section 5: Question count distribution ---
echo "=== QUESTION COUNT DISTRIBUTION ==="
echo "range|file_count"

for topic in "${TOPICS[@]}"; do
  by_persona="$TEST_DIR/${topic}_$DATE/questions/by-persona"
  [ -d "$by_persona" ] || continue

  for file in $(find "$by_persona" -name "*.md" -type f); do
    questions=$(grep -cE '^\*\*[^*]+\*\*' "$file")
    if [ "$questions" -lt 10 ]; then
      echo "0-9"
    elif [ "$questions" -lt 15 ]; then
      echo "10-14"
    elif [ "$questions" -lt 18 ]; then
      echo "15-17"
    elif [ "$questions" -lt 21 ]; then
      echo "18-20"
    else
      echo "21+"
    fi
  done
done | sort | uniq -c | awk '{print $2"|"$1}'

#!/bin/bash
# question-stats.sh — Per-file size statistics for question generation eval
# Groups by topic and persona with averages
#
# Usage: bash scripts/question-stats.sh [YYYY-MM-DD]
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
echo "QUESTION GENERATION — FILE SIZE STATISTICS"
echo "Generated: $(date '+%Y-%m-%d %H:%M')"
echo "============================================"
echo ""

# --- Section 1: All files by topic ---
echo "=== ALL FILES BY TOPIC ==="
echo ""
for topic in "${TOPICS[@]}"; do
  by_persona="$TEST_DIR/${topic}_$DATE/questions/by-persona"
  if [ ! -d "$by_persona" ]; then
    echo "MISSING: $topic"
    continue
  fi

  file_count=$(find "$by_persona" -name "*.md" -type f | wc -l | tr -d ' ')
  total_bytes=$(find "$by_persona" -name "*.md" -type f -exec wc -c {} + | tail -1 | awk '{print $1}')
  total_kb=$(echo "scale=1; $total_bytes / 1024" | bc)
  avg_kb=$(echo "scale=1; $total_bytes / $file_count / 1024" | bc)

  echo "$topic"
  echo "  Files: $file_count | Total: ${total_kb}KB | Avg: ${avg_kb}KB"
  echo ""
done

# --- Section 2: Per-persona averages across all topics ---
echo "=== PER-PERSONA AVERAGES (all topics) ==="
echo "persona|files|total_bytes|avg_bytes|avg_kb"

# Collect all persona sizes into a temp file, then aggregate with awk
tmp_file="${TMPDIR:-/tmp/claude}/question_sizes_$$"
for topic in "${TOPICS[@]}"; do
  by_persona="$TEST_DIR/${topic}_$DATE/questions/by-persona"
  [ -d "$by_persona" ] || continue

  for file in $(find "$by_persona" -name "*.md" -type f); do
    persona=$(basename "$file" .md)
    size=$(wc -c < "$file" | tr -d ' ')
    echo "$persona $size"
  done
done > "$tmp_file"

awk '{
  bytes[$1] += $2
  count[$1]++
}
END {
  for (p in bytes) {
    avg = int(bytes[p] / count[p])
    avg_kb = sprintf("%.1f", avg / 1024)
    print p"|"count[p]"|"bytes[p]"|"avg"|"avg_kb
  }
}' "$tmp_file" | sort -t'|' -k4 -rn

rm -f "$tmp_file"

echo ""

# --- Section 3: Individual file listing ---
echo "=== INDIVIDUAL FILE SIZES ==="
echo "topic|persona|bytes|kb"

for topic in "${TOPICS[@]}"; do
  by_persona="$TEST_DIR/${topic}_$DATE/questions/by-persona"
  [ -d "$by_persona" ] || continue

  for file in $(find "$by_persona" -name "*.md" -type f | sort); do
    persona=$(basename "$file" .md)
    size=$(wc -c < "$file" | tr -d ' ')
    kb=$(echo "scale=1; $size / 1024" | bc)
    echo "$topic|$persona|$size|${kb}"
  done
done

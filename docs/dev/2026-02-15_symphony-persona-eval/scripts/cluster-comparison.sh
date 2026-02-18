#!/bin/bash
# cluster-comparison.sh — Cross-persona cluster analysis
# Shows how much content each topic cluster generated across all personas
# Identifies which clusters/topics produced the most/least content
#
# Usage: bash scripts/cluster-comparison.sh [YYYY-MM-DD]
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

SHORT_NAMES=(
  "space-party"
  "tool-library"
  "habit-tracker"
)

echo "============================================"
echo "CLUSTER COMPARISON — CROSS-PERSONA ANALYSIS"
echo "Generated: $(date '+%Y-%m-%d %H:%M')"
echo "============================================"
echo ""

# --- Section 1: Per-cluster stats ---
echo "=== CLUSTER STATISTICS ==="
echo "topic|cluster|files|total_kb|avg_kb|min_kb|max_kb"

for i in "${!SESSIONS[@]}"; do
  session="${SESSIONS[$i]}"
  short="${SHORT_NAMES[$i]}"
  resp_dir="$TEST_DIR/$session/responses"
  [ -d "$resp_dir" ] || continue

  for cluster_dir in "$resp_dir"/*/; do
    [ -d "$cluster_dir" ] || continue
    cluster=$(basename "$cluster_dir")

    sizes=()
    for file in $(find "$cluster_dir" -name "*.md" -type f); do
      size=$(wc -c < "$file" | tr -d ' ')
      sizes+=("$size")
    done

    count=${#sizes[@]}
    [ "$count" -eq 0 ] && continue

    sum=0; min=${sizes[0]}; max=${sizes[0]}
    for s in "${sizes[@]}"; do
      sum=$((sum + s))
      [ "$s" -lt "$min" ] && min=$s
      [ "$s" -gt "$max" ] && max=$s
    done
    avg=$((sum / count))

    total_kb=$(echo "scale=1; $sum / 1024" | bc)
    avg_kb=$(echo "scale=1; $avg / 1024" | bc)
    min_kb=$(echo "scale=1; $min / 1024" | bc)
    max_kb=$(echo "scale=1; $max / 1024" | bc)

    echo "$short|$cluster|$count|$total_kb|$avg_kb|$min_kb|$max_kb"
  done
done

echo ""

# --- Section 2: Topic-level totals ---
echo "=== TOPIC-LEVEL TOTALS ==="
echo "topic|files|total_kb|avg_file_kb"

for i in "${!SESSIONS[@]}"; do
  session="${SESSIONS[$i]}"
  short="${SHORT_NAMES[$i]}"
  resp_dir="$TEST_DIR/$session/responses"
  [ -d "$resp_dir" ] || continue

  file_count=$(find "$resp_dir" -name "*.md" -type f | wc -l | tr -d ' ')
  total_bytes=$(find "$resp_dir" -name "*.md" -type f -exec wc -c {} + | tail -1 | awk '{print $1}')
  total_kb=$(echo "scale=1; $total_bytes / 1024" | bc)
  avg_kb=$(echo "scale=1; $total_bytes / $file_count / 1024" | bc)

  echo "$short|$file_count|$total_kb|$avg_kb"
done

echo ""

# --- Section 3: Question count vs output size correlation ---
echo "=== QUESTIONS PER CLUSTER VS OUTPUT SIZE ==="
echo "topic|cluster|question_count|avg_response_kb|kb_per_question"

for i in "${!SESSIONS[@]}"; do
  session="${SESSIONS[$i]}"
  short="${SHORT_NAMES[$i]}"
  q_dir="$TEST_DIR/$session/questions/by-topic"
  resp_dir="$TEST_DIR/$session/responses"
  [ -d "$q_dir" ] || continue
  [ -d "$resp_dir" ] || continue

  for q_file in "$q_dir"/*.md; do
    [ -f "$q_file" ] || continue

    # Extract cluster name from question filename (remove .md)
    q_basename=$(basename "$q_file" .md)

    # Count questions (lines starting with a number followed by period)
    q_count=$(grep -cE "^[0-9]+\." "$q_file")

    # Find matching response directory
    cluster_dir="$resp_dir/$q_basename"
    if [ -d "$cluster_dir" ]; then
      file_count=$(find "$cluster_dir" -name "*.md" -type f | wc -l | tr -d ' ')
      [ "$file_count" -eq 0 ] && continue

      total_bytes=$(find "$cluster_dir" -name "*.md" -type f -exec wc -c {} + | tail -1 | awk '{print $1}')
      avg_bytes=$((total_bytes / file_count))
      avg_kb=$(echo "scale=1; $avg_bytes / 1024" | bc)

      if [ "$q_count" -gt 0 ]; then
        kb_per_q=$(echo "scale=2; $avg_bytes / 1024 / $q_count" | bc)
      else
        kb_per_q="0"
      fi

      echo "$short|$q_basename|$q_count|$avg_kb|$kb_per_q"
    fi
  done
done

echo ""

# --- Section 4: Largest and smallest files ---
echo "=== TOP 10 LARGEST RESPONSE FILES ==="
echo "file|bytes|kb"

find "$TEST_DIR"/persona-eval-*_$DATE/responses -name "*.md" -type f -exec wc -c {} + | \
  sort -rn | head -11 | grep -v "total" | while read bytes filepath; do
    # Trim path to relative
    rel=$(echo "$filepath" | sed "s|$TEST_DIR/||")
    kb=$(echo "scale=1; $bytes / 1024" | bc)
    echo "$rel|$bytes|$kb"
  done

echo ""

echo "=== TOP 10 SMALLEST RESPONSE FILES ==="
echo "file|bytes|kb"

find "$TEST_DIR"/persona-eval-*_$DATE/responses -name "*.md" -type f -exec wc -c {} + | \
  sort -n | head -10 | while read bytes filepath; do
    rel=$(echo "$filepath" | sed "s|$TEST_DIR/||")
    kb=$(echo "scale=1; $bytes / 1024" | bc)
    echo "$rel|$bytes|$kb"
  done

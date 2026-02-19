#!/bin/bash
# question-persona-comparison.sh — Cross-topic persona consistency analysis
# Shows each persona's question file sizes across all topics
# Calculates mean, min, max, range, and coefficient of variation
#
# Usage: bash scripts/question-persona-comparison.sh [YYYY-MM-DD]
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
echo "QUESTION GENERATION — CROSS-TOPIC CONSISTENCY"
echo "Generated: $(date '+%Y-%m-%d %H:%M')"
echo "============================================"
echo ""

# Collect all persona names
personas=()
first_dir="$TEST_DIR/${TOPICS[0]}_$DATE/questions/by-persona"
for file in $(find "$first_dir" -name "*.md" -type f | sort); do
  p=$(basename "$file" .md)
  if [[ ! " ${personas[*]} " =~ " $p " ]]; then
    personas+=("$p")
  fi
done
IFS=$'\n' personas=($(sort <<<"${personas[*]}")); unset IFS

# --- Section 1: Persona summary ---
echo "=== PERSONA SUMMARY (bytes) ==="
echo "persona|files|mean|min|max|range|cv%"

for persona in "${personas[@]}"; do
  sizes=()
  for topic in "${TOPICS[@]}"; do
    file="$TEST_DIR/${topic}_$DATE/questions/by-persona/${persona}.md"
    if [ -f "$file" ]; then
      size=$(wc -c < "$file" | tr -d ' ')
      sizes+=("$size")
    fi
  done

  count=${#sizes[@]}
  [ "$count" -eq 0 ] && continue

  # Calculate stats
  sum=0; min=${sizes[0]}; max=${sizes[0]}
  for s in "${sizes[@]}"; do
    sum=$((sum + s))
    [ "$s" -lt "$min" ] && min=$s
    [ "$s" -gt "$max" ] && max=$s
  done
  mean=$((sum / count))
  range=$((max - min))

  # Coefficient of variation (std dev / mean * 100)
  sum_sq_diff=0
  for s in "${sizes[@]}"; do
    diff=$((s - mean))
    sum_sq_diff=$((sum_sq_diff + diff * diff))
  done
  variance=$((sum_sq_diff / count))
  std_dev=$(echo "scale=0; sqrt($variance)" | bc)
  if [ "$mean" -gt 0 ]; then
    cv=$(echo "scale=1; $std_dev * 100 / $mean" | bc)
  else
    cv="0"
  fi

  echo "$persona|$count|$mean|$min|$max|$range|${cv}"
done | sort -t'|' -k3 -rn

echo ""

# --- Section 2: Per-persona breakdown by topic ---
echo "=== PER-PERSONA BY TOPIC (bytes) ==="
echo "persona|${TOPICS[0]}|${TOPICS[1]}|${TOPICS[2]}|spread"

for persona in "${personas[@]}"; do
  topic_sizes=()
  line="$persona"

  for topic in "${TOPICS[@]}"; do
    file="$TEST_DIR/${topic}_$DATE/questions/by-persona/${persona}.md"
    if [ -f "$file" ]; then
      size=$(wc -c < "$file" | tr -d ' ')
      topic_sizes+=("$size")
      line="$line|$size"
    else
      topic_sizes+=("0")
      line="$line|0"
    fi
  done

  # Spread = max - min
  t_min=${topic_sizes[0]}; t_max=${topic_sizes[0]}
  for t in "${topic_sizes[@]}"; do
    [ "$t" -lt "$t_min" ] && t_min=$t
    [ "$t" -gt "$t_max" ] && t_max=$t
  done
  spread=$((t_max - t_min))
  line="$line|$spread"

  echo "$line"
done | sort -t'|' -k5 -rn

echo ""

# --- Section 3: Consistency ranking ---
echo "=== CONSISTENCY RANKING (lowest CV% = most consistent) ==="
echo "persona|cv%|interpretation"

for persona in "${personas[@]}"; do
  sizes=()
  for topic in "${TOPICS[@]}"; do
    file="$TEST_DIR/${topic}_$DATE/questions/by-persona/${persona}.md"
    if [ -f "$file" ]; then
      size=$(wc -c < "$file" | tr -d ' ')
      sizes+=("$size")
    fi
  done

  count=${#sizes[@]}
  [ "$count" -eq 0 ] && continue

  sum=0
  for s in "${sizes[@]}"; do sum=$((sum + s)); done
  mean=$((sum / count))

  sum_sq_diff=0
  for s in "${sizes[@]}"; do
    diff=$((s - mean))
    sum_sq_diff=$((sum_sq_diff + diff * diff))
  done
  variance=$((sum_sq_diff / count))
  std_dev=$(echo "scale=0; sqrt($variance)" | bc)
  if [ "$mean" -gt 0 ]; then
    cv=$(echo "scale=1; $std_dev * 100 / $mean" | bc)
  else
    cv="0"
  fi

  if (( $(echo "$cv < 15" | bc -l) )); then
    interp="highly consistent"
  elif (( $(echo "$cv < 30" | bc -l) )); then
    interp="moderately consistent"
  else
    interp="high variance"
  fi

  echo "$persona|${cv}|$interp"
done | sort -t'|' -k2 -n

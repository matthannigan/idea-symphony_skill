#!/bin/bash
# persona-comparison.sh — Cross-topic persona consistency analysis
# Shows each persona's file sizes across all topics/clusters (12 files per persona)
# Calculates mean, min, max, and coefficient of variation
#
# Usage: bash scripts/persona-comparison.sh [YYYY-MM-DD]
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
echo "PERSONA COMPARISON — CROSS-TOPIC CONSISTENCY"
echo "Generated: $(date '+%Y-%m-%d %H:%M')"
echo "============================================"
echo ""

# Collect all persona names
personas=()
for file in $(find "$TEST_DIR/${SESSIONS[0]}/responses" -name "*.md" -type f | sort); do
  p=$(basename "$file" .md)
  if [[ ! " ${personas[*]} " =~ " $p " ]]; then
    personas+=("$p")
  fi
done
IFS=$'\n' personas=($(sort <<<"${personas[*]}")); unset IFS

# --- Section 1: Per-persona summary ---
echo "=== PERSONA SUMMARY (bytes) ==="
echo "persona|files|mean|min|max|range|cv%"

for persona in "${personas[@]}"; do
  sizes=()
  for session in "${SESSIONS[@]}"; do
    for file in $(find "$TEST_DIR/$session/responses" -name "${persona}.md" -type f 2>/dev/null); do
      size=$(wc -c < "$file" | tr -d ' ')
      sizes+=("$size")
    done
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
  # Integer sqrt approximation
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
echo "=== PER-PERSONA BY TOPIC (avg bytes per topic) ==="
echo "persona|${SHORT_NAMES[0]}|${SHORT_NAMES[1]}|${SHORT_NAMES[2]}|spread"

for persona in "${personas[@]}"; do
  topic_avgs=()
  line="$persona"

  for i in "${!SESSIONS[@]}"; do
    session="${SESSIONS[$i]}"
    sizes=()
    for file in $(find "$TEST_DIR/$session/responses" -name "${persona}.md" -type f 2>/dev/null); do
      size=$(wc -c < "$file" | tr -d ' ')
      sizes+=("$size")
    done

    count=${#sizes[@]}
    if [ "$count" -gt 0 ]; then
      sum=0
      for s in "${sizes[@]}"; do sum=$((sum + s)); done
      avg=$((sum / count))
      topic_avgs+=("$avg")
      line="$line|$avg"
    else
      topic_avgs+=("0")
      line="$line|0"
    fi
  done

  # Spread = max topic avg - min topic avg
  t_min=${topic_avgs[0]}; t_max=${topic_avgs[0]}
  for t in "${topic_avgs[@]}"; do
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
  for session in "${SESSIONS[@]}"; do
    for file in $(find "$TEST_DIR/$session/responses" -name "${persona}.md" -type f 2>/dev/null); do
      size=$(wc -c < "$file" | tr -d ' ')
      sizes+=("$size")
    done
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

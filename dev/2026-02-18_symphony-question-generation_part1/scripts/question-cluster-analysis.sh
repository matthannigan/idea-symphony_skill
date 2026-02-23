#!/bin/bash
# question-cluster-analysis.sh — Topic cluster naming and structure comparison
# Analyzes how personas organize their questions into clusters
# Unlike Phase 3 where clusters were pre-defined input, here the cluster
# structure is the persona's output.
#
# Usage: bash scripts/question-cluster-analysis.sh [YYYY-MM-DD]
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
echo "CLUSTER ANALYSIS — TOPIC CLUSTER COMPARISON"
echo "Generated: $(date '+%Y-%m-%d %H:%M')"
echo "============================================"
echo ""

# --- Section 1: Per-file cluster listing ---
echo "=== PER-FILE CLUSTER LISTING ==="
echo ""

for topic in "${TOPICS[@]}"; do
  by_persona="$TEST_DIR/${topic}_$DATE/questions/by-persona"
  [ -d "$by_persona" ] || continue

  for file in $(find "$by_persona" -name "*.md" -type f | sort); do
    persona=$(basename "$file" .md)
    echo "--- $topic | $persona ---"

    # Extract each ## heading and count questions under it
    current_cluster=""
    q_count=0
    while IFS= read -r line; do
      if [[ "$line" =~ ^##\  ]]; then
        # Print previous cluster if exists
        if [ -n "$current_cluster" ]; then
          echo "  $current_cluster: $q_count questions"
        fi
        current_cluster="${line#\#\# }"
        q_count=0
      elif [[ "$line" =~ ^\*\*[^\*]+\*\* ]]; then
        q_count=$((q_count + 1))
      fi
    done < "$file"
    # Print last cluster
    if [ -n "$current_cluster" ]; then
      echo "  $current_cluster: $q_count questions"
    fi
    echo ""
  done
done

# --- Section 2: Cluster name keyword frequency ---
echo "=== CLUSTER NAME KEYWORD FREQUENCY (per topic) ==="
echo ""

for topic in "${TOPICS[@]}"; do
  by_persona="$TEST_DIR/${topic}_$DATE/questions/by-persona"
  [ -d "$by_persona" ] || continue

  echo "--- $topic ---"
  echo "keyword|count"

  # Extract all ## headings, lowercase, split into words, count frequency
  # Filter out very common/short words
  for file in $(find "$by_persona" -name "*.md" -type f); do
    grep "^## " "$file" | sed 's/^## //'
  done | tr '[:upper:]' '[:lower:]' \
       | tr -cs '[:alpha:]' '\n' \
       | grep -vE '^(the|and|of|for|in|a|an|to|is|as|or|on|with|from|by|its|vs|how|what|who|where|when|why|that|this|it|be|are|was|not)$' \
       | grep -E '.{3,}' \
       | sort | uniq -c | sort -rn | head -20 \
       | awk '{print $2"|"$1}'

  echo ""
done

# --- Section 3: Questions-per-cluster distribution ---
echo "=== QUESTIONS PER CLUSTER DISTRIBUTION ==="
echo "q_per_cluster|cluster_count"

for topic in "${TOPICS[@]}"; do
  by_persona="$TEST_DIR/${topic}_$DATE/questions/by-persona"
  [ -d "$by_persona" ] || continue

  for file in $(find "$by_persona" -name "*.md" -type f); do
    current_cluster=""
    q_count=0
    while IFS= read -r line; do
      if [[ "$line" =~ ^##\  ]]; then
        if [ -n "$current_cluster" ]; then
          echo "$q_count"
        fi
        current_cluster="${line#\#\# }"
        q_count=0
      elif [[ "$line" =~ ^\*\*[^\*]+\*\* ]]; then
        q_count=$((q_count + 1))
      fi
    done < "$file"
    if [ -n "$current_cluster" ]; then
      echo "$q_count"
    fi
  done
done | sort -n | uniq -c | awk '{print $2"|"$1}'

echo ""

# --- Section 4: Cluster balance per file ---
echo "=== CLUSTER BALANCE (min/max questions per cluster in each file) ==="
echo "topic|persona|clusters|min_q|max_q|range|balance_ratio"

for topic in "${TOPICS[@]}"; do
  by_persona="$TEST_DIR/${topic}_$DATE/questions/by-persona"
  [ -d "$by_persona" ] || continue

  for file in $(find "$by_persona" -name "*.md" -type f | sort); do
    persona=$(basename "$file" .md)

    cluster_sizes=()
    current_cluster=""
    q_count=0
    while IFS= read -r line; do
      if [[ "$line" =~ ^##\  ]]; then
        if [ -n "$current_cluster" ]; then
          cluster_sizes+=("$q_count")
        fi
        current_cluster="${line#\#\# }"
        q_count=0
      elif [[ "$line" =~ ^\*\*[^\*]+\*\* ]]; then
        q_count=$((q_count + 1))
      fi
    done < "$file"
    if [ -n "$current_cluster" ]; then
      cluster_sizes+=("$q_count")
    fi

    num_clusters=${#cluster_sizes[@]}
    [ "$num_clusters" -eq 0 ] && continue

    c_min=${cluster_sizes[0]}; c_max=${cluster_sizes[0]}
    for c in "${cluster_sizes[@]}"; do
      [ "$c" -lt "$c_min" ] && c_min=$c
      [ "$c" -gt "$c_max" ] && c_max=$c
    done
    c_range=$((c_max - c_min))

    # Balance ratio: min/max (1.0 = perfectly balanced)
    if [ "$c_max" -gt 0 ]; then
      balance=$(echo "scale=2; $c_min / $c_max" | bc)
    else
      balance="0"
    fi

    echo "$topic|$persona|$num_clusters|$c_min|$c_max|$c_range|$balance"
  done
done

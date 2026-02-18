#!/bin/bash
# response-stats.sh — Per-file size statistics for persona evaluation test runs
# Groups by session, persona, and topic cluster with averages
#
# Usage: bash scripts/response-stats.sh [YYYY-MM-DD]
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
echo "PERSONA EVALUATION — RESPONSE FILE STATISTICS"
echo "Generated: $(date '+%Y-%m-%d %H:%M')"
echo "============================================"
echo ""

# --- Section 1: All files by session ---
echo "=== ALL FILES BY SESSION ==="
echo ""
for session in "${SESSIONS[@]}"; do
  resp_dir="$TEST_DIR/$session/responses"
  if [ ! -d "$resp_dir" ]; then
    echo "MISSING: $session"
    continue
  fi

  file_count=$(find "$resp_dir" -name "*.md" -type f | wc -l | tr -d ' ')
  total_bytes=$(find "$resp_dir" -name "*.md" -type f -exec wc -c {} + | tail -1 | awk '{print $1}')
  total_kb=$(echo "scale=1; $total_bytes / 1024" | bc)
  avg_kb=$(echo "scale=1; $total_bytes / $file_count / 1024" | bc)

  echo "$session"
  echo "  Files: $file_count | Total: ${total_kb}KB | Avg: ${avg_kb}KB"
  echo ""
done

# --- Section 2: Per-persona averages across all sessions ---
echo "=== PER-PERSONA AVERAGES (all sessions) ==="
echo "persona|files|total_bytes|avg_bytes|avg_kb"

# Collect all persona sizes into a temp file, then aggregate with awk
mkdir -p /tmp/claude 2>/dev/null
tmp_file="/tmp/claude/persona_sizes_$$"
for session in "${SESSIONS[@]}"; do
  resp_dir="$TEST_DIR/$session/responses"
  [ -d "$resp_dir" ] || continue

  for file in $(find "$resp_dir" -name "*.md" -type f); do
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

# --- Section 3: Per-cluster averages across all sessions ---
echo "=== PER-CLUSTER AVERAGES (all sessions) ==="
echo "session|cluster|files|total_bytes|avg_bytes|avg_kb"

for session in "${SESSIONS[@]}"; do
  resp_dir="$TEST_DIR/$session/responses"
  [ -d "$resp_dir" ] || continue

  for cluster_dir in "$resp_dir"/*/; do
    [ -d "$cluster_dir" ] || continue
    cluster=$(basename "$cluster_dir")

    file_count=$(find "$cluster_dir" -name "*.md" -type f | wc -l | tr -d ' ')
    [ "$file_count" -eq 0 ] && continue

    total_bytes=$(find "$cluster_dir" -name "*.md" -type f -exec wc -c {} + | tail -1 | awk '{print $1}')
    avg_bytes=$(( total_bytes / file_count ))
    avg_kb=$(echo "scale=1; $avg_bytes / 1024" | bc)

    echo "$session|$cluster|$file_count|$total_bytes|$avg_bytes|${avg_kb}"
  done
done

echo ""

# --- Section 4: Individual file listing ---
echo "=== INDIVIDUAL FILE SIZES ==="
echo "session|cluster|persona|bytes|kb"

for session in "${SESSIONS[@]}"; do
  resp_dir="$TEST_DIR/$session/responses"
  [ -d "$resp_dir" ] || continue

  for file in $(find "$resp_dir" -name "*.md" -type f | sort); do
    cluster=$(basename "$(dirname "$file")")
    persona=$(basename "$file" .md)
    size=$(wc -c < "$file" | tr -d ' ')
    kb=$(echo "scale=1; $size / 1024" | bc)
    echo "$session|$cluster|$persona|$size|${kb}"
  done
done

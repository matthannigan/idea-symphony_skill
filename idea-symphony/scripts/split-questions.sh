#!/usr/bin/env bash
# split-questions.sh — Deterministic post-synthesis step for Phase 2 Step 2.3.
#
# Splits [session]/QUESTIONS.md into per-cluster files under questions/by-topic/.
# Produces questions/by-topic/99_additional.md only if QUESTIONS.md contains
# an "## Additional Questions" section (orphaned Append questions).
#
# Usage: scripts/split-questions.sh <session-dir>

set -euo pipefail

if [[ $# -ne 1 ]]; then
  echo "Usage: $0 <session-dir>" >&2
  exit 1
fi

session_dir="$1"

if [[ ! -f "$session_dir/QUESTIONS.md" ]]; then
  echo "Error: $session_dir/QUESTIONS.md not found" >&2
  exit 1
fi

cd "$session_dir"
mkdir -p questions/by-topic

awk '
  /^## Topic Cluster [0-9]+:/ {
    if (file) close(file)
    s = substr($0, 18)
    colon = index(s, ":")
    num = substr(s, 1, colon - 1) + 0
    name = substr(s, colon + 2)
    slug = tolower(name)
    gsub(/[^a-z0-9]+/, "-", slug)
    sub(/^-+/, "", slug); sub(/-+$/, "", slug)
    file = sprintf("questions/by-topic/%02d_%s.md", num, slug)
    print "---\ncluster: " num "\nname: " name "\n---\n" > file
    next
  }
  /^## Additional Questions/ {
    if (file) close(file)
    file = "questions/by-topic/99_additional.md"
    print "---\ncluster: 99\nname: Additional Questions\n---\n" > file
    next
  }
  /^## / && file { close(file); file = "" }
  file { print >> file }
' QUESTIONS.md

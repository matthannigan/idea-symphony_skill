#!/usr/bin/env bash
# split-questions.sh — Deterministic post-synthesis step for Phase 2.
#
# Splits {{session}}/QUESTIONS.md into per-cluster files under questions/by-topic/.
# Per-cluster file format matches the shape an LLM subagent would have produced
# directly (see test-runs/career-change/min/questions/by-topic for reference):
#
#   ---
#   <frontmatter copied verbatim from QUESTIONS.md>
#   ---
#
#   # Topic Cluster NN: Name
#
#   ## Questions
#
#   1. ...
#   2. ...
#
#   ---
#
#   **Question count**: N
#   **Cluster focus**: <one-sentence framing, if present in QUESTIONS.md>
#
# Cluster focus is optional. If QUESTIONS.md places a line of the form
# `**Cluster focus**: <text>` immediately under a `## Topic Cluster NN:` header,
# the script hoists it into the per-cluster file's footer.
#
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
  function flush_cluster(   i) {
    if (file == "") return
    printf("---\n") > file
    for (i = 0; i < fm_count; i++) printf("%s\n", fm[i]) > file
    printf("---\n\n") > file
    printf("# Topic Cluster %02d: %s\n\n", cluster_num, cluster_name) > file
    printf("## Questions\n\n") > file
    for (i = 0; i < body_count; i++) printf("%s\n", body_lines[i]) > file
    printf("\n---\n\n") > file
    printf("**Question count**: %d\n", q_count) > file
    if (cluster_focus != "") printf("**Cluster focus**: %s\n", cluster_focus) > file
    close(file)
  }

  BEGIN {
    state = "pre-frontmatter"
    fm_count = 0
    file = ""
    in_cluster = 0
    q_count = 0
    body_count = 0
    cluster_focus = ""
  }

  # --- Frontmatter capture ---
  state == "pre-frontmatter" && /^---$/ { state = "in-frontmatter"; next }
  state == "in-frontmatter" && /^---$/ { state = "body"; next }
  state == "in-frontmatter" { fm[fm_count++] = $0; next }

  # --- Body: cluster boundaries ---
  /^## Topic Cluster [0-9]+:/ {
    flush_cluster()
    s = substr($0, 18)                    # strip "## Topic Cluster "
    colon = index(s, ":")
    cluster_num = substr(s, 1, colon - 1) + 0
    cluster_name = substr(s, colon + 2)
    slug = tolower(cluster_name)
    gsub(/[^a-z0-9]+/, "-", slug)
    sub(/^-+/, "", slug); sub(/-+$/, "", slug)
    file = sprintf("questions/by-topic/%02d_%s.md", cluster_num, slug)
    q_count = 0
    body_count = 0
    cluster_focus = ""
    in_cluster = 1
    next
  }

  /^## Additional Questions/ {
    flush_cluster()
    file = "questions/by-topic/99_additional.md"
    cluster_num = 99
    cluster_name = "Additional Questions"
    q_count = 0
    body_count = 0
    cluster_focus = "Orphaned Append-stream questions that did not have a topical home in any Synthesize cluster."
    in_cluster = 1
    next
  }

  # Any other H2 closes the active cluster
  /^## / && in_cluster {
    flush_cluster()
    in_cluster = 0
    file = ""
    next
  }

  # --- Body: in-cluster capture ---
  in_cluster && /^\*\*Cluster focus\*\*:/ {
    line = $0
    sub(/^\*\*Cluster focus\*\*:[ \t]*/, "", line)
    cluster_focus = line
    next
  }

  in_cluster && /^[0-9]+\./ {
    q_count++
    body_lines[body_count++] = $0
    next
  }

  # Any other line inside a cluster (blank separator, horizontal rule, stray
  # footer totals) is intentionally dropped — the per-cluster file is a
  # compact numbered list, not a verbatim slice of QUESTIONS.md.

  END { flush_cluster() }
' QUESTIONS.md

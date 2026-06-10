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
# Also populates the "## Topic Clusters (from Phase 2)" section in PLAN.md (if
# PLAN.md exists) with one numbered, linked row per cluster. This is the
# deterministic producer for the section Phase 5 reads as its authoritative
# ordered slug + display-name source. The orphan "99_additional" bucket is the
# final catch-all cluster and is included as the last row. The write is
# idempotent: an existing section is replaced in place; otherwise the section
# is inserted before "## Status".
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

# --- Populate the "## Topic Clusters (from Phase 2)" section in PLAN.md ---
# Deterministic producer for the section Phase 5 (and the NotebookLM template)
# read for ordered slugs + display names. Includes the orphan "Additional
# Questions" bucket as the final catch-all cluster. Idempotent: replaces an
# existing section, else inserts it before "## Status". No-op when PLAN.md is absent.
if [[ -f PLAN.md ]]; then
  section_rows="$(awk '
    function emit() {
      printf("%d. [%s (%d questions)](questions/by-topic/%02d_%s.md)\n", \
             ++idx, name, qc, num, slug)
    }
    /^## Topic Cluster [0-9]+:/ {
      if (name != "") emit()
      s = substr($0, 18)                  # strip "## Topic Cluster "
      colon = index(s, ":")
      num = substr(s, 1, colon - 1) + 0
      name = substr(s, colon + 2)
      slug = tolower(name)
      gsub(/[^a-z0-9]+/, "-", slug)
      sub(/^-+/, "", slug); sub(/-+$/, "", slug)
      qc = 0
      next
    }
    # The orphan "## Additional Questions" section is the final catch-all
    # cluster (number 99, slug "additional"); emit it like any other cluster.
    /^## Additional Questions/ {
      if (name != "") emit()
      num = 99; name = "Additional Questions"; slug = "additional"; qc = 0
      next
    }
    # Any other H2 closes the active cluster without being emitted itself.
    /^## / && name != "" { emit(); name = ""; next }
    name != "" && /^[0-9]+\./ { qc++ }
    END { if (name != "") emit() }
  ' QUESTIONS.md)"

  if [[ -n "$section_rows" ]]; then
    # Pass the rows through the environment (no temp files in the system temp
    # dir, which may be unwritable). The splice is written to a sibling temp
    # file in the session dir (always writable) and moved into place.
    export TOPIC_CLUSTERS_SECTION="$section_rows"
    awk '
      BEGIN {
        sec = "## Topic Clusters (from Phase 2)\n\n" \
              ENVIRON["TOPIC_CLUSTERS_SECTION"] "\n\n"
      }
      # Replace any existing "## Topic Clusters" section (canonical or legacy):
      # emit the new section at the first one found and drop its body — and any
      # later duplicate sections — until the next H2 heading. Guarding the emit
      # with !inserted prevents a double-insert when a legacy section sits after
      # the "## Status" block (the Status rule below would already have fired).
      /^## Topic Clusters/ {
        if (!inserted) { printf "%s", sec; inserted = 1 }
        skipping = 1; next
      }
      skipping && /^## / { skipping = 0 }
      skipping { next }
      # If no Topic Clusters section exists yet, insert before the Status block.
      !inserted && /^## Status/ { printf "%s", sec; inserted = 1 }
      { print }
      END { if (!inserted) printf "%s", sec }
    ' PLAN.md > PLAN.md.tmp && mv PLAN.md.tmp PLAN.md
    unset TOPIC_CLUSTERS_SECTION
  fi
fi

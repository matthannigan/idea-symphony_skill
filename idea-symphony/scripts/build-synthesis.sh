#!/usr/bin/env bash
# build-synthesis.sh — Deterministic final-phase step for SYNTHESIS.md.
#
# Concatenates all per-topic files in {{session}}/synthesis/ (matching
# [0-9]*_synthesis.md) into a single SYNTHESIS.md, stripping each file's YAML
# frontmatter and prepending a session-level frontmatter block. Files are
# separated by markdown horizontal rules.
#
# This is a deterministic transform — no LLM required. The session-level
# frontmatter is composed from values shared across the per-topic files
# (project-name, session-dir, date, effort) plus a fixed stage field.
#
# Usage: scripts/build-synthesis.sh <session-dir>

set -euo pipefail

if [[ $# -ne 1 ]]; then
  echo "Usage: $0 <session-dir>" >&2
  exit 1
fi

session_dir="$1"

if [[ ! -d "$session_dir/synthesis" ]]; then
  echo "Error: $session_dir/synthesis/ not found" >&2
  exit 1
fi

cd "$session_dir"

shopt -s nullglob
files=(synthesis/[0-9]*_synthesis.md)
shopt -u nullglob

if [[ ${#files[@]} -eq 0 ]]; then
  echo "Error: no synthesis/[0-9]*_synthesis.md files found" >&2
  exit 1
fi

# Pull the shared session-level frontmatter values from the first topic
# file (project-name, session-dir, datetime, effort are identical across
# all per-topic files in a session; only stage and topic-cluster vary).
# The session-level output emits `date:` rather than `datetime:` because
# the consolidated frontmatter is a session-scoped record, not a single
# generation event.
first="${files[0]}"

get_field() {
  awk -v key="$1" '
    NR == 1 && /^---$/ { in_fm = 1; next }
    in_fm && /^---$/ { exit }
    in_fm && $1 == key ":" {
      sub(/^[^:]+:[[:space:]]*/, "")
      gsub(/^"|"$/, "")
      print
      exit
    }
  ' "$first"
}

project_name=$(get_field "project-name")
session_dir_value=$(get_field "session-dir")
date_value=$(get_field "datetime")
effort_value=$(get_field "effort")

{
  printf -- '---\n'
  printf 'project-name: "%s"\n' "$project_name"
  printf 'session-dir: "%s"\n' "$session_dir_value"
  printf 'date: %s\n' "$date_value"
  printf 'effort: "%s"\n' "$effort_value"
  printf 'stage: "Phase 4: Synthesis Concatenation"\n'
  printf -- '---\n\n'

  # Strip each file's YAML frontmatter, skip the leading blank line after
  # frontmatter, and insert a horizontal rule between files. Rules:
  #   - Enter in_fm only if line 1 of the file is '---' (the frontmatter
  #     opening fence). Subsequent '---' lines in the body are preserved
  #     as horizontal rules.
  #   - Skip blank lines before the first real content line of each file.
  #   - Emit '\n---\n' as a separator before the first content line of
  #     every file except the first.
  awk '
    FNR == 1 { in_fm = 0; seen_content = 0 }
    FNR == 1 && /^---$/ { in_fm = 1; next }
    in_fm && /^---$/ { in_fm = 0; next }
    in_fm { next }
    !seen_content && /^[[:space:]]*$/ { next }
    !seen_content {
      if (NR != FNR) print "\n---\n"
      seen_content = 1
    }
    { print }
  ' "${files[@]}"
} > SYNTHESIS.md

echo "Wrote $session_dir/SYNTHESIS.md"

# Min Effort Workflow

**Self-contained speed run for the `min` effort level.** No persona system — uses generic prompts throughout. The orchestrator runs this entire workflow after Phase 1 (Context Gathering) completes.

**Target runtime:** 5-10 minutes
**Output character:** Practical, actionable, immediately implementable (costs, materials, times)

---

## Directory Structure

```
{{session}}/
├── questions/
│   └── by-topic/               # Numbered topic files
│       ├── {{cluster_slug}}.md
│       └── ...
├── responses/
│   └── {{cluster_slug}}/      # One dir per topic
│       └── generic-response.md  # Single generic response
├── synthesis/
│   ├── {{cluster_slug}}_summary.md
│   └── ...
├── REQUEST.md                   # From Phase 1
├── USER-QUESTIONS.md            # (optional) From Phase 1
├── PLAN.md                      # Session config and status
├── QUESTIONS.md                 # All questions consolidated
├── SUMMARIES.md                 # All per-topic summaries concatenated
└── BRAINSTORM.md                # Final output and session index
```

**No `questions/by-persona/` directory.** No `synthesis/attributed/` or `_synthesis.md` files. No `personas/` directory.

---

## Step 1: Question Generation

Spawn 1 subagent using the prompt at `{{skill}}/prompts/phase2B_question-gen_generic.md`. Subagent instructions, USER-QUESTIONS handling, and output schema live in the prompt file. It produces exactly one output: `{{session}}/QUESTIONS.md` — the orchestrator derives the `questions/by-topic/` files deterministically in the next step.

**Subagent Model:** Pass `model: "sonnet"` to the Agent tool call.

**Substitution:** Resolve `{{session}}`, `{{current_datetime}}`, and `{{model_requested}}` (= `"sonnet"`) in the prompt body before spawning. (The subagent records `model-requested` in its output frontmatter and self-reports its actual model in `model-reported`.)

**Post-generation shell step — split QUESTIONS.md into by-topic files:**

After the subagent returns, run the utility script:

```bash
scripts/split-questions.sh {{session}}
```

This is a deterministic transform, not an LLM step. It parses `## Topic Cluster NN: Name` headers from `QUESTIONS.md` and writes one file per cluster into `questions/by-topic/` with derived slug filenames. It also writes the `## Topic Clusters (from Phase 2)` section into `PLAN.md` — the ordered slug + display-name source Phase 5 reads — so no separate step is needed to populate it.

**Quality Gate:** Before proceeding, verify:
- `{{session}}/QUESTIONS.md` exists and contains at least one `## Topic Cluster NN:` header
- `{{session}}/questions/by-topic/` contains 3-5 numbered `.md` files (one per cluster)
- If `{{session}}/USER-QUESTIONS.md` exists: count `[User Q]` markers in `QUESTIONS.md` and compare against the number of questions in `USER-QUESTIONS.md`. If any are missing, log which user questions lack a corresponding marker and re-examine.
- If files missing after Glob search, log in PLAN.md Notes and proceed

Update `PLAN.md` with question generation complete status.

---

## Step 2: Generic Brainstorming

Read `{{session}}/questions/by-topic/` to get the list of numbered topic files. Process topics in numeric order.

For each topic cluster, spawn 1 subagent using the prompt at `{{skill}}/prompts/phase3_brainstorm_generic.md`. Subagent instructions (inputs, response diversity, output schema) live in the prompt file. Output: `{{session}}/responses/{{cluster_slug}}/generic-response.md`.

**Subagent Model:** Pass `model: "sonnet"` to the Agent tool call.

**Substitution:** Resolve `{{session}}`, `{{cluster_slug}}`, `{{current_datetime}}`, and `{{model_requested}}` (= `"sonnet"`) in the prompt body before spawning.

**Quality Gate:** Before proceeding, verify:
- `{{session}}/responses/{{cluster_slug}}/` exists for each topic
- Each topic directory contains `generic-response.md`
- If files missing after Glob search, log in PLAN.md Notes and proceed

Update `PLAN.md` with brainstorming complete status.

---

## Step 3: Summary Generation

### Summarization

Spawn parallel subagents (1 per topic cluster) using the prompt at `{{skill}}/prompts/phase4_summary-only_min-effort.md`. Subagent instructions, inputs, and the frontmatter/output schema live in the prompt file. Output: `{{session}}/synthesis/{{cluster_slug}}_summary.md`. Summary-only synthesis: no attribution, no full synthesis documents.

**Subagent Model:** Pass `model: "sonnet"` to the Agent tool call.

**Substitution:** Resolve `{{session}}`, `{{cluster_slug}}`, `{{topic}}` (the cluster's display name from PLAN.md's `## Topic Clusters (from Phase 2)` section), `{{current_datetime}}`, and `{{model_requested}}` (= `"sonnet"`) in the prompt body before spawning.

### Humanizer post-step

Once all summary subagents are complete, fan out one Haiku subagent per `_summary.md` file using the prompt at `{{skill}}/prompts/humanizer-pass.md` (mode (a), per-file pass; edits in place at the target path). This matches the `low`/`medium`/`high` paths, where `_summary.md` is humanized at every effort level. Pass `model: "haiku"` to each Agent tool call. Self-reported change counts are recorded but not trusted; verification is grep-based.

**Substitution:** Resolve `{{skill}}` and the target-file path slot (one `{{session}}/synthesis/{{cluster_slug}}_summary.md` per spawn) in the prompt body before each spawn.

### Concatenation

Once the humanizer post-step is complete, run the utility script to build the concatenated `SUMMARIES.md` file so it inherits the humanized substrate. This is a deterministic transform (no LLM): it strips each per-topic `_summary.md`'s YAML frontmatter, joins the bodies with horizontal-rule separators, and prepends a session-level frontmatter block.

```bash
scripts/build-summaries.sh {{session}}
```

### Quality Gate

Verify:
- `{{session}}/synthesis/` directory exists
- One `{{cluster_slug}}_summary.md` file per topic
- NO `attributed/` subdirectory or `_synthesis.md` files
- `{{session}}/SUMMARIES.md` exists
- If files missing after Glob search, log in PLAN.md Notes and proceed

Update `PLAN.md` with synthesis complete status.

---

## Step 4: Final Output

### Step 4.1: Create BRAINSTORM.md (Subagent)

Spawn 1 subagent using the prompt at `{{skill}}/prompts/phase5_final-output.md` — the same prompt `low`/`medium`/`high` use at Step 5.1. The prompt covers input-file roles, executive-summary derivation, key-theme extraction, the effort-conditional Session-Index rules, and the full output template with effort-scaled word budgets.

The NotebookLM flag is never present at `min` effort, so the subagent produces only `{{session}}/BRAINSTORM.md`.

The prompt's final step is an inline humanizer pass (mode (c), whole-file pass) over `BRAINSTORM.md`, run by the same subagent — no separate humanizer spawn is needed at this step.

**Subagent Model:** Pass `model: "sonnet"` to the Agent tool call (`min` uses Sonnet here, where `low`/`medium`/`high` use Opus).

**Substitution:** Resolve `{{session}}`, `{{effort}}` (= `"min"`), `{{skill}}`, `{{current_datetime}}`, and `{{model_requested}}` (= `"sonnet"`) in the prompt body before spawning.

**Quality Gate:** Before presenting results, verify:
- `{{session}}/BRAINSTORM.md` exists with YAML frontmatter
- Its Session Index links resolve to files that exist in `{{session}}/` (in particular, no `SYNTHESIS.md` or `_synthesis.md` links — `min` produces neither)
- If anything is missing, re-run Step 4.1 rather than proceeding

### Step 4.2: Present Results

Output brief summary to user:
- Highlight 3-5 key insights
- Note location of `BRAINSTORM.md`
- Mention intermediate files are available for review
- Offer to explore specific ideas further

Update `PLAN.md` with session complete status.

---

## Model Selection

| Task | Model | Rationale |
|------|-------|-----------|
| Question generation | Sonnet | Comprehensive coverage needed |
| Brainstorming | Sonnet | Balance quality with speed |
| Summary generation | Sonnet | User-facing summaries |
| Humanizer post-pass (`_summary.md` files) | Haiku | Surface-style polish only |
| Humanizer inline pass (`BRAINSTORM.md`) | (same agent as Final output) | Runs inside the Step 4 subagent |
| Final output | Sonnet | User-facing deliverable |

---

## Error Handling

If a subagent fails:
1. Log failure in `PLAN.md` Notes section with details
2. Attempt to re-run the subagent once
3. If still failing, continue with available outputs and note the gap
4. Never block the entire session on a single subagent failure

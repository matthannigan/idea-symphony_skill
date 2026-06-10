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
├── REQUEST.md                   # From Introduction
├── USER-QUESTIONS.md            # (optional) From Introduction
├── PLAN.md                      # Session config and status
├── QUESTIONS.md                 # All questions consolidated
├── SYNTHESIS.md                 # All summaries concatenated
└── BRAINSTORM.md                # Final output and session index
```

**No `questions/by-persona/` directory.** No `synthesis/attributed/` or `_synthesis.md` files. No `personas/` directory.

---

## Step 1: Question Generation

Spawn 1 subagent using prompt from `{{skill}}/prompts/phase2B_question-gen_generic.md`.

**Instructions for subagent:**

1. Read `{{session}}/REQUEST.md` for the brainstorming topic and context
2. Check if `{{session}}/USER-QUESTIONS.md` exists (use Glob). If it exists, read it — these are questions the user specifically wants answered. Preserve their intent, expand/refine them, and integrate them into topic clusters. Mark any question that preserves or incorporates a user-provided question by appending `[User Q]` to the question text. User questions should appear in final output even if total count exceeds the 15-20 target.
3. Generate 15-20 questions organized into 3-5 topical clusters (plus any user-provided questions)
4. Ensure questions span strategic, tactical, creative, analytical, and human-centered dimensions
5. Use YAML frontmatter in the output file
6. Create one output: `QUESTIONS.md` (master file with all questions in numbered `## Topic Cluster NN: Name` clusters). Do **not** create per-cluster files in `questions/by-topic/` — the orchestrator will derive those deterministically in the next step.

**Subagent Model:** Pass `model: "sonnet"` to the Agent tool call. Also include the literal string `model-requested: "sonnet"` in the prompt body so the subagent records it in its output frontmatter (it will self-report its actual model in `model-reported`).

**Post-generation shell step — split QUESTIONS.md into by-topic files:**

After the subagent returns, run the utility script:

```bash
scripts/split-questions.sh {{session}}
```

This is a deterministic transform, not an LLM step. It parses `## Topic Cluster NN: Name` headers from `QUESTIONS.md` and writes one file per cluster into `questions/by-topic/` with derived slug filenames. It also writes the `## Topic Clusters (from Phase 2)` section into `PLAN.md` — the ordered slug + display-name source Phase 5 reads — so no separate step is needed to populate it.

**Quality Gate:** Before proceeding, verify:
- `QUESTIONS.md` exists and contains at least one `## Topic Cluster NN:` header
- `questions/by-topic/` contains 3-5 numbered `.md` files (one per cluster)
- If `USER-QUESTIONS.md` exists: count `[User Q]` markers in `QUESTIONS.md` and compare against the number of questions in `USER-QUESTIONS.md`. If any are missing, log which user questions lack a corresponding marker and re-examine.
- If files missing after Glob search, log in PLAN.md Notes and proceed

Update `PLAN.md` with question generation complete status.

---

## Step 2: Generic Brainstorming

Read `questions/by-topic/` to get the list of numbered topic files. Process topics in numeric order.

For each topic cluster, spawn 1 subagent using prompt from `{{skill}}/prompts/phase3_brainstorm_generic.md`.

**Instructions for each subagent:**

1. Read `{{session}}/questions/by-topic/{{cluster_slug}}.md` for the questions to answer
2. Read `{{session}}/REQUEST.md` for context (if needed)
3. For each question, provide 3-5 distinct, substantive responses (50-150 words each)
4. Vary approach across scale (small wins vs. transformative), risk (conservative vs. experimental), timeframe (immediate vs. long-term), and focus (process vs. people vs. technology)
5. Use YAML frontmatter in output (include topic cluster, date, effort level)
6. Save to `{{session}}/responses/{{cluster_slug}}/generic-response.md`

**Key point:** Focus on specific, actionable responses with concrete details and reasoning.

**Subagent Model:** Pass `model: "sonnet"` to the Agent tool call. Also include the literal string `model-requested: "sonnet"` in the prompt body so the subagent records it in its output frontmatter (it will self-report its actual model in `model-reported`).

**Quality Gate:** Before proceeding, verify:
- `responses/{{cluster_slug}}/` exists for each topic
- Each topic directory contains `generic-response.md`
- If files missing after Glob search, log in PLAN.md Notes and proceed

Update `PLAN.md` with brainstorming complete status.

---

## Step 3: Summary Generation

### Summarization

Spawn parallel subagents (1 per topic cluster) using prompt from `{{skill}}/prompts/phase4_summary-only_min-effort.md`.

**Instructions for each subagent:**

1. Read `{{session}}/questions/by-topic/{{cluster_slug}}.md` for questions
2. Read `{{session}}/responses/{{cluster_slug}}/generic-response.md` for responses
3. Create concise, actionable summary:
   - **Executive Summary**: 2-3 paragraphs capturing essence of topic exploration
   - **Key Themes**: 3-5 recurring themes with 2-3 sentences each
   - **Recommended Actions**: 4-8 action items organized by timeframe (immediate, near-term, long-term)
   - **Key Considerations**: Opportunities, risks/challenges, and trade-offs
4. Extract patterns across responses, prioritize actionability
5. Use YAML frontmatter in output (include topic cluster, date, effort level)
6. Save to `{{session}}/synthesis/{{cluster_slug}}_summary.md`

**Key point:** Summary-only synthesis. No attribution, no full synthesis documents. Aim for 500-800 words.

**Subagent Model:** Pass `model: "sonnet"` to the Agent tool call. Also include the literal string `model-requested: "sonnet"` in the prompt body so the subagent records it in its output frontmatter (it will self-report its actual model in `model-reported`).

### Humanizer post-step

Once all summary subagents are complete, fan out one Haiku subagent per `_summary.md` file using the prompt at `{{skill}}/prompts/humanizer-pass.md` (mode (a), per-file pass; edits in place at `{path}`). This matches the `low`/`medium`/`high` paths, where `_summary.md` is humanized at every effort level. Pass `model: "haiku"` to each Agent tool call. Self-reported change counts are recorded but not trusted; verification is grep-based.

### Concatenation

Once the humanizer post-step is complete, run the utility script to build the concatenated `SUMMARIES.md` file so it inherits the humanized substrate. This is a deterministic transform (no LLM): it strips each per-topic `_summary.md`'s YAML frontmatter, joins the bodies with horizontal-rule separators, and prepends a session-level frontmatter block.

```bash
scripts/build-summaries.sh {{session}}
```

### Quality Gate

Verify:
- `synthesis/` directory exists
- One `{{cluster_slug}}_summary.md` file per topic
- NO `attributed/` subdirectory or `_synthesis.md` files
- `SUMMARIES.md` exists
- If files missing after Glob search, log in PLAN.md Notes and proceed

Update `PLAN.md` with synthesis complete status.

---

## Step 4: Final Output

### Step 4.1: Create BRAINSTORM.md

Read `QUESTIONS.md` and `SUMMARIES.md`. The consolidated `SUMMARIES.md` is the authoritative input — do not re-read individual per-topic files.

Generate final summary in `BRAINSTORM.md` (see [templates/brainstorm.md](../templates/brainstorm.md)):
- Executive summary across all topics
- Session overview
- Key themes
- Topic summaries with links (use `_summary.md` per-topic links; list only `SUMMARIES.md` in the Session Index — `min` effort produces no `_synthesis.md` or `SYNTHESIS.md`)
- Recommended next steps
- Session index with links to all files

**Em-dash budget.** Limit em dashes to roughly one per paragraph in the generated prose; em-dash overuse is a strong AI tell, so prefer periods, parentheses, or commas. Applies to the generated prose, not to quoted material.

**Humanizer pass on `BRAINSTORM.md`.** After `BRAINSTORM.md` is written, run an inline humanizer pass over it using the prompt at `{{skill}}/prompts/humanizer-pass.md` (mode (c), whole-file pass; edits in place). Preserve numbered next-steps ordering, all numeric/dollar figures, and the citations/links to `_summary.md` files. This matches the `low`/`medium`/`high` Phase 5, which humanizes `BRAINSTORM.md` via `phase5_final-output.md`.

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
| Humanizer post-pass | Haiku | Surface-style polish only |
| Final output | Sonnet | User-facing deliverable |

---

## Error Handling

If a subagent fails:
1. Log failure in `PLAN.md` Notes section with details
2. Attempt to re-run the subagent once
3. If still failing, continue with available outputs and note the gap
4. Never block the entire session on a single subagent failure

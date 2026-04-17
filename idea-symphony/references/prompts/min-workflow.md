# Min Effort Workflow

**Self-contained speed run for the `min` effort level.** No persona system — uses generic prompts throughout. The orchestrator runs this entire workflow after Phase 1 (Context Gathering) completes.

**Target runtime:** 5-10 minutes
**Output character:** Practical, actionable, immediately implementable (costs, materials, times)

---

## Directory Structure

```
[session]/
├── questions/
│   └── by-topic/               # Numbered topic files
│       ├── 01_[topic-slug].md
│       └── ...
├── responses/
│   └── [NN]_[topic-slug]/      # One dir per topic
│       └── generic-response.md  # Single generic response
├── synthesis/
│   ├── 01_[topic-slug]_summary.md
│   └── ...
├── REQUEST.md                   # From Introduction
├── USER-QUESTIONS.md            # (optional) From Introduction
├── PLAN.md                      # Session config and status
├── QUESTIONS.md                 # All questions consolidated
├── SYNTHESIS.md                 # All summaries concatenated
└── BRAINSTORM.md                # Final output and session index
```

**No `questions/by-persona/` directory.** No `synthesis/attributed/` or `_synthesis.md` files. No `persona-selections.md`.

---

## Step 1: Question Generation

Spawn 1 subagent using prompt from `[skill]/references/prompts/phase2-question-generation-generic.md`.

**Instructions for subagent:**

1. Read `[session]/REQUEST.md` for the brainstorming topic and context
2. Check if `[session]/USER-QUESTIONS.md` exists (use Glob). If it exists, read it — these are questions the user specifically wants answered. Preserve their intent, expand/refine them, and integrate them into topic clusters. Mark any question that preserves or incorporates a user-provided question by appending `[User Q]` to the question text. User questions should appear in final output even if total count exceeds the 15-20 target.
3. Generate 15-20 questions organized into 3-5 topical clusters (plus any user-provided questions)
4. Ensure questions span strategic, tactical, creative, analytical, and human-centered dimensions
5. Use YAML frontmatter in all output files
6. Create two outputs:
   - `QUESTIONS.md` (master file with all questions in numbered clusters)
   - `questions/by-topic/[NN]_[topic-slug].md` (one file per cluster)

**Subagent Model:** Claude Sonnet or Gemini Pro

**Quality Gate:** Before proceeding, verify:
- `QUESTIONS.md` exists
- `questions/by-topic/` contains 3-5 numbered `.md` files
- If `USER-QUESTIONS.md` exists: count `[User Q]` markers in `QUESTIONS.md` and compare against the number of questions in `USER-QUESTIONS.md`. If any are missing, log which user questions lack a corresponding marker and re-examine.
- If files missing after Glob search, log in PLAN.md Notes and proceed

Update `PLAN.md` with question generation complete status.

---

## Step 2: Generic Brainstorming

Read `questions/by-topic/` to get the list of numbered topic files. Process topics in numeric order.

For each topic cluster, spawn 1 subagent using prompt from `[skill]/references/prompts/phase3-brainstorm-generic.md`.

**Instructions for each subagent:**

1. Read `[session]/questions/by-topic/[NN]_[topic-slug].md` for the questions to answer
2. Read `[session]/REQUEST.md` for context (if needed)
3. For each question, provide 3-5 distinct, substantive responses (50-150 words each)
4. Vary approach across scale (small wins vs. transformative), risk (conservative vs. experimental), timeframe (immediate vs. long-term), and focus (process vs. people vs. technology)
5. Use YAML frontmatter in output (include topic cluster, date, effort level)
6. Save to `[session]/responses/[NN]_[topic-slug]/generic-response.md`

**Key point:** Focus on specific, actionable responses with concrete details and reasoning.

**Subagent Model:** Claude Sonnet or Gemini Pro

**Quality Gate:** Before proceeding, verify:
- `responses/[NN]_[topic]/` exists for each topic
- Each topic directory contains `generic-response.md`
- If files missing after Glob search, log in PLAN.md Notes and proceed

Update `PLAN.md` with brainstorming complete status.

---

## Step 3: Summary Generation

Spawn parallel subagents (1 per topic cluster) using prompt from `[skill]/references/prompts/phase4-synthesis-min.md`.

**Instructions for each subagent:**

1. Read `[session]/questions/by-topic/[NN]_[topic-slug].md` for questions
2. Read `[session]/responses/[NN]_[topic-slug]/generic-response.md` for responses
3. Create concise, actionable summary:
   - **Executive Summary**: 2-3 paragraphs capturing essence of topic exploration
   - **Key Themes**: 3-5 recurring themes with 2-3 sentences each
   - **Recommended Actions**: 4-8 action items organized by timeframe (immediate, near-term, long-term)
   - **Key Considerations**: Opportunities, risks/challenges, and trade-offs
4. Extract patterns across responses, prioritize actionability
5. Use YAML frontmatter in output (include topic cluster, date, effort level)
6. Save to `[session]/synthesis/[NN]_[topic-slug]_summary.md`

**Key point:** Summary-only synthesis. No attribution, no full synthesis documents. Aim for 500-800 words.

**Subagent Model:** Claude Sonnet or Gemini Pro

**Quality Gate:** Before proceeding, verify:
- `synthesis/` directory exists
- One `[NN]_[topic]_summary.md` file per topic
- NO `attributed/` subdirectory or `_synthesis.md` files
- If files missing after Glob search, log in PLAN.md Notes and proceed

Update `PLAN.md` with synthesis complete status.

---

## Step 4: Final Output

### Step 4.1: Create SYNTHESIS.md

Concatenate all summary files into `SYNTHESIS.md`:

```bash
cat synthesis/[0-9]*.md > SYNTHESIS.md
```

### Step 4.2: Create BRAINSTORM.md

Read `QUESTIONS.md` and all `synthesis/*_summary.md` files.

Generate final summary in `BRAINSTORM.md` (see [templates/brainstorm.md](../templates/brainstorm.md)):
- Executive summary across all topics
- Session overview
- Key themes
- Topic summaries with links
- Recommended next steps
- Session index with links to all files

### Step 4.3: Present Results

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
| Final output | Sonnet | User-facing deliverable |

---

## Error Handling

If a subagent fails:
1. Log failure in `PLAN.md` Notes section with details
2. Attempt to re-run the subagent once
3. If still failing, continue with available outputs and note the gap
4. Never block the entire session on a single subagent failure

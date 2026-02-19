# Phase 2B Question Generation — Persona Evaluation Research Plan

**Date:** 2026-02-18
**Goal:** Evaluate all 22 Symphony personas for question generation quality, determine whether topic-aware persona selection is warranted for Phase 2B, and characterize the relationship between question-generating persona and downstream brainstorming territory.

**Scope:** Phase 2B persona-based question generation only. Phase 2A (generic/low effort) and Phase 2B.2 (question synthesis) are out of scope. Phase 3 brainstorming data is used for cross-phase convergence analysis only.

---

## Background

### Current Phase 2B Design

Phase 2B uses **fixed persona assignments** with no topic-aware selection:

| Effort | Personas |
|--------|----------|
| Medium (3) | The Questioner, The Analyst, The Audience Advocate |
| High (5) | + The Devil's Advocate, The First Principles Thinker |

This is the only phase in Idea Symphony where persona selection is hardcoded. Phase 3 uses the concentric circles model with topic-aware selection (persona-selection-guide.md). Phase 2B was designed early and has not been revisited since the extensive Phase 3 persona evaluation.

### Analytical Bias Hypothesis

All five current Phase 2B personas are classified as Analytical in the Phase 3 persona taxonomy:

| Persona | Phase 3 Classification | Phase 3 Status |
|---------|----------------------|----------------|
| Questioner | Analytical | **Retired** (CV=34.3%, subsumed by DA+FPT) |
| Analyst | Analytical | **Retired** (organizational overlap) |
| Audience Advocate | Analytical (Human-centered triad) | Active |
| Devil's Advocate | Analytical (Challenge triad core) | Active |
| First Principles Thinker | Analytical (Analytical core) | Active |

Zero Generative personas. Zero Connective personas. Two of the five are retired from Phase 3 due to quality/distinctiveness concerns.

**Hypothesis:** The all-analytical composition of Phase 2B systematically biases question generation toward analytical framing — risks, trade-offs, feasibility, stakeholder mapping — while underrepresenting creative, provocative, emotional, and systems-oriented question territory. This bias propagates into Phase 3 because topic clusters define the territory all brainstorming personas must operate within.

### Relationship to Phase 3 Findings

The Phase 3 persona evaluation (2026-02-15 through 2026-02-18) produced findings directly relevant to this investigation:

**B11 (Analytical Convergence):** "Analytical convergence is structural, not just thematic... Convergence is driven by question structure." This finding was about Phase 3 brainstorming responses converging, but it explicitly identifies question structure as a driver. If the questions themselves are analytically biased, the convergence problem starts one phase earlier.

**Cross-phase convergence observation:** Preliminary comparison of a persona's Phase 2B questions against its Phase 3 brainstorming responses shows strong thematic alignment. The Visionary asks Visionary-shaped questions that map directly to Visionary-shaped brainstorming territory. This suggests question-generating personas pre-select the territory that downstream brainstormers must operate within — a mechanism distinct from the B11 finding.

**Implication:** The best Phase 2B personas may not be the ones that generate the "best" questions in isolation, but the ones that open the widest, most diverse territory for the full Phase 3 roster to operate within.

---

## Research Questions

### Primary

1. **Distinctiveness:** Do different personas generate meaningfully different questions when given the same topic? Or do they converge on similar themes with surface-level framing differences?

2. **Analytical bias confirmation:** Does the current all-analytical Phase 2B set produce measurably narrower question territory compared to a mixed-mode set? Which question dimensions (strategic, tactical, creative, analytical, human-centered) are overrepresented or underrepresented?

3. **Whether topic-aware selection is warranted:** Is there sufficient variation in persona question-generation performance across topics to justify a selection algorithm, or are some personas universally strong question generators regardless of topic?

### Secondary

4. **Cross-phase convergence:** Do personas generate questions that map to their own brainstorming strengths? Which personas generate the most "selfless" questions — questions that create diverse territory beyond their own cognitive mode?

5. **Cluster divergence:** Do different personas produce different topic cluster structures (themes, framing, scope), or do they converge on similar clusters with different questions within them?

6. **Topic sensitivity:** Do some personas generate better questions for certain topic types? (The Phase 2B equivalent of the Phase 3 topic affinity matrix.)

7. **Retired persona fitness:** The Questioner and Analyst were retired from Phase 3 but remain assigned to Phase 2B. Does question generation represent a genuine strength for them, or do their Phase 3 weaknesses (inconsistency, organizational overlap) manifest here too?

---

## External Research: Question Generation in Facilitated Brainstorming

Research question generation methodologies in professional brainstorming and facilitated dialogue. Produce a synthesis document that maps our 22 personas against established frameworks to identify:

1. Which question-generation modes are well-covered by the current persona roster
2. Which question-generation modes are systematically absent
3. Whether the current fixed Phase 2B persona set (all analytical) introduces measurable bias
4. What cognitive roles or question-framing modes are most critical for producing diverse, high-quality question sets

Complete prompt: [2026-02-18_question-generation-research-external-research-prompt.md](./2026-02-18_question-generation-research-external-research-prompt.md)

## Test Data

### Corpus

66 question files generated 2026-02-18 using all 22 Symphony personas across 3 topics.

| Topic | Domain | Directory |
|-------|--------|-----------|
| Space-themed birthday party for a 5-year-old | Personal/creative | `test-runs/symphony-phase2-questions-persona-eval/space-party_2026-02-18/` |
| Community tool lending library for a neighborhood nonprofit | Community/social | `test-runs/symphony-phase2-questions-persona-eval/tool-library_2026-02-18/` |
| Building a modern habit-tracker web app | Technical/product | `test-runs/symphony-phase2-questions-persona-eval/habit-tracker_2026-02-18/` |

**Per-file structure:**
- YAML frontmatter (project-name, session-dir, date, effort, stage, persona)
- `# Brainstorming Questions from [Persona]: [Topic]`
- 3-5 topic clusters as `##` headings
- 15-20 questions per file, formatted as `**Short summary**: Description`
- Footer: `**Total questions**: N / **Topic clusters**: N`

**Companion data for cross-phase analysis:**
- Phase 3 brainstorming responses: `test-runs/persona-eval-{space-party,tool-library,habit-tracker}_2026-02-15/responses/`
- 264 response files (22 personas × 3 topics × 4 clusters)

Topics are identical across both test sets, enabling direct cross-phase comparison.

---

## Data Collection Scripts

Scripts will be located at `docs/dev/2026-02-18_question-generation-eval/scripts/`. All scripts operate on file metadata and structure without reading question content (quantitative only).

### Script 1: `question-stats.sh`

Per-file size statistics grouped by topic and persona.

**Sections:**
1. All files by topic (file count, total KB, avg KB)
2. Per-persona averages across all topics (total bytes, avg bytes, avg KB) — sorted by avg descending
3. Individual file listing (topic, persona, bytes, KB)

**Input path:** `test-runs/symphony-phase2-questions-persona-eval/[topic]_2026-02-18/questions/by-persona/`

### Script 2: `question-persona-comparison.sh`

Cross-topic consistency per persona (mean, min, max, range, CV%).

**Sections:**
1. Persona summary — bytes (files, mean, min, max, range, CV%) sorted by mean descending
2. Per-persona by topic (avg bytes per topic, spread) sorted by spread descending
3. Consistency ranking (lowest CV% = most consistent)

### Script 3: `question-structural-check.sh`

Format compliance and structural metrics per file.

**Metrics per file:**
- `has_frontmatter` — starts with `---`
- `h2_count` — number of `## ` headings (topic clusters)
- `question_count` — number of lines matching `**[^*]+**:` (bold-summary format)
- `has_footer` — contains `**Total questions**`
- `claimed_questions` — number extracted from footer
- `claimed_clusters` — number extracted from footer

**Sections:**
1. Per-file structural metrics
2. Summary (total files, frontmatter compliance, avg clusters, avg questions)
3. Flagged issues (missing frontmatter, low cluster count, question count mismatch vs. claimed)
4. Cluster count distribution (how many files have 3, 4, 5 clusters)
5. Question count distribution (bins: 10-14, 15-17, 18-20, 21+)

### Script 4: `question-cluster-analysis.sh`

Topic cluster naming and structure comparison across personas.

**Metrics per file:**
- Extract all `## ` heading text (cluster names)
- Count questions per cluster

**Sections:**
1. Per-file cluster listing (topic, persona, cluster names, questions per cluster)
2. Cluster name frequency — across all personas for each topic, which cluster themes appear most often? (Crude: extract key words from `##` headings, count frequencies)
3. Questions-per-cluster distribution (are clusters balanced or lopsided?)

This script is new — Phase 3 didn't need it because clusters were pre-defined input. Here the cluster structure *is* the persona's output.

---

## Analysis Sequence

### Step A: Run Data Collection Scripts - ✅ Complete

Run all four scripts on the 66 question files. Review quantitative baselines to:
- Confirm structural compliance across all files
- Identify volume patterns (which personas produce more/fewer questions?)
- Identify consistency patterns (which personas are stable across topics?)
- Get a first look at cluster structure variation

See results in [2026-02-19_question-generation-research-analysis-stepA.md](./2026-02-19_question-generation-research-analysis-stepA.md)

### Step B: Run External Research Prompt - in progress

### Step C: Design Targeted Investigations

Using quantitative data, external research findings, and the research questions above, define specific read-and-compare investigations. Each investigation is scoped for a single subagent's context window.

**Pre-planned investigation categories** (specific investigations designed after Step A data):

| Category | Research Question | Approach |
|----------|------------------|----------|
| **Distinctiveness** | Do personas generate different questions? | Pairwise comparison of suspected overlap clusters (same as Phase 3 B1-B6 pattern) |
| **Dimension coverage** | Which dimensions do personas favor? | Per-persona classification of questions by dimension (strategic/tactical/creative/analytical/human-centered) |
| **Cluster divergence** | Do personas produce different topic structures? | Compare cluster names and themes across personas for same topic |
| **Cross-phase convergence** | Do personas ask questions they can answer? | Compare persona's Phase 2B questions against Phase 3 responses — measure thematic overlap |
| **Analytical bias** | Does the current set produce narrower territory? | Compare combined question territory of current set vs. alternative sets |
| **Retired persona fitness** | Do Questioner/Analyst excel at question generation? | Direct quality comparison against other personas |

**Prioritization:** Use quantitative data to deprioritize investigations where the numbers already tell a clear story (e.g., if a persona's question count is consistently at the floor, low question generation fitness is established without deep reading).

### Step D: Run Investigations

Each investigation is a self-contained read-and-compare task delegated to a subagent. Run in parallel batches.

Each investigation produces:
- Assessment addressing the specific research question
- Specific evidence (quoted questions, thematic patterns, cluster comparisons)
- Preliminary recommendation

### Step E: Synthesis and Recommendations

Consolidate all investigation findings with quantitative data and external research.

**Primary output:** Whether topic-aware selection is warranted for Phase 2B.

**Possible outcomes:**
1. **Yes, warranted** — sufficient variation in persona question quality across topics to justify a selection algorithm. Follow-up work: design Phase 2B persona selection criteria.
2. **No, but roster change warranted** — topic-aware selection isn't needed, but the fixed set should change (e.g., replace retired personas, add a generative persona).
3. **No change warranted** — current design is adequate despite analytical composition, because question synthesis (Phase 2B.2) effectively compensates.

**Secondary outputs:**
- Per-persona question generation profile cards (adapted from Phase 3 template)
- Cross-phase convergence findings
- Cluster divergence findings
- Dimension coverage analysis
- Recommendations for Questioner and Analyst: keep in Phase 2B, refine prompts, or retire entirely

**Output document:** `docs/dev/2026-02-18_question-generation-results.md`

---

## Evaluation Dimensions (for Qualitative Investigations)

Adapted from Phase 3 profile cards for question generation context:

```
Persona: [Name]
Primary Mode: Generative / Analytical / Connective

Question Generation Profile:
  Distinctiveness: High / Moderate / Low
  Dimension Balance: [Which dimensions dominate? Which are absent?]
  Cluster Originality: High / Moderate / Low (vs. other personas on same topic)
  Cross-Phase Convergence: High / Moderate / Low (questions ↔ own brainstorm output)

Topic Performance:
  - Personal/Creative (space party): [notes]
  - Community/Social (tool library): [notes]
  - Technical/Product (habit tracker): [notes]

Question Quality Signals:
  - Opens new territory vs. explores familiar ground
  - Questions other personas wouldn't ask
  - Invites diverse response types (not just analytical)
  - Appropriate specificity (not too broad, not too narrow)

Overlap With: [List of personas generating similar questions]
Phase 2B Fitness: Strong / Moderate / Weak
Recommendation: Include in Phase 2B rotation / Exclude / Conditional (topic-dependent)
Notes: [Specific observations and evidence]
```

---

## Cross-Phase Convergence Analysis (Detail)

This is the novel investigation category not present in the Phase 3 research.

### Concept

For each persona, we have both:
- **Phase 2B output:** Questions they generate about a topic (this test)
- **Phase 3 output:** Brainstorming responses they produce for that topic (existing test data)

**Cross-phase convergence** measures the thematic overlap between a persona's questions and its brainstorming responses. High convergence means the persona asks questions it already knows how to answer — it's pre-loading its own territory. Low convergence means the persona generates questions that open territory *beyond* its own brainstorming strengths.

### Why This Matters

Phase 2B questions don't go to the persona that generated them — they go through synthesis (Phase 2B.2) into topic clusters, then to the *full Phase 3 roster*. A persona that generates "selfless" questions — opening territory for other personas to excel in — is more valuable for Phase 2B than one that generates great questions only it can answer.

**Example from preliminary observation:**
- The Visionary asks about "emotional memory architecture" and "sensory dimensions beyond visual" → these map directly to Visionary-type brainstorming responses
- If the Empath or Provocateur generates questions that open territory for the Visionary, Pragmatist, Systems Thinker, *and* Technical Expert, that's higher Phase 2B value

### Method

For each persona × topic combination:
1. Extract thematic keywords/phrases from Phase 2B questions
2. Extract thematic keywords/phrases from Phase 3 responses
3. Assess overlap: How much of the question territory does this persona's own brainstorming cover?
4. Assess reach: How much of the question territory opens space for *other* personas?

This is inherently qualitative — thematic comparison, not keyword counting. Each cross-phase comparison is a subagent investigation.

### Expected Patterns (Hypotheses)

- **High convergence expected:** Visionary (paradigm-shift questions → paradigm-shift responses), Pragmatist (logistics questions → logistics responses), Analyst (framework questions → framework responses)
- **Low convergence expected:** Provocateur (absurdist questions → territory no single persona "owns"), Empath (emotional questions → territory multiple personas can address from different angles), Connector (cross-domain questions → territory that spans many personas)
- **Interesting middle ground:** Devil's Advocate (risk questions → but other analytical personas also address risk well)

---

## Comparison to Phase 3 Research Design

| Aspect | Phase 3 Research | Phase 2B Research |
|--------|-----------------|-------------------|
| Test corpus | 264 files (22 × 3 × 4 clusters) | 66 files (22 × 3 topics) |
| File size | 4-14 KB (brainstorming responses) | TBD (question files, likely smaller) |
| Pre-defined structure | Questions were input (fixed) | Clusters are output (variable) |
| Distinctiveness measure | Unique ideas, signature patterns | Unique questions, cluster structures |
| Key quality signal | Idea generation, perspective uniqueness | Territory opened, dimension coverage |
| Novel analysis | — | Cross-phase convergence |
| External research | 10 frameworks (Manus + Gemini) | Question generation methodology |
| Companion data | — | Phase 3 brainstorming responses for cross-phase |

---

## Future Work (Out of Scope)

- **Phase 2B.2 synthesis evaluation:** How well does the question synthesis step compensate for input bias? (Requires running synthesis on different persona subsets — separate investigation)
- **Phase 2B selection algorithm design:** If topic-aware selection is warranted, design the selection criteria. (Follow-up to this research)
- **Phase 2A evaluation:** Generic (low effort) question generation quality. (Different mechanism, separate investigation)
- **Downstream impact measurement:** Does changing Phase 2B persona composition measurably change Phase 3 brainstorming quality? (Requires end-to-end test runs — expensive)

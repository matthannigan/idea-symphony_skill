# Persona Evaluation Research Plan

**Date:** 2026-02-15
**Goal:** Evaluate all Symphony personas (15 original + 3 new candidates) for (1) output distinctiveness and (2) brainstorming phase fit, using targeted test runs across three diverse topics.

**Scope:** Phase 3 brainstorming only. Phase 2 question generation is considered stable. Synthesis/ultra-mode testing (Connector and Momentum Builder as post-synthesis agents) is deferred to a future investigation — see `docs/voice-memos/2026-02-04_symphony-low-ultra.md` for ultra-mode concept.

---

## Background

Idea Symphony uses 15 fixed personas for Phase 3 brainstorming responses (3 at medium effort, 5 at high). The orchestrator selects persona subsets based on topic characteristics, but the selection criteria and individual persona effectiveness have not been systematically evaluated.

### Known Concerns

1. **The Connector** and **The Momentum Builder** are rarely selected for Phase 3 defaults — their natural modes (linking ideas, building on others' work) may require access to other personas' outputs, which Phase 3's isolated-context design prevents
2. **Analytical dominance** — 8 of 15 personas are primarily analytical, creating potential redundancy in the brainstorming phase where generative output is the goal
3. **Overlap clusters** exist (Visionary/Futurist, Pragmatist/Technical Expert, Devil's Advocate/Questioner/First Principles Thinker) that may not produce sufficiently distinct outputs
4. **Missing perspectives** — The current 15 may have gaps in coverage that new personas could fill

### Current Persona Classification

| Category | Personas |
|---|---|
| **Generative** (4) | Visionary, Momentum Builder, Analogist, Constraint Flipper |
| **Analytical** (8) | Pragmatist, Devil's Advocate, Analyst, Audience Advocate, Technical Expert, Questioner, Futurist, First Principles Thinker |
| **Connective** (3) | Connector, Storyteller, Synthesizer |

### New Candidate Personas (from framework gap analysis)

Three new personas were created based on convergent findings from the external framework research (`docs/dev/2026-02-15_symphony-persona-eval/frameworks-research-synthesis.md`). Both independent analyses (Manus and Gemini) flagged these as the highest-confidence gaps:

| Persona | Gap Addressed | Key Differentiation |
|---|---|---|
| **The Empath** | Emotional/intuitive reasoning (Red Hat) | Operates from gut feeling; distinct from Audience Advocate (user needs) and Storyteller (narrative) |
| **The Simplifier** | Subtractive thinking (additive bias) | Defaults to removal; distinct from First Principles Thinker (deconstruct to rebuild) and Pragmatist (feasibility) |
| **The Provocateur** | Provocative/absurdist thinking (Lateral Thinking) | Introduces impossible premises; distinct from Devil's Advocate (critiques proposals) and Constraint Flipper (inverts real constraints) |

Prompt files: `idea-symphony/references/personas/the-empath.md`, `the-simplifier.md`, `the-provocateur.md`

---

## Research Design

### Step 1: Controlled All-Persona Test Runs

**Purpose:** Generate comparable Phase 3 brainstorming outputs from all 15 personas across three diverse topics.

**Three test topics** (chosen to span personal, community, and technical domains):

| # | Topic | Domain | Why It Tests Differently |
|---|---|---|---|
| 1 | "Space-themed birthday party for a 5-year-old" | Personal/creative | Whimsical, emotionally-driven; tests whether analytical personas can contribute meaningfully to a creative/personal challenge |
| 2 | "Community tool lending library for a neighborhood nonprofit" | Community/social | Multi-stakeholder, logistical, equity-focused; well-balanced across all persona types |
| 3 | "Building a modern habit-tracker web app" | Technical/product | Technology-forward, UX-focused; tests whether non-technical personas add value to a technical domain |

**Procedure for each topic:**
1. Create a test session directory: `test-runs/persona-eval-[topic-slug]_2026-02-15/`
2. Write a fixed SCOPE.md with the topic and minimal context
3. Generate a standard set of questions (using existing question-generation process or a fixed question set) to serve as the input all personas respond to
4. Run **all 15 personas** through Phase 3 brainstorming against the same question set
5. Output: 15 response files per topic, 45 total across all three topics

**Why three topics:** A persona that appears redundant on one topic may prove distinctive on another. Three diverse topics prevent us from drawing conclusions that are actually topic-specific rather than persona-specific.

**Why all 15:** Even personas not currently in the Phase 3 default list get tested, so we can evaluate whether they _should_ be included.

### Step 2: Distinctiveness Analysis

**Purpose:** Determine whether each persona produces outputs that are meaningfully different from the others during brainstorming.

**Evaluator:** Claude (reading and comparing all 45 output files)

#### 2A. Per-Persona Content Profile
For each persona's output across all three topics, identify:
- **Unique contributions** — Ideas that no other persona raised
- **Signature patterns** — Recurring framing, vocabulary, structural approaches, or reasoning styles
- **Thematic gravity** — What dimensions of problems does this persona consistently gravitate toward?
- **Depth vs. breadth** — Does it go deep on fewer points or wide across many?
- **Topic sensitivity** — Does the persona's quality/distinctiveness vary significantly by topic type?

#### 2B. Pairwise Overlap Analysis
For each suspected overlap cluster, directly compare outputs across all three topics:

| Cluster | Personas to Compare | Key Question |
|---|---|---|
| Forward-looking | Visionary vs Futurist | Do they produce meaningfully different future-oriented ideas? |
| Feasibility | Pragmatist vs Technical Expert | Is the distinction (general vs technical) visible in outputs? |
| Challenge | Devil's Advocate vs Questioner vs First Principles Thinker | Do their approaches yield different insights during brainstorming? |
| Integration | Connector vs Synthesizer | Do they contribute distinctly when both lack access to others' work? |
| Expansion | Visionary vs Momentum Builder | Does "yes, and" differ from blue-sky when there's nothing to build on? |
| Human-centered | Audience Advocate vs Storyteller | Do they represent human perspective differently enough? |

#### 2C. Distinctiveness Scoring
Rate each persona on a three-level scale:
- **Highly distinct** — Unique voice, unique content, clearly differentiated across all topics
- **Moderately distinct** — Has its own perspective but overlaps significantly with 1-2 others
- **Low distinctiveness** — Outputs are hard to distinguish from another specific persona

### Step 3: Phase 3 Fit Assessment

**Purpose:** Evaluate how well each persona serves the brainstorming phase specifically (not question generation or synthesis).

Score each persona's brainstorm responses on:
- **Idea generation** — Volume and novelty of concrete, actionable ideas
- **Substantive depth** — Development beyond surface-level suggestions
- **Perspective uniqueness** — Does this persona contribute something no other would?
- **Generative value** — Does the persona generate new material, or does it primarily evaluate/organize (which may be better suited to synthesis)?
- **Independence viability** — Can this persona produce strong brainstorming output in isolation, or does it need access to others' work?

**Independence viability** is critical for assessing Connector, Momentum Builder, and Synthesizer — all three have modes that naturally depend on seeing other inputs. In Phase 3's isolated-context design, this dependency is a structural mismatch.

### Step 4: Gap Analysis

**Purpose:** Identify thinking modes, perspectives, or cognitive approaches missing from the current 15 that would meaningfully improve brainstorming quality.

#### 4A. Framework Coverage Mapping
Map the current 15 personas against established creative thinking and brainstorming frameworks:

- **Six Thinking Hats (de Bono):** White (facts/data), Red (feelings/intuition), Black (caution), Yellow (optimism), Green (creativity), Blue (process/meta) — which hats lack dedicated representation?
- **Design Thinking phases:** Empathize, Define, Ideate, Prototype, Test — are all phases represented?
- **SCAMPER dimensions:** Substitute, Combine, Adapt, Modify, Put to other use, Eliminate, Reverse
- **Stakeholder perspectives:** Regulatory, financial, cultural, operational, environmental
- **Cognitive diversity models:** Convergent/divergent thinking, lateral thinking, systems thinking, abductive reasoning

#### 4B. External Research
Research brainstorming methodology literature and established multi-perspective frameworks to identify:
- Cognitive roles commonly used in professional facilitation that have no equivalent persona
- Thinking styles from innovation frameworks (TRIZ, Lateral Thinking, CPS) not currently represented
- Stakeholder archetypes from design and strategy work that are missing

#### 4C. Output Gap Detection
After reviewing all 45 test outputs, identify:
- Dimensions of each topic that **no persona addressed** (e.g., financial models, regulatory concerns, cultural factors, environmental impact)
- Types of ideas consistently absent across all personas
- Thinking styles that would have produced qualitatively different contributions

#### 4D. Candidate Persona Concepts
For each identified gap, draft:
- Name and role description
- How it differs from existing personas
- Whether the gap could be filled by refining an existing persona instead
- Priority level (critical gap vs nice-to-have)

### Step 5: Recommendations

Based on findings from Steps 2-4, produce recommendations in these categories:

1. **Keep as-is** — Personas performing well in Phase 3 with high distinctiveness
2. **Prompt refinement** — Personas whose prompts need sharpening to increase distinctiveness or generative output
3. **Phase reassignment candidates** — Personas better suited to synthesis than brainstorming (flagged for future ultra-mode investigation)
4. **Merge candidates** — Persona pairs where one could absorb the other's strengths
5. **Retirement candidates** — Personas that don't justify their context window cost in Phase 3
6. **Phase-specific prompt variants** — Flag only if data strongly suggests a persona needs a brainstorming-specific prompt distinct from its general identity
7. **New persona candidates** — Specific proposals for personas to fill identified gaps

---

## Evaluation Profile Card Template

Each persona will receive a standardized profile:

```
Persona: [Name]
Primary Mode: Generative / Analytical / Connective

Brainstorming Distinctiveness: High / Moderate / Low
Brainstorming Fit: Strong / Moderate / Weak
Independence Viability: High / Moderate / Low

Topic Performance:
  - Personal/Creative: [notes]
  - Community/Social: [notes]
  - Technical/Product: [notes]

Overlap With: [List of similar personas]
Recommendation: Keep / Refine / Reassign / Merge / Retire
Notes: [Specific observations and evidence]
```

---

## Execution Plan

### Completed Steps

| Step | Description | Status | Output |
|---|---|---|---|
| 1a | Create 3 test session directories with fixed SCOPE.md and hand-crafted question sets | Done | `test-runs/persona-eval-*/` with `REQUEST.md` and `questions/by-topic/` |
| 1b | Run all 15 original personas through Phase 3 brainstorming (45 runs, Haiku, batches of 5) | Done | 180 response files (15 personas x 4 clusters x 3 topics) |
| 1c | Run 3 new candidate personas through Phase 3 brainstorming (9 runs, Haiku, batches of 5) | Done | 36 response files (3 personas x 4 clusters x 3 topics) |
| 4a | External framework research (Manus + Gemini, 10 frameworks) | Done | `frameworks-research-synthesis.md` |
| 4b | New candidate persona creation (Empath, Simplifier, Provocateur) | Done | 3 persona files in `idea-symphony/references/personas/` |

### Remaining Steps — Analysis Sequence

**Step A: Update quantitative baselines**

Re-run data collection scripts (`docs/dev/2026-02-15_symphony-persona-eval/scripts/`) now that 18 personas are included. Review updated metrics to:
- Confirm new persona files are structurally compliant
- See where the 3 new personas fall in the volume/consistency rankings
- Identify quantitative signals that guide which qualitative investigations to prioritize (e.g., if a persona's output is consistently tiny, deprioritize deep reading)

**Step B: Design targeted investigations**

Using the research plan (Steps 2-3 above), the frameworks research synthesis (§4), and the quantitative data, define a set of focused read-and-compare investigations. Each investigation is scoped to fit within a single subagent's context window (~5-7KB per response file).

Planned investigations:

| # | Investigation | Files to Compare | Key Question |
|---|---|---|---|
| B1 | Forward-looking overlap | Visionary vs Futurist (same cluster, all 3 topics) | Do they produce meaningfully different future-oriented ideas? |
| B2 | Feasibility overlap | Pragmatist vs Technical Expert (same cluster, all 3 topics) | Is the general vs technical distinction visible in outputs? |
| B3 | Challenge overlap | Devil's Advocate vs Questioner vs First Principles Thinker (same cluster, all 3 topics) | Do their challenging approaches yield different insights? |
| B4 | Integration overlap | Connector vs Synthesizer (same cluster, all 3 topics) | Do they contribute distinctly when both lack access to others' work? |
| B5 | Expansion overlap | Visionary vs Momentum Builder (same cluster, all 3 topics) | Does "yes, and" differ from blue-sky when there's nothing to build on? |
| B6 | Human-centered overlap | Audience Advocate vs Storyteller (same cluster, all 3 topics) | Do they represent human perspective differently enough? |
| B7 | Empath differentiation | Empath vs Audience Advocate vs Storyteller (same cluster, all 3 topics) | Does the new Empath produce genuinely distinct emotional-first content? |
| B8 | Simplifier differentiation | Simplifier vs First Principles Thinker vs Pragmatist (same cluster, all 3 topics) | Does the new Simplifier produce subtractive ideas the others miss? |
| B9 | Provocateur differentiation | Provocateur vs Constraint Flipper vs Devil's Advocate (same cluster, all 3 topics) | Does the new Provocateur produce genuinely absurd/lateral provocations? |
| B10 | Independence viability | Connector, Momentum Builder, Synthesizer (sample clusters across topics) | Do their outputs feel like brainstorming or like they're missing something to react to? |
| B11 | Analytical convergence | All 8 analytical personas on one cluster per topic | Do they produce meaningfully different ideas, or do they converge? |
| B12 | Output gap detection | All 18 personas on one cluster per topic | What dimensions of the topic did *no* persona address? |

**Prioritization guidance:** After Step A, deprioritize investigations for personas whose quantitative profile already tells a clear story (e.g., consistently tiny output = weak Phase 3 fit regardless of content). Focus investigation time on the close-overlap clusters where quantitative data alone can't distinguish personas.

**Step C: Run investigations in parallel**

Each investigation is a self-contained read-and-compare task delegated to a subagent. The subagent reads the specific response files for its assigned cluster, compares them side-by-side, and returns a structured finding. Run up to 5 investigations in parallel.

Each investigation produces:
- Distinctiveness assessment for the compared personas
- Specific evidence (quotes, unique ideas, thematic patterns)
- Recommendation (keep both, merge, refine prompt, reassign)

**Step D: Final synthesis and recommendations**

Gather all investigation findings, combine with quantitative data and framework research, and produce the comprehensive recommendations document.

**Output:** `docs/dev/2026-02-15_persona-evaluation-results.md`

Contents:
1. **Per-persona profile cards** — Standardized evaluation for all 18 personas (see template above)
2. **Overlap cluster findings** — Which pairs/groups are distinct vs redundant, with evidence
3. **New persona validation** — Whether Empath, Simplifier, and Provocateur justify inclusion
4. **Analytical rebalancing recommendations** — Which analytical personas to keep, merge, or retire
5. **Independence viability findings** — Which personas are structurally mismatched with Phase 3's isolated design
6. **Output gap report** — What perspectives are still missing after adding the 3 new personas
7. **Updated selection guidance** — Revised persona selection recommendations for the orchestrator
8. **Recommended roster changes** — Final keep/refine/reassign/merge/retire for each persona

---

## Data Collection Scripts

Quantitative metadata scripts that analyze test output without reading file content. All scripts in `docs/dev/2026-02-15_symphony-persona-eval/scripts/`.

| Script | Purpose | Output |
|---|---|---|
| `response-stats.sh` | Per-file size stats grouped by session, persona, and cluster | `response-stats.txt` |
| `persona-comparison.sh` | Cross-topic consistency per persona (mean, min, max, CV%) | `persona-comparison.txt` |
| `cluster-comparison.sh` | Cross-persona cluster analysis, question count vs output size | `cluster-comparison.txt` |
| `structural-check.sh` | Format compliance (frontmatter, headings, bullet counts) | `structural-check.txt` |

**Run from repo root:** `bash docs/dev/2026-02-15_symphony-persona-eval/scripts/[script].sh`

### Key Findings from Data Collection (15 original personas; pending refresh with 18)

**Volume:**
- 180 response files, ~1.04MB total (space-party: 329KB, tool-library: 390KB, habit-tracker: 322KB)
- Average file: 5.7KB across all sessions
- *After new personas: expect 216 total files (180 + 36)*

**Per-persona output volume (avg bytes, ranked):**
1. The Storyteller — 7.8KB (largest; especially verbose on tool-library at 10.2KB avg)
2. The Visionary — 7.5KB
3. The Momentum Builder — 6.6KB
4. The Analyst — 6.4KB
5. The Technical Expert — 6.3KB
6. The First Principles Thinker — 6.1KB
7. The Analogist — 6.0KB
8. The Synthesizer — 5.9KB
9. The Devil's Advocate — 5.9KB
10. The Futurist — 5.6KB
11. The Audience Advocate — 5.4KB
12. The Constraint Flipper — 5.0KB
13. The Connector — 5.0KB
14. The Questioner — 4.7KB (smallest; tool-library avg only 3.0KB)
15. The Pragmatist — 4.6KB (most consistent CV=8.3%)

**Consistency (coefficient of variation):**
- Most consistent: The Pragmatist (8.3%), Momentum Builder (10.6%), Synthesizer (10.9%)
- High variance: The Questioner (34.3%), The Analogist (31.7%), The Technical Expert (26.5%)
- The Questioner's variance is topic-dependent: 6.8KB on space-party but only 3.0KB on tool-library

**Structural compliance:**
- 180/180 files have frontmatter
- 0 flagged issues (all files have adequate heading and bullet counts)
- Heading distribution: 138 files with 5 headings, 42 with 4 (matching question counts per cluster)
- Bullet distribution: 129 files with 15-19 bullets, 41 with 10-14, 9 with 20-24

**Topic sensitivity:**
- Tool-library produced the most content overall (390KB vs 329/322KB)
- Some personas are highly topic-sensitive (Storyteller: 4KB spread between topics) while others are stable (Pragmatist: 342-byte spread)

---

## Future Work (Deferred)

The following are explicitly out of scope for this investigation but noted for follow-up:

- **Ultra-mode synthesis testing:** Running Connector, Momentum Builder, and a custom SME persona as post-synthesis agents with access to all summaries (see voice memo `2026-02-04_symphony-low-ultra.md`)
- **Phase 2 persona evaluation:** Question generation personas are considered stable
- **Factory persona evaluation:** Factory auto-generates personas per session; different evaluation approach needed

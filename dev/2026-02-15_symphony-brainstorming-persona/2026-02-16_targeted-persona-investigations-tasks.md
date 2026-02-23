# Targeted Persona Investigations

**Date:** 2026-02-16
**Parent:** `docs/dev/2026-02-15_persona-evaluation-research.md` (Step B)
**Inputs:**
- Updated quantitative baselines (`docs/dev/2026-02-15_symphony-persona-eval/*.txt`, 18 personas, 216 files)
- Framework research synthesis (`docs/dev/2026-02-15_symphony-persona-eval/frameworks-research-synthesis.md`)

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

---

## Quantitative Signals Summary

Key findings from the updated 18-persona baselines that guide investigation prioritization:

**New persona placement (avg bytes, ranked out of 18):**
- The Provocateur: #10, 5.6KB avg, CV=24.3% (moderately consistent)
- The Empath: #11, 5.5KB avg, CV=13.5% (highly consistent)
- The Simplifier: #14, 5.2KB avg, CV=12.5% (highly consistent)

All three produce mid-range output with no structural issues. None are volume outliers that would suggest prompt failure or degenerate behavior. The Provocateur shows meaningful topic sensitivity (4.1KB space-party → 7.2KB habit-tracker), worth investigating qualitatively.

**Personas with quantitative red flags (deprioritize deep reading):**
- The Questioner: smallest output (4.7KB avg), highest variance (CV=34.3%), tool-library avg only 3.0KB — consistently the thinnest producer
- The Pragmatist: smallest output (4.6KB avg) but most consistent (CV=8.3%) — reliably concise, not failing

**Personas with clear quantitative strength (deprioritize unless overlap concerns):**
- The Storyteller: largest output (7.6KB avg) with distinctive topic sensitivity (tool-library 10.2KB vs habit-tracker 6.2KB)
- The Visionary: second largest (7.3KB avg), highly consistent (CV=14.8%)

**Structural compliance notes:**
- 216/216 files have frontmatter, 0 flagged issues
- New personas on habit-tracker produce higher bullet counts (20-25) vs the standard 12-15 — Provocateur and Simplifier prompts may encourage more granular responses on technical topics
- Technical Expert on habit-tracker has low bullet counts (8-10) but high claimed responses (20-25) — longer bullets, not fewer ideas

---

## Investigation Design

Each investigation is a self-contained read-and-compare task for a subagent. Investigations specify exact file paths, comparison criteria, and expected output format.

### Cluster Selection Strategy

Each topic has 4 clusters. To keep investigations within context window limits (~5-7KB per response file), each investigation compares personas within a **single cluster per topic** rather than across all clusters. Cluster selection prioritizes:

1. **Cluster 01** (first cluster) for most investigations — it's the broadest thematic cluster, giving personas the most room to differentiate
2. **Cluster 04** (last cluster) as secondary — it has 4 questions vs 5, producing smaller files (~4.7KB avg), useful when comparing 3+ personas
3. Specific clusters chosen when the cluster theme is especially relevant to the comparison (e.g., equity-and-access for human-centered overlap)

### File Path Convention

All response files follow: `test-runs/persona-eval-[topic]_2026-02-15/responses/[cluster]/[persona].md`

Abbreviated as: `[topic]/[cluster]/[persona].md`

---

## Investigations

### B1: Forward-Looking Overlap — Visionary vs Futurist

**Key question:** Do they produce meaningfully different future-oriented ideas, or do they converge on the same speculative territory?

**Quantitative context:** Visionary (7.3KB, CV=14.8%) produces ~35% more content than Futurist (5.4KB, CV=14.1%). Both are highly consistent. Visionary is #2 overall, Futurist is #12. The volume gap alone suggests different engagement levels.

**Files to compare (6 files, ~38KB total):**
- `test-runs/persona-eval-space-party_2026-02-15/responses/01_theme-and-experience/the-visionary.md` (6.5KB)
- `test-runs/persona-eval-space-party_2026-02-15/responses/01_theme-and-experience/the-futurist.md` (5.1KB)
- `test-runs/persona-eval-tool-library_2026-02-15/responses/01_mission-and-model/the-visionary.md` (9.3KB)
- `test-runs/persona-eval-tool-library_2026-02-15/responses/01_mission-and-model/the-futurist.md` (6.9KB)
- `test-runs/persona-eval-habit-tracker_2026-02-15/responses/01_product-vision-and-differentiation/the-visionary.md` (7.0KB)
- `test-runs/persona-eval-habit-tracker_2026-02-15/responses/01_product-vision-and-differentiation/the-futurist.md` (6.2KB)

**Comparison criteria:**
- Time horizon: Does the Visionary think bigger/further than the Futurist, or vice versa?
- Grounding: Does one anchor ideas in trends/evidence while the other is more speculative?
- Idea type: Are they generating different *kinds* of forward-looking ideas?
- Unique contributions: List ideas from each that the other would never produce
- Convergence points: List ideas where both personas say essentially the same thing

**Expected output:** Distinctiveness rating (High/Moderate/Low), recommendation (keep both / merge / refine prompts), evidence summary.

**Priority:** High — this is the most commonly cited overlap concern.

**Output file:** `docs/dev/2026-02-15_symphony-persona-eval/targeted-investigations/01_forward-looking-overlap.md`

---

### B2: Feasibility Overlap — Pragmatist vs Technical Expert

**Key question:** Is the general-feasibility vs technical-feasibility distinction visible in outputs, or do they converge on the same practical concerns?

**Quantitative context:** Technical Expert (6.2KB, CV=26.5%) produces ~36% more content than Pragmatist (4.5KB, CV=8.3%). Technical Expert has high topic sensitivity (tool-library 8.6KB vs space-party 5.0KB); Pragmatist is the most consistent persona in the entire roster. Very different quantitative profiles.

**Files to compare (6 files, ~33KB total):**
- `test-runs/persona-eval-space-party_2026-02-15/responses/01_theme-and-experience/the-pragmatist.md` (4.9KB)
- `test-runs/persona-eval-space-party_2026-02-15/responses/01_theme-and-experience/the-technical-expert.md` (5.4KB)
- `test-runs/persona-eval-tool-library_2026-02-15/responses/02_operations-and-systems/the-pragmatist.md` (4.3KB)
- `test-runs/persona-eval-tool-library_2026-02-15/responses/02_operations-and-systems/the-technical-expert.md` (9.1KB)
- `test-runs/persona-eval-habit-tracker_2026-02-15/responses/03_technical-architecture/the-pragmatist.md` (4.7KB)
- `test-runs/persona-eval-habit-tracker_2026-02-15/responses/03_technical-architecture/the-technical-expert.md` (5.6KB)

**Comparison criteria:**
- Domain specificity: Does the Technical Expert engage with domain-specific knowledge the Pragmatist lacks?
- Abstraction level: Does the Pragmatist operate at a higher level of generality?
- Idea type: Implementation details vs strategic feasibility considerations
- Topic sensitivity: How do their relative contributions shift between personal (space-party), community (tool-library), and technical (habit-tracker) topics?
- Unique contributions: List concerns from each that the other doesn't raise

**Expected output:** Distinctiveness rating, recommendation, evidence summary.

**Priority:** High — quantitative profiles suggest likely distinct, but need content confirmation. The tool-library operations cluster is chosen deliberately to test whether the Technical Expert engages with systems/logistics differently than the Pragmatist.

**Output file:** `docs/dev/2026-02-15_symphony-persona-eval/targeted-investigations/02_feasibility-overlap.md`

---

### B3: Challenge Overlap — Devil's Advocate vs Questioner vs First Principles Thinker

**Key question:** Do their challenging approaches yield different insights, or do they all converge on "here's what's wrong with this idea"?

**Quantitative context:** First Principles Thinker (6.0KB) > Devil's Advocate (5.8KB) > Questioner (4.7KB). The Questioner is the smallest and most variable persona (CV=34.3%), with tool-library output dropping to 3.0KB. First Principles Thinker is moderately consistent; Devil's Advocate is highly consistent.

**Files to compare (9 files, ~48KB total — use cluster 04 for smaller files):**
- `test-runs/persona-eval-space-party_2026-02-15/responses/04_inclusion-and-community/the-devils-advocate.md` (4.5KB)
- `test-runs/persona-eval-space-party_2026-02-15/responses/04_inclusion-and-community/the-questioner.md` (5.9KB)
- `test-runs/persona-eval-space-party_2026-02-15/responses/04_inclusion-and-community/the-first-principles-thinker.md` (6.1KB)
- `test-runs/persona-eval-tool-library_2026-02-15/responses/04_sustainability-and-growth/the-devils-advocate.md` (4.6KB)
- `test-runs/persona-eval-tool-library_2026-02-15/responses/04_sustainability-and-growth/the-questioner.md` (2.6KB)
- `test-runs/persona-eval-tool-library_2026-02-15/responses/04_sustainability-and-growth/the-first-principles-thinker.md` (6.5KB)
- `test-runs/persona-eval-habit-tracker_2026-02-15/responses/04_business-and-sustainability/the-devils-advocate.md` (6.1KB)
- `test-runs/persona-eval-habit-tracker_2026-02-15/responses/04_business-and-sustainability/the-questioner.md` (3.7KB)
- `test-runs/persona-eval-habit-tracker_2026-02-15/responses/04_business-and-sustainability/the-first-principles-thinker.md` (4.4KB)

**Comparison criteria:**
- Challenge mode: Criticism of proposals (DA), exploratory questioning (Q), decomposition to fundamentals (FPT)?
- Constructiveness: Does each persona offer alternatives, or only identify problems?
- Depth of analysis: Surface-level poking vs structural critique
- Unique contributions: What does each surface that the other two miss?
- The Questioner hypothesis: At 2.6KB on tool-library sustainability, is the Questioner producing *thin* output or *focused* output? Is brevity a sign of weak engagement or concise questioning?

**Expected output:** Distinctiveness ratings for each pair (DA-Q, DA-FPT, Q-FPT), recommendation for each, evidence summary.

**Priority:** High — three personas in one overlap cluster is the densest potential redundancy. The Questioner's quantitative weakness makes this especially important for keep/retire decisions.

**Output file:** `docs/dev/2026-02-15_symphony-persona-eval/targeted-investigations/03_challenge-overlap.md`

---

### B4: Integration Overlap — Connector vs Synthesizer

**Key question:** Do they contribute distinctly when both lack access to others' work, or does their connective/integrative orientation produce thin or generic output in isolation?

**Quantitative context:** Synthesizer (5.8KB, CV=10.9%) slightly larger than Connector (4.9KB, CV=11.4%). Both are highly consistent. Neither is a volume outlier — they're mid-pack producers.

**Files to compare (6 files, ~33KB total):**
- `test-runs/persona-eval-space-party_2026-02-15/responses/01_theme-and-experience/the-connector.md` (4.9KB)
- `test-runs/persona-eval-space-party_2026-02-15/responses/01_theme-and-experience/the-synthesizer.md` (5.7KB)
- `test-runs/persona-eval-tool-library_2026-02-15/responses/01_mission-and-model/the-connector.md` (5.8KB)
- `test-runs/persona-eval-tool-library_2026-02-15/responses/01_mission-and-model/the-synthesizer.md` (6.6KB)
- `test-runs/persona-eval-habit-tracker_2026-02-15/responses/01_product-vision-and-differentiation/the-connector.md` (5.6KB)
- `test-runs/persona-eval-habit-tracker_2026-02-15/responses/01_product-vision-and-differentiation/the-synthesizer.md` (6.8KB)

**Comparison criteria:**
- Connective mode: Does the Connector link *within* the topic (between sub-themes) while the Synthesizer attempts to create unified frameworks?
- Independence viability: Do either persona's outputs feel like they're "missing" other inputs to react to?
- Generative vs organizational: Does each generate new ideas, or primarily organize/structure existing thinking?
- Unique contributions: What ideas does each surface that the other (and other personas) don't?
- Structural mismatch signal: Any output that reads like a synthesis template with nothing to synthesize?

**Expected output:** Distinctiveness rating, independence viability rating for each, recommendation, evidence summary.

**Priority:** High — both personas are flagged as potential structural mismatches with Phase 3's isolated design (research plan §3, "Independence viability" criterion).

**Output file:** `docs/dev/2026-02-15_symphony-persona-eval/targeted-investigations/04_integration-overlap.md`

---

### B5: Expansion Overlap — Visionary vs Momentum Builder

**Key question:** Does "yes, and" differ from blue-sky when there's nothing to build on?

**Quantitative context:** Visionary (7.3KB) slightly larger than Momentum Builder (6.4KB). Both are highly consistent. Momentum Builder is #3 overall — one of the most prolific personas.

**Files to compare (6 files, ~41KB total):**
- `test-runs/persona-eval-space-party_2026-02-15/responses/02_activities-and-engagement/the-visionary.md` (7.1KB)
- `test-runs/persona-eval-space-party_2026-02-15/responses/02_activities-and-engagement/the-momentum-builder.md` (6.8KB)
- `test-runs/persona-eval-tool-library_2026-02-15/responses/01_mission-and-model/the-visionary.md` (9.3KB)
- `test-runs/persona-eval-tool-library_2026-02-15/responses/01_mission-and-model/the-momentum-builder.md` (7.5KB)
- `test-runs/persona-eval-habit-tracker_2026-02-15/responses/01_product-vision-and-differentiation/the-visionary.md` (7.0KB)
- `test-runs/persona-eval-habit-tracker_2026-02-15/responses/01_product-vision-and-differentiation/the-momentum-builder.md` (6.1KB)

**Comparison criteria:**
- Starting point: Does the Visionary generate from vision/aspiration while the Momentum Builder tries to elaborate on something?
- Tone: Inspirational/aspirational vs enthusiastic/iterative
- Independence viability: Does the Momentum Builder produce distinctive output without others' ideas to build on?
- Idea overlap: How much do their actual ideas converge?
- Structural mismatch signal: Does the Momentum Builder's output feel like it needs something to react to?

**Expected output:** Distinctiveness rating, independence viability for Momentum Builder, recommendation, evidence summary.

**Priority:** Medium — the Momentum Builder is flagged as a potential structural mismatch, but quantitative data shows strong, consistent output suggesting it may have adapted.

**Output file:** `docs/dev/2026-02-15_symphony-persona-eval/targeted-investigations/05_expansion-overlap.md`

---

### B6: Human-Centered Overlap — Audience Advocate vs Storyteller

**Key question:** Do they represent human perspective differently enough to justify separate roster slots?

**Quantitative context:** Storyteller (7.6KB, CV=23.8%) is significantly larger than Audience Advocate (5.3KB, CV=14.2%). Storyteller has the most topic-sensitive output (4.0KB spread); Audience Advocate is more consistent. Different volume profiles.

**Files to compare (6 files, ~37KB total):**
- `test-runs/persona-eval-space-party_2026-02-15/responses/01_theme-and-experience/the-audience-advocate.md` (5.9KB)
- `test-runs/persona-eval-space-party_2026-02-15/responses/01_theme-and-experience/the-storyteller.md` (7.1KB)
- `test-runs/persona-eval-tool-library_2026-02-15/responses/03_equity-and-access/the-audience-advocate.md` (4.7KB)
- `test-runs/persona-eval-tool-library_2026-02-15/responses/03_equity-and-access/the-storyteller.md` (10.9KB)
- `test-runs/persona-eval-habit-tracker_2026-02-15/responses/02_user-experience-and-engagement/the-audience-advocate.md` (6.2KB)
- `test-runs/persona-eval-habit-tracker_2026-02-15/responses/02_user-experience-and-engagement/the-storyteller.md` (6.5KB)

**Comparison criteria:**
- Orientation: User needs/requirements (AA) vs narrative/emotional engagement (ST)?
- Abstraction: Does the Audience Advocate think in user segments/personas while the Storyteller thinks in experiences/journeys?
- Idea type: Functional recommendations vs experiential visions
- Unique contributions: What does each surface about the human dimension that the other misses?
- Framework context: The synthesis flagged Ethnographer and Empath as adjacent personas — how much of their intended territory does the AA/ST pair already cover?

**Expected output:** Distinctiveness rating, recommendation (with note on whether Audience Advocate prompt should absorb ethnographic elements per synthesis §4.2), evidence summary.

**Priority:** Medium — quantitative profiles suggest likely distinct (very different volume and topic sensitivity), but content comparison needed to confirm the distinction is substantive, not just verbosity.

**Output file:** `docs/dev/2026-02-15_symphony-persona-eval/targeted-investigations/06_human-centered-overlap.md`

---

### B7: Empath Differentiation — Empath vs Audience Advocate vs Storyteller

**Key question:** Does the new Empath produce genuinely distinct emotional-first content, or does it overlap with the existing human-centered personas?

**Quantitative context:** Empath (5.5KB, CV=13.5%) falls between Audience Advocate (5.3KB) and Storyteller (7.6KB). All three are highly consistent. The Empath's output is structurally compliant but lacks claimed question/response counts in its footer (minor formatting gap in the new persona prompt).

**Files to compare (9 files, ~55KB total — use cluster 01 for maximum thematic breadth):**
- `test-runs/persona-eval-space-party_2026-02-15/responses/01_theme-and-experience/the-empath.md` (6.6KB)
- `test-runs/persona-eval-space-party_2026-02-15/responses/01_theme-and-experience/the-audience-advocate.md` (5.9KB)
- `test-runs/persona-eval-space-party_2026-02-15/responses/01_theme-and-experience/the-storyteller.md` (7.1KB)
- `test-runs/persona-eval-tool-library_2026-02-15/responses/01_mission-and-model/the-empath.md` (6.3KB)
- `test-runs/persona-eval-tool-library_2026-02-15/responses/01_mission-and-model/the-audience-advocate.md` (5.2KB)
- `test-runs/persona-eval-tool-library_2026-02-15/responses/01_mission-and-model/the-storyteller.md` (10.2KB)
- `test-runs/persona-eval-habit-tracker_2026-02-15/responses/02_user-experience-and-engagement/the-empath.md` (5.1KB)
- `test-runs/persona-eval-habit-tracker_2026-02-15/responses/02_user-experience-and-engagement/the-audience-advocate.md` (6.2KB)
- `test-runs/persona-eval-habit-tracker_2026-02-15/responses/02_user-experience-and-engagement/the-storyteller.md` (6.5KB)

**Comparison criteria:**
- Emotional orientation: Does the Empath operate from *feelings/intuition* vs the AA's *user needs* vs the ST's *narrative*?
- Language patterns: Does the Empath use emotional vocabulary (feel, sense, resonate, anxious, delighted) distinctly from the others?
- Idea type: Emotional impact assessments vs user requirements vs narrative experiences
- Unique contributions: What does the Empath surface about the topic that neither AA nor ST would?
- Risk check: Does the Empath's emotional reasoning feel genuine/useful, or does it read as shallow sentiment labeling?

**Expected output:** Distinctiveness rating for Empath vs each existing persona, validation recommendation (include in roster / refine prompt / reject), evidence summary.

**Priority:** High — this is a validation test for the highest-confidence new persona from the framework synthesis.

**Output file:** `docs/dev/2026-02-15_symphony-persona-eval/targeted-investigations/07_empath-differentiation.md`

---

### B8: Simplifier Differentiation — Simplifier vs First Principles Thinker vs Pragmatist

**Key question:** Does the new Simplifier produce subtractive ideas that the others miss, or does its "remove and reduce" orientation overlap with decomposition (FPT) and feasibility (P)?

**Quantitative context:** Simplifier (5.2KB, CV=12.5%) is mid-range and highly consistent. First Principles Thinker (6.0KB) produces ~15% more; Pragmatist (4.5KB) produces ~14% less. All three are consistent performers.

**Files to compare (9 files, ~48KB total — use cluster 01):**
- `test-runs/persona-eval-space-party_2026-02-15/responses/01_theme-and-experience/the-simplifier.md` (5.2KB)
- `test-runs/persona-eval-space-party_2026-02-15/responses/01_theme-and-experience/the-first-principles-thinker.md` (6.8KB)
- `test-runs/persona-eval-space-party_2026-02-15/responses/01_theme-and-experience/the-pragmatist.md` (4.9KB)
- `test-runs/persona-eval-tool-library_2026-02-15/responses/01_mission-and-model/the-simplifier.md` (5.5KB)
- `test-runs/persona-eval-tool-library_2026-02-15/responses/01_mission-and-model/the-first-principles-thinker.md` (6.3KB)
- `test-runs/persona-eval-tool-library_2026-02-15/responses/01_mission-and-model/the-pragmatist.md` (4.6KB)
- `test-runs/persona-eval-habit-tracker_2026-02-15/responses/01_product-vision-and-differentiation/the-simplifier.md` (6.7KB)
- `test-runs/persona-eval-habit-tracker_2026-02-15/responses/01_product-vision-and-differentiation/the-first-principles-thinker.md` (5.3KB)
- `test-runs/persona-eval-habit-tracker_2026-02-15/responses/01_product-vision-and-differentiation/the-pragmatist.md` (5.3KB)

**Comparison criteria:**
- Subtractive orientation: Does the Simplifier explicitly recommend *removing* things, or does it just suggest *simpler alternatives* (which is additive thinking in disguise)?
- Decomposition vs subtraction: FPT strips to fundamentals to *rebuild*; does the Simplifier strip to fundamentals to *stop there*?
- Feasibility vs minimalism: Pragmatist simplifies for *practicality*; does the Simplifier simplify for *elegance/reduction*?
- Unique contributions: What does the Simplifier recommend removing/eliminating that neither FPT nor Pragmatist would?
- Risk check: On a simple topic (space-party), does the Simplifier produce thin output because there's little to subtract?

**Expected output:** Distinctiveness rating for Simplifier vs each existing persona, validation recommendation, evidence summary.

**Priority:** High — validation test for the second highest-confidence new persona.

**Output file:** `docs/dev/2026-02-15_symphony-persona-eval/targeted-investigations/08_simplifier-differentiation.md`

---

### B9: Provocateur Differentiation — Provocateur vs Constraint Flipper vs Devil's Advocate

**Key question:** Does the new Provocateur produce genuinely absurd/lateral provocations, or does it converge on the same territory as constraint inversion (CF) and critical challenge (DA)?

**Quantitative context:** Provocateur (5.6KB, CV=24.3%) is mid-range but moderately variable. It shows strong topic sensitivity — smallest output on space-party (4.1KB), largest on habit-tracker (7.2KB). Constraint Flipper (4.9KB, CV=21.7%) is also moderately variable. Devil's Advocate (5.8KB, CV=11.8%) is highly consistent.

**Files to compare (9 files, ~46KB total — use cluster 01):**
- `test-runs/persona-eval-space-party_2026-02-15/responses/01_theme-and-experience/the-provocateur.md` (4.4KB)
- `test-runs/persona-eval-space-party_2026-02-15/responses/01_theme-and-experience/the-constraint-flipper.md` (4.5KB)
- `test-runs/persona-eval-space-party_2026-02-15/responses/01_theme-and-experience/the-devils-advocate.md` (6.1KB)
- `test-runs/persona-eval-tool-library_2026-02-15/responses/01_mission-and-model/the-provocateur.md` (6.5KB)
- `test-runs/persona-eval-tool-library_2026-02-15/responses/01_mission-and-model/the-constraint-flipper.md` (6.9KB)
- `test-runs/persona-eval-tool-library_2026-02-15/responses/01_mission-and-model/the-devils-advocate.md` (6.2KB)
- `test-runs/persona-eval-habit-tracker_2026-02-15/responses/01_product-vision-and-differentiation/the-provocateur.md` (7.6KB)
- `test-runs/persona-eval-habit-tracker_2026-02-15/responses/01_product-vision-and-differentiation/the-constraint-flipper.md` (5.1KB)
- `test-runs/persona-eval-habit-tracker_2026-02-15/responses/01_product-vision-and-differentiation/the-devils-advocate.md` (6.2KB)

**Comparison criteria:**
- Provocation type: Absurd/impossible premises (Prov) vs inverted real constraints (CF) vs critical objections (DA)?
- Logical grounding: Does the Provocateur break from logical reasoning in a way neither CF nor DA does?
- Constructiveness: DA and CF typically generate actionable insights from their challenges — does the Provocateur generate *usable* provocations or just noise?
- Unique contributions: What ideas does the Provocateur surface that neither CF nor DA would?
- Risk check: Does the Provocateur's output on space-party (4.4KB, its smallest) suggest it struggles with already-whimsical topics where absurdity is less disruptive?

**Expected output:** Distinctiveness rating for Provocateur vs each existing persona, validation recommendation, evidence summary.

**Priority:** High — validation test for the third highest-confidence new persona.

**Output file:** `docs/dev/2026-02-15_symphony-persona-eval/targeted-investigations/09_provocateur-differentiation.md`

---

### B10: Independence Viability — Connector, Momentum Builder, Synthesizer

**Key question:** Do these three personas produce genuine brainstorming output in isolation, or do their outputs feel like they're missing something to react to?

**Quantitative context:** All three are mid-to-high volume and highly consistent (CV 10-11%). Quantitative data alone doesn't reveal the structural mismatch concern — this requires content analysis.

**Files to compare (9 files, ~52KB total — sample one cluster from each topic):**
- `test-runs/persona-eval-space-party_2026-02-15/responses/02_activities-and-engagement/the-connector.md` (4.5KB)
- `test-runs/persona-eval-space-party_2026-02-15/responses/02_activities-and-engagement/the-momentum-builder.md` (6.8KB)
- `test-runs/persona-eval-space-party_2026-02-15/responses/02_activities-and-engagement/the-synthesizer.md` (5.7KB)
- `test-runs/persona-eval-tool-library_2026-02-15/responses/03_equity-and-access/the-connector.md` (5.6KB)
- `test-runs/persona-eval-tool-library_2026-02-15/responses/03_equity-and-access/the-momentum-builder.md` (7.2KB)
- `test-runs/persona-eval-tool-library_2026-02-15/responses/03_equity-and-access/the-synthesizer.md` (6.4KB)
- `test-runs/persona-eval-habit-tracker_2026-02-15/responses/03_technical-architecture/the-connector.md` (5.0KB)
- `test-runs/persona-eval-habit-tracker_2026-02-15/responses/03_technical-architecture/the-momentum-builder.md` (6.1KB)
- `test-runs/persona-eval-habit-tracker_2026-02-15/responses/03_technical-architecture/the-synthesizer.md` (6.6KB)

**Comparison criteria:**
- Independence signal: Does the output feel self-contained, or does it reference/assume the existence of other perspectives it hasn't seen?
- Generative vs organizational: Is the persona generating *new ideas*, or structuring/connecting ideas that don't yet exist in this isolated context?
- Adaptation quality: Has the persona adapted its connective/building orientation into a useful brainstorming mode, or is it a square peg in a round hole?
- Comparative quality: Compare the *quality* of brainstorming output to a persona known to work well in isolation (e.g., compare one file to a Visionary or Analyst file from the same cluster for calibration)
- Phase reassignment signal: Would this persona's output be *more* valuable if given access to other personas' completed work (i.e., in a synthesis or ultra-mode role)?

**Expected output:** Independence viability rating (High/Moderate/Low) for each, recommendation (keep in Phase 3 / reassign to synthesis / retire from brainstorming), evidence summary.

**Priority:** High — directly addresses the structural mismatch concern from the research plan. Results inform both roster decisions and the deferred ultra-mode investigation.

**Output file:** `docs/dev/2026-02-15_symphony-persona-eval/targeted-investigations/10_independence-viability.md`

---

### B11: Analytical Convergence — All 8 Analytical Personas

**Key question:** Do the 8 analytical personas (Pragmatist, Devil's Advocate, Analyst, Audience Advocate, Technical Expert, Questioner, Futurist, First Principles Thinker) produce meaningfully different ideas, or do they converge on the same analytical territory?

**Quantitative context:** Wide volume range (Pragmatist 4.5KB → Analyst 6.2KB). Wide consistency range (Pragmatist CV=8.3% → Questioner CV=34.3%). The volume and consistency differences suggest different engagement modes, but content convergence is the concern.

**Files to compare (8 files per topic, use cluster 04 for smaller files — 24 files, ~115KB total):**

This investigation is too large for a single subagent. Split into two sub-investigations:

**B11a: Analytical convergence — topic 1 (space-party) + topic 2 (tool-library)**
- `test-runs/persona-eval-space-party_2026-02-15/responses/04_inclusion-and-community/` — all 8 analytical personas (8 files, ~38KB)
- `test-runs/persona-eval-tool-library_2026-02-15/responses/04_sustainability-and-growth/` — all 8 analytical personas (8 files, ~37KB)

**B11b: Analytical convergence — topic 3 (habit-tracker) + cross-topic synthesis**
- `test-runs/persona-eval-habit-tracker_2026-02-15/responses/04_business-and-sustainability/` — all 8 analytical personas (8 files, ~36KB)
- Also: integrate findings from B11a to produce the cross-topic convergence assessment

**Comparison criteria (both sub-investigations):**
- Idea overlap: How many ideas appear in 3+ analytical personas' outputs?
- Thematic clustering: Do the 8 personas naturally cluster into distinct analytical sub-modes, or do they spread evenly across the same territory?
- Unique contributions per persona: What does each analytical persona say that no other analytical persona says?
- Redundancy pairs: Which specific pairs produce the most similar outputs?
- Analytical rebalancing signal: If we had to reduce the analytical roster from 8 to 5, which 3 would be the most redundant?

**Expected output:** Convergence assessment (high/moderate/low convergence), natural sub-clusters identified, specific redundancy pairs, reduction candidates, evidence summary.

**Priority:** Medium — the framework synthesis flags analytical over-representation as a "significant problem" (8/15 = 53% analytical), but the overlap investigations (B1-B3) will already provide pairwise data for the most suspected pairs. B11 adds the *multi-persona convergence* view that pairwise comparisons miss.

**Output file:** `docs/dev/2026-02-15_symphony-persona-eval/targeted-investigations/11_analytical-convergence.md`

---

### B12: Output Gap Detection — All 18 Personas

**Key question:** What dimensions of each topic did *no* persona address? What thinking styles are still missing after adding the 3 new personas?

**Files to read (18 files per cluster, 1 cluster per topic — 54 files, ~290KB total):**

This investigation is too large for a single subagent. Split into three sub-investigations:

**B12a: Output gaps — space-party**
- `test-runs/persona-eval-space-party_2026-02-15/responses/01_theme-and-experience/` — all 18 persona files (~104KB)

**B12b: Output gaps — tool-library**
- `test-runs/persona-eval-tool-library_2026-02-15/responses/01_mission-and-model/` — all 18 persona files (~122KB)

**B12c: Output gaps — habit-tracker**
- `test-runs/persona-eval-habit-tracker_2026-02-15/responses/01_product-vision-and-differentiation/` — all 18 persona files (~107KB)

**Comparison criteria (all sub-investigations):**
- Missing dimensions: What aspects of the topic did no persona address? Consider: financial models, regulatory concerns, cultural factors, environmental impact, accessibility, scalability, maintenance/sustainability, political dynamics, historical context, aesthetic/design considerations
- Missing idea types: What *kinds* of ideas are absent? Consider: process innovations, business models, partnership structures, measurement frameworks, failure modes, user segment strategies, competitive positioning
- Missing thinking styles: What cognitive approaches are absent? Consider: systems mapping, scenario planning, rapid prototyping, constraint satisfaction, multi-criteria optimization, stakeholder negotiation
- Framework gap check: For each gap identified in the framework synthesis (§4.2-4.3: Ethnographer, Systems Thinker, Regulatory, External Scout), was the gap visible in the outputs? Did any persona partially cover it?
- New persona coverage: Did the 3 new personas (Empath, Simplifier, Provocateur) fill the gaps they were designed for? Did they reveal any *new* gaps by contrast?

**Expected output:** Per-topic gap inventory, cross-topic gap synthesis (gaps that appear in all 3 topics are the most significant), framework gap validation, new persona coverage assessment.

**Priority:** Medium — this is the broadest investigation and depends on all other investigations for context. Run last, or run B12a-c in parallel after B7-B9 (new persona validation) complete.

**Output file:** `docs/dev/2026-02-15_symphony-persona-eval/targeted-investigations/12_output-gap-detection.md`

---

## Execution Plan

### Parallelization Strategy

Run investigations in batches of up to 5 parallel subagents, ordered by priority and dependency.

**Batch 1 (highest priority, no dependencies):**
- B1: Visionary vs Futurist
- B3: Devil's Advocate vs Questioner vs First Principles Thinker
- B4: Connector vs Synthesizer
- B7: Empath differentiation
- B9: Provocateur differentiation

**Batch 2 (high priority, no dependencies on Batch 1):**
- B2: Pragmatist vs Technical Expert
- B5: Visionary vs Momentum Builder
- B8: Simplifier differentiation
- B10: Independence viability
- B6: Audience Advocate vs Storyteller

**Batch 3 (medium priority, B11b depends on B11a):**
- B11a: Analytical convergence (space-party + tool-library)
- B11b: Analytical convergence (habit-tracker + cross-topic) — after B11a
- B12a: Output gaps — space-party
- B12b: Output gaps — tool-library
- B12c: Output gaps — habit-tracker

### Deprioritization Notes

Based on quantitative data, the following investigations can be deprioritized if time/budget is constrained:

1. **B6 (AA vs Storyteller):** Quantitative profiles are already quite different (7.6KB vs 5.3KB, different topic sensitivities). Likely distinct — lower risk of discovering redundancy.
2. **B5 (Visionary vs Momentum Builder):** Momentum Builder's strong quantitative performance suggests it has adapted well to isolation. B10 already tests its independence viability.
3. **B12a-c (Output gaps):** Useful but not required for roster decisions. Can be deferred if B7-B9 (new persona validation) produce clear results.

### Output Format

Each investigation subagent returns a structured finding:

```
## Investigation [ID]: [Title]

### Distinctiveness Assessment
[Rating for each persona/pair compared]

### Evidence
[Specific quotes, unique ideas, thematic patterns from the compared files]

### Recommendation
[Keep both / Merge / Refine prompt / Reassign to synthesis / Retire]

### Notes
[Additional observations, surprises, edge cases]
```

All findings will be aggregated into the final synthesis document (`docs/dev/2026-02-15_persona-evaluation-results.md`) in Step D.

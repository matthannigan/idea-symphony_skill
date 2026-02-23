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

## Investigation Task

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

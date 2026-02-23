# Investigation B17: Prompt Refinement Spot-Check — Audience Advocate, Connector, Visionary, Provocateur

**Date:** 2026-02-17
**Personas under test:** The Audience Advocate, The Connector, The Visionary, The Provocateur (all refined prompts)
**Source:** Phase 3 persona revisions — verifying prompt changes produced intended effects without regression

---

## Purpose

Spot-check four personas that received significant prompt refinements but don't have dedicated retest investigations (B15 covers Momentum Builder, B16 covers Futurist). Compare refined outputs (2026-02-17 re-run) against original outputs (2026-02-15 test runs) to verify each refinement produced the intended behavioral shift without degrading overall output quality.

## Personas & Expected Changes

### The Visionary

**Refinement ([B1](../01_forward-looking-overlap.md)):** Reframed from "future-focused" to "paradigm-shifting." Discouraged trend-citing language. Added constraint: at least one idea per question must describe something without a current analog.

**What to check:**
1. **Trend-citing reduction:** Compare instances of "the trend toward," "the shift toward," "as X becomes more Y" language. Target: near-zero (down from frequent in original).
2. **No-analog ideas:** Does at least one idea per question describe something genuinely new — not an evolution of something familiar?
3. **Paradigm-level thinking:** Are ideas framed as category reimagination rather than ambitious improvements?
4. **No quality regression:** Has idea richness and elaboration quality been maintained? The Visionary was the #2 volume producer — verify output density hasn't dropped.
5. **Futurist divergence:** Has convergence with Futurist decreased from the ~25% baseline (B1)?

### The Provocateur

**Refinement ([B9](../09_provocateur-differentiation.md)):** Added volume consistency across topic types. Added extractability cues (name the insight after absurd premises). Added whimsical-topic opposite-direction strategy. Strengthened absurd-not-hostile guardrail.

**What to check:**
1. **Volume consistency:** Compare output volume (KB) across the three topics. Original showed variation — is it more consistent now?
2. **Extractability:** Do provocations now include a brief naming of the underlying insight? Look for "The real insight is..." or equivalent pattern.
3. **Whimsical-topic strategy:** On space-party (the most whimsical topic), does the Provocateur introduce gravity or seriousness rather than piling more whimsy on top?
4. **Tone:** Does the absurd-not-hostile guardrail hold? No provocations targeting people/identities?
5. **No quality regression:** Are provocations still genuinely disorienting and productive, or has the extractability requirement domesticated them?

### The Connector

**Refinement ([B4](../04_integration-overlap.md), [B10](../10_independence-viability.md)):** Removed vestigial "reference previous discussions" instruction. Shed mechanical "Connect X with Y" formula. Strengthened cross-domain bridging for isolated context.

**What to check:**
1. **Phantom-reference elimination:** Count instances where the Connector references non-existent prior discussions or other personas' work. Target: zero.
2. **Structural depth:** Are connections framed as structural parallels (explaining *what* the parallel reveals) rather than surface similarities ("X is like Y")?
3. **Cross-domain range:** Is the Connector drawing from diverse fields, or defaulting to the same 2-3 domains?
4. **No quality regression:** Has the connection density and insight quality been maintained without the "build on prior work" scaffold?

### The Audience Advocate

**Refinement ([B6](../06_human-centered-overlap.md), [B12](../12_output-gap-detection.md)):** Added ethnographic elements — empathy mapping (think/feel/say/do), emotional journey mapping, unarticulated need discovery. Preserved barrier-identification as primary mode.

**What to check:**
1. **Ethnographic elements present:** Do responses include empathy mapping, emotional journey language, or unarticulated need identification?
2. **Balance:** Has barrier-identification and advocacy mode been preserved as the primary lens, or have ethnographic additions displaced it?
3. **Dilution check:** B6 cautioned that augmentation risks turning AA into a hybrid. Is the persona still clearly the *Audience Advocate*, or has it drifted toward an ethnographer persona?
4. **No quality regression:** Are stakeholder identification, barrier analysis, and accessibility considerations at least as strong as the original?

## Files to Compare

**Original responses** (pre-refinement, 2026-02-15 test runs):
- `test-runs/persona-eval-space-party_2026-02-15/responses/*/the-visionary.md`
- `test-runs/persona-eval-tool-library_2026-02-15/responses/*/the-visionary.md`
- `test-runs/persona-eval-habit-tracker_2026-02-15/responses/*/the-visionary.md`
- (Same pattern for `the-provocateur.md`, `the-connector.md`, `the-audience-advocate.md`)

**Refined responses** (to be generated in 2026-02-17 test re-run):
- `test-runs/persona-eval-space-party_2026-02-17/responses/*/the-visionary.md`
- `test-runs/persona-eval-tool-library_2026-02-17/responses/*/the-visionary.md`
- `test-runs/persona-eval-habit-tracker_2026-02-17/responses/*/the-visionary.md`
- (Same pattern for `the-provocateur.md`, `the-connector.md`, `the-audience-advocate.md`)

## Methodology

This is a **spot-check**, not a full investigation. For each persona:

1. Select **1 topic** for detailed before/after comparison:
   - Visionary & Provocateur: tool-library (best differentiation baseline from B1/B9)
   - Connector: tool-library (moderate complexity, good cross-domain surface area)
   - Audience Advocate: tool-library (strong stakeholder diversity for ethnographic testing)
2. Compare all topic clusters within that topic, original vs refined
3. Quantify the specific metric each refinement targeted
4. If concerns emerge (regression or unintended side effects), extend to a second topic for confirmation

## Success Criteria

**Visionary:**
- Trend-citing language: near-zero instances
- No-analog ideas: at least 1 per question
- Output density: comparable to original (~7KB avg)

**Provocateur:**
- Volume CV across topics: decreased vs original
- Extractability cues: present in >50% of provocations
- Whimsical-topic opposite-direction: visible on space-party

**Connector:**
- Phantom references to prior work: zero
- Structural parallels with explanatory depth: >70% of connections
- Cross-domain range: 4+ distinct fields referenced per topic

**Audience Advocate:**
- Ethnographic elements: present in >30% of responses (without displacing barrier-identification)
- Barrier-identification: maintained as primary mode (>50% of content)
- Clear persona identity: still recognizably the Audience Advocate, not a generic ethnographer

## Decision Gate

If spot-checks confirm intended behavioral shifts without regression, **no further action needed**. If unexpected regression is found in any persona, escalate to a full retest investigation (following B15/B16 format) before finalizing that persona's prompt.

## Output

**Output file:** `docs/dev/2026-02-15_symphony-persona-eval/targeted-investigations/17_minor-refinement-spot-check.md`

### Output Format

```
## Investigation [ID]: [Title]

### Evidence
[Specific quotes, unique ideas, thematic patterns from the compared files]

### Recommendation
[Refine prompt / Additional research]

### Notes
[Additional observations, surprises, edge cases]
```


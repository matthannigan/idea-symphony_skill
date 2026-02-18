# Phase 3 Persona Revisions — Implementation Summary

**Date:** 2026-02-17
**Source:** `docs/dev/2026-02-17_targeted-persona-investigations-decisions.md`
**Scope:** Prompt refinements, new persona creation, orchestrator updates, test cleanup

---

## Overview

Following 12 targeted persona investigations (B1-B12) and cross-investigation synthesis, this revision implements the non-retirement actions decided by the user. Retirements (Questioner, Analyst, Synthesizer from Phase 3) are deferred to a future change.

**Roster change:** 15 → 20 personas (5 new: Empath, Simplifier, Provocateur, Systems Thinker, Lawyer)

---

## 1. Persona Prompt Refinements (8 files)

### 1a. The Visionary
**Investigation:** B1 (Forward-Looking Overlap)
**Problem:** ~25% convergence with Futurist; trend-citing language drifted into Futurist territory.
**Changes:**
- Reframed core from "future-focused" to "paradigm-shifting" — reimagine the category, don't improve it
- Added constraint: at least one idea per question must describe something without a current analog
- Discouraged trend-citing language ("the shift toward X")
- Replaced "connect ideas to larger trends" with cross-disciplinary inspiration (biology, physics, art, philosophy)
- Strengthened "transformation and emergence over prediction" emphasis

### 1b. The Futurist
**Investigation:** B1 (Forward-Looking Overlap), B11 (Analytical Convergence)
**Problem:** Majority of output applied temporal "as X evolves" framing to ideas other personas produce in present tense; only 1-2 unique ideas per topic; rated Low Distinctiveness in B11.
**Changes:**
- Required citing identifiable trends/data/trajectory evidence for every idea
- Constrained to 1-5 year plausibility window
- Replaced "what if" framing with "given X trend, we should Y"
- Added infrastructure-readiness emphasis (B1's strongest retention argument)
- Discouraged vague temporal framing without specific timelines
- Added strategic timing focus: when to move, what to prepare for

### 1c. The Devil's Advocate
**Investigation:** B3 (Challenge Overlap)
**Problem:** Minor — sometimes identified risks without suggesting mitigations.
**Changes:**
- Strengthened mitigation requirement from "suggest ways to mitigate" (optional-sounding) to "for every significant risk, suggest a concrete mitigation" (expected behavior)
- Added "critique without direction is incomplete" principle
- Updated Avoid section and examples to consistently pair problems with solutions

### 1d. The Empath
**Investigation:** B7 (Empath Differentiation)
**Problem:** Minor — no standard output format; "don't rationalize" directive could be stronger.
**Changes:**
- Added footer format instruction: `Questions addressed: N / Total responses: N`
- Strengthened "don't rationalize" with explicit example in Avoid section: "don't backfill logical justifications for gut feelings... The moment you start explaining *why* it feels wrong with logical arguments, you've left your lane"

### 1e. The Provocateur
**Investigation:** B9 (Provocateur Differentiation)
**Problem:** Volume inconsistency across topic types; absurd premises sometimes lack extractable insights; whimsical topics got less provocation.
**Changes:**
- Added volume consistency guidance: "aim for consistent volume across all topic types"
- Added extractability cues: "briefly name the underlying insight after absurd premises"
- Added whimsical-topic strategy: "provoke in the opposite direction — introduce gravity, constraint, or unexpected seriousness"
- Strengthened absurd-not-hostile guardrail: "Absurdity should feel playful and intellectually daring, not hostile or transgressive"
- Updated examples with insight extraction pattern and opposite-direction provocation

### 1f. The Momentum Builder
**Investigation:** B5 (Expansion Overlap), B10 (Independence Viability)
**Problem:** Manufactured phantom inputs ("Building on that idea..." when no prior idea exists), wasting ~30% of output. Structural mismatch between reactive "build on others" mode and Phase 3's isolated context.
**Changes:**
- Removed all "build on others' ideas" framing
- Reframed as "build on the problem" — find the seed of opportunity and grow through progressive elaboration
- Introduced progressive building pattern: "start with a grounded observation, then extend it, then extend it again"
- Preserved enthusiastic, forward-building tone and "yes, and..." energy
- Added Avoid: "Generating static lists of disconnected ideas — your strength is showing how ideas *grow*"

### 1g. The Connector
**Investigation:** B4 (Integration Overlap), B10 (Independence Viability)
**Problem:** Vestigial "reference how the current topic relates to previous discussions" instruction referenced prior work that doesn't exist in Phase 3 isolation; mechanical "Connect X with Y" formula.
**Changes:**
- Removed "reference how the current topic relates to previous discussions" instruction
- Removed mechanical "Connect X with Y" formula from examples
- Strengthened cross-domain bridging mode: "find the structural parallel, not just the surface similarity"
- Replaced "This feature reminds me of concept X we discussed earlier" example with domain-bridging examples
- Added: "Surface non-obvious connections between different aspects of the problem itself"

### 1h. The Audience Advocate
**Investigation:** B6 (Human-Centered Overlap), B12 (Output Gap Detection)
**Problem:** Ethnographer gap partially uncovered (~25% AA coverage). Missing empathy mapping, emotional journey mapping, unarticulated need discovery.
**Changes:**
- Added ethnographic elements: empathy mapping (think, feel, say, do), emotional journey mapping, unarticulated need discovery
- Added: "Go beyond identifying what users need — explore what they *experience*"
- Added: surface unarticulated needs ("what do people struggle with but never complain about because they don't realize it could be different?")
- Preserved barrier-identification and advocacy as primary mode
- Added examples showing empathy mapping and emotional journey approaches

---

## 2. New Personas (2 files)

### 2a. The Systems Thinker
**Source:** Gap #1 from B12 — strongest gap signal across entire evaluation
**File:** `idea-symphony/references/personas/the-systems-thinker.md`
**Core mode:** Map dynamic system interactions — reinforcing/balancing feedback loops, second-order consequences, system archetypes, leverage points
**Differentiation:**
- vs Analyst: Analyst does structural decomposition (components); Systems Thinker maps how components *interact dynamically over time*
- vs Futurist: Futurist projects temporal trends; Systems Thinker maps feedback dynamics that *shape* trajectories
- vs Connector: Connector bridges domains; Systems Thinker traces *causal loops* within systems
**Validation:** Investigation B13 (pending)

### 2b. The Lawyer
**Source:** Gap #2 from B12 — regulatory/compliance gap essentially uncovered
**File:** `idea-symphony/references/personas/the-lawyer.md`
**Core mode:** Identify specific regulatory frameworks, legal requirements, compliance obligations, liability exposure, governance mandates
**Differentiation:**
- vs Devil's Advocate: DA raises concerns as open questions; Lawyer identifies *specific* regulations and compliance requirements
**Validation:** Investigation B14 (pending)

---

## 3. Orchestrator Updates

### 3a. personas.md
- Updated persona count: 15 → 20
- Added 5 new personas to index (#16-20): Empath, Simplifier, Provocateur, Systems Thinker, Lawyer
- Updated descriptions for refined personas (Visionary, Futurist, DA, Connector, MB, AA)
- Added Phase 2 note: Questioner excels at question generation but not recommended for Phase 3
- Added persona cluster framework (human-centered triad, challenge triad, forward-looking pair, analytical core, system dynamics)
- Added topic-sensitivity notes
- Updated recommended combinations with new personas

### 3b. SKILL.md
- Added 5 new personas to Available Personas table with updated descriptions
- Updated Phase 3B selection guidance with cluster-aware recommendations
- Added topic-sensitivity awareness to selection logic
- Updated persona file count reference (15 → 20)

---

## 4. Test Run Cleanup

Deleted 96 response files across 3 test runs (8 personas x 4 topic dirs x 3 test runs):

**Personas deleted** (will be re-generated with updated prompts or new personas):
- Re-run with major refinements: Visionary, Futurist, Provocateur, Momentum Builder, Connector, Audience Advocate
- Retired from Phase 3: Questioner, Analyst

**Test runs affected:**
- `test-runs/persona-eval-space-party_2026-02-17/responses/`
- `test-runs/persona-eval-tool-library_2026-02-17/responses/`
- `test-runs/persona-eval-habit-tracker_2026-02-17/responses/`

**Remaining files** in each topic directory: 10 personas (Pragmatist, Devil's Advocate, Storyteller, Synthesizer, Technical Expert, Analogist, Constraint Flipper, First Principles Thinker, Empath, Simplifier)

**New files to generate** during test re-run: 8 refined + 2 new = 10 persona response files per topic dir

---

## 5. New Investigation Tasks

| ID | Title | Purpose | Files |
|----|-------|---------|-------|
| B13 | Systems Thinker Validation | Validate new persona; check distinctiveness vs Analyst, Futurist, Connector | 12 new ST responses |
| B14 | Lawyer Validation | Validate new persona; check distinctiveness vs Devil's Advocate | 12 new Lawyer responses |
| B15 | Momentum Builder Retest | Check phantom-input resolution; assess Pragmatist convergence risk | 12 new + 12 original MB responses |
| B16 | Futurist Retest | Check unique contribution increase; assess full-roster distinctiveness | 12 new + 12 original Futurist responses |
| B17 | Prompt Refinement Spot-Check | Verify Visionary, Provocateur, Connector, Audience Advocate refinements vs originals | Spot-check: 1 topic per persona, extend if concerns |

All investigation specs: `docs/dev/2026-02-15_symphony-persona-eval/targeted-investigations/`

---

## Deferred Actions

1. **Persona retirements** (Questioner, Analyst, Synthesizer from Phase 3) — deferred per user instruction
2. **Financial/Economic modeling gap** — requires investigation into whether gap originates in Phase 2 questions or Phase 3 brainstorming
3. **External Scout gap** — deferred to non-persona approach (deep research feed after Phase 1/2)
4. **Final Futurist disposition** — depends on B16 retest results
5. **Final Momentum Builder disposition** — depends on B15 retest results
6. **Analyst prompt refinements for Phase 2** — to be designed after retirement is implemented

---
model-reported: claude-opus-4-7
---

# Brainstorming Session Plan

**Project:** On-Device ML Health Monitoring Wearable
**Plan Date:** 2026-02-24
**Effort:** `high` *(sourced from user's Phase 1 selection)*
**Persona Selection Review:** auto
**Session Directory:** examples/wearable-device/symphony_high-effort/

## Status

- **Phase 1 (Context Gathering):** ✅ Complete
  - User uploads: No user files submitted
  - User-defined questions: No
  - Effort: `high`

- **Phase 2 (Question Generation):**
  - Step 2.1 (Roster Planning): ✅ Complete (2026-04-28)
  - Step 2.2 (Per-persona generation): ✅ Complete (16 persona files; 163 total questions)
  - Step 2.3 (Synthesis): ✅ Complete (13 clusters; 47 synth + 35 append = 82 questions; raw compaction 2.72×; R11 source-bound exception applied for ST)
  - Step 2.4 (Brainstorming Persona Selection): ✅ Complete (13 clusters × 7 personas)
- **Phase 3 (Multi-Perspective Brainstorming):** ✅ Complete (91 response files: 13 clusters × 7 personas; one re-run for C02 Pragmatist)
- **Phase 4 (Response Synthesis):** ✅ Complete (2026-06-10) — 13 clusters × 3 docs (attributed + synthesis + summary); central-tension in all 13 summaries; humanizer pass applied (per-summary + per-question synthesis); SUMMARIES.md + SYNTHESIS.md built. Clusters 03/06/09/11/13 re-run once after transient rate limits; persona-name and em-dash gates pass.
- **Phase 5 (Final Output):** ✅ Complete (2026-06-10) — BRAINSTORM.md written (3,307 body words, within high-effort band 2,800–4,500); 4 cross-cluster Central Tensions; 15 impact-ordered next steps; all 13 per-topic citation links + SYNTHESIS.md index line present; persona/character/jargon + em-dash audits clean; inline humanizer pass applied.

**Session complete (2026-06-10).** Primary deliverable: BRAINSTORM.md.

## Phase 2 Step 2.1: Question Generation Personas

**Effort:** high
**Connector/Analogist:** Connector (swap)

Full rationale: see [personas/question-generation.md](personas/question-generation.md).

### Tier 1 Personas

| Persona | Category | Volume | Stream |
|---|---|---|---|
| Questioner | Analytical | 15-20 | Synthesize |
| Analyst | Analytical | 10-15 | Synthesize |
| Devil's Advocate | Structural | 10-15 | Synthesize |
| Appreciative Inquirer | Structural | 8-12 | Synthesize |
| Audience Advocate | Structural | 10-15 | Synthesize |
| Systems Thinker | Structural | 10-15 | Synthesize |
| Provocateur | Perspective | 5-8 | Append |
| Connector | Perspective | 5-8 | Append |
| Visionary | Perspective | 5-8 | Append |
| Storyteller | Perspective | 5-8 | Append |

### Tier 2 Personas

| Persona | Category | Volume | Stream |
|---|---|---|---|
| Constraint Flipper | Perspective | 5-8 | Append (3-5 round-robin) |
| Empath | Structural | 8-12 | Synthesize |
| First Principles Thinker | Structural | 7-10 | Synthesize |
| Futurist | Structural | 8-12 | Synthesize |

### Tier 3 Personas

| Persona | Category | Volume | Stream |
|---|---|---|---|
| Lawyer | Specialist (regulatory) | 8-10 | Synthesize |
| Technical Expert | Specialist (architecture) | 8-10 | Synthesize |
## Notes & Issues

(None)

## Topic Clusters

| # | Display Name | Slug |
|--|--|--|
| 1 | Foundational Premises and First-Principles Reframings | 01_foundational-premises-and-first-principles-reframings |
| 2 | Power Budget, Thermodynamics, and Duty-Cycle Architecture | 02_power-budget-thermodynamics-and-duty-cycle-architecture |
| 3 | ML Architecture, Quantization, and Sensor Fusion | 03_ml-architecture-quantization-and-sensor-fusion |
| 4 | Model Lifecycle, Drift, and Update Strategy | 04_model-lifecycle-drift-and-update-strategy |
| 5 | Privacy Architecture and the Capability-Gap Tradeoff | 05_privacy-architecture-and-the-capability-gap-tradeoff |
| 6 | HIPAA, PHI Boundaries, and the Sync Protocol | 06_hipaa-phi-boundaries-and-the-sync-protocol |
| 7 | Regulatory Pathway from Wellness to 510(k) | 07_regulatory-pathway-from-wellness-to-510-k |
| 8 | False-Positive / False-Negative Tradeoffs and Liability | 08_false-positive-false-negative-tradeoffs-and-liability |
| 9 | Population, Equity, and Embodied Difference | 09_population-equity-and-embodied-difference |
| 10 | Lived Experience — Trust, Anxiety, and the Felt Texture of Wearing the Device | 10_lived-experience-trust-anxiety-and-the-felt-texture-of-wearing-the-device |
| 11 | Doctor-Patient Translation, Reassurance, and the Clinical Bridge | 11_doctor-patient-translation-reassurance-and-the-clinical-bridge |
| 12 | Team, Runway, and Conway's-Law Architecture | 12_team-runway-and-conway-s-law-architecture |
| 13 | Competitive Landscape and Strategic Moat | 13_competitive-landscape-and-strategic-moat |

## Phase 2 Step 2.4: Brainstorming Personas

| Cluster | Topic | Core | Inner Ring (2) | Middle Ring (3) |
|--|--|--|--|--|
| 01 | Foundational Premises and First-Principles Reframings | Devil's Advocate, Pragmatist | First Principles Thinker, Simplifier | Provocateur, Constraint Flipper, Analogist |
| 02 | Power Budget, Thermodynamics, and Duty-Cycle Architecture | Devil's Advocate, Pragmatist | Technical Expert, First Principles Thinker | Constraint Flipper, Systems Thinker, Analogist |
| 03 | ML Architecture, Quantization, and Sensor Fusion | Devil's Advocate, Pragmatist | Technical Expert, Simplifier | Systems Thinker, Connector, Analogist |
| 04 | Model Lifecycle, Drift, and Update Strategy | Devil's Advocate, Pragmatist | Technical Expert, Systems Thinker | Futurist, Analogist, Constraint Flipper |
| 05 | Privacy Architecture and the Capability-Gap Tradeoff | Devil's Advocate, Pragmatist | Systems Thinker, First Principles Thinker | Constraint Flipper, Visionary, Analogist |
| 06 | HIPAA, PHI Boundaries, and the Sync Protocol | Devil's Advocate, Pragmatist | Lawyer, Technical Expert | Systems Thinker, Analogist, Futurist |
| 07 | Regulatory Pathway from Wellness to 510(k) | Devil's Advocate, Pragmatist | Lawyer, Futurist | Systems Thinker, Visionary, Provocateur |
| 08 | False-Positive / False-Negative Tradeoffs and Liability | Devil's Advocate, Pragmatist | Lawyer, Empath | Systems Thinker, Provocateur, Storyteller |
| 09 | Population, Equity, and Embodied Difference | Devil's Advocate, Pragmatist | Audience Advocate, Empath | Storyteller, Provocateur, Futurist |
| 10 | Lived Experience — Trust, Anxiety, and the Felt Texture of Wearing the Device | Devil's Advocate, Pragmatist | Empath, Storyteller | Audience Advocate, Visionary, Connector |
| 11 | Doctor-Patient Translation, Reassurance, and the Clinical Bridge | Devil's Advocate, Pragmatist | Audience Advocate, Storyteller | Empath, Connector, Systems Thinker |
| 12 | Team, Runway, and Conway's-Law Architecture | Devil's Advocate, Pragmatist | Systems Thinker, Simplifier | Momentum Builder, Constraint Flipper, Connector |
| 13 | Competitive Landscape and Strategic Moat | Devil's Advocate, Pragmatist | Futurist, Visionary | Systems Thinker, Analogist, Constraint Flipper |

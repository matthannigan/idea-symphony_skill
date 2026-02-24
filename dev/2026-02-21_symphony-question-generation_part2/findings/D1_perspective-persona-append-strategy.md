# D1: Perspective Persona Append Strategy for Phase 2C

**Date:** 2026-02-23
**Depends on:** V1 per-persona volume-quality (take 2), Phase 2B persona selection guide, perspective persona test data (q00-05, q05-10)
**Status:** Decided

---

## Decision

Perspective personas (Provocateur, Analogist, Visionary, Storyteller) generate at 5-8 questions each in Phase 2B. In Phase 2C, the orchestrator appends a subset by round-robin cluster selection rather than including all questions or crafting prompts for exact output counts.

| Effort | Generate | Append per Persona | Selection Method |
|:---|:---|:---|:---|
| Low | 5-8 | 3 | One per cluster, round-robin |
| Medium | 5-8 | 5 | One per cluster, then fill from largest clusters |
| High | 5-8 | All (5-8) | No selection needed — append everything |

Append counts per effort level are tunable without changing the generation prompt.

---

## Problem

The V1 per-persona volume-quality analysis (take 2) established that Perspective personas produce their best questions in the 5-8 range and that their distinctive framing (provocations, metaphors, narratives, paradigm challenges) should be appended directly in Phase 2C rather than synthesized with the Structural/Analytical group.

Two open questions remained:

1. **How to get fewer than 5-8 questions at lower effort levels.** The options are prompt engineering for exact counts (e.g., "generate exactly 3 questions") or generating at the sweet spot and selecting a subset.

2. **Whether selection requires quality judgment** or can use a simple structural heuristic.

---

## Analysis

### The compounding effect is persona-dependent

The V1 take 2 found that requesting "the 5 most important questions" produced compound outputs — multiple concerns fused into dense prompts. However, examining the q00-05 test data reveals this effect varies significantly across Perspective personas:

| Persona | Compounding at 5? | Typical Length | Structure |
|:---|:---|:---|:---|
| **Provocateur** | Mild | ~100-150 words | Single inversion + single "real insight" — cleanly bounded |
| **Analogist** | Minimal | ~50-80 words | Single metaphor, single parallel — already discrete at 5 |
| **Visionary** | Heavy | ~150-200 words | Multiple reimagination threads, embedded sub-questions |
| **Storyteller** | Severe | ~200-300 words | Full narrative vignettes with multiple characters and design questions |

The Provocateur and Analogist already produce focused, single-concern questions at 5. The compounding problem is specific to the Visionary and Storyteller, whose cognitive modes naturally expand to fill space with elaboration.

This means prompt refinement for exact counts would need to solve different problems for different personas, making it a fragile strategy.

### Prompt engineering for exact counts is risky

Requesting fewer questions changes the model's cognitive mode, not just its output length. The V1 take 2 identified three distinct modes:

1. **5 questions = Compounding** — multiple concerns fused (problematic for Visionary, Storyteller)
2. **5-10 questions = Distillation** — focused, high-quality, discrete questions
3. **15-20 questions = Expansion** — introduces filler for Perspective personas

Crafting prompts that produce exactly 3 discrete questions requires walking a tightrope: constrain format (discrete, bounded) while preserving generative quality (distinctive, surprising). This would also require persona-specific prompt variants since compounding severity differs by persona. The prompt complexity doesn't justify the marginal gain over generating at the sweet spot and selecting.

### The value of Perspective questions is orthogonal, not gap-filling

The Synthesize group (Questioner, Analyst, Devil's Advocate, Audience Advocate, Systems Thinker, Appreciative Inquirer) covers the "what matters" territory — monetization, stakeholders, risks, systems, strengths. The Append group operates in a different register: provocations, metaphors, narratives, paradigm challenges.

A Provocateur question about "what if the app deliberately lied to users" isn't filling an analytical gap — it's disrupting the analytical frame. This means dimensional balancing against the Synthesize output would work against the purpose of appending. You'd select the Perspective questions most like the Synthesize output, which is exactly backwards.

### At 5-8, there's no filler to avoid

The V1 take 2 showed filler onset at 8+ for Perspective personas. Generating at 5-8 means every question has earned its place. Random selection from this pool selects from a pool with no duds.

| Persona | Filler Onset | Questions at 5-8 |
|:---|:---|:---|
| Provocateur | ~8 | All high quality |
| Analogist | ~10 | All high quality |
| Visionary | ~10 | All high quality |
| Storyteller | ~8 | All high quality |

### Cluster-based round-robin provides lightweight structural diversity

Within a Perspective persona's output, questions are already organized into thematic clusters. An Analogist generating 8 questions might produce clusters from biology, history, industry, and arts. Selecting one from each cluster (round-robin) ensures diverse reframing without requiring the orchestrator to evaluate quality.

This is a heuristic the orchestrator can execute mechanically: read cluster headings, pick one question from each cluster until the quota is filled. No quality judgment needed, just structural diversity.

---

## Approach: Generate-Then-Select

### Why generate-then-select over prompt-for-exact-count

| Criterion | Prompt for Exact Count | Generate-Then-Select |
|:---|:---|:---|
| Compounding risk | High for Visionary/Storyteller at 3-5 | None — generates at validated 5-8 sweet spot |
| Prompt complexity | Needs persona-specific variants | Single prompt for all Perspective personas |
| Quality floor | Unknown at 3 — untested territory | Validated at 5-8 across all personas and topics |
| Effort tunability | Requires new prompt per effort level | Change a number in the orchestrator |
| Wasted generation | None | 40-60% discarded at low effort |

The "wasted generation" is the only downside. Subagent compute is cheap relative to downstream quality, and discarded questions remain in `questions/by-persona/` for review.

### Why random-by-cluster over strategic dimensional selection

| Criterion | Strategic (dimensional balance) | Random by Cluster |
|:---|:---|:---|
| Preserves orthogonality | No — selects questions closest to Synthesize output | Yes — preserves serendipity |
| Orchestrator complexity | High — must analyze Synthesize output dimensions | Low — reads cluster headings |
| Aligned with Append purpose | No — domesticates distinctive framing | Yes — maintains disruptive value |
| Reproducibility | Deterministic but dependent on synthesis | Simple, consistent |

### Selection mechanics

The orchestrator's Phase 2C selection process for each Perspective persona:

1. Read the persona's question file from `questions/by-persona/`
2. Identify cluster headings (already provided by the persona as `##` sections)
3. Select one question from each cluster in order until the effort-level quota is met
4. If quota exceeds cluster count, take a second question from the largest clusters
5. Append selected questions to the Phase 2C output under a persona-labeled section

---

## Validation Needed

Before implementing, one test should be run:

**Confirm 5-8 range maintains q05-10 quality.** The current test data uses "5-10" as the prompt target. Verify that tightening to "5-8" doesn't change question character — it should produce the same discrete, focused questions with slightly fewer total. This is expected to be a non-issue since 5-8 is within the validated range, but should be confirmed with a quick generation run.

---

## Impact on Phase 2C Design

- **Synthesize group** (6 personas at 8-15 questions each) → synthesis produces ~20-30 thematic clusters
- **Append group** (4 personas):
  - Low effort: 4 personas × 3 questions = 12 appended
  - Medium effort: 4 personas × 5 questions = 20 appended
  - High effort: 4 personas × 5-8 questions = 20-32 appended
- **Total Phase 2C output:**
  - Low: ~32-42 questions (20-30 synthesized + 12 appended)
  - Medium: ~40-50 questions (20-30 synthesized + 20 appended)
  - High: ~40-62 questions (20-30 synthesized + 20-32 appended)

---

**Last Updated:** 2026-02-23
**Based on:** V1 per-persona volume-quality (take 2), q00-05 and q05-10 perspective persona test data, Phase 2B persona selection guide

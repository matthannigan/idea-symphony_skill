# R5: Tier 2 Per-Persona Volume-Quality Assessment — Compiled Results

**Date:** 2026-02-24
**Task:** `dev/2026-02-21_symphony-question-generation_part2/tasks/R5_tier2-volume-quality.md`
**Research Questions:** RQ12a-d
**Method:** 4 parallel Opus subagents (one per persona), each reading ~125-156K of test data across 24-25 runs per persona (10 topics × 3 volume levels), followed by orchestrator synthesis

---

## Summary Table

| Persona | Selection Guide Category | Assessed Category | Recommended Volume | Filler Onset | Phase 2C Method | Tier 1 Overlap |
|:---|:---|:---|:---|:---|:---|:---|
| **Constraint Flipper** | Perspective-like | **Perspective** | 5-8 | ~8-9 Qs | **Append** | ~30-35% with Provocateur |
| **Empath** | Structural-like | **Structural** | 8-12 (target 10-12) | ~12 Qs | **Synthesis** | ~25-30% Storyteller, ~15-20% Audience Advocate |
| **First Principles Thinker** | Analytical-like | **Structural** | 7-10 | ~11 Qs | **Synthesis** | ~43-47% with Questioner |
| **Futurist** | Structural-like | **Structural** | 8-12 | ~12 Qs | **Synthesis** | ~30-35% with Visionary |

---

## Per-Persona Summaries

### Constraint Flipper

**Category: Perspective (confirmed).** The Constraint Flipper operates through a single distinctive reframing operation — identify a constraint, reframe it as an advantage — that produces its sharpest output at concentrated volumes and becomes formulaic at scale. This is textbook Perspective behavior: best at 5-8, exhaustible, and voice-dependent.

**Volume-quality curve:** At 5-8 (mean 7.0), every question performs the core inversion cleanly with zero filler. At 8-12 (mean 11.6), thematic repetition begins around question 9-10 as the persona re-flips already-flipped constraints with cosmetic variation (~20-25% filler at 12). At 10-15 (mean 13.9), three filler patterns dominate: re-flipping, fragmenting constraints into sub-constraints, and stretching into trivial/manufactured constraints (~35-40% filler at 15).

**Exhaustibility confirmed.** The selection guide's characterization is fully supported. The persona has a hard ceiling at ~8-9 questions determined by the number of significant constraints in a topic. The drop from question 8 to question 12 is more pronounced than from 12 to 15.

**Phase 2C: Append.** The inversion framing is the persona's entire value proposition. Synthesis would reduce inversions to their underlying strategic insights, losing the reframing that makes them brainstorm-generative. This parallels the Provocateur's Append treatment. Recommended append size: 3-5 questions at HIGH effort using round-robin cluster selection.

**Topic sensitivity:** Strongest on constraint-rich topics (property-management, school-consolidation, wearable-device). Weakest on low-constraint casual topics (space-party).

**Full report:** [R5_tier2-volume-quality_constraint-flipper.md](R5_tier2-volume-quality_constraint-flipper.md)

### Empath

**Category: Structural (confirmed).** The Empath applies a consistent emotional-dimension mapping framework (Trust/Safety, Belonging/Identity, Sustainability/Resilience, Power/Voice) across all topics with 3-5 natural clusters. Framework-driven behavior at Structural-range volumes.

**Volume-quality curve:** At 5-8 (mean 7.5), questions are individually strong but distinctiveness degrades — roughly 40-50% of questions could plausibly come from Storyteller or Appreciative Inquirer. At 8-12 (mean 11.7, mode 12), the persona reaches its sweet spot with fully articulated emotional-dimension mapping, minimal formulaic voice, and clear distinctiveness from Tier 1 counterparts. At 10-15 (mean 14.3, mode 15), thematic repetition (calling-vs-escape restated 3 ways, shame/failure in 4 variants), granularity inflation, and formulaic voice ("what does it feel like" appearing 11 of 15 times) produce ~20-25% filler.

**Distinctiveness threshold confirmed.** The selection guide's concern about low-volume distinctiveness degradation is validated. Below ~10 questions, the Empath becomes harder to distinguish from Storyteller and Appreciative Inquirer. The minimum useful volume for maintaining Empath distinctiveness is approximately 8.

**Phase 2C: Synthesis.** The ~25-30% convergence with Storyteller and ~15-20% with Audience Advocate provides sufficient shared territory for productive cross-referencing. The Empath's value is in the emotional dimensions surfaced (content), not distinctive framing (form). Append would overweight human-centered questions. Caveat: meta-cognitive emotional questions ("What does this app believe about human nature?") represent unique territory that synthesis should preserve.

**Cross-topic consistency: Exceptional (CV=1.4% confirmed).** Performs well across all topic types. Slight strengths on personal/emotional and technical/product topics. Slight weakness on lightest-stakes topics (space-party) where marginal value above Storyteller is lowest.

**Full report:** [R5_tier2-volume-quality_empath.md](R5_tier2-volume-quality_empath.md)

### First Principles Thinker

**Category: Structural (diverging from selection guide's "Analytical-like").** Despite FPT's ~87% analytical dimensional profile, its observed behavior is framework-driven rather than breadth-seeking. It consistently organizes around 3 fixed meta-clusters ("What problem are we really solving?", "What assumptions are we making?", "What would we build from scratch?") and exhausts its distinctive contribution by 10-11 questions — matching a Structural persona's natural ceiling rather than an Analytical persona's ability to sustain quality at 12-15+.

**Volume-quality curve:** At 5-8 (range 5-8), peak signal-to-noise with disciplined reductive questioning and minimal self-answering. At 8-12, quality remains high through ~10 then degrades through recursive restatement, assumption-challenge saturation, and the "what if we inverted..." formula becoming a tic. At 10-15 (13-15), significant degradation with ~25-35% filler from ontological recursion, "minimum viable X" formula repetition, self-answering intensification, and dimensional drift into Systems Thinker/Questioner territory.

**Recommended range: 7-10.** This is a non-standard range spanning the upper Perspective range through the lower Structural range. Below 7, the persona lacks room to develop its reductive chains. Above 10, recursive restatement and self-answering erode quality. The natural ceiling is 10-11 questions.

**Phase 2C: Synthesis.** The ~43-47% overlap with Questioner makes synthesis necessary to avoid redundancy. FPT's distinctive contributions (reductive framing, inversion exercises, build-from-scratch thought experiments) are content-based and survive synthesis editing. The self-answering tendency also benefits from synthesis pruning.

**Value caveat.** The selection guide's observation that "core contribution could partially be achieved through prompt engineering to existing analytical personas" is supported. Roughly 60-70% of FPT's value could be captured by adding first-principles instructions to Questioner. The remaining 30-40% justifies a dedicated persona slot only in high-effort rosters or for domains with deep structural complexity.

**Full report:** [R5_tier2-volume-quality_first-principles-thinker.md](R5_tier2-volume-quality_first-principles-thinker.md)

### Futurist

**Category: Structural (confirmed).** Framework-driven cluster organization by trend domain (regulatory, technology, consumer behavior, labor market), systematic coverage that scales cluster count with volume (3 → 4 → 5), and optimal performance at 8-12 questions — all classic Structural behavior. Despite sharing "forward-looking" territory with the Visionary, the Futurist operates as a strategic-positioning persona, not a paradigm-reimagination one.

**Volume-quality curve:** At 5-8 (mean 7.5), competent but constrained — the persona's coverage feels incomplete and artificially truncated. At 8-12 (mean 11.6), comprehensive trend coverage with well-organized clusters and manageable anti-pattern rates. At 10-15 (mean 13.7), trend recycling (subscription fatigue, AI disruption, climate adaptation appear across multiple topics), temporal decoration, and granularity inflation produce ~15-25% filler beyond question 12.

**Anti-pattern rates by volume (key finding):**

| Volume | Anti-Pattern Rate | Notes |
|:---|:---|:---|
| 5-8 | ~20-25% | Most disciplined; trend framing generally well-integrated |
| 8-12 | ~25-30% | Moderate; acceptable in synthesis |
| 10-15 | ~30-40% | Problematic; temporal-decoration questions are disproportionately the filler |

**Topic type is the stronger predictor.** Civic/technical topics stay below 30% even at high volumes. Experiential topics exceed 40% even at low volumes. This confirms: lower volume reduces the anti-pattern rate, but topic fit matters more.

**Phase 2C: Synthesis.** Strategic-positioning questions overlap with Tier 1 Structural/Analytical territory and benefit from integration. The temporal dimension is preserved through synthesis. Temporal decoration is naturally pruned. The Futurist's framing is not irreducible enough for Append treatment.

**Visionary non-redundancy confirmed.** Despite ~30-35% thematic convergence, the two personas operate at different abstraction levels (strategic positioning vs paradigm reimagination). Both can coexist on high-effort runs: Futurist through Synthesis, Visionary through Append.

**Full report:** [R5_tier2-volume-quality_futurist.md](R5_tier2-volume-quality_futurist.md)

---

## Cross-Persona Analysis

### RQ12b: Do Tier 2 personas follow the same category patterns as Tier 1?

**Finding: Tier 2 skews heavily Structural, with no Analytical representatives.**

| Category | Tier 1 Count | Tier 2 Count |
|:---|:---|:---|
| Perspective | 4 (Provocateur, Analogist, Visionary, Storyteller) | 1 (Constraint Flipper) |
| Structural | 4 (Systems Thinker, Audience Advocate, Devil's Advocate, Appreciative Inquirer) | 3 (Empath, First Principles Thinker, Futurist) |
| Analytical | 2 (Questioner, Analyst) | 0 |

The most notable finding is that **First Principles Thinker was predicted as Analytical but assessed as Structural.** Despite its ~87% analytical dimensional profile, FPT's behavior — fixed meta-cluster framework, natural ceiling at 10-11 questions, quality degradation through recursive restatement rather than coverage completion — is Structural. This suggests that dimensional profile (what a persona talks about) and behavioral category (how quality scales with volume) can diverge. FPT has analytical content but Structural behavior.

The Tier 2 category distribution suggests that the remaining unassigned personas in the full roster (Tier 3) lean toward specialized single-lens operations — either Perspective-like (Simplifier's subtraction lens) or topic-gated Structural (Accountant's financial framework, Lawyer's compliance framework, Politician's governance framework). The absence of Analytical-tier behavior in Tier 2 reinforces that the Analytical category may be inherently small — only personas with genuinely broad, multi-dimensional curiosity (Questioner) or systematic coverage methodology (Analyst) qualify.

### RQ12d: Synthesis vs Append — Is the Constraint Flipper confirmed as Append?

**Finding: Constraint Flipper is confirmed as Append. All other Tier 2 personas should follow the Synthesis path.**

| Persona | Phase 2C Method | Rationale |
|:---|:---|:---|
| **Constraint Flipper** | **Append** | Inversion framing is the entire value proposition; synthesis would reduce to underlying strategic insights. Parallels Provocateur treatment. |
| **Empath** | **Synthesis** | Value is in emotional dimensions surfaced (content), not distinctive framing (form). ~25-30% overlap with Storyteller benefits from cross-referencing. |
| **First Principles Thinker** | **Synthesis** | ~43-47% overlap with Questioner makes synthesis essential. Reductive framing survives synthesis. Self-answering tendency benefits from pruning. |
| **Futurist** | **Synthesis** | Strategic-positioning questions overlap with Tier 1 Structural/Analytical territory. Temporal decoration naturally pruned in synthesis. |

The selection guide had all 4 Tier 2 personas designated for synthesis — **this is corrected for the Constraint Flipper.** The Constraint Flipper joins the Tier 1 Perspective Append group (Provocateur, Analogist, Visionary, Storyteller) as the only Tier 2 Append persona.

**Updated Append group at HIGH effort:** Provocateur, Analogist, Visionary, Storyteller, Constraint Flipper (5 personas, each contributing 3-5 appended questions after round-robin selection from 5-8 generated).

**Overlap note:** The Constraint Flipper and Provocateur share ~30-35% thematic territory but operate through distinct methods (constructive reframing vs absurd inversion). Both can appear in the same Append set without redundancy, but the orchestrator should be aware of potential strategic-insight duplication on constraint-rich topics.

---

## Recommended Effort Level Mapping Entries for Tier 2

All Tier 2 personas are included only at **HIGH effort**.

| Persona | Tier | Effort | Generate | Phase 2C Method | Append per Persona | Notes |
|:---|:---|:---|:---|:---|:---|:---|
| Constraint Flipper | Tier 2 Perspective | High | 5-8 | Append | 3-5 (round-robin) | Strongest on constraint-rich topics |
| Empath | Tier 2 Structural | High | 8-12 | Synthesis | — | Target 10-12; meta-cognitive Qs preserved in synthesis |
| First Principles Thinker | Tier 2 Structural | High | 7-10 | Synthesis | — | Target 3 clusters; strongest on structurally complex topics |
| Futurist | Tier 2 Structural | High | 8-12 | Synthesis | — | Include only for civic/technical/institutional topics |

### Expected Phase 2C Impact at HIGH Effort

**Additional synthesis input from Tier 2:** Empath (8-12) + FPT (7-10) + Futurist (8-12) = ~23-34 additional questions entering synthesis alongside Tier 1 Analytical/Structural questions (~50-70). Total synthesis input: ~73-104 questions.

**Additional append output from Tier 2:** Constraint Flipper contributes 3-5 appended questions alongside the 4 Tier 1 Perspective personas (each contributing all 5-8). Total append output: ~23-37 questions from 5 Perspective personas.

### Topic-Gating Recommendations

| Persona | Include When | Exclude When |
|:---|:---|:---|
| **Constraint Flipper** | Constraints are heavily felt (tight budgets, regulations, physical limitations) | Low-constraint or casual topics |
| **Empath** | Emotional resonance, psychological safety, or sensitive community work is central | Lightest-stakes topics where Storyteller already covers emotional territory |
| **First Principles Thinker** | Domain complexity demands deep structural modeling; many embedded assumptions | Execution-focused topics with well-defined problems |
| **Futurist** | Civic, infrastructural, or technical topics where external trends shape strategy | Purely personal or experiential contexts |

---

## Answers to Research Questions

### RQ12a: What is the optimal volume range for each Tier 2 persona at high effort?

- Constraint Flipper: **5-8** (Perspective range; filler onset ~8-9)
- Empath: **8-12**, target 10-12 (Structural range; filler onset ~12)
- First Principles Thinker: **7-10** (Structural-low range; filler onset ~11)
- Futurist: **8-12** (Structural range; filler onset ~12)

### RQ12b: Do Tier 2 personas follow the same category patterns as Tier 1?

**Partially.** Tier 2 has representatives in Perspective (1) and Structural (3) but none in Analytical. The predicted Analytical persona (FPT) behaves as Structural. This suggests the Analytical category is small and limited to personas with genuinely broad curiosity (Questioner) or systematic coverage methodology (Analyst).

### RQ12c: At what volume does filler onset occur for each Tier 2 persona?

- Constraint Flipper: ~8-9 questions (re-flipping, fragmenting, trivial constraint-stretching)
- Empath: ~12 questions (thematic repetition, granularity inflation, formulaic voice)
- First Principles Thinker: ~11 questions (recursive restatement, "minimum viable X" formula, self-answering)
- Futurist: ~12 questions (temporal decoration, trend recycling, granularity inflation)

### RQ12d: Should any Tier 2 persona follow the Append path instead of Synthesis?

**Yes — the Constraint Flipper.** Its inversion framing is the entire value proposition and would be diluted by synthesis. It should join the Tier 1 Perspective Append group. The other three (Empath, FPT, Futurist) are correctly designated for Synthesis due to meaningful overlap with Tier 1 counterparts and content-based (rather than framing-based) contributions.

---

**Generated:** 2026-02-24
**Method:** 4 parallel Opus subagent assessments + orchestrator synthesis
**Test data:** 98 total runs (24-25 per persona × 10 topics × 3 volume levels)
**Subagent reports:** [constraint-flipper](R5_tier2-volume-quality_constraint-flipper.md) · [empath](R5_tier2-volume-quality_empath.md) · [first-principles-thinker](R5_tier2-volume-quality_first-principles-thinker.md) · [futurist](R5_tier2-volume-quality_futurist.md)

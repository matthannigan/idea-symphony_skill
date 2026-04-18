# habit-tracker — high — Append Target

**Append-group personas:** Provocateur (Tier 1), Storyteller (Tier 1), Visionary (Tier 1), Constraint Flipper (Tier 2), Analogist (Tier 1)
**Append questions available (A_available):** 35
- Provocateur: 7
- Storyteller: 7
- Visionary: 8
- Constraint Flipper: 7
- Analogist: 6

**Append quota (A_quota, from D1):** 35 (= A_available)

Per D1 Effort Mapping: at **high effort**, Tier 1 Perspective personas append "All (5-8) — No selection needed — append everything." Constraint Flipper (Tier 2) at high effort appends "3-5 (round-robin)". Per persona-selection-guide_Phase2B.md, Constraint Flipper is also typically appended in full at high effort because the universe is constraint-rich (habit-tracker has a stated solo-developer / 3-month MVP / crowded-market constraint stack — all 7 CF questions are activated). For this baseline we set CF append count = 7 (all). If SP1 sees variants applying CF round-robin to take only 5, that is also defensible per D1; treat as "low" but in-range.

---

## Round-Robin Selection Walkthrough

Per D1: "Read cluster headings, pick one question from each cluster in order until the quota is filled; if quota exceeds cluster count, take a second question from the largest clusters."

**Important:** Each Append persona is round-robin'd *within its own clusters*. Personas are not interleaved across each other.

**At high effort, A_quota = A_available for every Append persona.** Round-robin selection collapses to "include all questions in cluster order." There is no selection pressure. The walkthrough below is therefore trivial — included for SP1 to verify the *order* and the *cluster attribution*, not the selection.

### Provocateur (7 of 7)

Internal clusters identified (3 clusters, per Provocateur's typical "natural set point ~7 with universal 3-cluster structure" per persona-selection-guide):

| Cluster | Questions (cluster order) |
|---|---|
| C1: Inverted goals (reward what we usually penalize) | Q1 (reward breaking habits), Q4 (one habit at a time, no archives) |
| C2: Inverted information (limit self-knowledge) | Q3 (daily prediction lock), Q6 (data only via partner), Q7 (others' data not own) |
| C3: Anti-success (refuse the feeling of arrival) | Q2 (auto-delete data every 30 days), Q5 (100% completion as failure) |

Round 1 (one per cluster): Q1, Q3, Q2 → 3 selected
Round 2 (one per cluster, next item): Q4, Q6, Q5 → 6 selected
Round 3 (largest cluster: C2 has 1 left): Q7 → 7 selected — quota met (all 7)

### Storyteller (7 of 7)

Internal clusters identified (3 clusters):

| Cluster | Questions (cluster order) |
|---|---|
| C1: Narrative arc and story structure | Q1 (90-day narrative arc), Q5 (drama of the streak), Q7 (legacy memoir) |
| C2: Characters and relational context | Q3 (supporting characters), Q6 (habit in natural habitat — life characters) |
| C3: Moment-scale ritual and emotion | Q4 (15-second ritual), Q2 (story of failure as plot twist) |

Round 1: Q1, Q3, Q4 → 3
Round 2: Q5, Q6, Q2 → 6
Round 3 (largest = C1, 1 left): Q7 → 7 selected — quota met

### Visionary (8 of 8)

Internal clusters identified (3 clusters):

| Cluster | Questions (cluster order) |
|---|---|
| C1: Reimagine the concept of "tracking" itself | Q1 (eliminate tracking entirely), Q3 (first principles, blank slate), Q5 (reshape maintenance concept) |
| C2: New forms of human-tool symbiosis | Q2 (living companion that evolves), Q4 (senses underlying needs) |
| C3: New modalities, contexts, and ontologies | Q6 (serendipity and emergence), Q7 (collective phenomenon), Q8 (embodied experience) |

Round 1: Q1, Q2, Q6 → 3
Round 2: Q3, Q4, Q7 → 6
Round 3 (largest = C1 and C3 both have 1 left): Q5, Q8 → 8 selected — quota met

### Constraint Flipper (7 of 7)

Internal clusters identified (3 clusters):

| Cluster | Questions (cluster order) |
|---|---|
| C1: Operational constraints (team/timeline) as UX advantage | Q1 (crowded market + solo), Q4 (small team as UX advantage), Q5 (timeline driving features) |
| C2: Market/competition as resource | Q6 (competition as research department) |
| C3: Value-system constraints as features | Q2 (disengagement design / graduation), Q3 (zero-data privacy), Q7 (monetization constraint) |

Round 1: Q1, Q6, Q2 → 3
Round 2: Q4, (C2 empty — skip), Q3 → 5 (note: at the lower bound of the 3-5 high-effort CF range)
Round 3: Q5, (skip C2), Q7 → 7 selected — quota met

### Analogist (6 of 6)

Internal clusters identified (3 clusters by source domain, per Analogist's "Universal 3-cluster structure"):

| Cluster | Questions (cluster order) |
|---|---|
| C1: Biological systems | Q1 (agricultural seasons), Q2 (circadian biology), Q3 (mycorrhizal networks) |
| C2: Skill-development analogues | Q4 (martial arts belts), Q5 (spaced repetition) |
| C3: Aesthetic / philosophical | Q6 (Japanese shibui) |

Round 1: Q1, Q4, Q6 → 3
Round 2: Q2, Q5, (C3 empty — skip) → 5
Round 3: Q3, (skip C2 and C3) → 6 selected — quota met

---

## Expected Append Output

Order: Provocateur → Storyteller → Visionary → Constraint Flipper → Analogist (alphabetical by tier-then-name within Append section, matching test-data ordering).

| # | Cluster (within persona) | Persona | Question (short reference) | Tag |
|---|---|---|---|---|
| 1 | Inverted goals | Provocateur | Q1 — reward breaking habits | [Provocateur · Inverted goals] |
| 2 | Inverted info | Provocateur | Q3 — daily prediction lock | [Provocateur · Inverted info] |
| 3 | Anti-success | Provocateur | Q2 — auto-delete data every 30 days | [Provocateur · Anti-success] |
| 4 | Inverted goals | Provocateur | Q4 — one habit at a time, no archives | [Provocateur · Inverted goals] |
| 5 | Inverted info | Provocateur | Q6 — data only via partner | [Provocateur · Inverted info] |
| 6 | Anti-success | Provocateur | Q5 — 100% completion as failure | [Provocateur · Anti-success] |
| 7 | Inverted info | Provocateur | Q7 — see others' data not own | [Provocateur · Inverted info] |
| 8 | Narrative arc | Storyteller | Q1 — 90-day narrative arc | [Storyteller · Arc] |
| 9 | Characters | Storyteller | Q3 — supporting characters | [Storyteller · Characters] |
| 10 | Micro-moment | Storyteller | Q4 — 15-second ritual | [Storyteller · Moment] |
| 11 | Narrative arc | Storyteller | Q5 — drama of the streak | [Storyteller · Arc] |
| 12 | Characters | Storyteller | Q6 — habit in natural habitat | [Storyteller · Characters] |
| 13 | Micro-moment | Storyteller | Q2 — failure as plot twist | [Storyteller · Moment] |
| 14 | Narrative arc | Storyteller | Q7 — legacy memoir | [Storyteller · Arc] |
| 15 | Reimagining | Visionary | Q1 — eliminate tracking entirely | [Visionary · Reimagining] |
| 16 | Symbiosis | Visionary | Q2 — living companion | [Visionary · Symbiosis] |
| 17 | Modality | Visionary | Q6 — serendipity and emergence | [Visionary · Modality] |
| 18 | Reimagining | Visionary | Q3 — first principles, blank slate | [Visionary · Reimagining] |
| 19 | Symbiosis | Visionary | Q4 — senses underlying needs | [Visionary · Symbiosis] |
| 20 | Modality | Visionary | Q7 — collective phenomenon | [Visionary · Modality] |
| 21 | Reimagining | Visionary | Q5 — reshape maintenance concept | [Visionary · Reimagining] |
| 22 | Modality | Visionary | Q8 — embodied experience | [Visionary · Modality] |
| 23 | Operational constraint | Constraint Flipper | Q1 — crowded market + solo as focus | [CF · Operational] |
| 24 | Market as resource | Constraint Flipper | Q6 — competition as research | [CF · Market] |
| 25 | Value-system | Constraint Flipper | Q2 — disengagement design | [CF · Values] |
| 26 | Operational | Constraint Flipper | Q4 — small team as UX advantage | [CF · Operational] |
| 27 | Value-system | Constraint Flipper | Q3 — zero-data privacy | [CF · Values] |
| 28 | Operational | Constraint Flipper | Q5 — timeline driving features | [CF · Operational] |
| 29 | Value-system | Constraint Flipper | Q7 — monetization constraint | [CF · Values] |
| 30 | Biological | Analogist | Q1 — agricultural seasons | [Analogist · Biological] |
| 31 | Skill-development | Analogist | Q4 — martial arts belts | [Analogist · Skill] |
| 32 | Aesthetic | Analogist | Q6 — shibui | [Analogist · Aesthetic] |
| 33 | Biological | Analogist | Q2 — circadian biology | [Analogist · Biological] |
| 34 | Skill-development | Analogist | Q5 — spaced repetition | [Analogist · Skill] |
| 35 | Biological | Analogist | Q3 — mycorrhizal networks | [Analogist · Biological] |

**Total appended questions: 35**

---

## Integration Notes (per D1 tagging rules)

Each appended question carries a `[Persona · Internal-Cluster]` tag in the Phase 2C output. The cluster name need not be standardized across personas (each persona has its own cluster vocabulary). The persona name is mandatory; the internal-cluster tag is recommended for downstream Phase 3 routing.

**Placement in Phase 2C output:** All 35 appended questions appear in their own section after the Synthesize-group output, organized by persona (preserving the round-robin order within each persona). They are *not* interleaved with the synthesized cluster output — Append voices are kept visually distinct to preserve their disruptive value.

**Cross-cluster overlap with Synthesize universe:** Three Append questions overlap thematically with Synthesize clusters (and were noted in B1 / B2):
- Constraint Flipper Q3 (zero-data privacy) overlaps Cluster 5 / CG-8
- Constraint Flipper Q7 (monetization constraint) overlaps Cluster 3 / CG-4
- Constraint Flipper Q2 (disengagement design / graduation) overlaps Cluster 2 / CG-3

Per D1, these are **not removed from Append** — Constraint Flipper's *inversion framing* is the value add (privacy as a *feature*, not a defensive design choice; disengagement as *intentional design*, not as a problem). The Synthesize and Append outputs may both touch the same topic; the Append version preserves the inversion angle the Synthesize merge cannot.

---

## Appended Questions Expected to Be Dropped

**At high effort, no Append questions are expected to be dropped.** D1 explicitly states: "All (5-8) — No selection needed — append everything." A_quota = A_available = 35.

**Possible exceptions (none recommended for SP1 baseline):**
- If SP1 variants apply CF round-robin to limit at 3-5 (lower D1 high-effort range), CF Q5 and Q7 are the candidates to drop. This is in-range per D1 but suboptimal for this universe (constraint-rich topic activates all CF concerns).
- If SP1 variants apply Visionary or Storyteller volume caps (none in D1), they would drop the cluster-tail questions: Visionary Q5, Q8; Storyteller Q7. Treat any such drop as a variant deviation from D1, not as a baseline-defensible reduction.

**Drop scoring for SP1:**
- Synthesize-side dropping any Append question = drop fail
- Append section missing Provocateur, Storyteller, Visionary, or Analogist questions = SQ4 fail (each persona must have ≥5 of its questions present)
- Append section missing 2+ Constraint Flipper questions = SQ4 partial fail (CF count of 5-7 acceptable; below 5 fails)

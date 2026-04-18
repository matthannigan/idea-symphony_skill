# habit-tracker — low — Append Target

**Append-group personas in input:** Provocateur (7), Storyteller (7), Visionary (8), Analogist (6) — 4 personas, 28 questions
**Append questions available:** 28
**Append quota (from D1 round-robin rules):** 12 (3 per persona × 4 personas at low effort)
**Expected selection:** 3 questions per persona via round-robin over each persona's internal thematic clusters

> **D1 rule restatement (low effort):** "One per cluster, round-robin." For each Append persona, identify the persona's internal thematic clusters and select one question from each cluster in order until 3 are chosen. If a persona has more than 3 internal clusters, select from the first 3. If a persona has fewer than 3 internal clusters, take a second question from the largest cluster after the first round (per the medium-effort fill rule in D1, applied here as a tiebreaker — though for habit-tracker/low this fallback is not needed since each Append persona has at least 3 internal clusters).
>
> **Selection-order rule:** Take the first question listed in each cluster (source order). This is deterministic; D1 explicitly avoids quality judgment in selection.

---

## Internal Cluster Identification (per Append persona)

### Provocateur (7 questions, 3 internal clusters)
- **Cluster A — Self-knowledge & agency:** Q1 (reward breaking habits), Q3 (predict-and-lock), Q5 (100% as failure state)
- **Cluster B — Self-eliminating product / scarcity / focus:** Q2 (delete data every 30 days), Q4 (one habit at a time)
- **Cluster C — Social / relational reframings:** Q6 (data only via accountability partner), Q7 (see others, not self)

### Storyteller (7 questions, 4 internal clusters)
- **Cluster A — Narrative arc & legacy:** Q1 (90-day arc), Q7 (legacy memoir)
- **Cluster B — Failure/streak as story beats:** Q2 (failure as plot twist), Q5 (drama of the streak)
- **Cluster C — Supporting cast & life contexts:** Q3 (invisible cast), Q6 (habit in natural habitat)
- **Cluster D — Micro-ritual:** Q4 (fifteen-second ritual)

### Visionary (8 questions, 3 internal clusters)
- **Cluster A — Reimagine the medium:** Q1 (eliminate tracking concept), Q3 (first principles, no streaks), Q8 (embodied/post-screen)
- **Cluster B — Living companion / pre-articulated needs:** Q2 (living companion), Q4 (sense underlying needs), Q7 (collective phenomenon, not social network)
- **Cluster C — Process reimagination:** Q5 (reshape maintenance relationship), Q6 (serendipity & emergence)

### Analogist (6 questions, 3 internal clusters)
- **Cluster A — Biological / natural rhythms:** Q1 (agricultural seasons), Q2 (circadian biology), Q3 (mycorrhizal networks)
- **Cluster B — Skill / learning systems:** Q4 (martial arts belt progression), Q5 (spaced repetition)
- **Cluster C — Aesthetic / cultural philosophy:** Q6 (Japanese *shibui*)

---

## Round-Robin Selection Walkthrough

**Round 1** (one question from each of each persona's first internal cluster):
- Provocateur Cluster A → Provocateur Q1: "What if the app rewarded you for breaking habits instead of keeping them?"
- Storyteller Cluster A → Storyteller Q1: "The narrative arc of behavior change" (90-day arc as story)
- Visionary Cluster A → Visionary Q1: "What if we completely eliminated the concept of 'tracking' and replaced it with something fundamentally different?"
- Analogist Cluster A → Analogist Q1: "How might we borrow from agricultural seasons to frame habit formation as cyclical rather than linear?"

**Round 2** (one question from each persona's second internal cluster):
- Provocateur Cluster B → Provocateur Q2: "What if the app deleted all your data every 30 days, forever?"
- Storyteller Cluster B → Storyteller Q2: "The story users tell themselves about failure"
- Visionary Cluster B → Visionary Q2: "How could this application become a living companion that evolves alongside the user rather than a static tool they configure?"
- Analogist Cluster B → Analogist Q4: "How might martial arts belt systems inform a more meaningful progression structure?"

**Round 3** (one question from each persona's third internal cluster):
- Provocateur Cluster C → Provocateur Q6: "What if the only way to access your habit data was through another person?"
- Storyteller Cluster C → Storyteller Q3: "The invisible cast of characters" (supporting characters)
- Visionary Cluster C → Visionary Q5: "What if instead of helping users 'maintain' habits, we created something that fundamentally reshapes their relationship with the concept of maintenance itself?"
- Analogist Cluster C → Analogist Q6: "How might Japanese *shibui* philosophy (subtle elegance) inform a design approach that avoids gamification fatigue?"

**Quota check:** 3 per persona × 4 personas = 12 questions selected. Quota met. Storyteller Cluster D (Q4 micro-ritual) is not selected; this is the only Append cluster left unrepresented at low effort and is the expected behavior per D1's quota.

---

## Expected Append Output

Each appended question is tagged with persona attribution per D1 ("Append selected questions to the Phase 2C output under a persona-labeled section"). The format below is the format SP1 should produce.

| # | Cluster (B1) | Persona | Question (truncated) | Tag |
|---|---|---|---|---|
| 1 | Cluster 1 (Failure) — alt Cluster 2 | Provocateur | "What if the app rewarded you for breaking habits instead of keeping them?" — Real insight: what if the right kind of flexibility is the freedom to stop without penalty? | [Perspective: Provocateur] |
| 2 | Cluster 9 (Lifecycle) | Provocateur | "What if the app deleted all your data every 30 days, forever?" — Real insight: a deliberately self-eliminating product. | [Perspective: Provocateur] |
| 3 | Cluster 5 (Diversity / Social) — alt Cluster 2 | Provocateur | "What if the only way to access your habit data was through another person?" — Real insight: most powerful feedback loop filtered through someone whose opinion you care about. | [Perspective: Provocateur] |
| 4 | Cluster 9 (Lifecycle) | Storyteller | "The narrative arc of behavior change" — 90-day journey mapped as story with acts, turning points, character development. | [Perspective: Storyteller] |
| 5 | Cluster 1 (Failure) | Storyteller | "The story users tell themselves about failure" — reframe missed days as compelling plot twists rather than story endings. | [Perspective: Storyteller] |
| 6 | Cluster 5 (Diversity / Social) | Storyteller | "The invisible cast of characters" — supporting cast (accountability partners, family, communities) without making them feel like antagonists. | [Perspective: Storyteller] |
| 7 | Cluster 4 (First Principles / Mechanism) | Visionary | "What if we completely eliminated the concept of 'tracking' and replaced it with something fundamentally different?" | [Perspective: Visionary] |
| 8 | Cluster 9 (Lifecycle) | Visionary | "How could this application become a living companion that evolves alongside the user rather than a static tool they configure?" | [Perspective: Visionary] |
| 9 | Cluster 9 (Lifecycle) — alt Cluster 4 | Visionary | "What if instead of helping users 'maintain' habits, we created something that fundamentally reshapes their relationship with the concept of maintenance itself?" | [Perspective: Visionary] |
| 10 | Cluster 1 (Failure) — alt Cluster 9 | Analogist | "How might we borrow from agricultural seasons to frame habit formation as cyclical rather than linear?" | [Perspective: Analogist] |
| 11 | Cluster 1 (Failure) — alt Cluster 2 | Analogist | "How might martial arts belt systems inform a more meaningful progression structure?" | [Perspective: Analogist] |
| 12 | Cluster 2 (Engagement Models) | Analogist | "How might Japanese *shibui* philosophy (subtle elegance) inform a design approach that avoids gamification fatigue?" | [Perspective: Analogist] |

**B1 cluster coverage from Append:** Clusters 1 (4 appends), 2 (1 append + 3 alts), 4 (1 append + 1 alt), 5 (2 appends), 9 (4 appends + 1 alt). Clusters 3 (Differentiation), 6 (Privacy), 7 (Monetization), 8 (Scope/MVP) receive no Append questions — expected, since the Append personas operate in different registers (provocation, narrative, vision, analogy) than these strategic/tactical clusters.

---

## Integration Notes

Per D1: "Append selected questions to the Phase 2C output under a persona-labeled section." For habit-tracker/low, the recommended integration is a single "Perspective Voices" section after the synthesized cluster output, with each appended question tagged inline as `[Perspective: Provocateur]` (or equivalent).

**Alternative integration (cluster-distributed):** Place each appended question into the relevant B1 cluster. This produces a single integrated reading order but obscures the Append-vs-Synthesize structural distinction. D1's grouped-section approach is preferred because:

1. Append questions are designed to disrupt the analytical frame — burying them inside the analytical clusters domesticates the disruption (see D1 §"The value of Perspective questions is orthogonal").
2. Persona attribution is clearer in a grouped section.
3. Phase 3 brainstorming subagents can scan Perspective Voices as a discrete section without conflating with Synthesize-group questions.

**Tag format:** `[Perspective: persona-name]` is the recommended tag per D1. The Append section header should also indicate "(Append-group questions selected via round-robin from full persona output; full persona files retained in `questions/by-persona/` for review.)"

---

## Appended Questions Expected to Be Dropped

The 16 Append questions NOT selected at low-effort quota:

**Provocateur (4 dropped):**
- Q3 (predict-and-lock — Cluster A) — Cluster A is already represented by Q1
- Q4 (one habit at a time — Cluster B) — Cluster B is already represented by Q2
- Q5 (100% as failure state — Cluster A) — Cluster A double-represented; not needed
- Q7 (see others, not self — Cluster C) — Cluster C is already represented by Q6

**Storyteller (4 dropped):**
- Q4 (fifteen-second ritual — Cluster D) — Cluster D not selected (quota 3, persona has 4 clusters)
- Q5 (drama of the streak — Cluster B) — Cluster B is already represented by Q2
- Q6 (habit in natural habitat — Cluster C) — Cluster C is already represented by Q3
- Q7 (legacy memoir — Cluster A) — Cluster A is already represented by Q1

**Visionary (5 dropped):**
- Q3 (first principles, no streaks — Cluster A) — Cluster A is already represented by Q1
- Q4 (sense underlying needs — Cluster B) — Cluster B is already represented by Q2
- Q6 (serendipity & emergence — Cluster C) — Cluster C is already represented by Q5
- Q7 (collective phenomenon — Cluster B) — Cluster B already represented
- Q8 (embodied/post-screen — Cluster A) — Cluster A already represented

**Analogist (3 dropped):**
- Q2 (circadian biology — Cluster A) — Cluster A is already represented by Q1
- Q3 (mycorrhizal networks — Cluster A) — Cluster A is already represented by Q1
- Q5 (spaced repetition — Cluster B) — Cluster B is already represented by Q4

**Total dropped:** 16 (28 input − 12 selected = 16 dropped). Per D1, dropped questions are not deleted — they remain in `questions/by-persona/` for review and could be promoted into output if the synthesizer flags an unmet need (e.g., if Storyteller Cluster D's micro-ritual question would substantively cover a B1 cluster gap, it could be substituted in).

---

## Notes on Round-Robin Naturalness for This Cell

- **Provocateur, Visionary, Analogist** all have exactly 3 internal clusters at this volume, making the 3-per-persona quota land naturally — one per cluster, no awkward duplication.
- **Storyteller** has 4 clusters and the quota of 3 forces Cluster D (micro-ritual) to be dropped. This is the single "awkward" pairing in the cell — Storyteller's Q4 (the fifteen-second ritual) is arguably the persona's most distinctive question, but the deterministic selection rule (first cluster, source order) excludes it. Flagged in the BL1 cell summary as an observation about the round-robin rule.
- No persona requires the medium-effort "fill from largest cluster" fallback at this volume.

# tool-library — low — Append Target

**Append-group personas in input:** Provocateur (7), Storyteller (8), Visionary (8), Analogist (8) — 4 personas, 31 questions
**Append questions available (A_available):** 31
**Append quota (A_quota from D1 round-robin rules):** 12 (3 per persona × 4 personas at low effort)
**Expected selection:** 3 questions per persona via round-robin over each persona's internal thematic clusters

> **D1 rule restatement (low effort):** "One per cluster, round-robin." For each Append persona, identify the persona's internal thematic clusters and select one question from each cluster in order until 3 are chosen. If a persona has more than 3 internal clusters, select from the first 3 in source order. If a persona has fewer than 3 internal clusters, take a second question from the largest cluster after the first round (medium-effort fill rule applied here as tiebreaker; not needed for tool-library/low since every Append persona has at least 3 internal clusters).
>
> **Selection-order rule:** Take the first question listed in each cluster (source order). This is deterministic; D1 explicitly avoids quality judgment in selection.

---

## Internal Cluster Identification (per Append persona)

### Provocateur (7 questions, 3 internal clusters)
- **Cluster A — Inverting the access/ownership model:** Q1 (tools that disappear after use), Q2 (charge people to NOT borrow), Q6 (library's core service is refusing to lend)
- **Cluster B — Reframing desire and loss as signal:** Q3 (catalog of impossible/hypothetical tools), Q4 (maximize theft and loss as community feedback)
- **Cluster C — Trust and friction architectures:** Q5 (zero verification, infinite social accountability), Q7 (each tool carries an impossible condition for use)

### Storyteller (8 questions, 4 internal clusters)
- **Cluster A — First-person user journey:** Q1 (Elena's first-time borrowing experience), Q3 (transforming frustration into accomplishment)
- **Cluster B — Collective / long-arc stories:** Q4 (library's story over five years), Q8 (negative narrative patterns we don't want to write)
- **Cluster C — Stories tools tell / tools as connectors:** Q2 (story tools tell about borrowers), Q5 (tools as community connectors)
- **Cluster D — Difficult moments and volunteer emotional arcs:** Q6 (when things go wrong — damage/injury response), Q7 (Maria the volunteer's yearlong emotional journey)

### Visionary (8 questions, 3 internal clusters)
- **Cluster A — Reimagining the lending model itself:** Q1 (capability amplifier, not a lending library), Q2 (eliminate the concept of "lending"), Q5 (prototype for a post-ownership neighborhood)
- **Cluster B — Space and institutional form:** Q3 (storefront as new kind of third place), Q8 (new civic institution / capability commons)
- **Cluster C — Transformative ambition and self-transcendence:** Q4 (put itself out of business within 5-10 years), Q6 (neighborhood emergence, not tool access, as the real function), Q7 (designed as if the year were 2040)

### Analogist (8 questions, 3 internal clusters)
- **Cluster A — Biological / natural systems:** Q1 (healthy ecosystem — circular resource cycling), Q3 (volunteer base as distributed immune system), Q7 (community digestive system, not storage facility)
- **Cluster B — Institutional / historical parallels:** Q2 (library book circulation collection-development principles), Q5 (historic tool cooperatives and guild systems), Q6 (community seed libraries preserving cultural knowledge)
- **Cluster C — Modern distributed systems:** Q4 (car-sharing layered trust architecture), Q8 (open-source distributed stewardship / module maintainers)

---

## Round-Robin Selection Walkthrough

**Round 1** (one question from each persona's first internal cluster — source-order first question per cluster):
- Provocateur Cluster A → Provocateur Q1: "What if tools were designed to disappear after use?"
- Storyteller Cluster A → Storyteller Q1: "The First Borrower's Journey" (Elena)
- Visionary Cluster A → Visionary Q1: "What if tools were merely the gateway to something far more ambitious?" (neighborhood infrastructure for accessing any resource)
- Analogist Cluster A → Analogist Q1: "How might the tool library function like a healthy ecosystem?" (circular resource cycling)

**Round 2** (one question from each persona's second internal cluster):
- Provocateur Cluster B → Provocateur Q3: "Imagine the tool library only accepts tools that don't exist yet" (impossible-tools catalog)
- Storyteller Cluster B → Storyteller Q4: "The Library's Story Over Five Years" (defining moments, traditions, legendary narratives)
- Visionary Cluster B → Visionary Q3: "What if the space itself became something categorically different?" (storefront as a new kind of third place)
- Analogist Cluster B → Analogist Q2: "What could we learn from library book circulation patterns about tool selection and turnover?" (collection-development principles — weeding, turnover, popularity-based acquisition)

**Round 3** (one question from each persona's third internal cluster):
- Provocateur Cluster C → Provocateur Q5: "What if borrowing a tool required zero verification but infinite accountability?" (public social-accountability ledger)
- Storyteller Cluster C → Storyteller Q2: "The Story Tools Tell About Borrowers" (honoring the personal stories and projects behind each request)
- Visionary Cluster C → Visionary Q4: "What would this look like if it existed to put itself out of business?" (self-eliminating design within 5-10 years)
- Analogist Cluster C → Analogist Q4: "What could we borrow from successful car-sharing models about managing risk without excessive barriers?" (Zipcar/Turo layered trust architecture)

**Quota check:** 3 per persona × 4 personas = 12 questions selected. Quota met. Storyteller Cluster D (Q6 things-go-wrong, Q7 Maria the volunteer) is not selected; this is the only Append cluster left unrepresented at low effort and is the expected behavior per D1's quota.

---

## Expected Append Output

Each appended question is tagged with persona attribution per D1 ("Append selected questions to the Phase 2C output under a persona-labeled section"). The format below is the format SP1 should produce.

| # | Cluster (B1) | Persona | Question (truncated) | Tag |
|---|---|---|---|---|
| 1 | Cluster 3 (Financial) — alt Cluster 7 (Commons) | Provocateur | "What if tools were designed to disappear after use?" — Real insight: what if disappearance forced us to confront the true cost of access vs ownership? | [Perspective: Provocateur] |
| 2 | Cluster 4 (Problem Definition) — alt Cluster 9 (Co-creation) | Provocateur | "Imagine the tool library only accepts tools that don't exist yet" — crowdsourcing problem definitions rather than tool inventories. | [Perspective: Provocateur] |
| 3 | Cluster 7 (Trust/Commons) — alt Cluster 1 (Access) | Provocateur | "What if borrowing a tool required zero verification but infinite accountability?" — solving for enabling good actors with social consequences, not preventing bad actors. | [Perspective: Provocateur] |
| 4 | Cluster 1 (Equitable Access / Dignity) | Storyteller | "The First Borrower's Journey" — Elena, a single mother, navigating her first experience from storefront-sighting to checkout. | [Perspective: Storyteller] |
| 5 | Cluster 9 (Co-Creation / Long-Arc Vision) — alt AI Orphan | Storyteller | "The Library's Story Over Five Years" — defining moments, traditions, legendary narratives that become part of the neighborhood's shared story. | [Perspective: Storyteller] |
| 6 | Cluster 1 (Dignity) — alt Cluster 9 | Storyteller | "The Story Tools Tell About Borrowers" — honoring the personal stories and aspirations behind each tool request rather than treating each transaction as functional. | [Perspective: Storyteller] |
| 7 | Cluster 4 (Problem Definition) — alt Cluster 9 | Visionary | "What if tools were merely the gateway to something far more ambitious?" — neighborhood infrastructure for any specialized resource. | [Perspective: Visionary] |
| 8 | Cluster 9 (Co-Creation) — alt AI Orphan | Visionary | "What if the space itself became something categorically different?" — storefront as a new third place at the intersection of access, skill exchange, collaborative problem-solving. | [Perspective: Visionary] |
| 9 | Cluster 4 (Problem Definition) — alt Cluster 6 (Resilience) | Visionary | "What would this look like if it existed to put itself out of business?" — self-eliminating by catalyzing neighborhood self-sufficiency. | [Perspective: Visionary] |
| 10 | Cluster 8 (Operational Design) — alt Cluster 3 | Analogist | "How might the tool library function like a healthy ecosystem?" — circular resource cycling; broken tools feed repair workshops and parts-donors. | [Perspective: Analogist] |
| 11 | Cluster 8 (Operational Design) — alt Cluster 3 | Analogist | "What could we learn from library book circulation patterns about tool selection and turnover?" — weeding, turnover rates, popularity-based acquisition. | [Perspective: Analogist] |
| 12 | Cluster 5 (Liability/Safety) — alt Cluster 1 | Analogist | "What could we borrow from successful car-sharing models about managing risk without excessive barriers?" — Zipcar/Turo layered trust architecture (deposits, telematics, user tiers, insurance pools, peer reviews). | [Perspective: Analogist] |

**B1 cluster coverage from Append:** Clusters 1 (2 appends + 2 alts), 3 (1 alt + 2 alts), 4 (3 appends), 5 (1 append), 6 (1 alt), 7 (1 append + 1 alt), 8 (2 appends), 9 (1 append + 3 alts), AI Orphan (2 alts). Clusters 2 (Volunteer Sustainability) and no coverage; Cluster 6 (Resilience) and Cluster 7 (Trust/Commons) receive only 1 direct append each. This uneven coverage is expected — the Append personas operate in reframing/vision/narrative/analogy registers that align with access-dignity (C1), problem-definition (C4), and co-creation/vision (C9) more than with operational-detail clusters (C2, C5, C6, C8). The 3 Analogist appends (Q1 ecosystem, Q2 library circulation, Q4 car-sharing) are the primary source of Append coverage for operational clusters (C5, C8) because Analogist imports operational frameworks from other domains.

---

## Integration Notes

Per D1: "Append selected questions to the Phase 2C output under a persona-labeled section." For tool-library/low, the recommended integration is a single "Perspective Voices" section after the synthesized cluster output, with each appended question tagged inline as `[Perspective: Provocateur]` (or equivalent).

**Alternative integration (cluster-distributed):** Place each appended question into the relevant B1 cluster. This produces a single integrated reading order but obscures the Append-vs-Synthesize structural distinction. D1's grouped-section approach is preferred because:

1. Append questions are designed to disrupt the analytical frame — burying them inside the analytical clusters domesticates the disruption (see D1 §"The value of Perspective questions is orthogonal"). This matters especially for tool-library/low where C1 is already dense at 16 input questions — burying Provocateur Q5 or Storyteller Q1 inside C1 would dilute the provocations.
2. Persona attribution is clearer in a grouped section.
3. Phase 3 brainstorming subagents can scan Perspective Voices as a discrete section without conflating with Synthesize-group questions.

**Tag format:** `[Perspective: persona-name]` is the recommended tag per D1. The Append section header should also indicate "(Append-group questions selected via round-robin from full persona output; full persona files retained in `questions/by-persona/` for review.)"

---

## Appended Questions Expected to Be Dropped

The 19 Append questions NOT selected at low-effort quota:

**Provocateur (4 dropped):**
- Q2 (charge people to NOT borrow — Cluster A) — Cluster A is already represented by Q1
- Q4 (maximize theft/loss — Cluster B) — Cluster B is already represented by Q3
- Q6 (refusing to lend — Cluster A) — Cluster A double-represented; not needed
- Q7 (impossible conditions per tool — Cluster C) — Cluster C is already represented by Q5

**Storyteller (5 dropped):**
- Q3 (transforming frustration into accomplishment — Cluster A) — Cluster A is already represented by Q1
- Q5 (tools as community connectors — Cluster C) — Cluster C is already represented by Q2
- Q6 (when things go wrong — Cluster D) — Cluster D not selected (quota 3, persona has 4 clusters)
- Q7 (Maria the volunteer's journey — Cluster D) — Cluster D not selected
- Q8 (stories we don't want to write — Cluster B) — Cluster B is already represented by Q4

**Visionary (5 dropped):**
- Q2 (eliminate lending concept — Cluster A) — Cluster A is already represented by Q1
- Q5 (post-ownership prototype — Cluster A) — Cluster A double-represented
- Q6 (neighborhood emergence not tools — Cluster C) — Cluster C is already represented by Q4
- Q7 (designed as if 2040 — Cluster C) — Cluster C double-represented
- Q8 (civic institution / capability commons — Cluster B) — Cluster B is already represented by Q3

**Analogist (5 dropped):**
- Q3 (volunteers as immune system — Cluster A) — Cluster A is already represented by Q1
- Q5 (guilds/tool cooperatives — Cluster B) — Cluster B is already represented by Q2
- Q6 (seed libraries / cultural knowledge — Cluster B) — Cluster B double-represented
- Q7 (community digestive system — Cluster A) — Cluster A double-represented
- Q8 (open-source stewardship — Cluster C) — Cluster C is already represented by Q4

**Total dropped:** 19 (31 input − 12 selected = 19 dropped). Per D1, dropped questions are not deleted — they remain in `questions/by-persona/` for review and could be promoted into output if the synthesizer flags an unmet need (e.g., if Storyteller Cluster D's "when things go wrong" question would substantively cover a Cluster 5 Liability gap, it could be substituted in; if Analogist Q8 open-source-stewardship would substantively cover a Cluster 2 Volunteer Sustainability gap not otherwise filled by Append, it could be substituted).

---

## Notes on Round-Robin Naturalness for This Cell

- **Provocateur, Visionary, Analogist** all have exactly 3 internal clusters at their generated volumes (7, 8, 8 respectively), making the 3-per-persona quota land naturally — one per cluster, no awkward duplication.
- **Storyteller** has 4 clusters and the quota of 3 forces Cluster D (Difficult moments / volunteer emotional arcs) to be dropped. Both of Storyteller's Cluster D questions (Q6 things-go-wrong, Q7 Maria's yearlong journey) are distinctive and arguably the persona's most emotionally-grounded contributions for this topic — the cluster speaks to liability-as-lived-experience (would have cross-referenced Cluster 5) and volunteer-emotional-sustainability (would have cross-referenced Cluster 2). The deterministic selection rule (first cluster, source order) excludes them correctly per the spec, but the rule is less generous to Storyteller than to the other three Append personas at this volume. **This is the same awkwardness observed in habit-tracker/low** — Storyteller consistently producing 4 internal clusters at the 7-8 generation range and the low-effort 3-quota systematically excluding Cluster D.
- No persona requires the medium-effort "fill from largest cluster" fallback at this volume.
- **Analogist provides unusually strong operational-cluster coverage** via Q1 ecosystem, Q2 library-circulation, and Q4 car-sharing — all three map to operational B1 clusters (C3 Financial, C5 Liability, C8 Operational Design). This is distinctive for tool-library/low relative to habit-tracker/low, where Analogist's appends land mostly in Cluster 1 (Failure) via biological-rhythm metaphors. Tool-library's Analogist naturally imports cross-domain operational frameworks, giving Append richer coverage of the analytical clusters than is typical.

# space-party — low — Append Target

**Append personas:** Provocateur, Analogist, Visionary, Storyteller
**Available (A_available):** 31 (Provocateur 8 + Analogist 8 + Visionary 7 + Storyteller 8)
**Quota (D1) (A_quota):** 12 (4 personas × 3 questions per D1 low-effort spec)
**Selection method (D1):** "One per cluster, round-robin." Each persona's questions are pre-clustered (D1 + persona-selection guide note universal ~3-cluster structure for Perspective personas at 5-8 volume). Quota of 3 per persona × 3 internal clusters per persona = exactly one question from each persona-internal cluster.

---

## Persona-Internal Cluster Map

Inspection of the 4 Append personas' source questions yields the following internal cluster structures. None of the four personas supply explicit `##` cluster headings in the test data, so cluster labels here are inferred from question content and the universal-3-cluster heuristic noted in the persona-selection guide.

### Provocateur (8 source questions → 3 clusters)
- **Cluster A — Inverting the theme itself:** Q1 (space-as-enemy / "Thank Goodness We're Stuck on Earth"), Q2 (immersive deception so total a 5yo can't tell), Q3 (deliberately boring "mundane space" party)
- **Cluster B — Inverting party social structure:** Q4 (parents excluded entirely), Q5 (children forbidden from making friends), Q6 (party with no ending)
- **Cluster C — Inverting party economics and purpose:** Q7 (memorable in 20 years not next week), Q8 (zero budget, unlimited time)

### Analogist (8 source questions → 3 clusters by source-domain family)
- **Cluster A — Designed-experience venues:** Q1 (museums), Q2 (theme park imagineering / narrative arcs), Q7 (theater set design), Q8 (retail sensory orchestration)
- **Cluster B — Operations and coordination systems:** Q4 (mission control sequences/checklists), Q5 (restaurant kitchen brigade / mise en place)
- **Cluster C — Natural and ritual patterns:** Q3 (campfire storytelling / cross-cultural ritual), Q6 (biological swarm coordination)

### Visionary (7 source questions → 3 clusters)
- **Cluster A — Reimagining the party form:** Q1 (celebration as ongoing experience over time), Q3 (no spectator-performer divide / co-created emergence), Q6 (what persists from childhood celebrations — artifacts that grow rather than are consumed)
- **Cluster B — Reimagining the child's role:** Q2 (child as cosmic protagonist with agency), Q7 (5th birthday as transformational threshold with ritual significance)
- **Cluster C — Reimagining "space" as substantive:** Q4 (space as catalyst for genuine awe/cosmic perspective, not aesthetic), Q5 (party as launch of real discovery / ongoing project)

### Storyteller (8 source questions → 3 clusters)
- **Cluster A — Narrative arc structure:** Q1 (arrival story), Q2 (hero's journey across the party), Q3 (emotional crescendos / quieter beats)
- **Cluster B — Story-as-environment / props / characters:** Q4 (environmental storytelling — space as set), Q5 (adults as supporting characters), Q6 (props as story generators)
- **Cluster C — Story-after-the-event:** Q7 (the story children tell to grandparents afterward), Q8 (photographic evidence as narrative documentation)

---

## Round-Robin Walkthrough

Per D1 selection mechanics: read cluster headings → select one question from each cluster in order until the per-persona quota (3) is met → append to output under persona-labeled sections. Round-robin here means rotating *which persona contributes next* across rounds while each persona walks through its own clusters in sequence.

**Round 1 (each persona's Cluster A):**
- Provocateur Cluster A → **Q1** (space-as-enemy / "Thank Goodness We're Stuck on Earth")
- Analogist Cluster A → **Q1** (museum-style learning loops / hidden learning through play)
- Visionary Cluster A → **Q1** (celebration as extended experience over time)
- Storyteller Cluster A → **Q1** (the arrival story — sensory transition from regular to space world)

**Round 2 (each persona's Cluster B):**
- Provocateur Cluster B → **Q4** (parents not allowed to see what happens)
- Analogist Cluster B → **Q4** (flight mission operations — countdowns, mission briefings, role assignments)
- Visionary Cluster B → **Q2** (the child as cosmic protagonist — birthday girl drives a mission with meaning)
- Storyteller Cluster B → **Q4** (environmental storytelling — party space as set inviting story without explanation)

**Round 3 (each persona's Cluster C):**
- Provocateur Cluster C → **Q7** (memorable in 20 years not next week)
- Analogist Cluster C → **Q3** (campfire storytelling traditions / ritual openings and closings)
- Visionary Cluster C → **Q4** (space as catalyst for genuine wonder, not aesthetic theme — encountering scale viscerally)
- Storyteller Cluster C → **Q7** (the story children tell afterward — designing for retellable moments)

**Tie-breaking rules used:** Where a cluster contains multiple questions and only one slot is needed (Provocateur A: Q1/Q2/Q3 → picked Q1; Analogist A: Q1/Q2/Q7/Q8 → picked Q1; etc.), the lowest-numbered question in the source is selected. This is a deterministic rule to avoid quality-judgment-based selection (per D1: "no quality judgment needed, just structural diversity"). Ties broken by source-order yield reproducibility across SP1 runs.

---

## Expected Append Output

12 questions, organized under persona-labeled sections in the final output. Each retains its source persona attribution and verbatim text from the test data.

| # | Cluster (B1 mapping) | Persona | Source Q | Question (abridged) | Tag (per D1) |
|---|---|---|---|---|---|
| 1 | Bridge to C4 (Theme Authenticity) | Provocateur | Q1 | What if space wasn't the theme but the enemy? — "Thank Goodness We're Stuck on Earth" — exploring the theme's opposite. | `[Provocateur — Theme Inversion]` |
| 2 | Bridge to C2 (Activity Design) | Analogist | Q1 | Museum-style learning loops — hidden learning through play; touch stations, immersive environments, scaffolded activities translated to a home party. | `[Analogist — Source: Museums]` |
| 3 | Bridge to C5 (Memory & Wonder) | Visionary | Q1 | Reimagining celebration beyond the party model — birthday as ongoing narrative or journey that begins before and continues after; "party" as one milestone in a larger adventure. | `[Visionary — Form Reimagined]` |
| 4 | Bridge to C3 (Sensory Arrival) | Storyteller | Q1 | The arrival story — sensory details and visual cues transforming the approach into the beginning of a space adventure before children step through the door. | `[Storyteller — Narrative Arc]` |
| 5 | Bridge to C7 (Family / Parent role) | Provocateur | Q4 | What if the parents aren't allowed to see what happens? — parents only learn about the party days later through what kids remember; questioning what parts of children's parties are for parental reassurance. | `[Provocateur — Social Structure Inversion]` |
| 6 | Bridge to C2 (Activity Sequencing) | Analogist | Q4 | Flight mission operations — adapting "mission phases," countdowns, briefings, role assignments to give 5-year-olds participation in something structured and important. | `[Analogist — Source: Operations]` |
| 7 | Bridge to C4 (Birthday-Girl Agency) | Visionary | Q2 | The child as cosmic protagonist — inverting the passive-recipient frame; birthday girl drives a mission with meaning beyond the event. | `[Visionary — Child's Role]` |
| 8 | Bridge to C2/C3 (Activity / Environment) | Storyteller | Q4 | Environmental storytelling — party space as a "set" with details that invite children into the story without adult explanation; details rewarding attention and curiosity. | `[Storyteller — Environment as Story]` |
| 9 | Bridge to C5 (Memory) | Provocateur | Q7 | What if this party needed to be memorable in 20 years, not next week? — designing for long-term memory formation; sacrificing short-term enjoyment for one unforgettable moment. | `[Provocateur — Purpose/Time Inversion]` |
| 10 | Bridge to C7 (Tradition / Ritual) | Analogist | Q3 | Campfire storytelling traditions — opening ceremonies, participatory elements, shared experiences, closing rituals; space-themed ritual structure as anchor. | `[Analogist — Source: Ritual]` |
| 11 | Bridge to C5 (Wonder) | Visionary | Q4 | Space as catalyst for genuine wonder, not aesthetic theme — children encountering something that shifts their relationship to scale, distance, or existence; visceral experience of being small in a vast universe. | `[Visionary — Substantive Space]` |
| 12 | Bridge to C5 (Memory / Retelling) | Storyteller | Q7 | The story children tell afterward — designing the party to generate retellable story beats that children spontaneously recount. | `[Storyteller — Post-Event Story]` |

**Cluster bridging summary:** The 12 appended questions distribute across the B1 clusters as follows: C2 (3), C3 (1), C4 (2), C5 (4), C7 (2). C1 (Budget) and C6 (Logistics) receive no Append questions — consistent with D1's framing that Append questions operate in a different register (provocations, metaphors, narratives, paradigm challenges) than the analytical/logistical territory carried by Synthesize.

---

## Integration Notes (per D1 tagging convention)

D1 specifies that appended questions retain persona attribution and exist in a different register from synthesized questions — they are *not* dimensionally balanced against the Synthesize output. The integration into the final output should:

1. **Place appended questions in a clearly demarcated section** after the synthesized clusters — e.g., "Provocations, Metaphors, and Reimaginations" — so consumers see them as additive provocations rather than peer questions to the synthesized analytical core.
2. **Group by persona within the appended section** so each persona's distinct register reads coherently. Order: Provocateur → Analogist → Visionary → Storyteller (alphabetical by persona within each cluster).
3. **Tag each appended question with persona name and a short cluster descriptor** (e.g., `[Provocateur — Theme Inversion]`). The cluster descriptor is informational only; it does not bind the appended question to a Synthesize cluster.
4. **Do not merge appended questions with synthesized questions even when they touch the same concern.** E.g., Visionary Q2 (child as cosmic protagonist) touches C4 (Birthday-Girl Agency) and Storyteller Q4 (environmental storytelling) touches C2 (Activity Design), but D1 treats these as orthogonal — they preserve the persona's distinctive cognitive mode rather than fill a Synthesize gap.
5. **Preserve verbatim text.** Append-group questions are not edited, condensed, or reformatted. The "real insight" footers in Provocateur questions (e.g., *"The real insight: sometimes the best way to understand a theme is to explore its opposite."*) are preserved as part of the question.

---

## Expected to Drop (Append-available — 19 of 31)

Per D1 quota math (A_available 31 − A_quota 12 = 19 dropped). Drops are the questions in each persona's clusters that lose round-robin tie-breaks to lower-numbered questions:

| Persona | Dropped Source Qs | Cluster | Reason |
|---|---|---|---|
| Provocateur | Q2, Q3 | A | Lost A-cluster slot to Q1 |
| Provocateur | Q5, Q6 | B | Lost B-cluster slot to Q4 |
| Provocateur | Q8 | C | Lost C-cluster slot to Q7 |
| Analogist | Q2, Q7, Q8 | A | Lost A-cluster slot to Q1 |
| Analogist | Q5 | B | Lost B-cluster slot to Q4 |
| Analogist | Q6 | C | Lost C-cluster slot to Q3 |
| Visionary | Q3, Q6 | A | Lost A-cluster slot to Q1 |
| Visionary | Q7 | B | Lost B-cluster slot to Q2 |
| Visionary | Q5 | C | Lost C-cluster slot to Q4 |
| Storyteller | Q2, Q3 | A | Lost A-cluster slot to Q1 |
| Storyteller | Q5, Q6 | B | Lost B-cluster slot to Q4 |
| Storyteller | Q8 | C | Lost C-cluster slot to Q7 |

**Drop count:** 19 of 31 (61%). This matches D1's "40-60% discarded at low effort" expectation (slightly above the 60% ceiling because Analogist's Cluster A has 4 source questions where typical clusters carry 2-3 — Analogist is over-clustered in Cluster A, inflating drops). Acceptable for SP1 scoring; not a quality concern per D1.

**Note for SP1:** D1 explicitly states "discarded questions remain in `questions/by-persona/` for review" — the dropped 19 are not lost from the session record, only from the appended output. SP1 should not penalize a synthesizer for failing to include any of the 19 dropped questions; only the 12 selected above are scoring targets.

---

**Last Updated:** 2026-04-18
**Author:** BL1 subagent (space-party / low cell)

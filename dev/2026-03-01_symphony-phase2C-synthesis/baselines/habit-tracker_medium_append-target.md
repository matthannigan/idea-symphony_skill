# habit-tracker — medium — Append Target

**Append-group personas in input:**
- Provocateur (Tier 1 Perspective) — 7 questions
- Storyteller (Tier 1 Perspective) — 7 questions
- Visionary (Tier 1 Perspective) — 8 questions
- Analogist (Tier 1 Perspective) — 6 questions
- (No Connector — Analogist retained per GT1 Rev 3 for habit-tracker; topic is single-domain)
- (No Politician — no Tier 3 Append persona selected for habit-tracker/medium)

**Append questions available:** 28 (7 + 7 + 8 + 6)

**Append quota (from D1):** 20 (5 per persona × 4 personas)

**Expected selection:** 20 questions via round-robin over each persona's internal clusters

**Selection method:** Per D1 rules — "One per cluster, then fill from largest clusters" — applied to each persona's question pool independently. The orchestrator does NOT round-robin across personas; each persona independently selects 5 from its 5-8 generated questions via cluster round-robin.

---

## Persona-Internal Cluster Identification

D1 specifies "Read cluster headings (already provided by the persona as `##` sections)." The current test file does NOT contain explicit `##` cluster headings within each persona's section — questions are presented as a flat numbered list. For the baseline, I infer natural cluster groupings from question content. The synthesis subagent in production will face the same situation if cluster headings aren't preserved during Phase 2B output, OR will read them directly if Phase 2B writes them. For BL1 baseline purposes, I infer clusters.

### Provocateur (7 questions, 3 inferred clusters)

**Cluster A — Self-elimination & reframing success:**
- Q1 (rewarded for breaking habits)
- Q2 (deletes data every 30 days, self-eliminating product)
- Q5 (100% completion = failure; perpetual productive insecurity)

**Cluster B — Self-knowledge & focus constraints:**
- Q3 (predict daily, judged on self-knowledge accuracy)
- Q4 (one habit at a time, serial depth vs. parallel breadth)

**Cluster C — Social/external mediation:**
- Q6 (only via accountability partner)
- Q7 (see others' data, not your own)

### Storyteller (7 questions, 3 inferred clusters)

**Cluster A — Narrative arc & legacy:**
- Q1 (90-day journey as story with acts, character development)
- Q7 (legacy narrative, year-of-tracking memoir)

**Cluster B — Failure/disruption stories:**
- Q2 (story users tell themselves about failure)
- Q5 (drama of streak break)
- Q6 (habit in natural habitat, life's plot complications)

**Cluster C — Daily ritual & supporting cast:**
- Q3 (invisible cast of characters, accountability partners)
- Q4 (fifteen-second ritual)

### Visionary (8 questions, 3 inferred clusters)

**Cluster A — Beyond-tracking paradigms:**
- Q1 (eliminate "tracking" entirely, transformation without measurement)
- Q3 (first principles, no streaks, no gamification playbook)
- Q5 (reshape relationship with maintenance itself)

**Cluster B — Living/sensing companion:**
- Q2 (living companion that grows with user, human-tool symbiosis)
- Q4 (sense user's needs before they articulate as "habits")
- Q6 (serendipity and emergence rather than deterministic outcomes)

**Cluster C — Embodied & collective:**
- Q7 (collective phenomenon, not social network)
- Q8 (embodied experience, integration with physical practice)

### Analogist (6 questions, 3 inferred clusters)

**Cluster A — Biological/natural-systems analogies:**
- Q1 (agricultural seasons — cyclical, fallow periods)
- Q2 (circadian biology — personal rhythm-based timing)
- Q3 (mycorrhizal networks — mutual support over competition)

**Cluster B — Skill-acquisition & learning analogies:**
- Q4 (martial arts belt systems — capability over attendance)
- Q5 (language acquisition spaced repetition — habit decay prevention)

**Cluster C — Aesthetic/philosophical analogies:**
- Q6 (Japanese shibui — quiet elegance over gamification noise)

---

## Round-Robin Selection Walkthrough

D1 method: "One per cluster, then fill from largest clusters." For 5-question quota and 3 clusters per persona, the algorithm is:
- Round 1: pick first question from each cluster (3 picks)
- Round 2: pick second question from each cluster, in cluster-size order (largest cluster first)
- Continue until 5 selected

### Provocateur (5 of 7 selected; 2 dropped)

**Cluster sizes:** A=3, B=2, C=2

- **Round 1 (one per cluster):**
  - Cluster A → Q1 (rewarded for breaking habits)
  - Cluster B → Q3 (predict daily)
  - Cluster C → Q6 (accountability partner mediated)
- **Round 2 (fill from largest first; A=3, then B=2 and C=2 tied):**
  - Cluster A → Q2 (delete data every 30 days)
  - Cluster B → Q4 (one habit at a time) **OR** Cluster C → Q7. Tiebreak by cluster order (B precedes C alphabetically/structurally, or by source order). Per D1's deterministic spirit, take the cluster encountered first in source order. Q4 is question #4, Q7 is question #7. Since both clusters tied at size 2, take from the cluster whose first selection came earlier in source order: Cluster B's first pick was Q3 (#3); Cluster C's first pick was Q6 (#6). B came first → next pick from B.
  - Cluster B → Q4 (one habit at a time)

**Selected (5):** Q1, Q2, Q3, Q4, Q6

**Dropped (2):** Q5 (100% = failure), Q7 (others' data not own)

### Storyteller (5 of 7 selected; 2 dropped)

**Cluster sizes:** A=2, B=3, C=2

- **Round 1 (one per cluster):**
  - Cluster A → Q1 (narrative arc)
  - Cluster B → Q2 (story users tell themselves about failure)
  - Cluster C → Q3 (invisible cast of characters)
- **Round 2 (largest first; B=3):**
  - Cluster B → Q5 (drama of the streak)
- **Round 3 (next-largest; A=2 vs C=2; tiebreak by earlier-first-pick — Cluster A's first pick Q1 (#1) earlier than Cluster C's Q3 (#3)):**
  - Cluster A → Q7 (legacy narrative)

**Selected (5):** Q1, Q2, Q3, Q5, Q7

**Dropped (2):** Q4 (fifteen-second ritual), Q6 (habit in natural habitat)

### Visionary (5 of 8 selected; 3 dropped)

**Cluster sizes:** A=3, B=3, C=2

- **Round 1 (one per cluster):**
  - Cluster A → Q1 (eliminate "tracking" entirely)
  - Cluster B → Q2 (living companion)
  - Cluster C → Q7 (collective phenomenon)
- **Round 2 (largest first; A=3 and B=3 tied; tiebreak by earlier-first-pick — Cluster A Q1 (#1) earlier than Cluster B Q2 (#2)):**
  - Cluster A → Q3 (first principles, no playbook)
- **Round 3 (next from B=3):**
  - Cluster B → Q4 (sense underlying needs before articulation)

**Selected (5):** Q1, Q2, Q3, Q4, Q7

**Dropped (3):** Q5 (reshape maintenance), Q6 (serendipity/emergence), Q8 (embodied experience)

### Analogist (5 of 6 selected; 1 dropped)

**Cluster sizes:** A=3, B=2, C=1

- **Round 1 (one per cluster):**
  - Cluster A → Q1 (agricultural seasons)
  - Cluster B → Q4 (martial arts belt systems)
  - Cluster C → Q6 (Japanese shibui)
- **Round 2 (largest first; A=3):**
  - Cluster A → Q2 (circadian biology)
- **Round 3 (next-largest; B=2):**
  - Cluster B → Q5 (spaced repetition)

**Selected (5):** Q1, Q2, Q4, Q5, Q6

**Dropped (1):** Q3 (mycorrhizal networks)

---

## Expected Append Output

**Total append questions:** 20 (5 × 4 personas)

| # | Persona | Source Q# | Question Topic | Tag (per D1 integration) |
|---|---|---|---|---|
| 1 | Provocateur | Q1 | Rewarded for breaking habits | `[Provocateur]` |
| 2 | Provocateur | Q2 | Self-eliminating product (data deleted every 30 days) | `[Provocateur]` |
| 3 | Provocateur | Q3 | Daily prediction, locked-in | `[Provocateur]` |
| 4 | Provocateur | Q4 | One habit at a time (serial depth) | `[Provocateur]` |
| 5 | Provocateur | Q6 | Accountability partner mediated access | `[Provocateur]` |
| 6 | Storyteller | Q1 | Narrative arc / 90-day story | `[Storyteller]` |
| 7 | Storyteller | Q2 | Story users tell themselves about failure | `[Storyteller]` |
| 8 | Storyteller | Q3 | Invisible cast of characters | `[Storyteller]` |
| 9 | Storyteller | Q5 | Drama of the streak break | `[Storyteller]` |
| 10 | Storyteller | Q7 | Legacy narrative / memoir of evolution | `[Storyteller]` |
| 11 | Visionary | Q1 | Eliminate "tracking" entirely | `[Visionary]` |
| 12 | Visionary | Q2 | Living companion that grows with user | `[Visionary]` |
| 13 | Visionary | Q3 | First principles, no streaks/gamification | `[Visionary]` |
| 14 | Visionary | Q4 | Sense underlying needs before articulation | `[Visionary]` |
| 15 | Visionary | Q7 | Collective phenomenon (not social network) | `[Visionary]` |
| 16 | Analogist | Q1 | Agricultural seasons (cyclical, fallow) | `[Analogist]` |
| 17 | Analogist | Q2 | Circadian biology (personal rhythm timing) | `[Analogist]` |
| 18 | Analogist | Q4 | Martial arts belt systems (capability over attendance) | `[Analogist]` |
| 19 | Analogist | Q5 | Language acquisition spaced repetition (habit decay) | `[Analogist]` |
| 20 | Analogist | Q6 | Japanese shibui (quiet elegance) | `[Analogist]` |

---

## Integration Notes

### Tagging per D1 rules

D1's "Append selected questions to the Phase 2C output under a persona-labeled section" implies:

1. **Section structure in Phase 2C output:** A dedicated "Appended Perspectives" section after the synthesized clusters, with sub-sections per persona OR sub-sections per Synthesize cluster (B1) with appended questions interleaved by thematic affinity.

2. **Recommended structure (Option A — by-persona sections):**
   ```
   ## Appended Perspectives

   ### Provocateur (5 questions)
   [Q1, Q2, Q3, Q4, Q6 listed]

   ### Storyteller (5 questions)
   [Q1, Q2, Q3, Q5, Q7 listed]

   ### Visionary (5 questions)
   [Q1, Q2, Q3, Q4, Q7 listed]

   ### Analogist (5 questions)
   [Q1, Q2, Q4, Q5, Q6 listed]
   ```

3. **Tag format:** Each appended question is prefixed with `[Persona]` so its origin is visible in any flat presentation. Questions retain their source numbering for traceability.

4. **No interleaving with Synthesize clusters:** Per D1's analysis ("The value of Perspective questions is orthogonal, not gap-filling"), appended questions should NOT be placed inside Synthesize clusters. The Append section is structurally distinct from Synthesize output. This preserves the disruptive value of the Append voice rather than domesticating it into analytical territory.

### Reasonable cross-references (optional, NOT required)

For BL1 baseline scoring purposes, the following cross-cluster affinities are noted for SP1 evaluation (do NOT require synthesis to produce these):

- Provocateur Q2 (self-eliminating product) thematically resonates with Synthesize Cluster 7 (Graceful Graduation)
- Provocateur Q5 thematically resonates with Cluster 7 — but Q5 was dropped per round-robin
- Storyteller Q2 (failure stories) resonates with Synthesize Cluster 4 (Failure Recovery)
- Visionary Q1 (eliminate tracking) resonates with Synthesize Cluster 2 (Habit Formation Theory — "what if we don't track at all")
- Analogist Q1 (agricultural seasons) resonates with Synthesize Cluster 12 (Habit System Dynamics — evolution over time)

These resonances are real but do not justify integrating Append questions into Synthesize clusters. They support the "orthogonal value" thesis: Perspective questions disrupt and reframe themes that the Synthesize group also addresses, but in registers (provocation, narrative, paradigm shift, metaphor) that synthesis would strip.

---

## Appended Questions Expected to Be Dropped

**8 questions dropped via round-robin selection** (28 available - 20 quota = 8 dropped).

| Persona | Q# | Question Topic | Reason for Drop |
|---|---|---|---|
| Provocateur | Q5 | 100% completion = failure (perpetual productive insecurity) | Cluster A already at quota (Q1, Q2 selected); Cluster A had 3 questions and Round 2 selected Q2; Q5 was the third-priority selection in a 2-pick round. |
| Provocateur | Q7 | See others' data, not your own | Cluster C tied with B at size 2; tiebreak rule favored B (earlier first-pick); C did not get a second selection at the 5-question quota. |
| Storyteller | Q4 | Fifteen-second ritual | Cluster C tied with A at size 2; A won tiebreak (earlier first-pick); C did not get a second selection. |
| Storyteller | Q6 | Habit in natural habitat (life's plot complications) | Cluster B had 3 questions; Q5 (drama of streak) was selected as the second from B; Q6 was third-priority in a 2-pick round. |
| Visionary | Q5 | Reshape relationship with maintenance | Cluster A had 3 questions; Q3 selected as second from A; Q5 was third-priority. |
| Visionary | Q6 | Serendipity and emergence | Cluster B had 3 questions; Q4 selected as second from B; Q6 was third-priority. |
| Visionary | Q8 | Embodied experience | Cluster C had 2 questions; quota of 5 reached after one selection from C (Q7); Q8 was second-priority but quota hit. |
| Analogist | Q3 | Mycorrhizal networks | Cluster A had 3 questions; Q2 selected as second from A; Q3 was third-priority. (Note: this is the well-known Analogist signature analogy — its drop is structurally inevitable given round-robin and quota of 5.) |

**Drop pattern observation:**
- Round-robin naturally drops within-cluster restated questions, which is the desired behavior — preserving cluster diversity over within-cluster depth
- However, several distinctive questions are dropped: Provocateur Q5 (perpetual insecurity), Visionary Q8 (embodied experience), Analogist Q3 (mycorrhizal networks). The mechanical round-robin loses these in favor of cluster representation.
- This is consistent with D1's design principle: Perspective questions at 5-8 are all high-quality (no filler to avoid), so dropping any of them loses real value. The trade-off is structural diversity over within-cluster depth, which D1 chose deliberately.
- For BL1 scoring: SP1's append output should match this 5-per-persona structure. If SP1 instead retains all 28 Append questions (overshooting the 20 quota), penalize per the methodology. If SP1 drops different 8 questions than this baseline (different round-robin choices), this is acceptable as long as the algorithm shape is correct (5 per persona, with some cluster-balance heuristic).

---

**Last Updated:** 2026-04-18
**Author:** BL1 subagent (habit-tracker / medium cell)

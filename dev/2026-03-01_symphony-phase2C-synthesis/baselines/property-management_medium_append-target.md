# property-management — medium — Append Target

**Append-group personas in input:**
- Provocateur (Tier 1 Perspective) — 7 questions
- Storyteller (Tier 1 Perspective) — 7 questions
- Visionary (Tier 1 Perspective) — 8 questions
- Analogist (Tier 1 Perspective) — 6 questions
- (No Connector — Analogist retained per GT1 Rev 3 for property-management; topic is single-domain)
- (No Politician — Lawyer is the 1 Tier 3 selected for property-management/medium, and Lawyer is Synthesize-method, not Append. No Tier 3 Append persona on this cell.)

**Append questions available (A_available):** 28 (7 + 7 + 8 + 6)

**Append quota (A_quota) from D1:** 20 (5 per persona × 4 personas)

**Expected selection:** 20 questions via round-robin over each persona's internal clusters

**Selection method:** Per D1 rules — "One per cluster, then fill from largest clusters" — applied to each persona's question pool independently. The orchestrator does NOT round-robin across personas; each persona independently selects 5 from its 5-8 generated questions via cluster round-robin.

---

## Persona-Internal Cluster Identification

D1 specifies "Read cluster headings (already provided by the persona as `##` sections)." The current test file does NOT contain explicit `##` cluster headings within each persona's section — questions are presented as a flat numbered list. For the baseline, natural cluster groupings are inferred from question content. For BL1 baseline purposes, I infer clusters.

### Provocateur (7 questions, 3 inferred clusters)

**Cluster A — Value-proposition redefinition (what business are we actually in?):**
- Q1 (owners pay guests / data collection or social proof as revenue)
- Q2 (virtual properties / immersive VR / experience over space)
- Q3 (growth by putting yourself out of business / education and systems transfer as product)
- Q5 (regulations as primary product / compliance as value proposition)

**Cluster B — Selection / friction as feature:**
- Q4 (intentional booking friction, qualifying interview, selective quality filter)

**Cluster C — Political & community embedding:**
- Q6 (run for council on phasing out STRs / company as transition mechanism)
- Q7 (micro-operators literally living in neighborhoods they serve)

### Storyteller (7 questions, 3 inferred clusters)

**Cluster A — Relational-arc narratives (owner / neighbor trust over time):**
- Q1 (Margaret, retired teacher first-meeting trust)
- Q4 (Garcia neighbors 15-year residents over first year)

**Cluster B — Crisis / cascade narratives (decision-points and turning-points):**
- Q2 (11PM Saturday emergency, 3 perspectives)
- Q3 (city council election changes everything — cascade)
- Q7 (crisis that doesn't happen / gas leak good vs. bad narrative side-by-side)

**Cluster C — Organizational & community evolution:**
- Q5 (local narrative tension in coastal city — block-party conversation)
- Q6 (Elena manager scaling from 5 to 50 properties — what gets lost)

### Visionary (8 questions, 3 inferred clusters)

**Cluster A — Category redefinition (not property management at all):**
- Q1 (eliminate "management" / property ecosystem curator / dynamic responsive organisms)
- Q2 (place stewardship / connective tissue weaving visitors into fabric)
- Q3 (blank-page design / orchestrate meaningful encounters / transformative experiences of place)

**Cluster B — Community-value alignment as business mechanic:**
- Q4 (community well-being as success metric, not bookings or revenue)
- Q5 (regulatory friction as advantage / obsolete-by-design community alignment)
- Q6 (commons governance entity / cooperative or community land trust model)

**Cluster C — Civilizational-scale reframings (beyond STR entirely):**
- Q7 (micro-infrastructure for belonging / multi-local citizenship)
- Q8 (spatial accessibility as democratization / parallel to information-access transformation)

### Analogist (6 questions, 3 inferred clusters)

**Cluster A — Community-stewardship analogies (from other industries):**
- Q1 (concierge model from luxury residential buildings)
- Q2 (commercial fishing community-based quotas / commons co-management)
- Q3 (certified organic voluntary standards codifying into regulation)

**Cluster B — Political-coalition analogies:**
- Q4 (craft breweries / taproom model + local economic development coalition-building)

**Cluster C — Operational-scaling analogies:**
- Q5 (airline hub-and-spoke scaling across distributed properties)
- Q6 (ride-sharing period 1/2/3 insurance coverage model for liability fragmentation)

---

## Round-Robin Selection Walkthrough

D1 method: "One per cluster, then fill from largest clusters." For 5-question quota and 3 clusters per persona, the algorithm is:
- Round 1: pick first question from each cluster (3 picks)
- Round 2: pick second question from each cluster, in cluster-size order (largest cluster first)
- Continue until 5 selected

### Provocateur (5 of 7 selected; 2 dropped)

**Cluster sizes:** A=4, B=1, C=2

- **Round 1 (one per cluster):**
  - Cluster A → Q1 (owners pay guests)
  - Cluster B → Q4 (intentional booking friction)
  - Cluster C → Q6 (run for council)
- **Round 2 (largest first; A=4):**
  - Cluster A → Q2 (virtual properties)
- **Round 3 (next-largest; B=1 is full; C=2):**
  - Cluster C → Q7 (micro-operators in neighborhoods)

**Selected (5):** Q1, Q2, Q4, Q6, Q7

**Dropped (2):** Q3 (self-obsolescence / education as product), Q5 (regulations as primary product)

### Storyteller (5 of 7 selected; 2 dropped)

**Cluster sizes:** A=2, B=3, C=2

- **Round 1 (one per cluster):**
  - Cluster A → Q1 (Margaret first-meeting)
  - Cluster B → Q2 (Saturday 11PM emergency)
  - Cluster C → Q5 (block-party conversation)
- **Round 2 (largest first; B=3):**
  - Cluster B → Q3 (election day cascade)
- **Round 3 (next-largest; A=2 vs C=2 tied; tiebreak by earlier-first-pick — A's first pick Q1 (#1) earlier than C's Q5 (#5)):**
  - Cluster A → Q4 (Garcia neighbors over first year)

**Selected (5):** Q1, Q2, Q3, Q4, Q5

**Dropped (2):** Q6 (Elena manager scaling), Q7 (crisis that doesn't happen / gas leak)

### Visionary (5 of 8 selected; 3 dropped)

**Cluster sizes:** A=3, B=3, C=2

- **Round 1 (one per cluster):**
  - Cluster A → Q1 (eliminate "management" / ecosystem curator)
  - Cluster B → Q4 (community well-being as success metric)
  - Cluster C → Q7 (micro-infrastructure for belonging)
- **Round 2 (largest first; A=3 and B=3 tied; tiebreak by earlier-first-pick — A's Q1 (#1) earlier than B's Q4 (#4)):**
  - Cluster A → Q2 (place stewardship / connective tissue)
- **Round 3 (next from B=3):**
  - Cluster B → Q5 (regulatory friction as advantage)

**Selected (5):** Q1, Q2, Q4, Q5, Q7

**Dropped (3):** Q3 (blank-page experience orchestration), Q6 (commons governance entity), Q8 (spatial accessibility democratization)

### Analogist (5 of 6 selected; 1 dropped)

**Cluster sizes:** A=3, B=1, C=2

- **Round 1 (one per cluster):**
  - Cluster A → Q1 (concierge model)
  - Cluster B → Q4 (craft breweries / coalition building)
  - Cluster C → Q5 (airline hub-and-spoke)
- **Round 2 (largest first; A=3):**
  - Cluster A → Q2 (fisheries commons / co-management)
- **Round 3 (next-largest; B=1 full; C=2):**
  - Cluster C → Q6 (ride-sharing period 1/2/3 insurance)

**Selected (5):** Q1, Q2, Q4, Q5, Q6

**Dropped (1):** Q3 (certified organic voluntary standards)

---

## Expected Append Output

**Total append questions:** 20 (5 × 4 personas)

| # | Persona | Source Q# | Question Topic | Tag (per D1 integration) |
|---|---|---|---|---|
| 1 | Provocateur | Q1 | Owners pay guests / revenue from data or social proof | `[Provocateur]` |
| 2 | Provocateur | Q2 | Virtual properties / immersive VR experiences | `[Provocateur]` |
| 3 | Provocateur | Q4 | Intentional booking friction / qualifying interview | `[Provocateur]` |
| 4 | Provocateur | Q6 | Run for council on phasing out STRs | `[Provocateur]` |
| 5 | Provocateur | Q7 | Micro-operators literally living in neighborhoods | `[Provocateur]` |
| 6 | Storyteller | Q1 | Margaret / retired teacher first-meeting trust | `[Storyteller]` |
| 7 | Storyteller | Q2 | Saturday 11PM emergency / 3 perspectives | `[Storyteller]` |
| 8 | Storyteller | Q3 | Election day / regulatory cascade | `[Storyteller]` |
| 9 | Storyteller | Q4 | Garcia neighbors over first year | `[Storyteller]` |
| 10 | Storyteller | Q5 | Local narrative tension / block-party conversation | `[Storyteller]` |
| 11 | Visionary | Q1 | Eliminate "management" / ecosystem curator | `[Visionary]` |
| 12 | Visionary | Q2 | Place stewardship / connective tissue | `[Visionary]` |
| 13 | Visionary | Q4 | Community well-being as success metric | `[Visionary]` |
| 14 | Visionary | Q5 | Regulatory friction as advantage | `[Visionary]` |
| 15 | Visionary | Q7 | Micro-infrastructure for belonging / multi-local citizenship | `[Visionary]` |
| 16 | Analogist | Q1 | Concierge model from luxury residential | `[Analogist]` |
| 17 | Analogist | Q2 | Fisheries commons / community-based quotas | `[Analogist]` |
| 18 | Analogist | Q4 | Craft breweries / local economic development coalition | `[Analogist]` |
| 19 | Analogist | Q5 | Airline hub-and-spoke scaling | `[Analogist]` |
| 20 | Analogist | Q6 | Ride-sharing period 1/2/3 insurance coverage | `[Analogist]` |

---

## Integration Notes

### Tagging per D1 rules

D1's "Append selected questions to the Phase 2C output under a persona-labeled section" implies:

1. **Section structure in Phase 2C output:** A dedicated "Appended Perspectives" section after the synthesized clusters, with sub-sections per persona.

2. **Recommended structure (Option A — by-persona sections):**
   ```
   ## Appended Perspectives

   ### Provocateur (5 questions)
   [Q1, Q2, Q4, Q6, Q7 listed]

   ### Storyteller (5 questions)
   [Q1, Q2, Q3, Q4, Q5 listed]

   ### Visionary (5 questions)
   [Q1, Q2, Q4, Q5, Q7 listed]

   ### Analogist (5 questions)
   [Q1, Q2, Q4, Q5, Q6 listed]
   ```

3. **Tag format:** Each appended question is prefixed with `[Persona]` so its origin is visible in any flat presentation. Questions retain their source numbering for traceability.

4. **No interleaving with Synthesize clusters:** Per D1's analysis ("The value of Perspective questions is orthogonal, not gap-filling"), appended questions should NOT be placed inside Synthesize clusters. The Append section is structurally distinct from Synthesize output. This preserves the disruptive value of the Append voice rather than domesticating it into analytical territory.

### Reasonable cross-references (optional, NOT required)

For BL1 baseline scoring purposes, the following cross-cluster affinities are noted for SP1 evaluation (do NOT require synthesis to produce these):

- Provocateur Q5 (regulations as primary product) thematically resonates with Synthesize Cluster 1 (Regulatory Scenarios) + Cluster 12 (Revenue Model / compliance-as-value-prop) — but Q5 was dropped per round-robin
- Provocateur Q6 (run for council) resonates with Synthesize Cluster 1 (Regulatory) + Cluster 7 (Good Neighbor Positioning)
- Provocateur Q7 (micro-operators in neighborhoods) resonates with Synthesize Cluster 5 (30-Min Response) + Cluster 7 (Good Neighbor)
- Storyteller Q1 (Margaret) resonates with Cluster 9 (Owner Trust) and Cluster 10 (Foundational Launch)
- Storyteller Q3 (election day cascade) resonates with Cluster 1 (Regulatory Scenarios)
- Storyteller Q4 (Garcia neighbors) resonates with Cluster 7 (Good Neighbor)
- Visionary Q4 (community well-being metric) resonates with Cluster 7 (Good Neighbor)
- Visionary Q5 (regulatory friction as advantage) resonates with Cluster 1 (Regulatory) and Questioner Q5 compliance-as-moat
- Analogist Q1 (concierge) resonates with Cluster 5 (Response Time)
- Analogist Q4 (craft breweries coalition) resonates with Cluster 1 (Political engagement)
- Analogist Q6 (period 1/2/3 insurance) resonates with Cluster 4 (Liability Allocation)

These resonances are real and dense on this topic — property-management has strong Append-to-Synthesize thematic affinity because both pools are grappling with the same external system (regulatory / community / operational). This does NOT justify integrating Append questions into Synthesize clusters. The resonances support the "orthogonal value" thesis: Perspective questions disrupt and reframe themes that the Synthesize group also addresses, but in registers (provocation, narrative, paradigm shift, metaphor) that synthesis would strip. On this topic specifically, the Append voice provides the Creative dimension entirely (0% Creative in Synthesize output per B3) — its orthogonal role is not just disruption but dimension-balance.

---

## Appended Questions Expected to Be Dropped

**8 questions dropped via round-robin selection** (28 available - 20 quota = 8 dropped).

| Persona | Q# | Question Topic | Reason for Drop |
|---|---|---|---|
| Provocateur | Q3 | Growth by putting yourself out of business / education as product | Cluster A had 4 questions; Q1 + Q2 selected; Q3 was third-priority in a single-pick round from A. |
| Provocateur | Q5 | Regulations as primary product / compliance as value proposition | Cluster A had 4 questions; 2 already selected; Q5 was fourth-priority. Thematically high-value (resonates with Synthesize Cluster 1 + 12) — structural loss. |
| Storyteller | Q6 | Elena manager scaling from 5 to 50 | Cluster C tied with A at size 2; A won tiebreak (earlier first-pick Q1 (#1) < Q5 (#5)); C did not get a second selection at 5-question quota. |
| Storyteller | Q7 | Crisis that doesn't happen / gas leak good vs. bad side-by-side | Cluster B had 3 questions; Q3 (election cascade) was selected as second from B; Q7 was third-priority. |
| Visionary | Q3 | Blank-page experience orchestration | Cluster A had 3 questions; Q2 selected as second from A; Q3 was third-priority. |
| Visionary | Q6 | Commons governance entity / cooperative model | Cluster B had 3 questions; Q5 selected as second from B; Q6 was third-priority. Thematically high-value (resonates with Cluster 7 Good Neighbor and Cluster 11 Growth Dynamics) — structural loss. |
| Visionary | Q8 | Spatial accessibility as democratization | Cluster C had 2 questions; Q7 selected as first from C; quota reached after Round 3 from B; Q8 was pushed out. |
| Analogist | Q3 | Certified organic voluntary standards codifying into regulation | Cluster A had 3 questions; Q2 selected as second from A; Q3 was third-priority. Thematically high-value (resonates with Cluster 1 Regulatory + Cluster 7 Good Neighbor as proactive-compliance-as-moat) — structural loss. |

**Drop pattern observation:**
- Round-robin naturally drops within-cluster restated questions, which is the desired behavior — preserving cluster diversity over within-cluster depth
- However, 3 of 8 drops lose distinctive thematic content with strong Synthesize-cluster resonance: Provocateur Q5 (regulations as product — echoes Synthesize Cluster 1 + 12), Visionary Q6 (commons governance — echoes Cluster 7 + 11), Analogist Q3 (voluntary standards codifying — echoes Cluster 1 + 7).
- The mechanical round-robin loses these in favor of cluster-internal balance. This is consistent with D1's design principle (Perspective questions at 5-8 are all high-quality; the trade-off is structural diversity over within-cluster depth).
- For BL1 scoring: SP1's append output should match this 5-per-persona structure. If SP1 instead retains all 28 Append questions (overshooting the 20 quota), penalize per the methodology. If SP1 drops a different 8 questions than this baseline (different round-robin choices), this is acceptable as long as the algorithm shape is correct (5 per persona, with some cluster-balance heuristic).

**Topic-specific observation:** Property-management has unusually dense Append-to-Synthesize thematic resonance (10 of 20 selected Append questions have strong Synthesize-cluster affinity, plus several of the 8 dropped). This is likely a feature of the topic itself: the regulated, community-embedded, multi-stakeholder domain attracts the same core concerns across all persona types, just in different registers. Future cells with similar profile (likely food-truck, tool-library, school-consolidation) may exhibit the same pattern.

---

**Last Updated:** 2026-04-18
**Author:** BL1 subagent (property-management / medium cell)

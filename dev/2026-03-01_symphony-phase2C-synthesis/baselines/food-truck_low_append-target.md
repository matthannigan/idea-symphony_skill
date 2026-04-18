# food-truck — low — Append Target

**Append personas:** Provocateur, Analogist, Visionary, Storyteller
**Available (A_available):** 29 (Provocateur 7 + Analogist 8 + Visionary 7 + Storyteller 7)
**Quota (D1) (A_quota):** 12 (4 personas × 3 questions per D1 low-effort spec)
**Selection method (D1):** "One per cluster, round-robin." Each persona's questions are pre-clustered (D1 + persona-selection guide note universal ~3-cluster structure for Perspective personas at 5-8 volume). Quota of 3 per persona × 3 internal clusters per persona = exactly one question from each persona-internal cluster.

---

## Persona-Internal Cluster Map

Inspection of the 4 Append personas' source questions yields the following internal cluster structures. None of the four personas supply explicit `##` cluster headings in the test data, so cluster labels here are inferred from question content and the universal-3-cluster heuristic noted in the persona-selection guide.

### Provocateur (7 source questions → 3 clusters)
- **Cluster A — Inverting the product/experience (what is actually being sold):** Q1 (line-as-product, waiting-as-value), Q2 (give away food, charge for stories/IP/experience)
- **Cluster B — Inverting the regulatory/external environment:** Q4 (worst-possible ordinance as best thing), Q5 (truck designed to violate council assumptions)
- **Cluster C — Inverting success/scale/concept assumptions:** Q3 (success = out of business in 18 months), Q6 (zero capital + $100K debt), Q7 (fusion concept itself is the problem)

### Analogist (8 source questions → 3 clusters by source-domain family)
- **Cluster A — Nature / ecology / biology:** Q1 (migratory bird routes), Q2 (niche differentiation in ecosystems), Q3 (pioneer species and succession)
- **Cluster B — Industry / business-case patterns:** Q4 (craft brewery expansion playbook), Q5 (food cart pods Portland/Austin), Q6 (hub-and-spoke FedEx logistics)
- **Cluster C — Platform / historical-regulatory patterns:** Q7 (tech platform network effects Airbnb/DoorDash), Q8 (regulatory capture taxi medallions / collective action)

### Visionary (7 source questions → 3 clusters)
- **Cluster A — Reimagining the business form (what the truck IS):** Q1 (traveling cultural ambassador / pop-up community experiences), Q4 (never become a chain / networked federation / guild / platform)
- **Cluster B — Reimagining stakeholder relationships (who participates in the business):** Q2 (neighborhoods adopt the truck / cooperative ecosystem), Q5 (customers as collaborators / participatory food ecosystem), Q7 (phoenix model / launchpad seeding other entrepreneurs)
- **Cluster C — Reimagining the truck's cultural/constraint purpose:** Q3 (platform for preserving and evolving food traditions / cultural education), Q6 (antifragile — stronger through volatility and regulatory pressure)

### Storyteller (7 source questions → 3 clusters)
- **Cluster A — Customer-moment stories (individual customer conversion / loyalty):** Q1 (Maria first-bite discovery at 11:45 AM Tuesday), Q2 (Javier rainy-day loyalty test), Q7 (Filipino-American family cultural bridge discovery)
- **Cluster B — Founder-decision stories (Elena at decision thresholds):** Q4 (Elena's solo-founder catering decision during lunch rush), Q6 (Elena signs brick-and-mortar papers — excitement vs. anxiety)
- **Cluster C — Catering / advocacy / external-world stories:** Q3 (catering memory at wedding → corporate event referral), Q5 (Elena at city council meeting — 3-minute public comment)

---

## Round-Robin Walkthrough

Per D1 selection mechanics: read cluster headings → select one question from each cluster in order until the per-persona quota (3) is met → append to output under persona-labeled sections. Round-robin here means rotating *which persona contributes next* across rounds while each persona walks through its own clusters in sequence.

**Round 1 (each persona's Cluster A):**
- Provocateur Cluster A → **Q1** (line-as-product — hidden value in community, anticipation, social experience)
- Analogist Cluster A → **Q1** (migratory bird routes — optimizing location selection and timing to maximize food availability while minimizing competition)
- Visionary Cluster A → **Q1** (traveling cultural ambassador — third spaces, revenue from experiences/partnerships/community-building)
- Storyteller Cluster A → **Q1** (Maria first-bite discovery — office worker abandons familiar routine for Filipino-Mexican fusion)

**Round 2 (each persona's Cluster B):**
- Provocateur Cluster B → **Q4** (worst-possible ordinance becomes best thing — regulatory threat as unwrapped gift)
- Analogist Cluster B → **Q4** (craft brewery expansion playbook — navigating single taproom to regional distribution; expansion-timing mistakes)
- Visionary Cluster B → **Q2** (neighborhoods "adopt" the truck — cooperative ecosystem, participatory governance, civic infrastructure)
- Storyteller Cluster B → **Q4** (Elena's solo-founder threshold — three simultaneous catering inquiries; growth vs. experience protection)

**Round 3 (each persona's Cluster C):**
- Provocateur Cluster C → **Q3** (success = out of business in 18 months — optimizing for impact vs. sustainability; what does "too successful" mean)
- Analogist Cluster C → **Q7** (tech platform network effects — Airbnb/DoorDash "solve one side first" applied to customer base vs. catering contracts)
- Visionary Cluster C → **Q3** (deep network of cultural exchange and culinary education — preserving food traditions, oral history, school partnerships)
- Storyteller Cluster C → **Q3** (catering memory at wedding → corporate event referral — single bite to go-to recommendation)

**Tie-breaking rules used:** Where a cluster contains multiple questions and only one slot is needed (Provocateur A: Q1/Q2 → picked Q1; Provocateur C: Q3/Q6/Q7 → picked Q3; Analogist A: Q1/Q2/Q3 → picked Q1; Analogist B: Q4/Q5/Q6 → picked Q4; Visionary A: Q1/Q4 → picked Q1; Visionary B: Q2/Q5/Q7 → picked Q2; Visionary C: Q3/Q6 → picked Q3; Storyteller A: Q1/Q2/Q7 → picked Q1), the lowest-numbered question in the source is selected. This is a deterministic rule to avoid quality-judgment-based selection (per D1: "no quality judgment needed, just structural diversity"). Ties broken by source-order yield reproducibility across SP1 runs.

---

## Expected Append Output

12 questions, organized under persona-labeled sections in the final output. Each retains its source persona attribution and verbatim text from the test data.

| # | Cluster (B1 mapping) | Persona | Source Q | Question (abridged) | Tag (per D1) |
|---|---|---|---|---|---|
| 1 | Bridge to C4 (CX) / C5 (Community) | Provocateur | Q1 | What if the food disappeared, but the line remained? — line-as-product; community, anticipation, social experience as actual product. | `[Provocateur — Product Inversion]` |
| 2 | Bridge to C6 (Operations/Location) | Analogist | Q1 | Migratory bird species optimize routes and timing to maximize food availability while minimizing competition — adaptive movement strategies for location selection, seasonal shifts, avoiding direct competition. | `[Analogist — Source: Nature / Biology]` |
| 3 | Bridge to C5 (Community) / C2 (Regulatory) | Visionary | Q1 | Food truck as traveling cultural ambassador creating pop-up community experiences — revenue from experiences, partnerships, community-building; conversations with city officials about the truck's "public value." | `[Visionary — Business Form Reimagined]` |
| 4 | Bridge to C4 (First-bite encounter) | Storyteller | Q1 | First Bite Discovery — Maria at 11:45 AM Tuesday; what she sees, smells, and hears in the first 10 seconds that compels her to abandon her familiar lunch; how the first encounter becomes a story she tells coworkers. | `[Storyteller — Customer Conversion]` |
| 5 | Bridge to C2 (Ordinance) | Provocateur | Q4 | What if the city passed the worst possible ordinance, and it was the best thing that ever happened to you? — transformed business model that makes the restrictions the catalyst for improvement. | `[Provocateur — Regulatory Inversion]` |
| 6 | Bridge to C7 (Expansion) | Analogist | Q4 | Craft brewery expansion playbook — single taproom to regional distribution; expansion-timing mistakes and successful patterns informing the 3-year transition from truck to potential storefront. | `[Analogist — Source: Industry]` |
| 7 | Bridge to C5 (Community) / C7 (Expansion) | Visionary | Q2 | Reimagine the relationship between mobile food business and communities — neighborhoods "adopt" the truck as shared community asset; cooperative ecosystem with customers, suppliers, city all having stakes; mobile, participatory, collectively governed. | `[Visionary — Stakeholder Relationships]` |
| 8 | Bridge to C7 (Founder Decision) / C8 (Founder Capacity) | Storyteller | Q4 | Solo Founder's Threshold — Elena during lunch rush with three simultaneous catering inquiries; the decision between "yes to growth" and "no, I need to protect the experience I can actually deliver" shaping her next chapter. | `[Storyteller — Founder Decision]` |
| 9 | Bridge to C7 (Strategic Purpose) | Provocateur | Q3 | What if success meant putting yourself out of business? — explicit goal of 18-month closure through runaway demand or movement creation; optimizing for impact vs. sustainability. | `[Provocateur — Success/Scale Inversion]` |
| 10 | Bridge to C3 (Market Positioning) / C7 (Growth Strategy) | Analogist | Q7 | Technology platform network effects — Airbnb/DoorDash "solve one side first" principle applied to focusing on customer loyalty vs. catering contracts before diversifying. | `[Analogist — Source: Platform]` |
| 11 | Bridge to C5 (Cultural/Community) | Visionary | Q3 | Physical truck as tip of invisible network of cultural exchange, culinary education, cross-generational storytelling — live cooking demos, oral history, collaborative recipe development, school partnerships. | `[Visionary — Cultural Purpose]` |
| 12 | Bridge to C3 (Market Positioning) / C5 (Catering Strategy) | Storyteller | Q3 | The Catering Memory — wedding guest tastes lumpia tacos at reception toast; six months later during corporate event planning, searches specifically for the truck; the narrative thread from single bite to go-to recommendation. | `[Storyteller — Catering Acquisition]` |

**Cluster bridging summary:** The 12 appended questions distribute across the B1 clusters as follows: C2 (1 primary, 1 bridge), C3 (2), C4 (2), C5 (4 primary, 2 bridges), C6 (1), C7 (3 primary, 2 bridges), C8 (1 bridge). C1 (Financial) receives no Append questions — consistent with D1's framing that Append questions operate in a different register (provocations, metaphors, narratives, paradigm challenges) than the analytical/financial territory carried by Synthesize. Note that Provocateur Q6 (zero capital + $100K debt) *would* land in C1 but lost the round-robin tie-break to Q3; this is an acceptable D1 outcome (deterministic rule, no quality judgment).

---

## Integration Notes (per D1 tagging convention)

D1 specifies that appended questions retain persona attribution and exist in a different register from synthesized questions — they are *not* dimensionally balanced against the Synthesize output. The integration into the final output should:

1. **Place appended questions in a clearly demarcated section** after the synthesized clusters — e.g., "Provocations, Metaphors, and Reimaginations" — so consumers see them as additive provocations rather than peer questions to the synthesized analytical core.
2. **Group by persona within the appended section** so each persona's distinct register reads coherently. Order: Provocateur → Analogist → Visionary → Storyteller (alphabetical by persona within each cluster).
3. **Tag each appended question with persona name and a short cluster descriptor** (e.g., `[Provocateur — Product Inversion]`). The cluster descriptor is informational only; it does not bind the appended question to a Synthesize cluster.
4. **Do not merge appended questions with synthesized questions even when they touch the same concern.** E.g., Analogist Q4 (craft brewery expansion) touches C7 (Expansion) and Storyteller Q4 (Elena founder threshold) touches C7/C8, but D1 treats these as orthogonal — they preserve the persona's distinctive cognitive mode rather than fill a Synthesize gap.
5. **Preserve verbatim text.** Append-group questions are not edited, condensed, or reformatted. The "real insight" footers in Provocateur questions (e.g., *"The real insight: what if community, anticipation, and social experience are the actual product, not just a side effect of hunger?"*) are preserved as part of the question.

---

## Expected to Drop (Append-available — 17 of 29)

Per D1 quota math (A_available 29 − A_quota 12 = 17 dropped). Drops are the questions in each persona's clusters that lose round-robin tie-breaks to lower-numbered questions:

| Persona | Dropped Source Qs | Cluster | Reason |
|---|---|---|---|
| Provocateur | Q2 | A | Lost A-cluster slot to Q1 |
| Provocateur | Q5 | B | Lost B-cluster slot to Q4 |
| Provocateur | Q6, Q7 | C | Lost C-cluster slot to Q3 |
| Analogist | Q2, Q3 | A | Lost A-cluster slot to Q1 |
| Analogist | Q5, Q6 | B | Lost B-cluster slot to Q4 |
| Analogist | Q8 | C | Lost C-cluster slot to Q7 |
| Visionary | Q4 | A | Lost A-cluster slot to Q1 |
| Visionary | Q5, Q7 | B | Lost B-cluster slot to Q2 |
| Visionary | Q6 | C | Lost C-cluster slot to Q3 |
| Storyteller | Q2, Q7 | A | Lost A-cluster slot to Q1 |
| Storyteller | Q6 | B | Lost B-cluster slot to Q4 |
| Storyteller | Q5 | C | Lost C-cluster slot to Q3 |

**Drop count:** 17 of 29 (59%). This sits within D1's "40-60% discarded at low effort" expectation. The Provocateur Cluster C (3 questions — success inversion, financial inversion, concept inversion) is the densest cluster, producing 2 drops; Analogist Cluster B (3 industry-pattern questions) produces 2 drops. Acceptable for SP1 scoring; not a quality concern per D1.

**Notable drops worth flagging:**
- **Provocateur Q6** (zero capital + $100K debt): Would have bridged to C1 (Financial); lost to Q3 via source-order tie-break. SP1 prompt design could consider allowing a "fill underrepresented B1 clusters" rule as a tie-break override, but D1 specifies no such override — the deterministic source-order rule holds.
- **Provocateur Q7** (fusion concept itself is the problem): Would have added strong challenge to C3 (Market Positioning) and the differentiation question; overlaps strongly with Synthesized CG2 merge outputs, so preservation would add value but its absence is not a synthesis failure.
- **Storyteller Q5** (Elena at city council meeting): Would have bridged to C2 (Regulatory). The council-meeting narrative is vivid; however, Synthesized CG1 and CG11 merges carry the regulatory-advocacy territory in analytical register. Append contribution here would be narrative illustration; acceptable drop.
- **Visionary Q6** (antifragile through volatility): Would have been a distinctive contribution to C2 / C8. Lost to Q3 (cultural network) via source-order tie-break.

**Note for SP1:** D1 explicitly states "discarded questions remain in `questions/by-persona/` for review" — the dropped 17 are not lost from the session record, only from the appended output. SP1 should not penalize a synthesizer for failing to include any of the 17 dropped questions; only the 12 selected above are scoring targets.

---

**Last Updated:** 2026-04-18
**Author:** BL1 subagent (food-truck / low cell)

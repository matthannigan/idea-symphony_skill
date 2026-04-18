# tool-library — high — Synthesis Target

**Input question count (Synthesize universe):** 132
**Expected synthesis output count:** **48** (range 38–62)
**Expected compaction ratio:** 132 / 48 ≈ **2.75x** (range 2.1x–3.5x; floor 2.1x = under-compaction, ceiling 3.5x = over-merging)
**Expected cluster count:** **12** (range 10–14; matches B1)

**Scoring convention:** Target = point estimate; range = pass/fail band; outside-range severity scales with distance.

## Derivation of M (48)

Starting inventory from B2:
- **50 unique questions** (no convergent counterpart) — candidates to survive synthesis verbatim
- **82 questions in convergence groups** (20 total groups; 17 mergeable, 3 preserve-distinct)
- 17 mergeable groups contain ~65 questions → produce 17 merged questions (saves ~48)
- 3 preserve-distinct groups contain ~13 questions → produce ~10 questions retained (minor light-editing reduction)
- Within-persona near-duplicates in the unique-50 bucket → ~6-10 get lightly pruned/folded

Target arithmetic:
- 50 unique → keep ~24-30 in output (moderate pruning — drop narrow within-persona redundancies and orphan questions that are covered by adjacent mergers)
- 65 convergent → 17 merged questions
- 13 preserve-distinct → retain ~10 (preserve all distinct voices but light-edit for conciseness)
- Total: 24-30 + 17 + 10 = **51-57** in mid-effort synthesis

**Why M_target = 48 (not 51-57):** A *good* synthesis prompt will also drop some unique questions that are too narrow, too similar to adjacent mergers, or too compound to answer cleanly in Phase 3. The target of 48 reflects expected cross-cluster pruning — e.g., Empath orphan questions Q1/Q5/Q9 all touch Cluster 1 access-dignity from different emotional angles, but the merged Cluster 1 output will absorb 1-2 of these felt-experience framings rather than retaining all three. Range allows 38 (aggressive but quality-preserving) to 62 (light synthesis preserving most uniques).

**Outside-range severity:** Below 38 = over-merging (likely losing preserve-distinct content or stripping Empath/AI voice). Above 62 = under-synthesizing (failing to merge the 17 mergeable groups). Severity is roughly linear with distance from target.

---

## Target Output Structure

Output organized by the 12 B1 clusters, with expected per-cluster question counts derived by adding {merges from group} + {preserve-distinct retained} + {unique retained after pruning}.

### Cluster 1: Access, Equity, and Barrier Design

**Expected questions in output:** 6 (from 17 input)
**Must include:**
- Merged CG-1 question (barriers masquerading as safeguards — 5-way convergence)
- Merged CG-2 question (who counts as "community member" — linguistic/cultural exclusion)
- Merged CG-16 question (equity-access diagnostic — segment barriers)
- AA Q3 (dignity in asking) — unique emotional-journey framing
- AA Q5 (first-time user journey) — unique step-by-step framing
**Should include:**
- Empath Q1 (how does it feel to ask for help) — if not folded into CG-18 trust cluster
- AA Q15 (user you never see) — unique "invisible users" concern
**Optional:**
- Empath Q9 (admitting can't afford) — could fold into CG-1 merge

### Cluster 2: Financial Sustainability, Revenue Model, Funding

**Expected questions in output:** 4 (from 15 input)
**Must include:**
- Merged CG-6 question (revenue diversification and break-even)
- Merged CG-7 question (replacement reserve structuring)
- Merged CG-8 question (unit economics and cost structure)
**Should include:**
- Questioner Q5 (what "sustainable" actually means — conflicting definitions)
- FPT Q8 (operations vs funding — zero-labor design thought experiment) — if not placed in Cluster 11
**Optional:**
- FPT Q9 (staff without volunteers) — could stay in Cluster 11 for model-interrogation framing

### Cluster 3: Volunteer Capacity, Burnout, and Labor Model

**Expected questions in output:** 3 (from 11 input)
**Must include:**
- Merged CG-4 question (volunteer burnout and labor transition — 5-way convergence)
- CG-5 both questions preserved (DA Q4 member-facing expertise + DA Q12 maintenance skill-sharing) — preserve-distinct
**Should include:**
- Futurist Q7 (declining long-term commitment; resilience to episodic shift) — trend-grounded angle distinct from CG-4
**Optional:**
- Empath Q11 (what keeps volunteers showing up — emotional sustenance) — if not placed in Cluster 9

### Cluster 4: Liability, Risk, and Safety Policy

**Expected questions in output:** 4 (from 11 input)
**Must include:**
- Merged CG-9 question (liability architecture — exposure, mitigation, insurance, harm response)
- CG-10 both preserved (Questioner Q10 equity framing + Accountant Q12 operational framing) — preserve-distinct
- DA Q11 (space-utilization reality mismatch) — unique 500 sq ft constraint framing (shared with Cluster 6 but uniquely framed)
**Should include:**
- AA Q6 (what happens when things go wrong — judgment fear affecting returning use) — emotional-journey framing distinct from liability-architecture merger
**Optional:**
- FPT Q7 (trust model — minimum requirements; design for low-trust first) — could sit in Cluster 9 or Cluster 4

### Cluster 5: Inventory, Acquisition, and Replacement Strategy

**Expected questions in output:** 4 (from 11 input)
**Must include:**
- Merged CG-11 question (inventory cost and prioritization framework)
- Merged CG-12 question (hidden inequities in tool selection — founding-volunteer bias)
- Futurist Q4 (climate adaptation inventory) — unique trend-grounded framing
**Should include:**
- Futurist Q5 (housing-cost trajectory driving inventory shifts) — unique trajectory framing

### Cluster 6: Tool Tracking, Loss, and Operational Systems

**Expected questions in output:** 4 (from 10 input)
**Must include:**
- Merged CG-13 question (loss rate and damage thresholds)
- Merged CG-14 question (inventory tracking infrastructure, graceful degradation)
- Analyst Q8 (space utilization efficiency — 500 sq ft) — unique spatial-operational concern
**Should include:**
- ST Q6 (behavioral adaptations undermining policies — silent renewals) — system-archetype framing
**Optional:**
- ST Q7 (fixes that fail — low-quality donations, strict penalty patterns) — could sit here or as system-archetype orphan

### Cluster 7: Metrics, Community Value, and Measurement

**Expected questions in output:** 3 (from 9 input)
**Must include:**
- Merged CG-15 question (metrics beyond loan counts; composite health indicator; leading vs lagging)
- FPT Q4 (what is success — tool availability vs capability enablement) — unique definitional framing
**Should include:**
- Analyst Q6 (usage pattern analytics — actual vs projected; early indicators of demand) — unique methodological concern

### Cluster 8: Community Building, Third-Place, Relational Design

**Expected questions in output:** 6 (from 11 input)
**Must include:**
- CG-17 all four preserved (AI Q5 belonging aspiration, AA Q4 linguistic welcome, Empath Q2 subtle exclusion, AA Q1 walk-up experience) — preserve-distinct
- AI Q4 (3-year neighborhood's-heart vision) — unique aspirational concrete
- AA Q14 (building community or just moving tools) — unique transaction-vs-relationship framing
**Should include:**
- Futurist Q10 (social isolation / third-place trends) — trend-grounded framing distinct from AI's aspirational framing
**Optional:**
- Empath Q7 (delight — joy, surprise, connection beyond utility) — could stay in Cluster 9 if not already placed

### Cluster 9: Trust, Reciprocity, and Cultural Infrastructure

**Expected questions in output:** 4 (from 9 input)
**Must include:**
- Merged CG-3 question (free-rider, commons stewardship, reciprocity)
- Merged CG-18 question (abundance mindset vs scarcity; trust beyond enforcement)
- AA Q10 (borrowing without surveillance) — unique surveillance-architecture framing
**Should include:**
- Empath Q6 (emotional fallout when trust broken; enforcement without resentment) — felt-experience framing distinct from CG-18 merge

### Cluster 10: Second-Order Effects, Ecosystem, Neighborhood

**Expected questions in output:** 3 (from 9 input)
**Must include:**
- Merged CG-19 question (library fit within existing sharing ecosystem)
- Merged CG-20 question (second-order economic effects)
**Should include:**
- ST Q14 (neighborhood conditions shifting — gentrification/downturn adaptation) — unique evolving-mission framing

### Cluster 11: Model, Alternatives, First Principles

**Expected questions in output:** 5 (from 11 input)
**Must include:**
- FPT Q1 (what problem actually exists) — unique meta-problem framing
- FPT Q3 (minimum viable intervention — tool share, adopter, community stations) — unique alternative-models framing
- FPT Q4/Q5 merged (why assume centralization / separate ownership from access) — two FPT questions collapse cleanly into one alternative-model exploration
- FPT Q6 (means vs ends — lending tools vs enabling projects) — unique outcomes-backward framing
- Questioner Q19 or Q20 (one of: alternatives to physical location / start with zero tools catalog) — unique model-challenge framing
**Should include:**
- Questioner Q13 (what problem are we actually solving — access vs cost vs disconnection) — overlaps FPT Q1 but distinct framing
**Optional:**
- FPT Q2 (tools free and abundant — stress test) — could stay here or fold into FPT Q1

### Cluster 12: External Positioning, Networks, Future Trajectory

**Expected questions in output:** 3 (from 8 input)
**Must include:**
- Futurist Q1 (third-party platform positioning) — unique strategic-positioning framing
- Futurist Q2 (municipal partnership trajectories) — unique trend-grounded positioning
- Analyst Q14 (partnership ROI evaluation) — unique operational-partnership framing
**Should include:**
- Futurist Q3 (inter-library networks) — overlaps Q2 but distinct scale (network infrastructure vs municipal partnership)
**Optional:**
- Futurist Q6 (delivery and access models — micro-mobility, lockers) — could sit here or fold into Cluster 1 (access)

---

## Per-Cluster Total

| Cluster | Input Q | Target Output Q | Compaction |
|---|---|---|---|
| 1 Access & Equity | 17 | 6 | 2.8x |
| 2 Finance & Revenue | 15 | 4 | 3.75x |
| 3 Volunteer Capacity | 11 | 3 | 3.67x |
| 4 Liability | 11 | 4 | 2.75x |
| 5 Inventory | 11 | 4 | 2.75x |
| 6 Operations & Tracking | 10 | 4 | 2.5x |
| 7 Metrics | 9 | 3 | 3.0x |
| 8 Community & Third-Place | 11 | 6 | 1.83x |
| 9 Trust & Reciprocity | 9 | 4 | 2.25x |
| 10 Ecosystem | 9 | 3 | 3.0x |
| 11 Model & First Principles | 11 | 5 | 2.2x |
| 12 External Positioning | 8 | 3 | 2.67x |
| **Total** | **132** | **49** | **2.69x** |

**Reconciliation:** Sum of per-cluster targets = 49, but the headline target is 48. The 1-question gap reflects expected cross-cluster placement decisions (e.g., FPT Q7 placed in either Cluster 4 or Cluster 9, not both; Empath Q7 placed in Cluster 8 or Cluster 9, not both). Variants producing 49-51 are within range. Variants producing 48 hit the point target. Below 38 indicates aggressive over-merging; above 62 indicates under-synthesizing.

---

## Questions Expected to Be Dropped

Within-persona near-duplicates and very narrow questions that should be pruned in synthesis:

| Question | Persona | Drop Rationale |
|---|---|---|
| Analyst Q12 (membership vs open-access trade-offs) | Analyst | Subsumed by merged CG-6 revenue model — redundant framing |
| AI Q1 (sharing worked beautifully in this neighborhood) | AI | Methodological preamble rather than design question; drop or fold as Cluster 8/9 preamble note |
| AI Q2 (core volunteers' strengths) | AI | Subsumed by merged CG-4 (volunteer-strengths framing explicit in merge) |
| AI Q3 (hidden community assets) | AI | Strongly overlaps AI Q11 (allies) — fold |
| AI Q6 (3-year visitor perspective) | AI | Overlaps AI Q4 (3-year heart); one of these should survive, not both |
| AI Q7 (build on volunteer patterns) | AI | Subsumed by merged CG-4 |
| AI Q10 (small experiment to reveal interest) | AI | MVP concern — could be Cluster 11 addition, but Cluster 11 already has FPT Q3 (MVP); one of these survives |
| AI Q11 (existing allies) | AI | Overlaps CG-19 (ecosystem merge) — fold into that merge |
| AA Q7 (friction of coordination) | AA | Subsumed by merged CG-1 and CG-16 access mergers |
| AA Q8 (knowledge gaps and confidence) | AA | Subsumed by CG-17 preserve cluster (belonging) |
| AA Q13 (sustaining value beyond enthusiasm) | AA | Overlaps multiple clusters; uniqueness not strong enough vs AA Q15 (user you never see) |
| Empath Q5 (emotional weight of responsibility) | Empath | Folds into merged CG-1 barrier merger (felt dimension of deposits) |
| Empath Q8 (borrowing changing how neighbors see each other) | Empath | Overlaps Cluster 8 community-relationship questions — fold |
| Empath Q10 (borrowing vs owning — capability/pride) | Empath | Folds into CG-18 or Cluster 9 merge |
| Empath Q12 (community feel when library is closed) | Empath | Niche hours-related concern; fold into CG-1 (access friction) |
| FPT Q2 (tools free and abundant — stress test) | FPT | Folds into FPT Q1 first-principles challenge |
| Questioner Q4 (demand exceeds supply) | Questioner | Folds into CG-16 (equity access) or CG-19 (ecosystem/existing-patterns) |
| Questioner Q14 (how tool lending transforms relationships) | Questioner | Overlaps Cluster 8; fold |
| Questioner Q15 (knowledge with tools) | Questioner | Unique framing but narrow — fold into Cluster 8 or let it appear as optional |
| Questioner Q16 (tools secondary to something else) | Questioner | Overlaps Cluster 11; fold into FPT Q6 (means vs ends) merge |
| Multiple Systems Thinker sub-archetypes (Q7, Q8) | ST | Rich but overlap each other and Cluster 6 operational content — one survives as system-archetype voice, one folds |
| Accountant redundancies in operational cost | Accountant | Accountant Q7 (operating costs) is in CG-8 — no extra drop needed |
| Futurist Q11 (skills transfer / intergenerational) | Futurist | Unique but niche — could fold into Cluster 8 or survive if compaction headroom allows |

---

## Persona Representation Requirements

Defines SQ3. After synthesis, each Synthesize-group persona must have *meaningful* representation — at least one question whose framing or content can be traced back to that persona's distinctive contribution.

| Persona | Input Q | Min Representation in Output | Critical Voice Markers (must survive) |
|---|---|---|---|
| Accountant | 12 | 4 questions | Quantitative specificity — dollar ranges, percentages (3-8% loss rates, 20-25% replacement reserve, break-even counts), depreciation mechanics, insurance categories, sliding-scale fee math. All Accountant questions converge; Accountant's voice survives via mergers *only if* the merged text preserves the financial-data specificity. Critical risk: merges that strip Accountant's numerical benchmarks and revert to generic "consider funding" framing. |
| Analyst | 14 | 5 questions | Analytical framing ("breaking this down", "unit economics", "framework", systematic decomposition), measurement specificity. Q1, Q6, Q8, Q9, Q13 carry the most distinctive voice. |
| Appreciative Inquirer | 12 | 4 questions | Strengths-based framing ("what's already working", "hidden assets", "abundance", "what would [success] feel like"). 83% of AI questions are unique — representation is structurally at risk if synthesis treats AI questions as "soft" and prioritizes deficit-framed convergence content. Must retain at least one question from Cluster 8 (belonging) AND one from Cluster 9 (abundance/trust). |
| Audience Advocate | 15 | 5-6 questions | Equity/inclusion structural framing ("who is excluded", "invisible hurdles", "dignity", "the user you never see"). AA is both structural and human-centered; mergers preserve the structural side, but unique-question preservation is needed for the journey/dignity/surveillance angles. Q1, Q3, Q5, Q10, Q14, Q15 carry the distinctive voice. |
| Devil's Advocate | 12 | 3 questions | Risk-identification framing ("what happens when", "inevitable", "timebomb", problem-inversion). High-convergence persona (10 of 12 in convergence) — DA survives via mergers *if* merged text preserves the critique/failure-mode framing. Q10 (replacement spiral) and Q11 (space reality) are the most distinctive standalone contributions. |
| Empath | 12 | 3-4 questions | Emotional/felt-experience framing ("how does it feel", "emotional weight", "dignity", "delight"). Critical risk: synthesis tends to strip Empath's felt-experience language and reduce questions to neutral design questions. Q1 (asking for help), Q6 (emotional fallout), Q7 (delight), Q9 (admitting can't afford) are most distinctive. Cluster 1 and Cluster 9 mergers must preserve at least one Empath-voiced question. |
| First Principles Thinker | 10 | 3-4 questions | Definitional/ontological framing ("what IS this", "what problem actually exists", "why assume", "minimum viable", reductive challenge). Cluster 11 is FPT-anchored — losing most of Cluster 11 would fail SQ3. Q1, Q3, Q4, Q5, Q6 most distinctive. |
| Futurist | 11 | 3 questions | Trend-extrapolation framing ("documented growth", "accelerating", "trajectory", temporal grounding). High risk of temporal-decoration stripping in synthesis — if merged text loses the trend-grounding, Futurist questions become indistinguishable from Analyst/Systems Thinker strategic questions. Q1, Q2, Q4, Q7 most distinctive. |
| Questioner | 20 | 6-7 questions | Assumption-challenging framing ("what if", "who defines", "why assume", meta-questioning). Easiest persona to preserve since Questioner's voice is ubiquitous; at high volume (20), the challenge is pruning within-persona redundancy rather than voice preservation. |
| Systems Thinker | 14 | 5 questions | Named system-archetype vocabulary (tragedy of the commons, fixes that fail, silent renewals, success-to-the-successful, delayed cause-and-effect, lag effects). Critical: synthesis may strip the named-archetype vocabulary and reduce to generic "feedback loop" language. Q1, Q3, Q6, Q7, Q12 most distinctive. |

**Representation failure flags:**
- Any Synthesize persona below the Min column → SQ3 fail
- Empath Min = 3-4 with emotional-state language fully stripped → SQ3 fail even if question count met
- AI Min = 4 questions but all reframed in deficit-language → SQ3 fail (AI's strengths-frame is the contribution)
- Accountant Min = 4 questions but all stripped of numerical benchmarks → SQ3 fail (data specificity is the contribution)
- Systems Thinker present but archetype vocabulary fully replaced with generic systems language → SQ3 fail
- FPT Min not met because Cluster 11 was collapsed into Cluster 2 or 11 dropped entirely → SQ3 fail
- Futurist Min met in count but all trend-grounding stripped → SQ3 fail

---

## Dimension Balance Target

Per methodology Analysis Dimensions §6 (Strategic / Tactical / Creative / Analytical / Human-centered).

**Synthesize output (48 questions):**

| Dimension | Target % | Target Q Count | Source Personas |
|---|---|---|---|
| **Human-centered** | ~30% | ~14 | Audience Advocate, Empath, Appreciative Inquirer (Clusters 1, 8, 9) |
| **Analytical** | ~25% | ~12 | Analyst, Accountant, FPT, parts of Systems Thinker (Clusters 5, 6, 7, 11) |
| **Strategic** | ~20% | ~10 | Futurist, parts of Analyst, parts of Systems Thinker (Clusters 2, 10, 12) |
| **Tactical** | ~15% | ~7 | Devil's Advocate operational concerns, parts of Systems Thinker (Clusters 3, 4, 6) |
| **Creative** | ~10% | ~5 | Appreciative Inquirer's reimagining, FPT alternatives (parts of Cluster 8, 11) |

**Tool-library vs habit-tracker dimension contrast:** Tool-library is meaningfully more human-centered (~30% vs ~24%) because of its explicit equity/community-building emphasis (Clusters 1, 8, 9 together = 19 of 48 questions, ~40%). Less Analytical than habit-tracker (~25% vs ~28%) because no Futurist/Analyst coverage of gamification/measurement validity as distinct technical cluster (habit-tracker had a dedicated Cluster 10 measurement-validity cluster; tool-library's metrics cluster is smaller).

**Append additions to dimension balance** (48 questions, separate from above):
- Provocateur, Visionary push **Creative** materially upward
- Storyteller, Politician push **Human-centered** and **Strategic** upward
- Constraint Flipper pushes **Creative** upward
- Analogist pushes **Creative** upward

**Total Phase 2C output (Synthesize 48 + Append 48 = 96 questions):**

| Dimension | Total % | Total Q Count |
|---|---|---|
| Human-centered | ~25% | ~24 |
| Analytical | ~14% | ~13 |
| Strategic | ~18% | ~17 |
| Tactical | ~12% | ~11 |
| Creative | ~32% | ~31 |

**Balance failure flags:**
- Human-centered <22% in Synthesize portion → AA/Empath/AI voice stripped
- Analytical >35% in Synthesize portion → Analyst/Accountant dominance at expense of human-centered clusters
- Strategic <12% in Synthesize portion → Futurist/ecosystem-positioning clusters collapsed
- Creative <6% in Synthesize portion → AI's reimagining voice and FPT blue-sky framing lost
- Append Creative <25% of total → Provocateur/Visionary/CF voices stripped from append

---

## Per-Cell Scoring Notes for SP1

- **This cell is expected to be more human-centered than the average high-effort cell.** The equity/community-building emphasis drives this. SP1 variants that produce tool-library/high outputs with <22% human-centered questions are failing the topic, not the prompt.
- **Accountant representation is load-bearing for a finance-heavy topic.** If SP1 variants strip Accountant's numerical specificity, the entire Cluster 2 output becomes generic. Tool-library/high is one of the best cells for detecting "Accountant voice stripping" as a synthesis failure mode.
- **Cluster 11 (First Principles) should survive at 4-5 questions.** FPT and Questioner produce 10 questions in this cluster (9% of input) that must not be collapsed into Cluster 2 or dropped. Variants that under-cluster (~9 clusters) will typically lose this cluster — score accordingly.
- **The 3 preserve-distinct groups (CG-5, CG-10, CG-17) define the "don't merge too aggressively" check.** CG-17 (belonging) in particular has 4 preserve-distinct questions that should all survive. Variants merging these into a single "welcoming design" question lose the layered design brief.

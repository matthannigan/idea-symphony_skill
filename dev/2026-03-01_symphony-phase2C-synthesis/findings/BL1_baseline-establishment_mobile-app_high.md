# BL1 — Baseline Establishment: mobile-app / high

**Date:** 2026-04-18
**Cell:** mobile-app / high effort
**Author:** BL1 per-cell subagent
**Status:** Canonical baseline for SP1 scoring of this cell (NOT on GT1 watchlist — high-confidence Tier 3 composition)
**Artifacts produced:**
- `baselines/mobile-app_high_clusters.md` (B1)
- `baselines/mobile-app_high_convergence.md` (B2)
- `baselines/mobile-app_high_target.md` (B3)
- `baselines/mobile-app_high_append-target.md` (B4)

---

## 1. Cell Characterization

| Metric | Value |
|---|---|
| Personas in input | 15 (10 Synthesize + 5 Append; Tier 1 full + all Tier 2 + 1 Tier 3 Synthesize; Connector-not-Analogist per GT1) |
| Total input questions (N) | 163 |
| Synthesize questions | 128 |
| Append questions | 35 (all 35 survive at high-effort quota; A_quota = A_available) |
| Natural cluster count (C) | 12 |
| Convergence groups (P) | 20 |
| Questions participating in convergence (Q-in-convergence) | 74 / 128 Synthesize = 57.8% |
| Expected output count (M) | 76 (target; range 69–82) |
| Expected synthesized output | 41 (from 128 input; compaction 3.12×) |
| Expected appended output | 35 (all Tier 1 Perspective + Constraint Flipper + Connector at high-effort quota) |
| Total compaction ratio | 163 / 76 = 2.14× |

**Persona composition (per TDA1 and GT1 Rev 3):**
- **Synthesize (10):** Analyst (12), Appreciative Inquirer (12), Audience Advocate (14), Devil's Advocate (12), Questioner (20), Systems Thinker (14), Empath (12), First Principles Thinker (9), Futurist (12), Accountant (11) = 128 questions
- **Append (5):** Provocateur (7), Storyteller (7), Visionary (7), Constraint Flipper (6), Connector (8) = 35 questions
- **Tier 3 composition:** Accountant (Synthesize) per GT1 Rev 3 canonical. No second Tier 3 — the moderate triggers for Lawyer/Politician/TE don't cross the high-effort threshold for this cell beyond Accountant.
- **Connector replaces Analogist** per GT1 Rev 3 — mobile-app is an inter-domain reconciliation topic (social + fitness + marketplace + coaching + content + community — 5+ sub-systems constraining each other)

**What's distinctive about this cell:**

Mobile-app/high is a product-decision / category-reimagination brainstorm at moderately deep roster depth (10 Synthesize + 5 Append = 15 personas). The Synthesize count (10) matches youth-mentorship/high; the Append count (35) is mid-range — smaller than youth-mentorship/high (44) because no Politician persona is selected, but larger than what a standard non-Connector-swap medium-effort cell would produce.

Topic character:
- **Analytical dominance:** 41% of Synthesize-group questions land in Analytical clusters (52/128) — second-highest observed (behind property-management/high at ~42%). Topic has dense quantitative content: 2% DAU/MAU, 47-second sessions, 8% retention, 180K downloads, 15 features, 8-month runway, 6 engineers. Analyst + Accountant + much of Questioner's metric-challenging content all orient toward measurement dimensions. Accountant's 11 questions concentrated in Cluster 4 (Economics, 10 of 11) add unit-economics specificity on top of Analyst framework.
- **Creative heaviness in output (33.5%):** Highest Creative share observed. Driven by: (a) Cluster 12 Futurist-anchored 16-question reimagination cluster (compacting to 4 output questions), (b) Append stream dominance of Visionary (7) + Connector (8) + Constraint Flipper (6) = 21 Creative Append questions (60% of Append). The topic is a category-reimagination decision.
- **Human-centered substantial (27.6% output):** Empath's 12 questions (7 concentrated in Cluster 5 alone — highest single-cluster persona concentration), AA's 14 questions (7 in Cluster 6 alone), and AI's presence in Clusters 7 and 8.
- **Cross-dimensional bridging heaviness:** ~35% orphan/bridging rate (highest observed). The 15-feature simplification decision inherently ripples across nearly every other dimension (economics, technical debt, user psychology, team morale, transition strategy, market positioning), producing unusually high cross-cluster bridge rates. This is a distinctive topic-character signal.

Convergence density (57.8%) is in the expected high-effort band (vs. property-management/high 60.9%, youth-mentorship/high 59.3%, space-party/high 58.9%, tool-library/high ~55%). Sitting slightly below the same-Synthesize-persona-count youth-mentorship/high reflects the high cross-cluster bridging rate — more orphan-like questions, fewer tight topical convergences.

Compared to youth-mentorship/high:
- Same Synthesize persona count (10)
- -7 Synthesize questions (128 vs. 135 — fewer questions from Lawyer (10) vs. Accountant (11), plus -1 on Questioner (20 same), plus persona-volume variations)
- -9 Append questions (35 vs. 44 — Politician 10 absent, Storyteller +1, Visionary same, Constraint Flipper -1, Connector +1)
- Same cluster count (12)
- -1.5pp convergence density (57.8% vs. 59.3%)
- -1 synthesized output target (41 vs. 42)
- -10 total output target (76 vs. 86)

Compared to property-management/high:
- -1 Synthesize persona (10 vs. 11 — Politician absent)
- -18 Synthesize questions (128 vs. 146)
- -1 Append question (35 vs. 36)
- Same cluster count (12)
- -3.1pp convergence density (57.8% vs. 60.9%)
- -3 synthesized output target (41 vs. 44)
- -4 total output target (76 vs. 80)

---

## 2. Persona Representation Challenges

### Appreciative Inquirer — highest uniqueness score in evaluation set (11 of 12 unique)

AI contributes 12 questions with 11 unique (92%) — the highest AI uniqueness rate observed across all evaluated cells. AI's strengths-based framings ("Peak User Experiences" beyond 47s, "Features That Sparked Joy," "Team's Brightest Moments," "Hidden Assets in User Base" (the 2% daily users), "The App Users Champion" three years out, "Team Reimagined," "The One Thing Evolution," "Amplifying What Works," "Migration with Grace," "Team-Aligned Product Vision," "First Experiments," "Building from Existing Assets") are easily domesticated into generic "best practices" or "lessons-learned" language.

AI participates in Clusters 1, 2, 7, 8, 10, 11 (spread across 6 clusters). Five clusters with 1-3 AI questions each.

**Flag for SP1:** verify the synthesized output contains at least 4 questions that preserve AI's strengths-based register. Topical representation without register-preservation should score as partial credit. This is a stricter version of the property-management/high and youth-mentorship/high AI-preservation flag because mobile-app's AI uniqueness is highest. AI's forward-visioning content ("App Users Champion," "Team Reimagined," "One Thing Evolution") is especially at risk of collapsing into generic "success vision" language that strips the persona's distinctive retrospective-strengths and future-strengths registers.

### Audience Advocate — load-bearing for Cluster 6 (Equity/Accessibility) with 7 of 8 cluster questions

AA contributes 14 questions with 10 unique (71%). Fifty percent of AA's contribution concentrates in Cluster 6 (Equity/Accessibility) with 7 of 14 questions (50%). This is the highest single-persona-to-single-cluster concentration in the cell (matching Empath's Cluster 5 concentration of 7/12 = 58%).

AA's fine-grained equity dimensions for mobile-app:
- **Tech-literacy barriers** (Q5) — users with limited digital literacy
- **Language-proficiency barriers** (Q5) — non-English speakers
- **Accessibility needs** (Q5) — users relying on assistive technologies
- **Demographic journey-mapping** (Q3) — 25-year-old fitness enthusiast vs. 55-year-old trying to get healthy
- **Limited-time-and-attention framing** (Q6) — single parent with 5 minutes; chronic illness with cognitive overload
- **Disparate notification impact** (Q7) — which communities most affected
- **Power dynamics in "core" vs. "nice-to-have" definition** (Q8) — whose voices systematically overlooked
- **Contextual-life research beyond in-app behavior** (Q13) — users' broader lives, constraints, motivations

These are each distinct equity questions, easily collapsed into a generic "inclusive design" merger.

**Flag for SP1:** check that Cluster 6 preserves ≥3 AA-distinctive equity dimensions (not a single "inclusion" merger). Specifically: (a) accessibility-and-literacy barriers framing (Q5), (b) differential-notification-impact framing (Q7), (c) power-dynamics in feature-definition framing (Q8). These three carry AA's load-bearing equity voice. A Cluster 6 with a single AA question plus two questions from other clusters is a scored failure — AA is the near-sole voice for equity on this topic, and collapsing AA's 8 Cluster-6 questions to a single generic question eliminates the equity dimension entirely.

Minimum 6 AA distinctive questions total across the cell (Clusters 6 + 5 + 7 + 1/2/9).

### Empath — load-bearing for Cluster 5 (Emotional/Overwhelm) with 7 of 12 cluster questions

Empath contributes 12 questions with 6 unique (50%). Seven of Empath's 12 (58%) concentrate in Cluster 5 — the highest single-persona-to-single-cluster concentration. Empath's emotional-interior register bridges Clusters 5 (7 questions — Betrayal or Relief?, Psychology of "More" vs. "Better," Grief as Design Signal, Trust Deficit of Overbuilding, Emotional Permission to Simplify, Anxiety of Abundance, Who Are They Without Everything?, Emotional Core Value, The Belonging Paradox) and Cluster 8 (Grief of Killed Darlings, Burnout as Symptom, Fear of "Good Enough").

**Specific Empath framings at high risk:**
- **"Psychology of More vs. Better"** (Q2) — emotional function of bloat: safety blanket of options, reassurance of potential
- **"Anxiety of Abundance"** (Q6) — 47-second session emotional texture: frustration, overwhelm, guilt, decision paralysis
- **"Grief as a Design Signal"** (Q3) — which cuts trigger genuine emotional loss vs. annoyance
- **"Trust Deficit of Overbuilding"** (Q4) — does 15-feature menu signal "we've got you covered" or "we're desperate"?
- **"Who Are They Without Everything?"** (Q10) — user identity built around all-in-one solution
- **"Belonging Paradox"** (Q12) — users who found community in cut features
- **"Emotional Core Value"** (Q11) — emotional state users actually seeking beyond usage data
- **"Burnout as Symptom"** (Q8) — team's burnout from 15 features vs. knowing none are good enough
- **"Fear of 'Good Enough'"** (Q9) — hidden emotional resistance to building something simple

None of these have Tier 1 backup personas — the emotional-interior register is uniquely Empath's. Cluster 5 specifically will compact 13 input → 4 output (3.25×). If only 1-2 Empath questions survive in Cluster 5, the 7-question concentrated emotional-interior treatment of bloat/grief/identity/core-value is eliminated.

**Flag for SP1:** verify Empath preserves at least 3 distinct emotional-interior questions across Cluster 5 (not 2 like in less-emotionally-dense cells) + 1 in Cluster 8 (burnout-as-symptom). Minimum 4 Empath questions total with emotional-interior register intact. The Psychology-of-More-vs-Better framing (Q2) and the Emotional-Core-Value framing (Q11) are especially load-bearing — they are Empath's signature on this cell's emotional-function-of-bloat and user-seeking-emotional-state framings.

### Accountant (Tier 3) — load-bearing for Cluster 4 (Economics) with 10 of 11 cluster questions

Accountant contributes 11 questions with 4 unique (36% — lower uniqueness because most anchor mergers). **Ten of 11 Accountant questions concentrate in Cluster 4** (91%) — the highest single-persona-to-single-cluster concentration in the cell. Accountant is the load-bearing persona for Cluster 4; without Accountant, Cluster 4 would be Analyst-only and lose specific financial vocabulary.

Accountant's signature financial vocabulary for mobile-app:
- **LTV and CAC per feature cluster** (Q1)
- **Revenue attribution — 80/20 Pareto test** (Q2)
- **Maintenance cost per active user** — 2.5 features per engineer (Q3)
- **Churn cost vs. feature elimination cost — break-even on 8% → 15% retention gain** (Q4)
- **Retention improvement economics — 2.5x user lifetime from 8% → 20-30%** (Q5)
- **User segment profitability — free/occasional/power/paying** (Q6)
- **Technical debt paydown ROI — 12-24 month engineering curve** (Q7)
- **Clean relaunch vs. incremental economics — $50-100K marketing blitz** (Q8)
- **Feature team reallocation economics — maintenance to growth ROI** (Q9)
- **Funding scenario modeling — survival minimum vs. growth-demonstration feature set** (Q10)
- **Post-simplification operating budget — 5K paying users @ $5/month vs. 20K active @ $0.50 ARPU** (Q11)

This is the densest financial-specificity contribution observed. Per R6 findings, Accountant's contribution is "complementary with Analyst — Analyst creates analytical structure, Accountant fills it with financial data and modeling." On mobile-app, Accountant's financial vocabulary cannot be domesticated to Analyst's "framework" register — Accountant's specific dollar amounts, percentage benchmarks, ARPU calculations, LTV multipliers, and 80/20 tests are the persona's signature.

**Flag for SP1:** verify Accountant represented with financial vocabulary in ≥4 of 5 Cluster 4 output questions:
- Per-feature unit economics (merged Group 5 — anchored by Analyst Q4 + Accountant Q1+Q2+Q3)
- Churn-vs-retention break-even (merged Group 6 — anchored by Analyst Q7 + Accountant Q4+Q5)
- Runway-driven decision economics (merged Group 7 — anchored by Analyst Q5 + Accountant Q9+Q10+Q11 + ST Q9)
- Accountant Q6 preserved distinct (user segment profitability)
- Accountant Q7 in Cluster 3 (technical debt paydown ROI)

Specific financial-vocabulary preservation check: SP1 output should contain phrases like "LTV:CAC," "unit economics," "80/20 revenue attribution," "break-even analysis," "burn rate," "funding scenarios," "ARPU" — not generic "economic analysis" or "cost structure."

### First Principles Thinker — definitional register in 5 clusters

FPT contributes 9 questions with 6 unique (67%). FPT's definitional questions sit in framework territory across Clusters 1, 3, 5, 9, 12:
- Cluster 1: Q3 (MVP solving problem better than nothing), Q7 (fundamental unit of value — social fitness as one problem or five)
- Cluster 3: Q4 (incremental simplification doomed by legacy architecture? rebuild threshold)
- Cluster 5: Q5 (what "simplification" means from user's perspective — cognitive load vs. feature count)
- Cluster 9: Q2 (causally linked vs. correlated — controlled experiments)
- Cluster 12: Q1 (fundamental human need this app actually satisfies), Q8 (zero-based budget approach — are we simplifying the wrong features?)
- Cluster 2: Q6 (when "killing darlings" is product suicide — micro-communities as only users finding value)

Only 9 input questions means FPT has less representation slack than other personas. If SP1 domesticates 3-4 of these into Analyst-style operational questions, FPT's reductive-inquiry voice is nearly eliminated.

**Flag for SP1:** verify Cluster 12 preserves ≥1 FPT definitional question (Q8 zero-based-budget is load-bearing). Verify Cluster 1 preserves FPT's fundamental-unit-of-value definitional question (Q7). Verify Cluster 3 preserves FPT's rebuild-threshold definitional question (Q4). Verify Cluster 9 preserves FPT's causation-vs-correlation question (Q2). FPT elimination in any of these clusters is a scored failure. The small input volume (9) combined with definitional distinctiveness makes this the tightest preservation constraint in the cell (40% coverage target on 9 input questions = 4 outputs required).

### Futurist — "sample 2-3 of 12" rather than "preserve X"

Futurist contributes 12 questions with 11 unique (92% — tied highest with AI). However, Cluster 12 target is only 4 output questions, of which only 2-3 can be Futurist-sourced. This is different from other personas where uniqueness drives full representation — Futurist's 12 questions are designed to cover a wide trend-landscape, with synthesis sampling representative trends rather than preserving all.

The 12 Futurist questions cover 4 distinct trend categories:
1. **App-category evolution** — Q1 (digital minimalism), Q2 (unbundling), Q5 (post-pandemic hybrid fitness)
2. **Technology-platform shifts** — Q3 (AI-first), Q6 (wearable integration), Q12 (AR/VR readiness)
3. **Business model trends** — Q7 (category convergence around outcomes), Q8 (subscription fatigue), Q9 (data portability)
4. **Social/community trends** — Q4 (purpose-driven social), Q10 (privacy-first), Q11 (community renaissance)

**Flag for SP1:** verify Cluster 12 Futurist representation covers ≥2 of these 4 trend categories. If only 1 Futurist question survives OR all 2-3 surviving questions cluster in a single trend category (e.g., all 3 are technology-platform trends with no business-model or social-community trend), scoring flag. The synthesis must capture trend-landscape breadth, not depth in a single trend. This is the unique Futurist-preservation criterion (breadth sampling) vs. other personas (specific-question preservation).

No Futurist required in Cluster 4 — Futurist Q8 (subscription fatigue) is optional there and can flow to Cluster 12 instead.

### Systems Thinker — feedback-loop archetype vocabulary across 7 clusters

ST contributes 14 questions with 9 unique (64%). Distribution across 7 clusters:
- Cluster 1 (Q1 — Success to the Successful dynamic)
- Cluster 2 (Q3 — passionate bases as future-of-product, Q5 — which users worth retaining)
- Cluster 3 (Q7 — technical debt constraining removal, "Fixes that Fail")
- Cluster 4 (Q9 — runway × validation delay timing)
- Cluster 7 (Q4 — "Shifting the Burden" communication pattern)
- Cluster 8 (Q8 — leverage points for liberating killing-darlings, Q14 — excess capacity scope creep)
- Cluster 9 (Q2 — reinforcing loop cutting features that kept users marginally engaged, Q11 — optimizing for wrong thing)
- Cluster 10 (Q6 — 3-6 month withdrawal period, Q10 — "Erosion of Goals")
- Cluster 11 (Q12 — promise/delivery alignment, Q13 — worse-before-better competitive dynamics)

The distinctive named-archetype vocabulary: "Success to the Successful," "Fixes that Fail," "Shifting the Burden," "Erosion of Goals," "reinforcing dynamics," "balancing loops," "time delays," "feedback loops," "excess capacity scope creep," "self-fulfilling prophecies," "worse before better." No Tier 1 backup persona uses this vocabulary.

**Flag for SP1:** verify ST preserves named-archetype vocabulary in ≥4 output questions across Clusters 1, 3, 7, 8, 9, 10, 11. If ST representation falls below 4 with specifically named archetypes (not generic "feedback loop" language), the systems register in the product-decision discussion is lost.

### Questioner — 11 unique paradigm reframings at merger-dilution risk

At high effort Questioner contributes 20 questions with 11 unique (55%). Paradigm-level questions at merger-dilution risk:
- Q1 (what problem do users hire this app to solve — 47-second intent)
- Q5 (what "overwhelming" means to different segments)
- Q6 (expressed preferences vs. revealed behaviors)
- Q7 (identity built around the app)
- Q8 (describe to friend today vs. ideally — perception gap)
- Q9 (success as retention rather than engagement)
- Q11 (MVP is 1 feature not 3-4)
- Q12 (8-month runway distorting decisions)
- Q13 (focus vs. simplification framing)
- Q15 (gradually hiding features vs. removing outright)
- Q16 (team's emotional attachments mirroring users')
- Q17 (unique combination only in single app)
- Q18 (swiss-army-knife critique as strength)
- Q19 (what would competitors do if we simplified successfully)
- Q20 (how "feature bloat" looks different in social fitness category)

These are all "what if our fundamental assumption is wrong" questions that synthesis commonly absorbs into broader category headers.

**Flag for SP1:** at high effort Questioner has 11+ paradigm-level questions at risk of merger-dilution. Verify that at least 5 Questioner-distinctive reframings survive as standalone output questions (not merged into broader category headers). Priority preservation: Q11 (1-feature MVP — Cluster 1), Q12 (runway distortion — Cluster 4), Q13 (focus vs. simplification framing — Cluster 7 via Group 13 merger), Q18 (swiss-army strength — Cluster 11), Q9 (retention vs. engagement paradigm — Cluster 9).

---

## 3. Append Mechanics Observations

### Round-robin is an identity operation at high effort

At A_quota = A_available, the round-robin mechanic is trivial — every question survives. The walkthroughs in B4 are useful for ordering and cluster attribution verification but have no selection pressure.

This cell's D1 round-robin quality depends entirely on test data from low/medium cells where quota < available. The mobile-app/high BL1 validates the trivial edge case for all 5 Append personas including the Tier 3 replacement (Connector) mechanics.

### Observations for SP1 and PC1

- **All 35 Append questions survive.** 0 drops. Integration is easier because no selection errors can be introduced in the Append stream.
- **Connector at 8 questions** is at persona-selection-guide upper-bound volume (7-8 mean 7.7). 3-cluster distribution (1-2-5) is unbalanced with heavy CN-C (structural-design isomorphism) concentration.
- **Visionary at 7 questions** at upper bound of 5-8 range, 3-cluster distribution (3-2-2) is balanced. All 7 questions are pure reimagination — highest Visionary-to-Cluster-12 concentration observed (even tighter than youth-mentorship/high 6 of 7).
- **Storyteller at 7 questions** at natural set point ~7. 3-cluster distribution (3-1-3) has one single-question cluster (S-B), manageable for round-robin with proper exhaustion handling.
- **Constraint Flipper at 6 questions** in middle of D1 range — topic is constraint-rich (47s session, 8-month runway, 8-person team, feature-graveyard framing), justifying full 6-question inclusion. 3-cluster distribution (2-1-3).
- **Provocateur at 7 questions** matches natural set point exactly. Clean 3-cluster structure.

### Connector CN-C concentration is topic-distinctive

Unlike youth-mentorship/high where Connector had balanced 2-2-3 distribution across Connector's three sub-modes (cross-domain import, structural isomorphism, recombination), mobile-app/high's 1-2-5 distribution is heavily weighted toward CN-C (structural-design isomorphism and recombination). This reflects the topic's fundamental character: mobile-app's simplification decision is about information architecture, dependency analysis, preservation-vs-cutting choices, and metaphor-for-the-approach selection.

Connector's 8 questions operate in these sub-modes:
- **Biological/ecological isomorphism (CN-A):** Q1 ecosystem succession (keystone vs. invasive species)
- **Behavioral/psychological isomorphism (CN-B):** Q2 IKEA/endowment effect + loss aversion, Q7 retention-burnout feedback loop unifying users and team
- **Information-theoretic / structural-design isomorphism and recombination (CN-C):** Q3 Shannon information entropy (signal vs. noise), Q4 museum curation (rotation/loan/digital archive), Q5 surgical triage vs. architectural restoration (metaphor-for-approach), Q6 language death and vocabulary migration, Q8 notification architecture as feature dependency graph

This validates GT1's Connector-over-Analogist call: ~63% of Connector questions are in distinctive non-Analogist-overlap modes (CN-B + CN-C = 63%). Analogist would likely have produced more single-domain metaphorical reframings (app as garden, features as tools in a toolbox) rather than these structural cross-sector imports.

### Connector Q7 is an unusually unifying Append question

Connector Q7 (retention-burnout feedback loop — framing user retention and team burnout as the same cognitive-overload problem in two stakeholder groups) bridges Cluster 2 (user retention) + Cluster 8 (team burnout) in a way no other Append question on any evaluated cell produces. This cross-stakeholder unification is Connector's signature recombinant mode at its strongest.

**Flag for SP1:** SP1 should note Q7 as a distinctive Connector contribution that synthesis should not domesticate into either "retention" or "team" framing alone. If Q7 is classified cleanly into one cluster without cross-reference, the recombinant insight is lost.

### Thematic mapping of Append to Synthesis clusters

- **Visionary → Cluster 12 Reimagination tightest in evaluation set**: All 7 Visionary questions are pure reimagination. 5 of 7 also bridge to Cluster 1 (fundamental core-value reimagination). 1 bridges Cluster 5 (47-second-as-product). Visionary on this cell is 100% reimagination — the only Visionary output with 100% Cluster 12 mapping observed.
- **Connector → Multi-cluster with CN-C emphasis**: Questions bridge Clusters 1, 2, 3, 5, 7, 9, 10 (7 of 12 clusters) with heavy CN-C structural-design content. Interleaved presentation scatters Connector across many clusters.
- **Constraint Flipper → Distributed with Cluster 5 and Cluster 4 concentration**: 6 CF questions span Clusters 1, 4, 5, 7, 8, 10, 11 — with CF Q1 (47s as signal) + CF Q6 ("overwhelming" as guidance-request) specifically attacking Cluster 5's emotional-experience territory.
- **Storyteller → Wide cluster span with Cluster 11 and Cluster 8 emphasis**: 7 Storyteller questions touch Clusters 1, 4, 5, 7, 8, 9, 11 (7 of 12 clusters). Strong narrative-positioning contribution (Q6 press release + Q7 user testimonial) and team-transformation narratives (Q4 standup + Q5 "funeral" scene).
- **Provocateur → Orphan only**: No cluster mapping; provocations are the payload.

### Cluster 12 (Reimagination) and Cluster 5 (Emotional) are Append-heavy

Cluster 12 total "reimagination reading experience":
- Synthesized: 4 questions
- Append cross-references: ~9-10 questions (7 Visionary + 2-3 Connector with CN-C bridges + 1-2 CF)

Cluster 5 total "emotional reading experience":
- Synthesized: 4 questions
- Append cross-references: ~6 questions (Connector Q2 IKEA/endowment + Q3 information entropy + CF Q1 47s reframing + CF Q6 overwhelming reinterpretation + Storyteller Q2 deletion moment + Visionary Q6 47s-as-product)

These two clusters have the highest Append-to-Synthesize density in the cell. SP1 should evaluate these two clusters as "aggregate reading experiences" rather than just on synthesized output quality.

### Awkwardness assessment for PC1 (interleaving vs. segregation)

This cell is a moderate test case for interleaving vs. segregated integration:
- Append stream (35) is smaller than Synthesized stream (41). Append ≈ 46% of total output. Less extreme than youth-mentorship/high (51%).
- Five distinct Append-voice registers (vs. 6 in youth-mentorship/high which added Politician).
- Cluster 12 would have 4 synthesized + ~9 Append cross-references under interleaving — 13 questions with Visionary dominance.
- Cluster 5 would have 4 synthesized + ~6 Append cross-references — 10 questions with mixed Append voices.

Either presentation is navigable. Segregation preserves each Append voice as a coherent "section." Interleaving produces persona-dominance in specific clusters (Visionary in 12, Connector in 3/5, CF in 5). With 5 Append personas at 35 questions, both presentations are viable.

Recommendation: SP1 should test both presentations on this cell, with specific attention to Cluster 12 (Visionary dominance test) and Cluster 5 (multi-Append-voice density test). Mobile-app/high is a moderate stress test, less extreme than youth-mentorship/high.

### No GT1 watchlist concerns for Append stream

The canonical Append composition is stable. Connector-over-Analogist is high-confidence per GT1 (5+ sub-sectors constraining each other is a prototypical trigger). No Politician selected because stakeholder politics is not central to this product-decision brainstorm. No alternative-composition scenarios to consider.

---

## 4. C1 Recommendation (Per-Cell)

**Recommendation for this cell: flat pooling with persona tags preserved as metadata** (full rationale in B1 clusters file).

**Does per-persona vs. flat matter for this cell?** Yes, very substantially. With 10 Synthesize personas, per-persona grouping creates 10 separate thematic maps the synthesizer must mentally align — a quadratic cross-referencing task. Flat pooling surfaces the actual cross-persona convergences:

- Cluster 1 (Core Value) draws 5 personas — Questioner paradigm + FPT definitional + Analyst framework + AI strengths + DA PMF-skepticism all converge on "what is this app for, and how few features can deliver it?"
- Cluster 4 (Economics) draws 6 personas — Accountant anchor + Analyst bridges + Questioner paradigm + ST time-dynamics + Futurist trend bridge + FPT structural-advantage
- Cluster 5 (Emotional) draws 5 personas — Empath emotional-interior (dominant) + AA felt-experience + Questioner paradigm + DA challenge-frame + FPT definitional
- Cluster 7 (Migration) draws 5 personas — AA agency-register + AI strengths + DA tactical + Questioner paradigm + ST system-dynamics
- Cluster 9 (Metrics) draws 4 personas — Analyst framework + FPT causal-inference + Questioner paradigm + ST feedback-loop + DA failure-modes

Cross-persona bridges that flat-pooling surfaces but per-persona view hides:
- Cluster 4 (Economics): Accountant + Analyst combine quantitative framework with specific financial vocabulary in a way per-persona view would treat as two separate discussions
- Cluster 9 (Metrics): DA skepticism + Analyst framework + ST systems-warning + Questioner paradigm all converge on "how do we know if simplification worked, and how might we know it didn't?" per-persona view fragments this into 4 separate metric-skepticism sections
- Cluster 1 (Core Value): 5 personas converge on "what is this app actually for, and how few features deliver it?" — flat pooling reveals this as a single coherent cluster, not 5 independent definitional/framework discussions

**Confidence:** **very high** (matching youth-mentorship/high's and property-management/high's confidence). At 10 Synthesize personas with 57.8% convergence density and 35% orphan/bridging rate (highest observed), per-persona clustering actively obscures the primary thematic structure. The bridge-heavy topic character makes flat-pooling essential.

**Effort-level pattern (cross-effort prediction):**
- Low (6 Synthesize personas): per-persona view may work as convergences are less dense
- Medium (7-8 Synthesize personas — Tier 1 + 0-1 Tier 3): flat pooling preferred, moderate-high confidence
- High (9-10 Synthesize personas): flat pooling essential, very high confidence

Mobile-app/high at 10 Synthesize personas sits in the "essential-to-flat-pool" zone.

**Caveats:**
- Cluster 6 (Equity/Accessibility) is AA-dominant (7 of 8) — flat pooling doesn't substantially change its composition. Per-persona view and flat-pooled view agree.
- Cluster 12 (Reimagination) is Futurist-dominant (11 of 16) — flat pooling similarly confirms the Futurist dominance. Minor benefit: flat pooling correctly groups FPT Q1 and Q8 (definitional register) into Cluster 12 rather than treating them as standalone FPT content.
- Cluster 3 (Technical Debt) is small (8 questions) but cross-persona (5 personas contributing) on a tight theme — per-persona view would fragment this cluster entirely.

---

## 5. GT1 Watchlist Status — NOT ON WATCHLIST

**mobile-app / high is NOT on the GT1 Medium-confidence watchlist** (TDA1 §5.1). GT1 Rev 3 canonical assignment is **Accountant** (Tier 3 Synthesize) plus **Connector replacing Analogist** (Tier 3 Perspective, Append). Both picks are high-confidence per GT1:

1. **Financial structure central** — 8-month runway, burn rate, LTV/CAC, team of 8, 180K downloads, feature maintenance costs, funding scenario modeling, retention improvement economics. Strong trigger for Accountant inclusion.

2. **Inter-domain reconciliation** — social + fitness + marketplace (supplement store) + coaching (coaching service) + content (meditation, content consumption) + community forum. 5+ distinct sub-systems that constrain each other. Strong trigger for Connector over Analogist.

No ambiguity at the Tier 3 composition layer. GT1 Rev 3 did not flag this cell as revisable.

**Connector-not-Analogist is stable:** The swap is independent of Tier 3 ambiguity (there is none here) and is canonical for the cell.

**Implication for SP1:** If SP1 produces anomalous scores on this cell, the first diagnostic is **the synthesis prompt itself**, not GT1. Specific diagnostic questions should focus on:

1. Does the output preserve Accountant's financial vocabulary in Cluster 4?
   - If Accountant's LTV:CAC, 80/20 revenue attribution, ARPU, burn rate vocabulary is missing, synthesis prompt failed to distinguish Accountant from Analyst register. Fix synthesis prompt.

2. Does the output preserve Connector's CN-C structural-design vocabulary?
   - If Connector's Shannon entropy, museum curation, surgical-triage-vs-architectural-restoration, notification-as-dependency-graph vocabulary is missing OR flattened to generic Analogist-style metaphors, synthesis prompt failed to distinguish Connector's isomorphism/recombination from Analogist's cross-domain import. Fix synthesis prompt.

3. Does the output preserve Empath's Cluster 5 emotional-interior density?
   - If Cluster 5 compacts to 1-2 Empath questions instead of ≥3, synthesis prompt failed to preserve emotional-interior register on a high-density cluster. Fix synthesis prompt (likely: add explicit cluster-level register-preservation instruction).

4. Does the output preserve AA's Cluster 6 equity-dimension density?
   - If Cluster 6 compacts to 1 "inclusive design" question, synthesis prompt collapsed fine-grained equity dimensions into generic accessibility framing. Fix synthesis prompt.

5. Does the output preserve Futurist trend-breadth sampling?
   - If Cluster 12 has only 1 Futurist question OR all 2-3 Futurist questions are in a single trend category, synthesis prompt failed trend-breadth sampling. Fix synthesis prompt (likely: add explicit trend-category-breadth instruction).

**Source-vintage status:** Per TDA1 §3, no shortfalls detected for this cell. All 15 persona source files are from expected volumes and 2026-02-24 sweep. No vintage divergence. This cell's data quality is canonical.

**SP1 reference posture:** Mobile-app/high is a NON-watchlist cell and serves as a "clean baseline" reference for scoring anomaly diagnosis. If mobile-app/high scores anomalously poorly while property-management/high (watchlist) scores normally, pattern suggests synthesis-prompt issue on mobile-app's specific topic characteristics (likely: Creative-heavy / Accountant-heavy / Connector-replaces-Analogist). If both score anomalously, pattern suggests systematic synthesis-prompt weakness at high-effort cells generally.

---

## 6. Open Concerns for Cross-Topic Synthesis

1. **Is 57.8% convergence density characteristic of 10-persona high-effort cells with high cross-cluster bridging?** Mobile-app/high sits slightly below youth-mentorship/high (59.3%, same Synthesize-persona count) despite similar persona distribution. The 35% orphan/bridging rate (vs. youth-mentorship's 27%) may be the key driver. Cross-topic hypothesis: convergence density scales with persona count (~55% + 0.4pp per persona) adjusted for cross-cluster-bridging rate (-1pp per 5-percentage-point bridging increase).

2. **Accountant representation load on cells where Accountant is the primary Tier 3.** Mobile-app/high has Accountant contributing 10 of 11 questions to Cluster 4 — 91% single-cluster concentration. This is the densest single-persona-in-single-cluster concentration observed. Is this characteristic of Accountant cells specifically? Cross-topic check needed on food-truck/medium, food-truck/high, career-change cells where Accountant is selected. If Accountant consistently concentrates 90%+ in Cluster-4-equivalent economics clusters, SP1 rubric needs Accountant-specific voice-preservation scoring.

3. **Creative dimension target of 33.5% — topic-driven or persona-driven?** Mobile-app is the only cell observed with Creative as the dominant dimension. Is this a characteristic of any category-reimagination topic (likely others: career-change, school-consolidation, space-party reimagination framings), or specific to mobile-app's 15-feature-to-3-4 simplification decision? Cross-topic check on career-change/high and any category-evolution brainstorm.

4. **Cluster 5 (Emotional) compaction from 13 input → 4 output is aggressive (3.25×) on a 7-Empath-question cluster.** If SP1 compacts Cluster 5 to 3 with only 2 Empath questions, the emotional-interior register is likely lost. Track whether synthesis can preserve Empath in this specific high-density case — specifically the Psychology-of-More-vs-Better framing (Q2) and Emotional-Core-Value framing (Q11) which are signature for this cell.

5. **Cluster 6 (Equity) compaction from 8 input → 3 output is moderate but the cluster is AA-dominant (7 of 8).** If SP1 compacts to 1 generic "inclusive design" question, 7 AA equity dimensions collapse to 1. Track whether synthesis preserves AA's fine-grained dimensions or defaults to generic accessibility framing. This is a specific "don't flatten AA equity" test for the cell.

6. **Cluster 12 (Reimagination) compaction from 16 input → 4 output is aggressive (4.0×) — tied with Cluster 9 for highest compaction.** Futurist's 11-12 questions drop 9-10 (not merged, not represented) — SP1 rubric must accommodate this high-drop rate specifically for Futurist trend-breadth sampling. Cluster 12 is also Append-heavy (9+ Append cross-refs on 4 synthesized = ~13 total reimagination questions). This dual pressure (aggressive synthesis compaction + heavy Append cross-reference) is distinctive for Cluster 12 on this cell.

7. **Connector CN-C concentration (5 of 8 in information/structural-design) is topic-distinctive.** Is this observable on other Connector-selected cells? If Connector's sub-mode distribution varies significantly across topics (youth-mentorship had balanced 2-2-3, mobile-app has skewed 1-2-5), this is evidence that Connector's value-proposition depends on topic type. SP1 rubric for Connector should score based on the *right sub-mode activation for the topic*, not universal "3 sub-modes equally represented." Cross-topic check on other Connector-selected cells.

8. **Voice-preservation scoring priority list for this cell:**
   - Accountant (financial vocabulary in Cluster 4, 10 of 11 questions in one cluster — HIGHEST priority for this cell specifically due to Tier 3 load-bearing)
   - Empath (emotional-interior register in Cluster 5 with 7 questions, Cluster 8 secondary — HIGH priority)
   - Audience Advocate (equity dimensions in Cluster 6 with 7 of 8 input — HIGH priority)
   - Appreciative Inquirer (voice-dilution, 11 of 12 unique — HIGH priority across 6 clusters)
   - Futurist (trend-breadth sampling across 4 categories — HIGH priority, special "breadth" criterion)
   - Systems Thinker (named-archetype vocabulary across 7 clusters — HIGH priority)
   - First Principles Thinker (definitional register in 5 clusters, only 9 questions — MEDIUM-HIGH priority)
   - Connector (CN-C structural-design isomorphism in Append — MEDIUM-HIGH priority, Analogist-replacement validation)
   - Visionary (100% reimagination in Cluster 12 — MEDIUM priority, concentrated mapping)
   - Questioner (paradigm-level reframings at merger-dilution risk — MEDIUM priority, 5 priority-preservation questions)
   - Devil's Advocate (challenge register preserved in mergers — MEDIUM priority)
   - Analyst (framework vocabulary preserved in mergers — MEDIUM priority, usually anchor role)

9. **Does the Analytical-heaviness (41% Synthesize) + Creative-heaviness (33% output) dual pressure test synthesis prompts calibrated on other topic types?** youth-mentorship/high was Human-centered dominant; property-management/high was Strategic dominant; mobile-app/high is Analytical-dominant on input but Creative-dominant on output (driven by Append stream Creative contribution). Synthesis prompts that preserve Analytical-heavy input on this cell will produce under-Creative output. SP1 should verify the output dimension balance (not just the input-preservation metrics) reflects the topic's dual pressure — high Analytical input + high Creative Append = balanced Creative-Analytical output, not Analytical-dominant output.

10. **Cross-NON-watchlist comparison hypothesis:** If mobile-app/high (NOT on watchlist) scores anomalously while youth-mentorship/high (on watchlist) scores similarly, pattern suggests the anomaly is NOT GT1-related (since mobile-app has no GT1 ambiguity). This would indicate synthesis-prompt weakness on complex category-reimagination topics. If the two cells score differently (e.g., mobile-app normal + youth-mentorship poor), GT1 ambiguity may be contributing to youth-mentorship's issues.

11. **Storyteller uneven cluster distribution (3-1-3 with single-question cluster) — is this robust for round-robin?** Mobile-app/high's Storyteller has 1 question in S-B, which forces round-robin to exhaust that cluster after Round 1 and rebalance across S-A and S-C in later rounds. Is this a reliable pattern? Cross-topic check on Storyteller-cluster distributions. If Storyteller consistently has 3-1-3 distributions on some topic types, round-robin mechanics may need adjustment for single-question-cluster handling.

12. **Top-level recommendation for this cell:** Given the cell's Analytical-dominant input + Creative-dominant output + moderate Append-to-Synthesize ratio (46:54), the synthesis prompt should handle this cell cleanly — but specifically needs to: (a) preserve Accountant's financial vocabulary in Cluster 4, (b) preserve Empath's emotional-interior density in Cluster 5, (c) preserve AA's equity dimensions in Cluster 6, (d) sample Futurist trend-breadth in Cluster 12, (e) preserve Connector's CN-C structural-design vocabulary in Append. Without all five of these preservation mechanisms, output will feel flatter than the baseline targets.

---

## Top-Line Summary (for orchestrator aggregation)

- **N = 163** (128 Synthesize + 35 Append)
- **C = 12** (thematic clusters; same as youth-mentorship/high, property-management/high; + Provocateur orphan bucket)
- **Convergence groups P = 20; Q participating = 74 (57.8%)** — in expected high-effort band
- **Synthesis target = 41** (compaction 3.12× on Synthesize stream; range 37–46)
- **Append quota = 35** (all questions survive at high effort per D1; A_quota = A_available)
- **Total output target M = 76** (compaction 2.14× overall; range 69–82)
- **GT1 watchlist:** NOT ON WATCHLIST. Canonical Tier 3 composition (Accountant Synthesize + Connector Append) is high-confidence. No alternative-composition analysis needed.
- **Connector replaces Analogist** per GT1 Rev 3 (inter-domain reconciliation trigger; 5+ sub-sector span — social + fitness + marketplace + coaching + content + community)
- **Source vintage:** All 15 persona inputs from expected volumes and 2026-02-24 sweep. No content-vintage divergences.
- **C1 recommendation:** flat pooling with persona tags preserved (very high confidence — 10 Synthesize personas with 35% orphan/bridging rate, highest observed, makes flat pooling essential)
- **Highest-risk personas for SP1 scoring (priority order):**
  - **Accountant** (financial vocabulary in Cluster 4 with 10 of 11 questions; Tier 3 load-bearing — HIGHEST priority)
  - **Empath** (emotional-interior register in Cluster 5 with 7 concentrated questions; Cluster 8 secondary)
  - **Audience Advocate** (equity dimensions in Cluster 6 with 7 of 8 input questions; load-bearing persona)
  - **Appreciative Inquirer** (voice-dilution; 11 of 12 unique — highest AI uniqueness observed)
  - **Futurist** (trend-breadth sampling across 4 categories — specific "breadth" criterion, 3 of 12 target output)
  - **Systems Thinker** (named-archetype vocabulary across 7 clusters)
  - **First Principles Thinker** (definitional register in 5 clusters — only 9 input questions, tightest preservation constraint)
  - **Connector** (CN-C structural-design isomorphism in Append — Analogist-replacement validation, first CN-C-heavy cell)
  - **Visionary** (100% reimagination in Cluster 12 — concentrated mapping)
  - **Questioner** (11 paradigm-level reframings at merger-dilution risk)

**A_quota = 35** (D1 high-effort: Tier 1 Perspective all + Constraint Flipper all + Connector all = 7+7+7+6+8 = 35)

**Topic character signal:** Analytical-dominant input (41%) + Creative-dominant output (33.5%) — driven by dense quantitative/financial/metrics content on the Synthesize side and Visionary+Connector+CF reimagination-heavy Append. This dual pressure is distinctive: mobile-app is a category-reimagination decision requiring both rigorous quantitative analysis AND bold paradigm-challenging reimagination. SP1 scoring rubric must accommodate this dual pressure and not penalize synthesis variants that produce balanced Creative-Analytical output where the topic justifies it. Mobile-app is also the **only cell observed where Creative is the dominant output dimension** — a strong signal that this topic's Append stream carries unusual load.

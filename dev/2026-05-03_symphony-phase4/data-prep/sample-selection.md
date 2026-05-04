# Phase 4 Investigation — Sample Selection Rationale

**Date:** 2026-05-03
**Sample size:** 60 clusters across 10 topics
**Selection criterion:** Densest persona convergence + richest tension + densest unique insights, with hard shape-diversity constraint on med and high pairs

Tier-A (effort-comparison-memo topics) listed first: career-change, food-truck, habit-tracker, space-party. Tier-B follows: mobile-app, property-management, school-consolidation, tool-library, wearable-device, youth-mentorship.

Cluster-shape taxonomy used:
- **strategy-heavy** — positioning, decision architecture, long-horizon trade-offs, market or constituency framing
- **tactical** — implementation specifics, pricing, sequencing, operational mechanics, day-to-day
- **human-centered** — identity, emotion, sustainability, relational dynamics, stakeholder experience
- **structural/financial** — money, runway, legal, compliance, infrastructure, supply chain
- **risk-focused** — failure modes, second-order effects, compliance risk, what-could-go-wrong
- **opportunity-focused** — upside, growth, expansion, what-could-be-bigger

---

## Topic 1: career-change

### Cluster set summary
- min: 4 clusters
- low: 9 clusters
- med: 9 clusters
- high: 11 clusters

### Selected samples

**min sample:** `01_motivation-and-identity` — Why selected: Largest min cluster (12.1k bytes generic response) on the load-bearing identity/calling diagnosis. The career-change effort-comparison memo identifies "calling can't be assessed from inside burnout" as the cross-effort through-line; this cluster is where conspicuous-absence detection is most exposed (the generic generator cannot produce convergence counts but should still flag the calling-vs-burnout tension).

**low sample:** `01_calling-vs-escape-diagnosing-the-driver` — Why selected: Highest DA/Pragmatist contrast at low (26.8k bytes, top of low responses for this topic). The cluster slug itself encodes the central tension; the effort-comparison memo names this as the framing that scales across effort levels. Maximal tension-preservation surface for LB1's low-tension audit.

**med samples (2):** *(shape diversity required)*
- `01_burnout-as-diagnosis-not-direction` — shape: human-centered — Why: 4 personas (DA, Empath, First Principles, Pragmatist) on identity/calling — convergence pressure between Empath's emotional reading and First Principles' diagnostic framing. 49k bytes.
- `04_pslf-loan-repayment-long-term-financial-sustainability` — shape: structural/financial — Why: 4 personas (Accountant, DA, Pragmatist, Systems Thinker) on PSLF math — the effort-comparison memo flags financial planning as a top productive-drift zone. 52.4k bytes; multi-decade financial reasoning generates many traceable convergence claims.

**high samples (2):** *(shape diversity required)*
- `06_emotional-sustainability-and-the-second-burnout-risk` — shape: human-centered — Why: 141.0k bytes (largest high cluster for this topic) on the second-burnout question. 7 personas including Empath and Storyteller carrying distinctive single-persona contributions at high risk of being absorbed in synthesis.
- `11_the-field-s-future-mlps-ai-and-30-year-arcs` — shape: strategy-heavy — Why: 120.7k bytes on long-horizon strategy. The Futurist's contribution here is the canonical at-risk-of-being-dropped persona contribution; high aggregation pressure on a 30-year framing tests strategy-cluster faithfulness.

**Shape-diversity verification:** med pair shapes = [human-centered, structural/financial] (distinct ✓); high pair shapes = [human-centered, strategy-heavy] (distinct ✓)

---

## Topic 2: food-truck

### Cluster set summary
- min: 5 clusters
- low: 9 clusters
- med: 9 clusters
- high: 12 clusters

### Selected samples

**min sample:** `01_unit-economics-and-financial-sustainability` — Why selected: 13.8k bytes (largest min cluster). Unit economics is the topic's core decision framing; the effort-comparison memo names "single-channel discipline before diversification" as a persistent through-line that originates in unit-econ analysis. Best surface for conspicuous-absences detection.

**low sample:** `02_concept-differentiation-and-market-fit` — Why selected: 28.5k bytes. The "Filipino-Mexican fusion is not recipe-defensible" through-line lives here — strongest DA/Pragmatist contrast at low (DA challenges defensibility; Pragmatist proposes operational hedges). Maximum tension-preservation pressure.

**med samples (2):**
- `01_business-model-foundations-identity` — shape: strategy-heavy — Why: 80.0k bytes; 4 personas including Visionary and Analogist on business-identity framing. Strategy-cluster aggregation pressure from most-distinctive personas.
- `03_capital-structure-financing-decisions` — shape: structural/financial — Why: 53.6k bytes; Accountant + Systems Thinker on SBA-loan-timing — one of the four memo-named productive-drift zones. Financial reasoning generates dense traceable claims.

**high samples (2):**
- `02_the-fusion-concept-differentiation-authenticity-and-defensibility` — shape: strategy-heavy — Why: 102.0k bytes on cross-cultural concept defensibility. The effort-comparison memo's "fusion is not recipe-defensible" lands here at high. 7 personas, max persona-distinctiveness pressure.
- `08_regulatory-strategy-and-political-engagement` — shape: risk-focused — Why: 201.2k bytes (largest high cluster for the topic). The memo flags ordinance engagement as a top drift zone. Massive content density generates highest convergence-count traceability load.

**Shape-diversity verification:** med pair shapes = [strategy-heavy, structural/financial] (distinct ✓); high pair shapes = [strategy-heavy, risk-focused] (distinct ✓)

---

## Topic 3: habit-tracker

### Cluster set summary
- min: 5 clusters
- low: 11 clusters (incl. 99_additional)
- med: 11 clusters listed (10 with responses; 99_additional has no Phase 3)
- high: 11 clusters

### Selected samples

**min sample:** `02_user-psychology-and-retention` — Why selected: 11.9k bytes. Behavioral-science framing is the topic's load-bearing axis; the effort-comparison memo names "anti-gamification as brand promise" as a persistent through-line that originates here. High-failure-surface for conspicuous-absences detection on emotional/retention dynamics.

**low sample:** `04_streak-grace-failure-and-the-anxiety-loop` — Why selected: 19.1k bytes; the streak/grace dynamic is one of the four memo-named productive-drift zones. DA's anxiety-amplification critique vs. Pragmatist's compromise mechanics is the topic's clearest low-effort tension.

**med samples (2):**
- `03_streak-grace-missed-days-and-the-emotional-texture-of-failure` — shape: human-centered — Why: 55.4k bytes; 4 personas (DA, Empath, Pragmatist, Storyteller). Empath + Storyteller drive distinctive emotional-texture contributions at high risk of synthesis absorption.
- `06_monetization-the-free-paid-boundary-and-goodhart-s-law` — shape: structural/financial — Why: 52.8k bytes; pricing/MVP-scope is a memo-named drift zone. Goodhart's-law framing generates explicit tension between Pragmatist's pricing logic and DA's gaming critique.

**high samples (2):**
- `04_streak-anxiety-grace-mechanics-and-the-emotional-interior` — shape: human-centered — Why: 88.7k bytes; 7 personas converging on emotional-interior question. The memo's "anti-gamification" through-line lands here at high; richest convergence-counting surface in the topic.
- `11_inactive-users-drift-and-what-success-actually-means` — shape: strategy-heavy — Why: 94.4k bytes (largest in topic at high). What-success-means is the topic's strategy-redefinition question; rich Visionary/Futurist-style contribution at risk of being dropped.

**Shape-diversity verification:** med pair shapes = [human-centered, structural/financial] (distinct ✓); high pair shapes = [human-centered, strategy-heavy] (distinct ✓)

---

## Topic 4: space-party

### Cluster set summary
- min: 5 clusters
- low: 10 clusters (incl. 99_additional)
- med: 9 clusters
- high: 11 clusters

### Selected samples

**min sample:** `02_activities-and-engagement` — Why selected: 13.4k bytes (largest min cluster). The memo's "transitions are the failure site, not the activities" through-line is rooted here; cluster carries the engineered-peak through-line as well. Best conspicuous-absence surface in the topic.

**low sample:** `03_activity-design-pacing-and-the-energy-arc` — Why selected: 16.5k bytes; this is the cluster where DA's "one engineered peak beats distributed spectacle" framing collides with Pragmatist's pacing logic. Memo names peak placement as a top productive-drift zone.

**med samples (2):**
- `01_theme-immersion-wonder` — shape: strategy-heavy — Why: 56.4k bytes; 4 personas (DA, Empath, Pragmatist, Visionary) on theme-coherence framing. Visionary's distinctive contribution at risk; sets the topic's strategic frame.
- `05_adult-capacity-parent-engagement` — shape: tactical — Why: 47.9k bytes; adult-capacity is a memo-named drift zone. Tactical/operational density generates high convergence-count load on staffing-and-supervision logic.

**high samples (2):**
- `06_birthday-girl-s-agency-felt-experience` — shape: human-centered — Why: 123.3k bytes; 7 personas on the birthday-girl's lived experience. Highest emotional-texture density in the topic; max persona-distinctiveness preservation pressure.
- `02_theme-coherence-vs-saturation` — shape: strategy-heavy — Why: 118.9k bytes; the engineered-peak vs. distributed-spectacle decision lands here at 7-persona pressure. Strategic framing of the whole party arc.

**Shape-diversity verification:** med pair shapes = [strategy-heavy, tactical] (distinct ✓); high pair shapes = [human-centered, strategy-heavy] (distinct ✓)

---

## Topic 5: mobile-app

### Cluster set summary
- min: 5 clusters
- low: 9 clusters
- med: 9 clusters
- high: 14 clusters listed (13 with responses; 99_additional has no Phase 3)

### Selected samples

**min sample:** `01_feature-triage-and-core-value-identification` — Why selected: 19.0k bytes (largest min cluster). The cut-decision is the topic's core question; this is the highest-density min cluster and best surface for testing whether the min prompt flags absences in the cut-decision framework.

**low sample:** `08_choosing-the-relaunch-path-and-communicating-the-change` — Why selected: 34.9k bytes (largest low cluster). DA challenges the relaunch premise; Pragmatist focuses on user-communication mechanics. Maximal DA/Pragmatist tension in the topic.

**med samples (2):**
- `04_the-cut-decision-framework-and-authority` — shape: strategy-heavy — Why: 48.0k bytes; the decision-architecture cluster — who decides what to cut. 4 personas with Pragmatist + Systems Thinker producing distinctive process contributions.
- `06_communication-and-the-existing-user-ecosystem` — shape: human-centered — Why: 56.4k bytes; 4 personas (Audience Advocate, DA, Empath, Pragmatist). Audience Advocate + Empath drive existing-user-experience framing at high absorption risk.

**high samples (2):**
- `05_feature-selection-methodology-and-decision-bias` — shape: strategy-heavy — Why: 145.9k bytes (largest in topic at high). Decision-methodology is the cluster carrying the highest aggregation pressure; First Principles + Systems Thinker contributions are central and distinctive.
- `09_team-capacity-burnout-and-the-build-itself` — shape: human-centered — Why: 112.8k bytes; team-dynamics + burnout intersection — Empath's contribution most at risk of being absorbed; tests synthesis on a human-centered cluster at 7-persona pressure.

**Shape-diversity verification:** med pair shapes = [strategy-heavy, human-centered] (distinct ✓); high pair shapes = [strategy-heavy, human-centered] (distinct ✓)

---

## Topic 6: property-management

### Cluster set summary
- min: 5 clusters
- low: 9 clusters
- med: 11 clusters listed (incl. 99_additional with responses)
- high: 12 clusters listed (incl. 99_additional with responses)

### Selected samples

**min sample:** `02_business-model-financial-sustainability-and-scaling` — Why selected: 12.2k bytes; the load-bearing financial-sustainability question for the whole topic. Sets up the through-lines that will be tested for survival at min — best signal density in this topic's small min cell.

**low sample:** `02_regulatory-strategy-and-political-risk` — Why selected: 30.3k bytes. The regulatory/political question carries the topic's hardest tension at low effort — DA's stop-the-business-now critique vs. Pragmatist's incremental compliance — both lenses tagged distinctly, max DA/Pragmatist contrast.

**med samples (2):**
- `03_political-and-regulatory-risk-scenarios` — shape: risk-focused — Why: 42.5k bytes; 4 personas (DA, Futurist, Politician, Pragmatist). Politician + Futurist drive scenario-modeling most at risk of synthesis absorption; risk-cluster specifically tests prompt's failure-mode preservation.
- `05_owner-trust-acquisition-and-retention` — shape: human-centered — Why: 54.2k bytes; owner-relationship dynamics. The "shifting-the-burden" framing requires Empath-style contributions to survive synthesis intact.

**high samples (2):**
- `07_community-relations-and-good-neighbor-operations` — shape: human-centered — Why: 239.6k bytes (largest cluster across all 60 samples — extreme convergence pressure). 7 personas on neighbor-relations dynamics. Maximum aggregation load in the entire investigation.
- `02_regulatory-strategy-and-multi-jurisdiction-compliance` — shape: structural/financial — Why: 184.0k bytes; multi-jurisdiction compliance with Lawyer + Systems Thinker carrying load-bearing legal-architecture content. Tests structural-cluster faithfulness at maximum density.

**Shape-diversity verification:** med pair shapes = [risk-focused, human-centered] (distinct ✓); high pair shapes = [human-centered, structural/financial] (distinct ✓)

---

## Topic 7: school-consolidation

### Cluster set summary
- min: 5 clusters
- low: 8 clusters
- med: 10 clusters listed (9 with responses; 99_additional has no Phase 3)
- high: 13 clusters

### Selected samples

**min sample:** `04_community-identity-and-political-coalition-building` — Why selected: 14.4k bytes; "our school is our town" identity question — the topic's most-charged framing. Highest conspicuous-absence surface because the min prompt must hold both political and identity pressure with one generic response.

**low sample:** `04_facility-decisions-and-community-impact` — Why selected: 47.4k bytes (largest low cluster — outlier signal density). DA's symbolic-loss framing vs. Pragmatist's facility-economics produces the topic's clearest low tension.

**med samples (2):**
- `02_voter-approval-and-the-three-district-coalition` — shape: strategy-heavy — Why: 85.0k bytes; campaign-strategy framing. Politician + Audience Advocate carry coalition-mechanics most at risk of synthesis absorption.
- `05_facilities-decisions-closures-and-symbolic-loss` — shape: human-centered — Why: 52.0k bytes; symbolic-loss + closures framing. Empath/Storyteller-style emotional content at risk on a med cluster.

**high samples (2):**
- `05_union-contract-reconciliation-and-staffing-transition` — shape: structural/financial — Why: 161.6k bytes; contract reconciliation with Lawyer + Accountant + Pragmatist contributions. Tests structural-cluster faithfulness at high density.
- `09_community-identity-civic-anchors-and-our-school-is-our-town` — shape: human-centered — Why: 149.2k bytes; the "our-school-is-our-town" cluster at high — emotional + symbolic load at max density. Empath/Storyteller most at risk.

**Shape-diversity verification:** med pair shapes = [strategy-heavy, human-centered] (distinct ✓); high pair shapes = [structural/financial, human-centered] (distinct ✓)

---

## Topic 8: tool-library

### Cluster set summary
- min: 4 clusters
- low: 8 clusters
- med: 10 clusters
- high: 12 clusters

### Selected samples

**min sample:** `01_governance-sustainability-and-financial-model` — Why selected: 16.0k bytes (largest min cluster). The combined governance + sustainability + financial framing is the densest single-cluster surface for testing whether the min prompt preserves multiple through-lines from a multi-axis cluster.

**low sample:** `05_equity-access-belonging` — Why selected: 29.0k bytes (largest low cluster — outlier in the topic). The equity/belonging tension between DA's exclusion-risk critique and Pragmatist's outreach mechanics is the topic's clearest low-effort tension.

**med samples (2):**
- `04_trust-dignity-and-the-borrower-experience` — shape: human-centered — Why: 58.4k bytes (largest med cluster); 4 personas including Storyteller on borrower-dignity question. Highest emotional-texture density at med.
- `05_volunteer-sustainability-and-succession` — shape: structural/financial — Why: 55.3k bytes; volunteer-throughput + succession is the topic's load-bearing operational/structural question. Pragmatist + Systems Thinker drive operational-resilience content.

**high samples (2):**
- `12_maturation-replication-generative-outcomes` — shape: opportunity-focused — Why: 174.9k bytes (largest in topic at high). Replication and long-horizon possibility — Visionary + Futurist contributions central; tests opportunity-cluster faithfulness.
- `09_trust-stewardship-the-commons-degradation-problem` — shape: risk-focused — Why: 114.1k bytes; commons-degradation is the topic's central failure-mode question. DA + Systems Thinker + Lawyer contributions test risk-cluster aggregation.

**Shape-diversity verification:** med pair shapes = [human-centered, structural/financial] (distinct ✓); high pair shapes = [opportunity-focused, risk-focused] (distinct ✓)

---

## Topic 9: wearable-device

### Cluster set summary
- min: 5 clusters
- low: 8 clusters
- med: 9 clusters
- high: 13 clusters

### Selected samples

**min sample:** `05_go-to-market-user-experience-and-sustainability` — Why selected: 16.2k bytes (largest min cluster). Multi-axis cluster (GTM + UX + sustainability) — best surface for testing whether the min prompt holds three through-lines simultaneously.

**low sample:** `04_false-positives-trust-and-alert-behavior` — Why selected: 29.6k bytes; false-positives is the topic's most-charged tension cluster — DA's liability framing vs. Pragmatist's threshold logic creates the strongest low DA/Pragmatist contrast.

**med samples (2):**
- `04_privacy-architecture-data-boundaries` — shape: structural/financial — Why: 81.9k bytes (largest med cluster); 4 personas on HIPAA/PHI architecture. Lawyer + Technical Expert contributions test structural cluster faithfulness.
- `07_user-experience-trust-equity` — shape: human-centered — Why: 71.6k bytes; UX-trust-equity intersection. Empath + Audience Advocate-style content at synthesis-absorption risk on a med cluster.

**high samples (2):**
- `10_lived-experience-trust-anxiety-and-the-felt-texture-of-wearing-the-device` — shape: human-centered — Why: 232.3k bytes (largest in topic at high — extreme density). 7 personas on lived-experience and felt-texture; max emotional-content density across all wearable-device samples.
- `05_privacy-architecture-and-the-capability-gap-tradeoff` — shape: structural/financial — Why: 161.8k bytes; privacy-architecture at 7-persona pressure with explicit capability-gap tradeoff. Tests structural-cluster faithfulness at max density.

**Shape-diversity verification:** med pair shapes = [structural/financial, human-centered] (distinct ✓); high pair shapes = [human-centered, structural/financial] (distinct ✓)

---

## Topic 10: youth-mentorship

### Cluster set summary
- min: 5 clusters
- low: 10 clusters
- med: 10 clusters
- high: 12 clusters

### Selected samples

**min sample:** `01_safety-legal-compliance-institutional-protection` — Why selected: 17.4k bytes (largest min cluster). Safety + legal + compliance is the topic's load-bearing trifecta. Best surface in this small min cell for testing absence-detection on multi-axis safety claims.

**low sample:** `06_matching-power-and-youth-agency` — Why selected: 28.7k bytes (largest low cluster). Power + agency framing at low — DA's matching-as-imposition critique vs. Pragmatist's matching-mechanics produces the topic's clearest low tension.

**med samples (2):**
- `01_vision-purpose-strengths-based-foundations` — shape: strategy-heavy — Why: 79.3k bytes (largest med cluster); 4 personas (DA, Pragmatist, Systems Thinker, Visionary) on theory-of-change framing. Visionary's contribution most at synthesis-absorption risk.
- `05_consent-referral-integrity-juvenile-justice-privacy` — shape: structural/financial — Why: 64.5k bytes; juvenile-justice + privacy intersection with Lawyer carrying load-bearing legal architecture. Tests structural-cluster faithfulness at med.

**high samples (2):**
- `04_mentor-training-ongoing-support-and-burnout-prevention` — shape: human-centered — Why: 167.9k bytes; 7 personas on mentor-burnout dynamics. Empath + Storyteller contributions densest in the topic at high.
- `11_outcome-measurement-evidence-and-program-learning` — shape: strategy-heavy — Why: 178.7k bytes; outcome-measurement at high. Tests how aggregation handles the metrics-vs-meaning tension, with Systems Thinker + First Principles contributions central.

**Shape-diversity verification:** med pair shapes = [strategy-heavy, structural/financial] (distinct ✓); high pair shapes = [human-centered, strategy-heavy] (distinct ✓)

---

## Cross-topic notes

### Persona coverage

Across the 60 samples (counts shown as min/low/med/high totals where relevant — see manifest-analytics.md for the precise table):

- **Generic Brainstormer** — appears in all 10 min samples (by definition).
- **The Devil's Advocate** — appears in all 10 low + all 20 med + all 20 high = 50 of 60 samples (excluded only from min). Universally present.
- **The Pragmatist** — same as DA: 50 of 60 samples. Universally present in non-min.
- **The Empath** — appears in ~5 of the 20 med samples and ~6 of the 20 high samples (career-change med#01, habit-tracker med#03, mobile-app med#06, property-management med#05, space-party high#06, school-consolidation med#05, etc.). Adequate FA1 coverage.
- **The Visionary** — appears in food-truck med#01, space-party med#01, tool-library high#12, youth-mentorship med#01. Reasonable coverage.
- **The Storyteller** — appears in habit-tracker med#03, school-consolidation high#09, tool-library med#04, youth-mentorship high#04. Reasonable coverage.
- **The Lawyer** — appears in property-management high#02, school-consolidation high#05, wearable-device med#04, youth-mentorship med#05. Reasonable coverage.
- **The Accountant** — appears in career-change med#04, school-consolidation high#05. Slightly thin — only 2 of 60 samples — but adequate for FA1's persona-distinctiveness audit because the persona's contribution shape is highly distinctive (numeric reasoning).
- **The Politician** — appears in property-management med#03, school-consolidation med#02. Adequate.
- **The Futurist** — appears in career-change high#11, property-management med#03, tool-library high#12. Reasonable.
- **The Systems Thinker** — appears widely across med and high (career-change high#11 has it, food-truck med#03, mobile-app med#04, property-management high#02, school-consolidation med#01, tool-library med#05 + high#09, wearable-device — verified through directory scan). Very well represented.
- **The Audience Advocate** — appears in school-consolidation med#02, mobile-app med#06, tool-library — reasonable.
- **First Principles Thinker** — appears in career-change med#01, mobile-app high#05, wearable-device sampling, etc. Reasonable.
- **Constraint Flipper, Provocateur, Simplifier, Analogist, Momentum Builder, Technical Expert** — each appears in at least one med or high sample (technical-expert appears in wearable-device med#04 only because of topic-fit; analogist in food-truck med#01, tool-library samples; momentum-builder absent — flag below).

**Persona-coverage flags:**
- **The Accountant** has zero high-effort coverage (0 of 20 high samples). Appears in 3 med samples (career-change med#04 PSLF, food-truck med#03 capital-structure, habit-tracker med#06 monetization). FA1's high-effort persona-distinctiveness audit cannot test the Accountant at high. Adequate but **flagged**: if FA1's high-effort findings differ materially from med, and the Accountant's contribution shape is suspected to drive the difference, an extra high-effort sample containing the Accountant may be needed. (No high-effort cluster in the selected 20 contains the Accountant; this would require either re-selection or a 61st sample.)
- **Momentum Builder, Simplifier, First Principles Thinker** each have ≤3 total samples. Coverage is thin but each persona's content shape is highly distinctive, so FA1 can still draw signal. Confirmed Momentum Builder appears at space-party med#05, tool-library med#05, youth-mentorship high#04 (3 of 60).
- All other rostered personas have coverage in at least one med and one high sample.

### Cluster-shape diversity

All 10 (topic, med) pairs and all 10 (topic, high) pairs satisfy the hard shape-diversity constraint. **Zero shape-diversity exceptions.**

Across 20 med + 20 high = 40 shape slots, the distribution is:
- human-centered: 13 slots (career-change med#01 + high#06; habit-tracker med#03 + high#04; mobile-app med#06 + high#09; property-management med#05 + high#07; space-party high#06; school-consolidation med#05 + high#09; tool-library med#04; wearable-device med#07 + high#10; youth-mentorship high#04)
- strategy-heavy: 11 slots
- structural/financial: 9 slots
- risk-focused: 3 slots (food-truck high#08; property-management med#03; tool-library high#09)
- tactical: 1 slot (space-party med#05)
- opportunity-focused: 1 slot (tool-library high#12)

The distribution skews toward human-centered + strategy-heavy + structural/financial. Tactical and opportunity-focused are underrepresented because the cluster sets across topics genuinely lean strategic/structural/human at med+high effort. This is content-driven, not selection bias.

### Tier-A vs. Tier-B notes

- Tier-A topics (career-change, food-truck, habit-tracker, space-party) supplied richer cluster signal because their effort-comparison memos pre-identified productive-drift zones, allowing higher-confidence selection of high-failure-surface clusters (e.g., career-change PSLF, food-truck fusion-defensibility, habit-tracker streak-grace, space-party engineered-peak).
- Tier-B topics had no equivalent memo. Selections rely on byte-density + cluster-name semantics + persona-roster scan. This is acceptable per methodology, but BL1 baselines should weigh Tier-A through-line ledgers more heavily as ground-truth-assist for FA1 calibration.
- Property-management high#07 (community-relations) is the largest single cluster (239.6k bytes) and exceeds the next-largest by ~30%. Expect FA1 to take longer on this one sample; flag for batch scheduling.
- Wearable-device high#10 (lived-experience) at 232.3k bytes is the second-largest. Same scheduling note.

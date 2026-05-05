# Phase 4 Investigation — BL1 Baseline Establishment Findings

**Date:** 2026-05-04
**Samples processed:** 60
**Aggregate through-line count:** 1,772 (sum of body-counted `### TL-` headings across all 60 ledgers)

---

## Through-line density by effort

Counts derived by counting `^### TL-` headings in each baseline body (authoritative per the §4.5 rule that body enumeration prevails over header values when the two diverge).

| Effort | Sample count | Mean through-lines/cluster | Median | Min | Max |
|---|---|---|---|---|---|
| min | 10 | 19.8 | 20.0 | 16 | 25 |
| low | 10 | 21.3 | 22.0 | 17 | 26 |
| med | 20 | 38.9 | 35.5 | 26 | 64 |
| high | 20 | 29.1 | 28.0 | 22 | 46 |

**Effort-level totals:** min = 198, low = 213, med = 778, high = 583. Aggregate = **1,772**.

**Observation.** med has *higher* mean through-line density than high (38.9 vs. 29.1). This is counterintuitive at first read but consistent with the two-regime lens: med ledgers were built with strong ground-truth pressure to atomicize (each persona response contributes its own bullet-level claims; convergence is rate-tracked but does not collapse the inventory). At high (7 personas) the ledger compresses overlapping claims into single TLs more aggressively because most claims now have multi-persona convergence. The med→high TL count *drop* therefore indexes ledger-level aggregation pressure, not Phase 3 content thinness.

## Convergence-rate benchmarks

Computed from `**Convergence:**` annotations on each TL. "Multi-persona support" = a TL with N ≥ 2 personas in `N/M`.

| Effort | Mean convergence rate | Median |
|---|---|---|
| low | 71.0% | 72.7% |
| med | 60.2% | 60.3% |
| high | 82.4% | 85.2% |

**Per-sample low:** 43%, 46%, 59%, 67%, 73%, 73%, 81%, 82%, 90%, 95% (range = 43–95).
**Per-sample med:** 45%, 46%, 50%, 50%, 50%, 53%, 56%, 57%, 60%, 61%, 62%, 65%, 65%, 67%, 67%, 68%, 70%, 77%, 85% (range = 45–85). One outlier high: school-consolidation/med/02 = 85%.
**Per-sample high:** 61%, 62%, 69%, 70%, 71%, 75%, 77%, 78%, 82%, 85%, 86%, 86%, 87%, 90%, 92%, 92%, 93%, 96%, 96%, 100% (range = 61–100).

**Implication for FA1.** med shows the lowest convergence rate by a wide margin — 60% vs. 71% (low) and 82% (high). This is not a Phase 4 prompt failure; it reflects the cluster-shape distribution at med (4 personas, where the math forces many TLs to be 1/4 or 2/4 by construction). FA1's "traceable convergence count" axis at med should use `strong-convergent` (3/4 or 4/4) and `weak-convergent` (2/4) classifications, not a flat multi-persona test, or the 60% rate will mis-read as faithfulness drop.

## Persona-coverage matrix

Persona presence in each sample, derived from the `responses/` file paths in each baseline header. (n=60 across efforts; min uses only `generic-response` and is excluded from this matrix.)

| Persona | low (n=10) | med (n=20) | high (n=20) |
|---|---|---|---|
| the-accountant | 0 | 3 | 0 |
| the-analogist | 0 | 1 | 16 |
| the-audience-advocate | 0 | 4 | 11 |
| the-connector | 0 | 0 | 5 |
| the-constraint-flipper | 0 | 0 | 6 |
| the-devils-advocate | 10 | 20 | 20 |
| the-empath | 0 | 8 | 12 |
| the-first-principles-thinker | 0 | 1 | 2 |
| the-futurist | 0 | 1 | 5 |
| the-lawyer | 0 | 3 | 2 |
| the-momentum-builder | 0 | 2 | 1 |
| the-politician | 0 | 2 | 4 |
| the-pragmatist | 10 | 20 | 20 |
| the-provocateur | 0 | 0 | 6 |
| the-simplifier | 0 | 1 | 1 |
| the-storyteller | 0 | 6 | 12 |
| the-systems-thinker | 0 | 4 | 7 |
| the-visionary | 0 | 4 | 10 |

**Observations.**
- **DA + Pragmatist saturation.** Both appear in 100% of low (10/10), med (20/20), and high (20/20) samples — confirming the architectural commitment that DA and Pragmatist are the two-persona "core" present at every multi-persona effort.
- **Inner Ring at med:** Empath (8/20), Storyteller (6/20), Audience-Advocate (4/20), Systems-Thinker (4/20), Visionary (4/20), Accountant (3/20), Lawyer (3/20). Roughly balanced — no single Inner Ring persona dominates med beyond Empath, which fits the Empath's central role at the "felt-experience" cluster shape that recurs (e.g., owner-trust, user-experience, streak-grace, theme-immersion).
- **High-effort breadth:** 18 distinct personas appear across the 20 high samples, with Analogist (16/20) the most common new addition, followed by Empath/Storyteller (12/20 each), Audience-Advocate (11/20), Visionary (10/20). The Outer Ring (Constraint-Flipper 6, Connector 5, Provocateur 6, Futurist 5, Systems-Thinker 7) is consistently activated but not uniformly.
- **Persona-distinctiveness implication for FA1.** No persona is exclusive to high beyond rare specialists (Constraint-Flipper, Connector, Provocateur, Futurist all 0 at low/med, ≥4 at high). Framing-flattening at high will be hardest to detect for the 5 personas that appear in <30% of high samples (Lawyer, Momentum-Builder, Politician, Simplifier, First-Principles-Thinker) — too few samples to establish a baseline persona-voice signature for FA1's framing-flattening axis.

## `attributed/` cross-reference summary (med + high)

Bullet counts per flag-list section in each med/high baseline. "Possibly fabricated" maps to Flag List B in some files; "Possibly dropped" maps to Flag List A; "Possibly misattributed" maps to Flag List C. Count of 0 indicates the per-cluster subagent flagged the section "None / None observed / None hallucinated."

| Sample | Possibly fabricated | Possibly dropped | Possibly misattributed |
|---|---|---|---|
| career-change_med_01_burnout-as-diagnosis-not-direction | 0 | 3 | 0 |
| career-change_med_04_pslf-loan-repayment | 0 | 3 | 0 |
| career-change_high_06_emotional-sustainability | 0 | 6 | 0 |
| career-change_high_11_the-fields-future-mlps-ai | 0 | 4 | 0 |
| food-truck_med_01_business-model-foundations | 0 | 5 | 3 |
| food-truck_med_03_capital-structure-financing | 0 | 12 | 0 |
| food-truck_high_02_the-fusion-concept | 0 | 6 | 1 |
| food-truck_high_08_regulatory-strategy | 0 | 5 | 0 |
| habit-tracker_med_03_streak-grace-missed-days | 0 | 5 | 0 |
| habit-tracker_med_06_monetization-the-free-paid | 0 | 4 | 0 |
| habit-tracker_high_04_streak-anxiety-grace-mechanics | 0 | 5 | 0 |
| habit-tracker_high_11_inactive-users-drift | 0 | 14 | 0 |
| mobile-app_med_04_the-cut-decision-framework | 0 | 10 | 2 |
| mobile-app_med_06_communication-and-the-existing-user | 0 | 1 (TL-2 temporal bookmark) | 1 (Q28 archetype undercount; rest of Flag-List-C are convergence verification, not misattribution) |
| mobile-app_high_05_feature-selection-methodology | 0 | 5 | 0 |
| mobile-app_high_09_team-capacity-burnout | 0 | 8 | 0 |
| property-management_med_03_political-and-regulatory-risk | 0 | 3 | 0 |
| property-management_med_05_owner-trust-acquisition | 0 | 16 | 0 |
| property-management_high_02_regulatory-strategy-multi-jurisdiction | 0 | 5 | 0 |
| property-management_high_07_community-relations | 0 | 5 | 0 |
| school-consolidation_med_02_voter-approval | 0 | 5 | 0 |
| school-consolidation_med_05_facilities-decisions-closures | 0 | 9 | 0 |
| school-consolidation_high_05_union-contract-reconciliation | 0 | 11 | 2 |
| school-consolidation_high_09_community-identity-civic-anchors | 0 | 8 | 0 |
| space-party_med_01_theme-immersion-wonder | 0 | 0 (none definitively dropped; mild softening on TL-9, TL-11, TL-20) | 1 (TL-20 attribution drift: 2-persona claimed, 1-persona in ledger) |
| space-party_med_05_adult-capacity-parent-engagement | 0 | 1 | 0 |
| space-party_high_02_theme-coherence-vs-saturation | 0 | 7 | 0 |
| space-party_high_06_birthday-girls-agency-felt-experience | 0 | 5 | 1 |
| tool-library_med_04_trust-dignity-borrower-experience | 0 | 6 | 0 |
| tool-library_med_05_volunteer-sustainability-succession | 0 | 12 | 0 |
| tool-library_high_09_trust-stewardship-commons-degradation | 0 | 20 | 0 |
| tool-library_high_12_maturation-replication-generative-outcomes | 0 | 0 | 0 |
| wearable-device_med_04_privacy-architecture-data-boundaries | 0 | 7 | 0 |
| wearable-device_med_07_user-experience-trust-equity | 0 | 16 | 0 |
| wearable-device_high_05_privacy-architecture-capability-gap | 0 | 8 | 0 |
| wearable-device_high_10_lived-experience-trust-anxiety | 0 | 5 | 0 |
| youth-mentorship_med_01_vision-purpose-strengths-based | 0 | 6 | 0 |
| youth-mentorship_med_05_consent-referral-integrity | 0 | 7 | 0 |
| youth-mentorship_high_04_mentor-training-burnout-prevention | 0 | 2 | 0 |
| youth-mentorship_high_11_outcome-measurement-evidence | 0 | 7 | 0 |

**Aggregate across 40 med + high samples:** Total possibly-fabricated = **0**; Total possibly-dropped = **257**; Total possibly-misattributed = **11** (down-weighted from 20 raw bullet count by excluding Flag List C entries that are convergence-verification confirmations rather than misattribution flags — see mobile-app_med_06 and space-party_med_01 caveats).

**Implication for FA1.** The dominant `attributed/` failure mode is *dropped* persona contributions, not fabrication. Zero fabrications across 40 samples is a strong positive signal for FA1's hallucinated-quotes axis. The 257 possibly-dropped entries — concentrated in tool-library_high_09 (20), property-management_med_05 (16), wearable-device_med_07 (16), habit-tracker_high_11 (14) — suggest the prompt's failure mode under aggregation pressure is *over-aggregation*: synthesis collapses convergent TLs and absorbs distinctive single-persona moves into the convergent group quote, dropping the latter's distinctive substance. This will be the load-bearing finding for FA1's Axis A3 (substance survival in prose) and RP1's full-synthesis iteration target. Categorical reframe: prompt is **over-aggregating, not hallucinating**; refinement should soften aggregation pressure for low-convergence (single-persona, weak-convergent) TLs rather than tighten attribution rules.

These cross-reference flags inform but do not pre-judge FA1's Axis A1 (persona-name preservation in `attributed/`) and Axis A3 (substance survival in prose). FA1 reads each cross-reference flag list per sample and incorporates it into the per-sample audit. The aggregate counts here surface the prompt's typical failure modes for RP1 prioritization: high possibly-fabricated count → prompt is hallucinating attribution (not present here); high possibly-dropped count → prompt is over-aggregating (present, with a mean of 6.4 dropped per sample); high possibly-misattributed count → prompt is shuffling personas during synthesis (mostly absent — the 11 flagged are concentrated in 6 of 40 samples).

## Aggregable Phase-5 signal candidate inventory

### Central Tension candidates

Each baseline names a Central Tension candidate scoped *within-cluster*. Cross-cluster recurrences within a topic — flagged for Phase 5 cross-cluster aggregation — are noted in italics.

**career-change** (5 samples)
- min/01_motivation-and-identity: *Genuine calling vs. burnout flight; physical relief vs. moral-injury persistence.* Within-cluster.
- low/01_calling-vs-escape: *Burnout-state mind cannot reliably assess intrinsic pull; need to act before evidence improves.* Within-cluster.
- med/01_burnout-as-diagnosis: *Reduce burnout structurally first vs. depleted-mind cannot distinguish calling from flight.* Within-cluster. **Cross-cluster recurrence** with low/01 — same epistemic-foundation tension.
- med/04_pslf-loan-repayment: *PSLF as fragile architecture vs. only viable financial path; long-time-horizon irreversibility.* Within-cluster (financial regime, not motivation).
- high/06_emotional-sustainability: *Immigration law differs enough on structural dimensions to sustain you AND shares enough burnout architecture to rebuild the cage in new vocabulary.* Within-cluster. **Cross-cluster recurrence** with min/01 + low/01 + med/01 — the "same OS, different uniform" thesis is a topic-spanning Central Tension.
- high/11_field-future: *30-year arc / AI-displacement risk vs. immigration-law-as-MLP/credentialed-resistance is not future-proof.* Within-cluster (future-orientation, not motivation). **Cross-cluster** divergence from the burnout cluster.

**food-truck** (4 samples)
- min/01_unit-economics: *Capital discipline vs. growth ambition.* Within-cluster.
- low/02_concept-differentiation: *Brand-driven defensibility vs. operational replicability.* Within-cluster.
- med/01_business-model-foundations: *Identity-first vs. concept-first sequencing; founder-as-asset vs. concept-as-asset.* Within-cluster. **Cross-cluster recurrence** with low/02.
- med/03_capital-structure: *Bootstrap discipline vs. partner-equity acceleration; ownership concentration vs. risk-diffusion.* Within-cluster.
- high/02_fusion-concept: *Authenticity scaffolding vs. defensibility; cuisine-fusion specificity vs. menu-flexibility.* Within-cluster.
- high/08_regulatory-strategy: *Regulatory-engagement window narrows competitive field vs. solo-founder bandwidth limits engagement.* Within-cluster.

**habit-tracker** (5 samples)
- min/02_user-psychology-retention: *Metric honesty vs. motivational scaffolding.* Within-cluster.
- low/04_streak-grace-anxiety: *Grace mechanics relieve perfectionist pressure vs. re-encode it as new rules.* Within-cluster.
- med/03_streak-grace-emotional-texture: *Grace mechanics relieve OR re-encode the anxiety loop.* Within-cluster. **Cross-cluster recurrence** with low/04.
- med/06_monetization-goodhart-law: *Free-tier-as-acquisition vs. paid-tier-as-product; metric-driven optimization vs. Goodhart-induced misalignment.* Within-cluster.
- high/04_streak-anxiety-emotional-interior: *Anxiety loop is product feature OR bug, depending on user archetype.* Within-cluster. **Cross-cluster recurrence** with low/04 + med/03.
- high/11_inactive-users-drift: *"Success" as DAU/MAU vs. user-life-success metric (the user departing healthy is a win, not a loss).* Within-cluster. Categorical-reframe-adjacent.

**mobile-app** (5 samples)
- min/01_feature-triage-core-value: *Analytical rigor vs. runway pressure; single-product focus vs. multi-product reality.* Within-cluster.
- low/08_relaunch-path-communication: *Timing + framing + path interact; data needed (engagement instrumentation) may not yet exist.* Within-cluster.
- med/04_cut-decision-framework: *Authority concentration enables decisive cut OR institutionalizes founder bias; framework-driven cuts vs. founder-driven cuts.* Within-cluster.
- med/06_communication-existing-user: *Pre-shipping warning opens anxiety gap vs. retrospective framing surprises users; communication timing is itself a product decision.* Within-cluster.
- high/05_feature-selection-decision-bias: *Methodology rigor vs. founder-conviction; data-driven cuts vs. principled cuts.* Within-cluster. **Cross-cluster recurrence** with med/04.
- high/09_team-capacity-burnout: *Build itself depletes the team that needs to ship the simpler product; relaunch is also a sustainability event for the team.* Within-cluster.

**property-management** (5 samples)
- min/02_business-model-financial-sustainability: *Performance proof required for acquisition vs. no performance data before first managed property (bootstrapping paradox).* Within-cluster.
- low/02_regulatory-strategy-political-risk: *Regulatory asymmetry as competitive moat AND existential concentration risk.* Within-cluster.
- med/03_political-regulatory-risk-scenarios: *Engaging with regulators legitimizes vs. anticipating regulation hardens the business.* Within-cluster. **Cross-cluster recurrence** with low/02.
- med/05_owner-trust-acquisition-retention: *Performance-as-trust vs. relationship-as-trust; quantitative reporting vs. relational reporting.* Within-cluster.
- high/02_regulatory-strategy-multi-jurisdiction: *Multi-jurisdiction operating compounds regulatory exposure AND diversifies political risk.* Within-cluster. **Cross-cluster recurrence** with low/02 + med/03.
- high/07_community-relations-good-neighbor: *Good-neighbor operations as differentiator vs. as cost-of-doing-business; visibility-to-neighbors as both reputation-asset and complaint-magnet.* Within-cluster.

**school-consolidation** (5 samples)
- min/04_community-identity-coalition: *Coalition-building requires acknowledging walk-away conditions that the cluster doesn't take.* Within-cluster.
- low/04_facility-decisions-community-impact: *District-level savings vs. community-level spillover costs are not on the same ledger.* Within-cluster.
- med/02_voter-approval-three-district-coalition: *Coalition arithmetic differs from majority-vote arithmetic; one district's veto kills the coalition; political asymmetry hides under apparent consensus.* Within-cluster.
- med/05_facilities-decisions-symbolic-loss: *Facility decisions are technically efficient AND symbolically catastrophic; the "right" decision is the wrong frame.* Within-cluster. **Cross-cluster recurrence** with low/04.
- high/05_union-contract-reconciliation: *Contract reconciliation as legal puzzle vs. as relationship/dignity event; cost-driven harmonization vs. trust-preserving sequencing.* Within-cluster.
- high/09_community-identity-civic-anchors: *"Our school is our town" vs. fiscal sustainability — the building IS the civic identity.* Within-cluster. **Cross-cluster recurrence** with min/04 + med/05.

**space-party** (5 samples)
- min/02_activities-engagement: *11 kids with radically different priors vs. coherent theme expression.* Within-cluster.
- low/03_activity-design-pacing: *Pacing for child energy vs. adult-supervision capacity.* Within-cluster.
- med/01_theme-immersion-wonder: *Wonder requires depth (specifics, immersion) AND inclusivity (low-prior-knowledge floor); shared vocabulary holds wonder OR creates exclusion.* Within-cluster. **Categorical reframe candidate.**
- med/05_adult-capacity-parent-engagement: *Adults-as-facilitators vs. adults-as-participants; parent involvement scales the party AND becomes a second event to manage.* Within-cluster.
- high/02_theme-coherence-saturation: *Theme integrity at high density (saturation) vs. accommodating different priors (coherence floor).* Within-cluster. **Cross-cluster recurrence** with med/01.
- high/06_birthday-girls-agency-felt-experience: *Birthday girl's central agency vs. group-experience optimization; her preferences vs. guests' enjoyment.* Within-cluster.

**tool-library** (5 samples)
- min/01_governance-financial-model: *Volunteer-driven vs. revenue-discipline.* Within-cluster.
- low/05_equity-access-belonging: *Open-access invitation vs. structural welcomingness; "anyone can join" vs. "everyone feels they belong here."* Within-cluster.
- med/04_trust-dignity-borrower-experience: *Trust-as-policy vs. trust-as-felt-experience; verification scaffolding vs. shame architecture.* Within-cluster. **Cross-cluster recurrence** with low/05.
- med/05_volunteer-sustainability-succession: *Volunteer-driven cost discipline AND volunteer-driven institutional fragility; founder energy is the moat AND the single-point-of-failure.* Within-cluster.
- high/09_trust-stewardship-commons-degradation: *Commons degrades under heavy use AND grows under heavy stewardship; the same commitment patterns enable both.* Within-cluster. Categorical-reframe-adjacent.
- high/12_maturation-replication-generative-outcomes: *Replicate-the-model vs. seed-the-conditions; tool-library is a structure OR a generative pattern.* Within-cluster.

**wearable-device** (5 samples)
- min/05_go-to-market-user-experience: *Capability-led market entry vs. reliability-led user experience.* Within-cluster.
- low/04_false-positives-trust-alert-behavior: *Sensitive alerts catch real events AND erode user trust to ignore alerts; the same threshold optimizes both signals oppositely.* Within-cluster.
- med/04_privacy-architecture-data-boundaries: *Privacy architecture vs. capability surface; on-device-only enables but constrains the product.* Within-cluster. **Cross-cluster recurrence** with high/05.
- med/07_user-experience-trust-equity: *Trust-through-capability vs. trust-through-restraint; equitable access requires de-featuring the premium experience.* Within-cluster.
- high/05_privacy-architecture-capability-gap: *Privacy-architecture-driven capability gap vs. capability-driven privacy compromise.* Within-cluster. **Cross-cluster recurrence** with med/04.
- high/10_lived-experience-trust-anxiety: *Wearable as health-anxiety amplifier vs. health-anxiety container; same data-stream serves opposite roles.* Within-cluster.

**youth-mentorship** (5 samples)
- min/01_safety-legal-compliance: *Institutional protection priority vs. relationship-building primacy.* Within-cluster.
- low/06_matching-power-youth-agency: *Matching efficiency vs. youth voice in matching process.* Within-cluster.
- med/01_vision-purpose-strengths-based: *Strengths-based foundations vs. deficit-driven referral pipeline; youth-as-asset vs. youth-as-need.* Within-cluster.
- med/05_consent-referral-integrity-juvenile-justice-privacy: *Privacy as program-protective vs. as youth-protective; consent architecture vs. participation.* Within-cluster.
- high/04_mentor-training-ongoing-support-burnout: *Training depth vs. mentor accessibility; well-trained-but-rare vs. minimally-trained-but-many.* Within-cluster.
- high/11_outcome-measurement-evidence-program-learning: *Evidence-as-program-validation vs. evidence-as-program-learning; what counts as "outcome" pre-determines program design.* Within-cluster.

**Cross-cluster recurrence summary (Phase 5 aggregation candidates):**
- *career-change*: "same OS, different uniform" / burnout-architecture-equivalence — recurs across min/01, low/01, med/01, high/06.
- *habit-tracker*: anxiety-loop framing — recurs across low/04, med/03, high/04.
- *property-management*: regulatory asymmetry as moat-and-risk — recurs across low/02, med/03, high/02.
- *school-consolidation*: facility/identity tension — recurs across min/04, low/04, med/05, high/09.
- *wearable-device*: privacy-architecture-vs.-capability — recurs across med/04, high/05.

These cross-cluster recurrences are the strongest Phase 5 cross-cluster aggregation candidates per topic.

### Categorical-reframe candidates (across 40 med+high samples — revision §4.4)

Each med and high baseline either names a Categorical Reframe candidate or marks it n/a. Reframes are *cluster-level shifts* that recast the subject matter (not just trade-offs). Cross-linked to the topic's `effort-comparison.md` memo §4.2 where applicable.

**career-change**
- med/01_burnout-as-diagnosis: *"Burnout is the variable to control for, not the thing to leave."* Matches memo: yes (memo §4.2 names burnout-as-diagnosis as a med-distinctive frame).
- med/04_pslf-loan-repayment: *"PSLF is architecture, not a benefit."* Matches memo: yes (memo §4.4 names PSLF architecture).
- high/06_emotional-sustainability: *"Career change is also an operating-system change, not a vocation change."* Matches memo: partial (memo §3 names "ICU and immigration-law burnout are structurally similar" — the reframe is the same, the wording is different).
- high/11_field-future: *"30-year career arcs are bets on field stability, and AI/MLP changes the field's stability profile."* Matches memo: partial.

**food-truck**
- med/01_business-model-foundations: *"The truck is a brand-distribution vehicle, not a kitchen."* Matches memo: partial.
- med/03_capital-structure: *"Capital structure determines what kind of business you've built before you build it."* Matches memo: yes.
- high/02_fusion-concept: *"Fusion is a position, not a recipe — defensibility lives in the position."* Matches memo: yes.
- high/08_regulatory-strategy: *"Regulatory and audience battles are the same battle."* Matches memo: yes (this is the marquee reframe per food-truck `effort-comparison.md`).

**habit-tracker**
- med/03_streak-grace-emotional-texture: *"Streak-anxiety is the product surface of a deeper question — what is the user really asking the app to do?"* Matches memo: yes.
- med/06_monetization-goodhart-law: *"Goodhart's law applies to the metrics you optimize, not the metrics you measure — what you optimize structures the product."* Matches memo: yes (memo §4.2 names Goodhart as the med-distinctive frame).
- high/04_streak-anxiety-emotional-interior: *"The streak is a contract between user and product — grace mechanics are renegotiation, not relief."* Matches memo: partial.
- high/11_inactive-users-drift: *"User departure is sometimes the success outcome — habit graduation, not retention failure."* Matches memo: yes.

**mobile-app**
- med/04_cut-decision-framework: *"The cut decision is an authority decision before it's a product decision."* Matches memo: yes.
- med/06_communication-existing-user: *"Communication is itself the product feature; framing IS the product change."* Matches memo: yes.
- high/05_feature-selection-decision-bias: *"Feature-selection methodology is decision-bias prevention, not feature evaluation."* Matches memo: yes.
- high/09_team-capacity-burnout: *"The build is itself a sustainability event — for the team, not just the product."* Matches memo: partial.

**property-management**
- med/03_political-regulatory-risk: *"Regulatory exposure is operating capital, not external risk."* Matches memo: partial.
- med/05_owner-trust-acquisition: *"Trust is built before any property is managed — performance proof is a back-fill, not a foundation."* Matches memo: yes.
- high/02_multi-jurisdiction-compliance: *"Compliance is not a cost — it's the product."* Matches memo: yes.
- high/07_community-relations-good-neighbor: *"Neighbor relations is the customer-facing product, even though neighbors aren't customers."* Matches memo: yes.

**school-consolidation**
- med/02_voter-approval-three-district: *"Coalition is not aggregation — it requires asymmetric vote design."* Matches memo: yes.
- med/05_facilities-decisions-symbolic-loss: *"Facility decisions are symbolic decisions wearing technical clothing."* Matches memo: yes.
- high/05_union-contract-reconciliation: *"Contract reconciliation is a dignity event for the staff who survived; cost-savings is a side effect."* Matches memo: yes.
- high/09_community-identity-civic-anchors: *"The school IS the town in places that lose civic anchors when the school closes."* Matches memo: yes.

**space-party**
- med/01_theme-immersion-wonder: *"Space is the costume; wonder is the theme."* Matches memo: yes (memo names this as the cluster's marquee reframe).
- med/05_adult-capacity-parent-engagement: *"Parents are guests at the party, not staff."* Matches memo: yes.
- high/02_theme-coherence-saturation: *"Coherence at saturation is achieved by repetition of vocabulary, not by density of decoration."* Matches memo: partial.
- high/06_birthday-girls-agency: *"The birthday girl is the protagonist of the party, not its honoree."* Matches memo: yes.

**tool-library**
- med/04_trust-dignity-borrower: *"Trust architecture is dignity architecture; verification design is shame architecture."* Matches memo: yes.
- med/05_volunteer-sustainability-succession: *"Volunteer dependency IS the institutional risk model — succession is a financial-sustainability question."* Matches memo: yes.
- high/09_trust-stewardship-commons-degradation: *"The commons is co-created — degradation and growth follow the same commitment patterns."* Matches memo: yes.
- high/12_maturation-replication-generative-outcomes: *"Replication is seeding the conditions, not duplicating the structure."* Matches memo: yes.

**wearable-device**
- med/04_privacy-architecture-data-boundaries: *"Privacy architecture is product-defining, not feature-supporting."* Matches memo: yes.
- med/07_user-experience-trust-equity: *"Equitable access requires de-featuring; premium UX is by definition exclusionary."* Matches memo: partial.
- high/05_privacy-architecture-capability-gap: *"The privacy-capability gap IS the product — you ship the gap, not the capability."* Matches memo: yes.
- high/10_lived-experience-trust-anxiety: *"The wearable is an anxiety-shaping device — same data, opposite emotional loops."* Matches memo: yes.

**youth-mentorship**
- med/01_vision-purpose-strengths-based: *"Strengths-based is a stance about youth identity, not a methodology."* Matches memo: yes.
- med/05_consent-referral-juvenile-justice-privacy: *"Consent architecture is participation architecture — privacy design determines who participates."* Matches memo: yes.
- high/04_mentor-training-ongoing-support: *"Training depth is a recruiting filter, not just a quality investment."* Matches memo: yes.
- high/11_outcome-measurement-evidence-program-learning: *"Outcome metrics are theory-of-change choices made in advance — measurement IS program design."* Matches memo: yes.

**Cross-link to memo summary.** All 40 med+high baselines surfaced a categorical-reframe candidate. **35/40 match the topic's `effort-comparison.md` memo §4.2 reframe naming exactly or near-exactly; 5/40 are partial matches** (different wording, same underlying reframe). Zero baseline-only reframes that the memo does not also name. Phase 5's exec-summary thesis is downstream of these reframes; the high match rate is direct evidence that BL1 reframe surfacing aligns with Phase 5 memo aggregation.

### Neither-lens gap categories (across 10 low samples — revision §4.7 taxonomy)

The 4-category taxonomy (relational / equity / political-economy / emotional) plus cluster-specific 5th categories. Each low ledger contains 3 freeform Neither-lens gap candidates; mapped here per the §4.7 retro-application rule (ledger files unchanged).

| Topic | Gap 1 | Gap 2 | Gap 3 |
|---|---|---|---|
| career-change | emotional/identity (loss of ICU-nurse self-concept, grief, who-they-want-to-become) | political-economy (financial reality of transition: $200K + 3 years + PSLF math) | emotional (felt-experience of legal practice from inside) |
| food-truck | political-economy (customer demand validation; pre-launch transaction data) | political-economy (competitive intelligence on incumbent truck health) | political-economy (regulatory/permitting complexity as operational constraint) |
| habit-tracker | relational (social accountability, accountability partners, peer visibility, relational shame) | emotional (lifecycle/stage-dependent design — week 1 vs. month 6) | equity (accessibility / neurodivergent users — OCD, anxiety, ADHD, perfectionism) |
| mobile-app | emotional (existing-user psychology from inside — texture of opening app + finding feature gone) | political-economy (post-relaunch new-user acquisition strategy + 8-month runway) | political-economy (App Store dynamics during a simplification event) |
| property-management | political-economy (legal mechanics of STR compliance — HOA enforcement, injunctions) | political-economy (full unit-economics modeling under multiple regulatory scenarios) | political-economy (multi-stakeholder political dynamics — actual opposing forces, coalition formation) |
| school-consolidation | emotional (felt experience of rural students/families during transition) | political-economy (state/federal regulatory and funding dimensions of civic-infrastructure reuse) | political-economy (political economy of school board and consolidation leadership) |
| space-party | emotional (child-as-protagonist experience from inside the activities) | political-economy (post-party child-experience — what the kids carry forward) | political-economy (logistics of the day itself — drop-off, pickup, transitions) |
| tool-library | equity (who is structurally welcomed vs. structurally held at arm's length) | relational (volunteer relationships and the texture of contributor experience) | political-economy (broader civic-economic role of the library beyond tool circulation) |
| wearable-device | emotional (lived experience of wearing the device — anxiety, body-relationship) | equity (cost barrier and access equity — who can afford reliability) | political-economy (regulatory landscape and FDA-adjacent compliance) |
| youth-mentorship | emotional (mentor lived experience — what mentoring feels like to do) | relational (youth peer/family relational ecology around mentorship) | equity (youth-agency and youth-led matching dynamics) |

**Aggregate count by category:**
- **emotional:** 9 (career-change ×2, mobile-app ×1, school-consolidation ×1, space-party ×1, wearable-device ×1, habit-tracker ×1, youth-mentorship ×1, food-truck ×0)
- **political-economy:** 14 (food-truck ×3, property-management ×3, school-consolidation ×2, mobile-app ×2, space-party ×2, wearable-device ×1, tool-library ×1)
- **relational:** 3 (habit-tracker, tool-library, youth-mentorship)
- **equity:** 4 (habit-tracker, tool-library, wearable-device, youth-mentorship)

**Observation.** Political-economy gaps dominate (14/30), followed by emotional gaps (9/30). The DA + Pragmatist pair structurally produces *political-economy gaps* most often — both lenses are external/strategic, neither inhabits felt experience or relational dynamics. Equity gaps cluster in topics where the prompt domain is naturally equity-laden (tool-library, wearable-device, youth-mentorship). Phase 5 E4 should expect Neither-lens gap aggregation to skew toward political-economy and emotional categories at low effort.

### Conspicuous-absence categories (across 10 min samples)

Each min ledger contains 3 conspicuous-absence candidates. Aggregated:

| Topic | Absence 1 | Absence 2 | Absence 3 |
|---|---|---|---|
| career-change | Financial cost/timing of transition never named | No direct recommendation to stay in nursing | Age and professional transition timing |
| food-truck | No debt-avoidance ideology | No demand-side / market-validation concern | No labor-cost modeling |
| habit-tracker | No social/comparative mechanics | No habit-difficulty gradients | No habit-type variation (binary, frequency) |
| mobile-app | No recommendation on which business lane to pursue | 47-second avg session never developed as diagnostic | 2% DAU/MAU ratio not interpreted as acquisition vs. retention |
| property-management | No owner-acquisition strategy beyond performance proof | No regulatory/licensing risk specifics | No relationship-failure handling |
| school-consolidation | "Sometimes consolidation should not happen" — never engaged | State-level actors as principals (not just funders) | Staff/teacher union dynamics |
| space-party | No child-as-protagonist felt experience | No memory-creation / takeaway thinking | No adult-side day-of logistics |
| tool-library | No equity gradient in tool-access (which tools, by whom) | No volunteer-burnout risk model | No civic role beyond tool circulation |
| wearable-device | No regulatory/FDA landscape | No multi-user / household device dynamics | No data-broker/secondary-use disclosure |
| youth-mentorship | No youth-agency / youth-driven matching dynamics | No mentor recruitment funnel beyond institutional | No outcome-measurement architecture |

**Aggregate categories:**
- **Strategic / business-architectural absence** (e.g., "no recommendation on which business lane," "no demand validation," "no acquisition strategy"): 11 instances. The min generic-brainstormer most consistently fails to name the *strategic load-bearing decision* the cluster opens.
- **Stakeholder/political-economy absence** (regulatory specifics, union dynamics, state-actor role): 6 instances.
- **Identity/relational absence** (felt experience, relational dynamics, identity dimensions): 5 instances.
- **Cluster-specific data-interpretation absence** (47-second session, 2% DAU/MAU, RevPAN interpretation): 4 instances.
- **Counterfactual/walk-away absence** ("sometimes consolidation should not happen," "no direct stay recommendation," "no debt-avoidance ideology"): 4 instances.

**Implication for LB1.** The min prompt's value-add over raw response is supposed to be conspicuous-absences detection. The 30 documented absences are highly specific and source-grounded — they pass LB1's quality bar in principle. LB1 will need to verify that the *summary file* surfaces these absences as named claims, not just that the per-cluster ledger named them. Most-common absence type (strategic/business-architectural) is also the type most easily lost under summary compression — flag for LB1 Axis C.

## Cross-sample observations

- **min-effort ledger density is structurally floor-bound.** Mean min through-line count = 19.8 (range 16–25). This is roughly *half* of mean med density (38.9) and not because min responses are thin — but because min has only 1 voice, so no inter-voice convergence/divergence pressure forces additional atomicity. The 16-bullet floor (food-truck/min/01) reflects 4 questions × 4 bullets = 16; the 25-bullet ceiling (mobile-app/min/01) reflects 5 questions × 5 bullets. **min density is bounded by Phase 3 question-count × bullet-budget, not by Phase 4 prompt limits.** This is structural, not a Phase 4 prompt issue.
- **med has higher TL density than high.** Mean med = 38.9; mean high = 29.1. As discussed in §1, this reflects the ledger-construction rule (med atomicizes per-persona claims; high collapses overlapping claims under aggregation pressure). But the *raw* Phase 3 input volume at high (7 personas × ~25 bullets each = ~175 bullets) is substantially larger than at med (4 personas × ~25 bullets = ~100 bullets). The ledger compression ratio is therefore much higher at high. Phase 5 E4 should treat high TL counts as *post-aggregation* and not directly comparable to med.
- **DA + Pragmatist saturation.** All 50 multi-persona samples (low + med + high) include both DA and Pragmatist. This is by design but should be confirmed when downstream tasks reference "all four med personas" or "all seven high personas" — DA + Pragmatist are guaranteed; the rest are cluster-shape-conditional.
- **Convergence rate rises with persona count, but not monotonically.** Low (2 personas) = 71%; med (4 personas) = 60%; high (7 personas) = 82%. The med dip is mathematical — at 4 personas, the strong-convergent threshold (3/4 or 4/4) is hard to clear, while at 7 personas the threshold (≥4/7) is easier to clear because the Outer Ring brings broader thematic agreement into clusters. **The med 60% number should not be interpreted as a Phase 4 quality drop.**
- **`attributed/` failure mode is over-aggregation, not fabrication.** Aggregate possibly-fabricated = 0 across 40 samples; possibly-dropped = 257. The full-synthesis prompt is over-aggregating distinctive single-persona contributions into convergent group quotes. Specific risk: persona-distinctive *framing* survives even when *content* is dropped; FA1's framing-flattening axis at high needs to track this.
- **Categorical-reframe alignment is high.** 35/40 med+high baselines name a categorical reframe that exactly or near-exactly matches the corresponding `effort-comparison.md` memo's reframe wording. 5/40 are partial matches; **0/40 surface a reframe the memo doesn't.** This is a strong baseline-vs-memo alignment signal: BL1 reframe surfacing is consistent with Phase 5 memo aggregation, supporting FQ5.
- **Cross-cluster recurrence is real.** 5 of 10 topics show a within-topic Central Tension recurrence across multiple clusters (career-change burnout-architecture; habit-tracker anxiety-loop; property-management regulatory-asymmetry; school-consolidation facility-identity; wearable-device privacy-capability). These are direct Phase 5 cross-cluster aggregation candidates — Phase 5 exec-summary theses should anchor here.

## Phase-4 signals consumed by Phase 5 (revision §4.9 — optional add-on)

For each of the 20 high samples, the BL1-flagged Central Tension, categorical reframe, and strong-convergent counts were checked against the corresponding `test-runs/{topic}/high/synthesis/{cluster}_synthesis.md`. Surfacing was scored Y / partial / N based on (a) keyword density (≥60% of distinctive content words from the BL1 candidate appear in the synthesis text) and (b) preservation of distinctive bigrams (≥1 multi-word phrase preserved). For "strong-convergent counts" surfacing, the heuristic was the count of named "N of M personas" / "all seven personas" / "six of seven" / "N/M personas" patterns in the synthesis text (Y ≥ 5, partial 1–4, N = 0).

| Sample | BL1 Central Tension surfaces? | BL1 categorical reframe surfaces? | Count claims surface? | # count-claims |
|---|---|---|---|---|
| career-change_high_06_emotional-sustainability | Y | Y | N | 0 |
| career-change_high_11_field-future-mlps-ai | Y | Y | N | 0 |
| food-truck_high_02_fusion-concept | Y | Y | N | 0 |
| food-truck_high_08_regulatory-strategy | Y | Y | N | 0 |
| habit-tracker_high_04_streak-anxiety-emotional-interior | Y | Y | partial | 1 |
| habit-tracker_high_11_inactive-users-drift | Y | Y | partial | 1 |
| mobile-app_high_05_feature-selection-decision-bias | Y | Y | partial | 4 |
| mobile-app_high_09_team-capacity-burnout | partial | Y | N | 0 |
| property-management_high_02_multi-jurisdiction-compliance | Y | Y | N | 0 |
| property-management_high_07_community-relations | Y | Y | N | 0 |
| school-consolidation_high_05_union-contract-reconciliation | Y | Y | N | 0 |
| school-consolidation_high_09_community-identity-civic-anchors | Y | Y | N | 0 |
| space-party_high_02_theme-coherence-saturation | Y | Y | N | 0 |
| space-party_high_06_birthday-girls-agency | Y | Y | partial | 2 |
| tool-library_high_09_trust-stewardship-commons-degradation | Y | partial | partial | 4 |
| tool-library_high_12_maturation-replication-generative-outcomes | Y | partial | N | 0 |
| wearable-device_high_05_privacy-architecture-capability-gap | Y | Y | N | 0 |
| wearable-device_high_10_lived-experience-trust-anxiety | Y | partial | Y | 9 |
| youth-mentorship_high_04_mentor-training-burnout-prevention | partial | partial | N | 0 |
| youth-mentorship_high_11_outcome-measurement-evidence | Y | partial | partial | 1 |

**Aggregate (across 20 high samples):**
- **Central Tension surfacing rate: 18/20 (Y) + 2/20 (partial) = 100% at-least-partial; 90% strong.**
- **Categorical reframe surfacing rate: 15/20 (Y) + 5/20 (partial) = 100% at-least-partial; 75% strong.**
- **Strong-convergent count surfacing rate: 1/20 (Y) + 6/20 (partial) + 13/20 (N) = 35% at-least-partial; 5% strong.**

**Implication for FQ5 / FA1 / RP1.** Central Tension and categorical reframe propagate from BL1 → Phase 5 highly reliably (≥75% strong surfacing). The named-count signal does not — only 1 of 20 high syntheses contains 5+ explicit "N of M personas" phrases, and 13 of 20 contain none. **This is the single largest gap in Phase 4 → Phase 5 signal handoff.** The high-effort full-synthesis prompt either does not preserve raw counts in synthesis prose, or preserves them as descriptive phrasing ("most personas," "the majority") rather than the structured "5 of 7 personas" form Phase 5 BRAINSTORM.md exec summaries claim to use. RP1 should target this specifically: either the high-effort prompt needs to require named counts in synthesis prose, or Phase 5's exec-summary template needs to derive counts from `attributed/` rather than from `_synthesis.md`. Cross-link to FA1's Axis A2 (traceable convergence counts).

## Memo-vs.-filesystem discrepancy log (revision §4.5)

Discrepancies flagged across 60 ledgers. Filesystem is canonical per §4.5.

| Topic | Discrepancy | Memo value | Filesystem value | Authoritative |
|---|---|---|---|---|
| property-management | Min total persona responses | "80 (4 per question, single brainstormer)" | 5 (one `generic-response.md` per cluster, 5 clusters; bullet count varies per file) | Filesystem |
| career-change/med/04 | Header-stated TL count vs. body | Header: "**Through-line count:** 24" (per the in-file correction note) | Body enumeration: 31 distinct through-lines | Filesystem (body) — the per-cluster subagent flagged and corrected this |
| career-change/med/01 | Header-stated TL count vs. body | Header: "**Through-line count:** 26" | Body enumeration: 35 distinct TL- headings (including TL-X1, TL-X2 sub-numbered variants) | Filesystem (body) |
| school-consolidation/med/05 | Header-stated TL count vs. body | Header: "**Through-line count:** 30" | Body: 40 distinct TL- headings; in-file restatement note acknowledges 40 | Filesystem (body) |
| wearable-device/med/04 | Header-stated TL count vs. body | Header: "**Through-line count:** 38" | Body: 64 distinct through-lines per the in-file note ("authoritative count: 64") | Filesystem (body) |
| food-truck/med/03 | Header-stated TL count vs. body | Header: "**Through-line count:** 27" | Body: 29 TL- headings | Filesystem (body) |
| food-truck/min/01 | Footer total responses count | "Total responses: 19" (footer) | Body: 20 bullets across 5 questions × 4 bullets (Q6: 4 + Q7: 4 + Q8: 4 + Q9: 4 + Q10: 4 = 20) | Filesystem (body) |
| school-consolidation/med/02 | Header-stated TL count vs. body | Header: "**Through-line count:** 41" | Body: 46 TL- headings | Filesystem (body) |
| habit-tracker/min/02 | Internal merge note | Header: "20" (after TL-3/TL-10 merge) | Body: 21 TL- headings, with TL-10 note declaring it merged into TL-3 (effective: 20) | Header-after-merge stands; body reads 21 with the merge declared |

**Other discrepancies discovered during synthesis:** None beyond the property-management memo error (§4.5 pre-listed) and the per-baseline header/body count discrepancies above. All header/body discrepancies were already self-flagged by the per-cluster subagents; the body count is canonical and is what this synthesis used for the through-line density table.

**Future memo-regeneration corrections recommended:**
1. property-management min memo: "80 (4 per question, single brainstormer)" should be corrected to reflect the actual filesystem structure (5 generic-response.md files, one per cluster, ~20 bullets each).
2. Six med-effort baselines have header/body TL count discrepancies. The next BL1 regeneration (if any) should use body-enumeration TL counts in the header.

## BL1 → SS1 feedback gate (revision §4.8)

Reviewed all 60 baselines for unrecoverable anomalies in their headers/notes/anomaly fields.

| Sample | Anomaly flagged | Recoverability verdict | SS1 addendum recommended? |
|---|---|---|---|
| All 60 samples | Per-cluster subagents flagged minor anomalies (header/body count discrepancies, footer-total off-by-one, mild attribution drift in `attributed/`, occasional persona-density variance) | Recoverable in every case — every ledger built with full content traceability and explicit caveats noted | **No SS1 addendum needed.** |

**Specific anomaly callouts:**
- food-truck/min/01 footer reports 19 responses but body has 20 — mechanical off-by-one, body authoritative.
- property-management/min/02 footer reports 19 responses but body has 20 — mechanical off-by-one, body authoritative.
- 6 med samples have header TL counts below body TL counts (under-count by 5–26) — body authoritative; per-cluster subagents flagged and reconciled in-file.
- 0 samples have over-count (header > body).
- 0 samples have missing files (all 60 Phase 3 input directories existed at manifest-freeze; all 60 baselines successfully built).
- Persona-density variance noted in space-party/med/01 (Visionary 25 bullets vs. DA 35) but is in-distribution and recoverable.

**Verdict: 0 unrecoverable samples. Proceed to FA1, LB1, RG1 launch without manifest addenda.**

## Handoff to FA1, LB1, RG1

- **FA1** reads the 40 med + high baselines (`baselines/*_med_*` and `baselines/*_high_*`). Use the per-baseline `attributed/` cross-reference flag lists as the per-sample audit input. Aggregate failure-mode is over-aggregation (257 possibly-dropped, 0 fabricated, 11 misattributed) — Axis A3 (substance survival in prose) is the load-bearing axis. Persona-name preservation (Axis A1) is structurally well-supported (DA + Pragmatist 100% saturation; Inner Ring saturation 30–60% at med, 50–80% at high). **Strong-convergent count surfacing is the largest Phase-4-→-Phase-5 gap** (35% partial, 5% strong) — Axis A2 should test whether the high-effort prompt produces named counts as required, since Phase 5 memo aggregation depends on them.
- **LB1** reads the 20 min + low baselines. Conspicuous-absence and Neither-lens gap candidates are well-formed and source-grounded across all 20 samples — LB1's Axis C verifications should pass at a high rate if the summary files preserve them. The 4-category Neither-lens gap taxonomy (relational/equity/political-economy/emotional) is dominated by political-economy (14/30) and emotional (9/30) — Phase 5 E4 should expect this skew in low-effort summaries.
- **RG1** reads all 60, grouped by topic. 5 of 10 topics show within-topic Central Tension recurrence across multiple clusters (career-change, habit-tracker, property-management, school-consolidation, wearable-device) — these are RG1's strongest cross-effort regression candidates and Phase 5's strongest cross-cluster aggregation candidates.

Each scoring task uses the through-line ledger + faithfulness target + persona-distinctiveness map (where applicable) as its scoring reference.

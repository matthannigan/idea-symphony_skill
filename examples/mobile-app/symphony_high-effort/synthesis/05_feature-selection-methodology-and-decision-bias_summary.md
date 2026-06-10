---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/high"
datetime: 2026-06-09
effort: "high"
stage: "Phase 4: Response Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-8"
topic-cluster: "05_feature-selection-methodology-and-decision-bias"
synthesis-type: "summary"
central-tension: "The selection methodology must produce a decision whose answer isn't already baked into its corrupted inputs (analytics distorted by bad navigation, vision distorted by founder bias) while the 8-month runway makes a wrong cut potentially fatal."
---

# Summary: Feature-Selection Methodology and Decision Bias

## Executive Summary

The organizing problem of this cluster is that every obvious input to the feature-selection decision is corrupted, and the 8-month runway makes a wrong cut potentially fatal. Usage analytics are distorted by a 6-tab navigation that buried features and capped sessions at 47 seconds, so low engagement cannot be read as low demand. "Strategic vision" defaults to founder taste. The people who assessed the features best are the same people who built them, and they will defend them. The exercise is really about designing a selection process whose output isn't pre-baked into its biased inputs.

All seven perspectives converge on one finding: the team is probably solving the wrong problem first. Before any feature is cut, the team should answer one question in writing, independently: "This app is the best choice for users who want to ___." Eight different answers mean the 15 features are not a feature problem but an unclear value proposition made visible, and no culling fixes that. The relaunch should be designed for the ~14K users who already stayed (the 8% who retained), not the 166K who left. Those survivors are proof the audience exists. Interviewing them for "the one thing you open this app for" likely reveals the core faster than any analytics pass.

All perspectives converge on direct experimentation over argument to break the data-versus-vision deadlock. A "hero slot" test (promote one feature to the entire home screen for a cohort and measure the lift) separates architecture from demand. Blind, anonymized voting removes ownership bias from the room. The most-cited experiment is destruction-as-research: ship a single-feature "Focused" version, then restore features strictly in the order users demand them back. This produces a ranked, behavior-based priority list that no survey can match.

Two findings reframe what success means. First, the 8% retention number may be a category ceiling rather than a product failure. Before assuming any cut will move it, the team should benchmark comparable apps. If the ceiling is real, the right move is to optimize depth, LTV, and evangelism of the loyal cohort, or run the unit-economics math and discover the honest problem is business model, not features. Second, the simplification may be primarily a team-recovery intervention. A burned-out team ships half-baked features regardless of market potential. So "which 3-4 features would the team be excited to own completely?" is load-bearing data.

---

## Key Themes

### Every input to the decision is biased, so design the process around that
Analytics reflect what users tried under a broken navigation, not latent demand. "Vision" reflects founder taste. Builders defend their own work. The response across perspectives is to neutralize each bias with a specific mechanism: hero-slot experiments to clear demand signal, blind anonymized voting to separate judgment from ownership, and written falsifiable predictions to turn vision into testable claims settled by the 30-day result.

### The real diagnosis is probably an unclear value proposition, not too many features
All seven perspectives converge on the same root question: can the team complete "this app is for users who want to ___" in one sentence, with conviction and agreement? Divergent answers mean the 15 features are a symptom of incoherent positioning. Interview churned users about what they expected in the first 10 seconds. That will expose whether the app betrayed the promise that drove 180K downloads.

### Build for the survivors, around a single core loop
The ~14K retained users are the north star. The roadmap should define one interaction loop: open, core action, see result, return. The delight moment should land within ~20-30 seconds, and everything outside the loop is distraction. "More of this" means fewer features executed better, not more features. Caution: verify whether the delight is the core action or something adjacent (e.g., the post-workout social share), because that changes the entire roadmap.

### Decide through destruction and revealed preference, not surveys
The most-cited methodology is to strip to one feature and ship it transparently as a "Focused" version. Rank features by the volume, urgency, timing, and cohort of users' demands to restore them. Revealed-preference variants (per-feature paywalls, point-budget bidding, add-one-only-by-removing-one) all beat stated preference. The process itself reverses narrative control, turning a feared cut into a collaboration that builds buy-in.

### Reframe success: the ceiling may be the category, and the team may be the product
Two reframes change which actions get prioritized. If 8% is a structural category ceiling (a benchmark check settles this), the goal shifts from raising retention to maximizing the loyal cohort's depth and LTV, or to interrogating the business model before the runway expires. If team burnout is the actual asset at risk, team excitement-to-own becomes a primary selection criterion. Sustainable ownership capacity (perhaps ~1-1.5 features per engineer) sets the real feature ceiling.

---

## Recommended Next Steps

### Immediate (0-3 months)
- Run the one-sentence value-proposition exercise: have all 8 team members independently complete "this app is the best choice for users who want to ___," then compare. Treat divergence as the primary problem to solve before any feature cut.
- Benchmark 30-day retention for 3-4 comparable social fitness apps (Strava, Nike Training Club, others) to test whether 8% is a category ceiling or an execution gap. This gates every downstream decision.
- Interview 20-30 retained users (the 8%) for "the one thing you open this app for" and 15-20 churned users for "what you thought it was for in the first 10 seconds." Map the positioning-to-promise gap.
- Stand up a hero-slot experiment: promote 2-3 candidate features to a full-screen home experience for separate cohorts over two weeks and measure the engagement lift versus baseline.

### Near-term (3-12 months)
- Run a blind, anonymized feature evaluation (strip builder identity, score "keep with one engineer and 8 months?"), and have each person separately commit a written, falsifiable retention/complaint prediction per feature before any cut.
- Execute the destruction-as-research relaunch: ship a single-feature "Focused" version with transparent messaging, then restore features strictly in order of demand, measuring retention lift at each step to find where the curve flattens.
- Make team excitement-to-own a formal selection input: ask each engineer/designer which 3-4 features they'd own end-to-end for six months, and define relaunch success partly in team-health terms.
- Audit feature interdependencies and per-feature maintenance cost so "cut" decisions account for shared infrastructure rather than assuming fewer features means less complexity.

### Long-term (1+ years)
- If benchmarking confirms a category ceiling, pivot strategy from chasing retention to deepening the loyal cohort's LTV and evangelism, or reposition into a higher-ceiling sub-category (e.g., team challenges) and revisit the business model accordingly.
- Institutionalize a revealed-preference loop (continuous user co-creation, trade-off voting, or periodic feature-budget exercises) so the product keeps surfacing genuine demand rather than drifting back into bloat.
- Rebuild the team structure around sustainable ownership: 1-1.5 features per engineer, with clear end-to-end stewardship, as a guardrail against re-accumulating half-built features.

### Key Considerations

**Opportunities**:
- 180K downloads and a real ~14K retained cohort prove the audience exists and can serve as a research panel. The audience problem is largely solved.
- The uniform poor execution of all 15 features temporarily neutralizes the quality-demand confound, making removal-urgency comparisons cleaner now than after polishing.
- Reframing the cut as "what are we excited to build?" can convert a morale crisis into a team-recovery win. User co-creation can convert a feared simplification into pre-launch goodwill.

**Risks and challenges**:
- Cutting a high-vital/low-usage feature that power users rely on but that is merely hard to find. Cross usage against a "tickets within 24 hours if it broke" vitality test before removing anything.
- Treating 8% as a fixable product number when it may be a category ceiling. The 8-month runway could be spent chasing retention the market won't give.
- Cutting features without auditing shared infrastructure. Maintenance burden (and burnout) can persist even after the feature count drops.

**Trade-offs**:
- Data versus vision under runway pressure. A wrong cut (vision error) can be fatal with no second attempt. Shipping a wrong feature (data error) is slower and can be fixed. Bias toward the recoverable error.
- User-defined core versus founder vision. Ceding the core to users builds buy-in and revealed-preference signal, but founders (who are often partially right) give up control. There is no safe choice here, only different risks.
- Breadth versus depth at a fixed retention ceiling. Serving the loyal 8% intensely (smaller, sustainable, higher-LTV) versus chasing broad acquisition that the category may not reward.

---

**Questions addressed**: 11
**Key insights synthesized**: 39

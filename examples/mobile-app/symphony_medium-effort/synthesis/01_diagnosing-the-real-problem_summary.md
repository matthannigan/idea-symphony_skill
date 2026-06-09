---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/mobile-app/med"
datetime: 2026-06-09
effort: "medium"
stage: "Phase 4: Response Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-8"
topic-cluster: "01_diagnosing-the-real-problem"
synthesis-type: "summary"
central-tension: "The feature-overload diagnosis is an untested assumption; the cluster's organizing trade-off is whether to spend two to four weeks diagnosing the real cause (and risk losing runway) or commit the relaunch now (and risk rebuilding for a problem the target user doesn't have)."
---

# Summary: Diagnosing the Real Problem

## Executive Summary

The organizing tension of this cluster is that the team's founding diagnosis is unproven. "Feature overload caused our 8% retention and 47-second sessions" treats correlation as causation, and every perspective in the session pushed back on it. The trade-off is uncomfortable: spend two to four weeks and a few hundred dollars proving what is actually broken, at the cost of runway the team can barely spare, or commit the eight-month relaunch now and risk rebuilding for a problem the real user doesn't have.

The strongest convergent finding is that the 8% retention figure is almost certainly a blended average hiding very different cohorts. Referral and intent-driven users may retain at 20-40%, while paid or algorithm-driven installs retain at 3-4%. If that's true, the dropout majority were never the customer; cutting features to win them back would destroy the focused product for the minority who actually fit. Segmenting retention by acquisition source is the single highest-leverage, lowest-cost move available, and it should happen before any feature is touched.

A second consensus is that a 47-second session reflects at least three different problems: users can't find what they came for (information architecture), they found it and it's broken (execution), or they found it and it isn't what they needed (product-market fit). These demand different fixes on different timelines, and none is necessarily about "too many features." Cheap instruments tell them apart: zero-friction exit surveys, session replays, moderated think-aloud tests with unguided tasks, and per-feature quality audits.

The session also surfaced a more human reframe. The bloat may be a defensive "yes" to every request rather than ambition, and users feel that anxious, loveless energy. The deeper failure is the absence of a moment that makes someone think "this is why I'm here." That points the work toward defining a single first action that delivers competence in under 60 seconds and toward giving a burned-out team room to grieve what they cut. The danger is spending the remaining runway building a simplified app for a market that was never in the dataset.

---

## Key Themes

**Categorical reframe:** Before cutting features, prove the diagnosis. The most likely root cause is audience contamination in the retention data, not feature bloat, and that single shift changes which actions get prioritized first.

### Diagnose before you cut
Every perspective treated "feature overload" as a hypothesis, not a fact, and insisted on cheap validation before committing the relaunch. A two-week single-variable test (hide most features for a traffic slice, keep one core feature live, watch retention) and a per-feature quality audit can confirm or kill the overload theory at near-zero relaunch risk. A wrong-reason relaunch burns eight months the team cannot get back.

### Contaminated data and the wrong-audience hypothesis
The most load-bearing single idea across the cluster is that the 8% retention may not be a product problem at all. The number is a weighted average of mismatched cohorts. Listicle placements and algorithm pushes attract completionists who want an everything-app—the opposite of the focused product's true user. Cohorting by acquisition source, then recalculating retention for a narrowly defined target segment, is the cheapest test that could rewrite the entire strategy.

### The first action defines the core
There is strong agreement that the simplified product should be designed backwards from one obvious, rewarding action ("log a workout, see it on a chart") completed in under 60 seconds. That moment of competence becomes both the product spec (cut anything not required to reach it) and the tiebreaker for every feature debate. Simplicity wins by removing options, not by adding cleverer guidance.

### The emotional and positioning layer
Overwhelm was reframed as a proxy for weak positioning. If the team cannot say in one sentence what the app fundamentally is, the user cannot either. The lived abandonment sequence is hope, then visual overwhelm, then shame ("this wasn't made for people like me"), which makes the fix emotional design as much as information architecture. A focused thesis also unlocks the absent audience who wanted permission to be just one kind of user.

### Enthusiasm as a signal, with caveats
The feature worth building around is the one users recommend and return to, ranked by engagement slope rather than raw downloads. A 2%-adoption, 80%-retention feature beats a 20%-adoption, 10%-retention one. Novelty effects, situational need, and survivor bias all masquerade as durable core value, so enthusiasm must be validated for durability before the relaunch bets on it. The core may also be a synergistic pair (tracking plus challenges) rather than a single feature.

---

## Recommended Next Steps

### Immediate (0-3 months)
- Cohort day-30 retention by acquisition source, demographic, and first-feature-accessed. Recalculate retention for a narrowly defined target slice. This is a few hours of analysis and may rewrite the strategy.
- Instrument the app to log which feature each session touches and where users drop off. Replay 50 sessions to find the common failure point.
- Ship a zero-friction in-app exit survey (too confusing / not what I want / will try later) plus a post-uninstall survey to classify failures in users' own words.
- Run 5-10 moderated think-aloud sessions with target users given an unguided task ("find and log this morning's workout") to isolate navigation failure from feature overload.
- Audit each of the 15 features on polish and completeness to separate scope problems from execution problems.

### Near-term (3-12 months)
- Run a single-variable validation test: hide most features for a 50/50 traffic slice while keeping one core feature fully functional, and measure the 7-day retention lift before any permanent cut.
- A/B test two acquisition pitches (current 15-feature vs. a stripped "track workouts, that's it") to learn whether simplification attracts the absent audience or only repackages the product.
- Define the core backwards from a single first action that delivers competence in under 60 seconds; prototype it and test with 10-20 users for the aha moment.
- Run a commitment-intent landing-page test per candidate audience segment before building, to confirm a real market exists at the segment you intend to serve.

### Long-term (1+ years)
- If validation supports it, design the simplified product as progressive disclosure (three core features visible, a second tier unlocked by usage) rather than permanent deletion, to protect against week-3 churn.
- Test an untapped acquisition channel (niche fitness communities, studios, Reddit) against the simplified positioning to confirm the audience match holds beyond the app store.

---

## Key Considerations

**Opportunities**:
- A focused relaunch could unlock a large self-selected-out audience who wanted permission to be just one kind of user, generating authentic-relief word-of-mouth.
- Cheap diagnostics (cohorting, exit surveys, replays) can replace the founding assumption with evidence at near-zero relaunch risk.
- A real high-retention cohort may already exist hidden inside the 8% average, defining the true market without any rebuild.

**Risks & Challenges**:
- Spending the remaining eight months of runway building a simplified app for a market that was never in the dataset.
- Cutting a feature with weak aggregate numbers but a high-LTV, high-retention subcohort, and eliminating the actual product-market fit.
- Mistaking novelty, situational, or survivor-biased enthusiasm for durable core value and betting the relaunch on it.
- A compelling first day that still churns at week 3 if the simplified core isn't valuable enough to keep opening.

**Trade-offs**:
- Diagnosis time versus runway: two to four weeks of validation costs scarce runway but prevents a far costlier wrong-reason relaunch.
- Serving the dropout majority versus the retained minority: optimizing for the people who left may destroy value for the people who fit.
- Deletion versus progressive disclosure: removing features maximizes first-run clarity but risks underserving growing week-3 needs.
- Fixing the product versus fixing distribution: a positioning-and-targeting fix is cheaper than a rebuild, but only works if data contamination, not the product, is the real cause.

---

**Questions addressed**: 6
**Key insights synthesized**: 24

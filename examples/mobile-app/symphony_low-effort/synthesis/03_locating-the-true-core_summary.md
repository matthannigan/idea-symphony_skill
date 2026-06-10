---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/mobile-app/low"
datetime: 2026-06-09
effort: "low"
stage: "Phase 4: Summary Generation"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
topic-cluster: "03_locating-the-true-core"
central-tension: "acting immediately on retained-user and session behavioral signals vs. auditing whether those signals are novelty-contaminated and demographically confounded before treating them as a true core."
---

# Summary: Locating the True Core

## Executive Summary

A feasibility-oriented view holds that the retained users, daily cohort, and session event logs are actionable right now. A cohort comparison in existing analytics takes two hours, and five interviews this week form a working hypothesis. A risk-oriented counterpoint argues the same data is contaminated: the 8% retained cohort may be self-motivated fitness enthusiasts who would use any app, the 47-second average masks bounce sessions that look identical to efficient micro-task completions, and daily actives may still be in a novelty window or using the app as a supplement alongside Strava or Apple Fitness+.

Both lenses converge on essentials: analyze retained users, run a jobs-to-be-done workshop with a hard three-feature cap committed before the session starts, and translate the "irreplaceable moment" into a 30-second cold-launch benchmark rather than a positioning claim. Both also agree the social layer needs an empirical holdout rather than a strategic verdict, and that "overwhelming" feedback implicates navigation complexity (six tabs, hamburger menu) as much as feature count.

The deepest disagreement is on why the social layer failed. A feasibility-oriented case for a 60-day holdout treats retention parity as sufficient evidence to cut. A risk-oriented counterpoint argues social features require network density. At 180K users, the app may never have crossed that threshold, making a permanently abandoned social layer architecturally expensive to rebuild. The holdout must control for connection count (zero vs. one-or-more) to distinguish structural rejection from density failure.

---

## Key Themes

### Behavioral Data Needs Segmentation Before It Is Trustworthy

Both lenses prefer behavioral events over qualitative "peak experience" reports. A feasibility-oriented view: bucket sessions by length (under 20s / 20–90s / 90+s) and identify the first-action event. A risk-oriented addition: separate first-session novelty events from sessions five through thirty and time-normalize the DAU cohort to remove users still in their download honeymoon.

### The Retained Cohort Is Both Signal and Trap

A feasibility-oriented view treats retained users' survey answers as a defensible shortlist. A risk-oriented counterpoint names the inverted framing: the most-retained users are typically the most feature-dependent and therefore the most likely to churn loudly post-simplification and may represent the segment least likely to grow. [recurring]

### JTBD Workshop Requires a Pre-Committed Feature Cap

Both lenses endorse jobs-to-be-done framing. A feasibility-oriented case: it reduces 15 features to three or four surviving jobs in 90 minutes by exposing redundancy. A risk-oriented caution: without committing to a three-feature maximum before starting, JTBD becomes political cover. Any job umbrella can be stretched to protect a team favorite. [recurring]

---

## Recommended Actions

### Immediate (0-3 months)
- Bucket all sessions (under 20s / 20–90s / 90+s) and pull first-action events per bucket to separate bounce from purposeful short sessions. One-day analytics task. [convergent]
- Cohort comparison: retained vs. churned on feature adoption rates for all 15 features, sorted by largest gap. [convergent]
- Survey the 8% cohort: which two features would they miss most, and do they use this app alongside Strava or Apple Fitness+. The second question tells you whether you're analyzing primary or overflow behavior. [trade-off]
- Commit to a three-feature maximum, then run the JTBD workshop. Assign each feature to exactly one job and cut redundancies. [trade-off]

### Near-term (3-12 months)
- Run a 60-day social-feed holdout segmented by connection count. Retention parity in the connected-user subgroup is the clean diagnostic. [trade-off]
- Time-normalize the daily cohort (remove first 45 days). Rerun core-feature analysis on the habituated remainder. [unique: risk]
- Write the irreplaceable moment as a 30-second cold-launch benchmark. Features adding steps toward that moment are cut candidates. [unique: feasibility]

### Long-term (1+ years)
- Track 60- and 90-day survival rates as the primary success metric; the 30-day bright spot may mask a retention ceiling. [convergent]

---

## Key Considerations

**High-confidence items** (both lenses agreed):
- Feature combination patterns matter more than single-feature rankings. Both cohort analyses should look for pairs used together.
- "Overwhelming" feedback implicates navigation complexity as much as feature count. A UI restructure should be tested as an independent variable first.

**Trade-offs** (the two lenses disagreed):
- A feasibility case for acting on behavioral data within days versus a risk-oriented counterpoint that novelty-window normalization and primary-vs.-secondary-tool segmentation are prerequisites before the data can be trusted.
- A feasibility case that a 60-day holdout suffices to test the social layer versus a risk-oriented counterpoint that network-density failure and structural rejection look identical unless connection count is controlled.

**Blind-spot flags** (only one lens raised):
- Feature discovery rate, not raw tap counts, is the correct variable when features are buried in a six-tab UI. [unique: risk]
- Onboarding path analysis: if retained users disproportionately encountered a specific feature first, session-one routing may be the fix before any cut is needed. [unique: feasibility]

**Neither-lens gaps** (what a different angle would have surfaced):
- Equity and access: neither lens asked who is in the 180K. If the retained 8% skews narrow (urban, 25–34, iOS), the "true core" identified may be segment-specific rather than broadly applicable.
- Shame and avoidance dynamics: fitness apps frequently fail because failure states (missed streaks, social comparisons) trigger shame-driven avoidance. Neither lens examined whether the 92% churn is emotional rather than navigational.

---

**Questions addressed**: 5
**Source lenses**: risk-oriented (The Devil's Advocate) + feasibility-oriented (The Pragmatist)

---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/mobile-app/med"
datetime: 2026-06-09
effort: "medium"
stage: "Phase 4: Response Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-8"
topic-cluster: "05_removal-mechanics-and-relaunch-approach"
synthesis-type: "summary"
central-tension: "Move fast on a clean-break relaunch to beat the 8-month runway, versus first proving that feature bloat (not a weak core) is the real retention problem before cutting anything."
---

# Summary: Removal Mechanics and Relaunch Approach

## Executive Summary

The organizing tension in this cluster is between speed and proof. The runway argues for moving fast: a clean-break relaunch ships the simplified core in roughly 6 to 8 weeks, and three of the four perspectives prefer it over an incremental sunset. Incremental sunsets leave features in a half-deprecated state that feels worse to users than a single decisive change, and they also split testing effort and burn runway on two codebases. But a competing perspective insists that cutting before validating risks solving the wrong problem entirely, and the app's own metrics give that caution weight.

That caution is the cluster's most important finding: removing features will not fix a weak core. If workout tracking is no better than Strava, Apple Fitness, or Peloton, a cleaner UI won't make new users adopt or bring back churned users. The recommended de-risking move is cheap relative to a full relaunch. Hide (do not remove) 12 of 15 features for a new-user cohort, or run a beta with 500 new and 500 existing power users, and gate the relaunch on that test clearing a retention bar of 15% at 30 days. If it stalls near 6%, the problem is the core product, and the entire feature-cutting plan is premature.

Two mechanics command broad agreement. First, no removal should happen before a dependency audit (roughly 2 to 3 person-weeks) maps shared databases, notification systems, and authentication gates across all 15 features. The realistic failure mode is yanking one feature and discovering the analytics pipeline and user profiles were wired through it, turning a "simple removal" into a multi-month rewrite. Second, the relaunch must be narrated as evolution rather than retreat, foregrounding the three core features as a deliberate answer to overwhelmed users.

The runway math is unforgiving and should drive decision discipline. Expect 20 to 30% of users to uninstall in week one; treat that churn as a quality filter. Budget for a flat period before retention of remaining users climbs from 8% toward 20 to 25%. Set a hard recovery checkpoint (for example, 10% 30-day retention by month 3) and a no-go date around month 5. A miss should trigger an immediate pivot instead of a sunk-cost slide into insolvency. A 10-month proof timeline against 8 months of runway is fatal, so line up a bridge round or a partnership/acquisition fallback before relaunch, not after.

---

## Key Themes

**Validate the bloat thesis before cutting anything.** The cluster's premise is that feature bloat causes the retention problem, but a single perspective challenges that directly, and the metrics corroborate it: removing noise does not improve a core that is merely average against entrenched competitors. A hide-don't-remove experiment or a dual-cohort beta, gated on a clear retention bar, should precede the relaunch. It can cancel the relaunch if the core proves to be the real issue.

### Audit before you cut
Every perspective opens with the same instruction: map data flows, API calls, and shared infrastructure across all 15 features before committing to any removal or timeline. The audit costs about 2 to 3 person-weeks and converts hidden coupling from a mid-relaunch surprise into a known quantity. With real numbers in hand (such as "30% of removal cost is rearchitecting shared utilities"), the team can set a debt ceiling of two to three rough edges and move forward. This prevents cleanup from consuming the runway.

### Clean break beats incremental sunset
The dominant recommendation is a hard-dated clean relaunch (around 12 weeks: build, migrate data, test, communicate, switch) over a gradual sunset. Gradual sunsets leave broken-feeling half-deprecated features and split effort. A feature-flag soft cutover to a ~20% beta ring offers launch-risk safety without maintaining parallel infrastructure. The cost framing matters: incremental is roughly 50 to 60% of a fresh build but only works for converting existing users, while a clean break is a full build plus 30 to 40% accepted churn.

### Trade total users for stickier users, and measure the dip differently
A relaunch dip is expected and acceptable. Week-one uninstalls of 20 to 30% act as a filter. The right response is to switch from bloat-era metrics (DAU, raw session length) to feature depth, habit formation, and core-feature satisfaction. This makes the dip legible instead of terrifying. Watch net composition of the user base, not gross headcount.

### Narrate evolution, not retreat
All four perspectives converge that the relaunch should be positioned as a deliberate response to overwhelmed users, foregrounding the three core features and showing a concrete before-and-after of one feature moving from buried to central. Inviting existing users to help choose the core features turns them into participants rather than casualties.

---

## Recommended Next Steps

### Immediate (0-3 months)
- Run the dependency audit (2 to 3 person-weeks, one to two engineers) to map shared databases, notification systems, and authentication gates across all 15 features, documenting orphaned code paths before any cut.
- Run a hide-don't-remove validation: hide 12 of 15 features for a new-user cohort, or beta with 500 new and 500 existing power users, and gate the relaunch on clearing ~15% 30-day retention.
- Set and write down a hard recovery checkpoint (for example, 10% 30-day retention by month 3) and a no-go date (around month 5) with a pre-agreed pivot trigger.
- Remove the 2 to 3 genuinely isolated features the audit surfaces to bank an early win and fund deeper archaeology.

### Near-term (3-12 months)
- Execute a hard-dated clean-break relaunch (about 12 weeks: build core in a new branch, migrate persistent user data, test, communicate, switch) using a ~20% feature-flag beta ring before flipping to 100%.
- Ship the "evolution, not retreat" narrative: foreground the three core features, show a before-and-after of one core feature, and run a lightweight "which features matter most?" survey.
- Budget roughly $100 to $150K for paid acquisition and pre-announce the relaunch four weeks early to offset app-store momentum loss.
- Secure a bridge round or investor commitment before relaunch to cover a possible 10-month proof timeline against 8-month runway.

### Long-term (1+ years)
- Double down on the single feature that earns word-of-mouth ("I tell my friends"), measuring depth of engagement rather than raw usage to find it.
- If standalone traction stalls by mid-month 6, pursue a partnership or acquisition path (wearables, gyms, insurers) rather than grinding on standalone growth.
- For small but passionate user bases of cut features, offer a lightweight companion web app (about 2 person-weeks) rather than an ongoing parallel mobile version.

---

## Key Considerations

**Opportunities**:
- A cheap pre-relaunch experiment (hide-don't-remove or dual-cohort beta) confirms or refutes the entire strategy before runway is spent on cutting.
- The dependency audit doubles as market research. Heavily integrated features often reveal real user lock-in worth preserving.
- A focused product repositions against bloated competitors. A clean-break relaunch lets goodwill be rebuilt rather than slowly eroded.
- A freemium or premium tier on the simplified version can fund the runway gap before the user base recovers.

**Risks & Challenges**:
- Cutting features when the real problem is a mediocre core wastes the runway and leaves retention flat.
- The 8-month runway is optimistic for a clean break. A "4-month" relaunch often takes 6 months once app-store review, QA, and production bugs are counted.
- The partial-simplification trap can occur: cut enough to alienate existing users but not enough to feel simpler to new ones.
- Hidden feature coupling can stretch a planned 3-month incremental sunset into 5 months of surgical removal.

**Trade-offs**:
- Speed of a clean-break relaunch versus the proof a pre-cut validation experiment provides before committing.
- Converting existing users (incremental, roughly 50 to 60% of a build) versus replacing them (clean break, full build plus 30 to 40% accepted churn).
- A parallel "Full/Lite" legacy path tests retention more cleanly but doubles QA, support, and messaging cost. The cluster does not resolve whether the cleaner experiment is worth the cost.
- Architectural perfection versus shipping. Accepting a debt ceiling of two to three rough edges gets users a simpler app faster.

---

**Questions addressed**: 3
**Key insights synthesized**: 18
</content>

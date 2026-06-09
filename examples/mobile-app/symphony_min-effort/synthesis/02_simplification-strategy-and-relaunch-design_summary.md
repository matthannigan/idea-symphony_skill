---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/min"
datetime: 2026-06-09
effort: "min"
stage: "Phase 4: Summary Generation"
model-requested: "sonnet"
model-reported: "claude-opus-4-8"
topic-cluster: "02_simplification-strategy-and-relaunch-design"
central-tension: "The relaunch must read as a deliberate identity choice rather than a budget cut, yet the burned-out team and 8-month runway pull toward whatever is fastest to ship — and speed and deliberateness are not always the same move."
---

# Summary: Simplification Strategy and Relaunch Design

## Executive Summary

The cluster's organizing tension is between *speed under constraint* and *deliberateness as design*. With 8 months of runway and a burned-out team, every recommendation is pulled toward whatever ships fastest and restores morale — yet the brainstormer repeatedly insists the simplified app must *read* as a confident, intentional choice, not as a product that had features amputated. These two pulls usually align (a bold relaunch is both fast and decisive) but occasionally diverge: the fast move is to keep the brand and ship; the deliberate move may be to rebrand, interview users, and design a navigation pattern from scratch.

The strongest through-line is that morale and momentum are treated as primary engineering constraints, not soft factors. The brainstormer returns to this across the relaunch-vs-deprecation question (a clean break beats a slow wind-down), the branding question (a new name gives the designer "permission" to start a fresh Figma file), and the IA question (constraint experienced as confidence). A burned-out team needs a declared finish line and a win, and the recommended sequencing — announce a hard date, deprecate in controlled batches, ship as a named moment — is engineered as much for the team's psychology as for the user's.

The second load-bearing insight is a wholesale redefinition of success metrics. The brainstormer argues the current 8% retention and 47-second session are being measured wrong: retention should be recalculated only over users who completed a defined "first loop," session *frequency* should replace session *length* as the north star, and fast leading indicators (D1, D3) should replace the 30-day lagging metric so the team can iterate on a 7-day loop. This reframing recurs and should anchor the relaunch's instrumentation.

---

## Key Themes

### Morale as a primary engineering constraint [recurring]
Across multiple questions the brainstormer treats team psychology as load-bearing, not soft. A slow deprecation "signals maintenance mode" and risks losing the best engineers; a relaunch "signals we're building something." Even the branding decision is framed partly around giving the team a cognitive reset. Engineer churn risk is something to calculate against execution risk explicitly.

### Simplicity as deliberate identity, not subtraction [recurring]
The relaunch must communicate "this is intentionally simple" from the first pixel rather than "this had features removed." This recurs in the IA recommendations (drop tab bars entirely, study Streaks/Duolingo/Headspace), the onboarding ("we removed everything else so these work better"), and the branding sub-brand option ("Focus" / "Lite").

### The single completed loop as the activation unit [recurring]
The day-one experience, the metric redefinition, and the retention baseline all hinge on one defined first action — log one workout, see a streak start, in under two minutes with no setup. This "first loop" becomes both the UX target and the cohort filter for honest retention math.

### Metrics redefined around activated users and leading indicators
Current lagging metrics (30-day retention, raw 8%, session length) are reframed: measure retention only for users who completed the first loop, adopt D1/D3 as weekly heartbeat metrics, and make weekly active *frequency* the north star.

### Specificity in the re-engagement pitch
Lapsed users re-engage with a named change ("we removed everything except workout tracking — it's now one screen"), not with vague "we improved the app" messaging. The full 180K install base is a distribution asset reachable via a push/email re-engagement spike a new app cannot access.

---

## Recommended Actions

### Immediate (0-3 months)
- Announce a hard relaunch date (~10 weeks) immediately and ship as a named moment; deprecate lowest-traffic features in weeks 1–4, stabilize the core in weeks 5–8. [recurring]
- Audit the top 50 negative app-store reviews: if they attack the category promise ("bait-and-switch"), rebrand; if they attack execution quality, keep the name and run a "we listened" v2.0 announcement to the full install base. [single]
- Define the single "first loop" (open → log one workout with smart defaults from one goal question → see a streak start) with no profile, social graph, or onboarding tour. [recurring]
- Recalculate retention over only users who completed the first loop, and stand up weekly D1/D3 cohort reports as the team heartbeat. [recurring]

### Near-term (3-12 months)
- Usability-test the two-minute experience with 10 cold strangers matching the target user; require ≥7/10 to complete the first action in under 2 minutes unaided before launch. [single]
- Adopt a near-zero navigation pattern (drop tab bars, home view reachable in ≤2 taps, power-user paths via progressive disclosure) and name the three kept features explicitly in onboarding. [recurring]
- Set a 6-month target of ~20% 30-day retention for activated users and ~40% weekly-active ratio at 8 weeks post-launch. [single]

### Long-term (1+ years)
- Ship the after-7th-session one-question prompt ("What would you tell a friend this app is for?") and treat ≥80% answer convergence as the positioning/PMF signal. [single]
- Consult a navigation-specialized designer for the constraint-as-identity problem, treated as the highest-leverage design investment in the relaunch. [single]

---

## Key Considerations

**Opportunities**:
- The 180K install base is a reusable distribution channel: a named-change re-engagement push can generate a spike no fresh app can access.
- A declared finish line can restore a burned-out team faster than incremental change — psychological relief plus a forcing function for prioritization.

**Risks & Challenges**:
- A bold relaunch only pays off if the new core is genuinely better on day one, not merely smaller.
- Losing 2 engineers could sink the project; the deprecation-vs-relaunch choice is partly a retention bet on key staff.

**Trade-offs**:
- Phased deprecation preserves optionality but burns 4–5 months of ambiguity the runway can't fund; a clean cutover trades technical risk for morale.
- Keeping the brand preserves equity but may anchor users (and the team) to old assumptions; rebranding frees design but discards distribution.

**Conspicuous absences** (stances the brainstormer's output never took):
- *Precondition never established (check b):* the entire metric redefinition assumes an analytics/event pipeline can measure a "first loop," D1/D3 cohorts, and per-feature traffic — but the response never asks whether the bloated app's instrumentation can actually emit those events, or what it would cost to build that tracking before any of the recommended targets become measurable.
- *Decision declined (check d):* Question 7 explicitly asks "same brand or clean slate?" and the brainstormer lays out keep / rebrand / sub-brand without committing to a default — yet every other recommendation (re-engaging the 180K base, the "we listened" narrative) quietly presupposes keeping the name, leaving the one case where rebranding is advised (category-promise reviews) under-resourced.

---

**Questions addressed**: 5
**Response sources**: 1 (generic brainstormer)

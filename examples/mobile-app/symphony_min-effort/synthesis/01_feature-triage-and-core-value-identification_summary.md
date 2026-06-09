---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/min"
datetime: 2026-06-09
effort: "min"
stage: "Phase 4: Summary Generation"
model-requested: "sonnet"
model-reported: "claude-opus-4-8"
topic-cluster: "01_feature-triage-and-core-value-identification"
central-tension: "Whether to triage the 15 features around one core value (the workout tracker as daily-habit anchor) or accept that retention, acquisition, and revenue each point at a different feature — meaning the real decision is which business to be, not which feature to keep."
---

# Summary: Feature Triage and Core Value Identification

## Executive Summary

The cluster's organizing tension is that the app's best-performing features pull in three directions at once: the brainstormer's own analysis keeps arriving at the workout tracker for retention, the challenge platform for acquisition, and a coaching service for revenue. The ruthless-subtraction exercise reframes that divergence as the actual diagnosis — the product is "trying to be three different businesses simultaneously," so the team's job is to pick a lane (habit tool, social platform, or coaching marketplace) rather than crown a single feature. Each lane implies a different core feature, success metric, and go-to-market motion.

Underneath that strategic call sits a consistent methodological stance: behavior beats stated preference for *what to keep*, while stated preference governs *how to position* what remains. The brainstormer returns to this distinction repeatedly — voluntary revisits over raw opens, session-entry points as declared intent, analytics setting the baseline while interviews generate testable hypotheses. The recommended evidence pipeline is concrete: rank features by organic-revisit rate, run cohort retention by first-feature-used, then convert any data conflict into a controlled experiment (a 72-hour feature blackout on a 10% segment) before making irreversible cuts.

The third through-line is that cutting features is a stakeholder-management problem, not just an engineering one. The strongest cost argument for trimming niche features is not the 0.25 FTE of maintenance but the compounding drag on "architectural agility" — and the safest way to sunset a beloved feature is a negotiated 90-day exit with data export and alternatives, not an overnight removal.

---

## Key Themes

### Behavior over belief, with a positioning exception
The brainstormer repeatedly separates what users *do* from what they *say*: voluntary revisits and session-entry points are weighted above raw opens and interview enthusiasm. The nuance that recurs is the exception — stated preference still governs how you position and message the simplified product, even when behavior governs what survives the cut.

### Convergence into a controlled experiment, not an argument
Across multiple questions the recommendation is the same: turn contested decisions into short, measurable tests. The 72-hour feature blackout, the 2-week experiment to confirm interview-generated hypotheses, and the cold-acquisition stress test all share one logic — match the evidence standard to the reversibility and cost of the decision.

### The hidden cost of breadth is architectural, not budgetary
Maintaining niche features is framed not as engineer-hours but as cognitive and structural overhead that "slows every other decision." This reframing recurs as the argument most likely to actually win a triage debate, because the spreadsheet cost always understates it.

### Power users diagnose, they don't dictate
The top-5% cohort is treated as a directional signal — useful for finding the hook the other 95% missed — but explicitly *not* the product spec, especially if acquisition-channel skew explains their feature preference.

---

## Recommended Actions

### Immediate (0-3 months)
- Build a feature-scoring matrix ranking all 15 features by organic-revisit rate (sessions with no push in the prior 24h), weighting share events 3–5x over passive engagement. `[recurring]`
- Run the 2x2 frequency-vs-time-on-feature matrix to cut the clear losers (low frequency + low time); the brainstormer estimates this eliminates 6–8 features before any interview. `[single]`
- Run the anonymous "keep only one feature" exercise across the whole team (engineers, designer, PM) to measure conviction alignment before sprint planning. `[single]`
- Schedule 10 video calls with the top-5% cohort asking the single question: "If we removed everything except your two most-used features, would you still open the app daily?" `[single]`

### Near-term (3-12 months)
- Run a 72-hour feature blackout on a 10% traffic segment for any contested feature, measuring session length, retention, and support-ticket spikes. `[recurring]`
- Segment new users by first-feature-used and track 7- and 30-day retention by cohort to find the causal hook and expose navigation mis-routing. `[single]`
- For each niche feature, plot passionate-user count against maintenance cost and decide keep / negotiated-sunset / spin-out; sunsets get 90 days notice, data export, and a named alternative. `[recurring]`

### Long-term (1+ years)
- Pick one strategic lane — habit tool (retention + subscription), social platform (acquisition + freemium), or coaching marketplace (revenue + B2B) — and let it dictate the core feature and success metric. `[recurring]`
- Build the monetization wedge as a software upgrade (e.g., workout tracker + premium coaching), not a new business model requiring inventory or logistics the 6-person team can't support in an 8-month runway. `[single]`

---

## Key Considerations

**Opportunities**:
- Share events, though rare at 2% DAU/MAU, carry viral-distribution signal that engagement metrics miss entirely.
- A clear daily trigger (finish workout → log it → maintain streak) gives the workout tracker a retention mechanic none of the other features have.

**Risks & Challenges**:
- Power users may be devotees of a feature slated for cutting, making them the loudest pivot critics rather than the future core.
- Divergent rank orders between median and power users mean any single "core product" choice will feel like betrayal to one group.

**Trade-offs**:
- Optimizing for acquisition (challenge platform / social feed) means accepting that retention must be rebuilt from scratch.
- Keeping vocal-but-niche features preserves a small constituency at the cost of compounding architectural drag on every future decision.

**Conspicuous absences** (stances the brainstormer's output never took):
- **No acquisition channel is ever named, yet the runway is finite.** The response leans on a coaching/subscription revenue wedge and an 8-month runway but never establishes *how* the simplified product acquires users post-pivot (check (b)). With organic growth unproven and the existing 180K downloads of unknown origin, the lane-selection recommendation rests on a precondition the analysis never fills in.
- **The decision the cluster builds toward is never actually made.** Questions repeatedly stage "retention vs. acquisition vs. revenue" and the synthesis concludes "pick one lane," but the brainstormer declines to commit to a lane itself (check (d)) — defensible given no data access, but it leaves the highest-leverage call entirely to the reader.

---

**Questions addressed**: 5
**Response sources**: 1 (generic brainstormer)

---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/mobile-app/med"
datetime: 2026-06-09
effort: "medium"
stage: "Phase 4: Response Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-8"
topic-cluster: "04_the-cut-decision-framework-and-authority"
synthesis-type: "summary"
central-tension: "Whether to ground the cut in measurable retention behavior or in a single transformative interaction whose value can't yet be proven."
---

# Summary: The Cut Decision — Framework and Authority

## Executive Summary

The cluster's organizing tension is between grounding the cut in what can be measured and betting it on what cannot yet be proven. One pole wants a transparent, retention-anchored scoring model, PM-owned authority, and a written decision record. This process is defensible to stakeholders and skeptics because it trusts logged behavior over intuition, the same intuition that produced 15 features at 8% retention. The other pole argues that the highest-value interaction may be a rare, identity-rewiring "moment of truth" that usage analytics structurally cannot see, and that scoring by frequency will systematically kill it. The discussion never fully resolves this tension, and that is the live decision the team faces.

What the perspectives do agree on is a cheap path to evidence before any irreversible cut. The strongest convergence in the entire cluster is the feature-removal experiment: disable a candidate feature for a slice of users and watch what breaks. Absence is a more honest signal than presence. Paired with mining existing event logs (the experiment may already be sitting in the data) and a handful of disciplined churn interviews, the team can get falsifiable answers in two weeks with near-zero engineering cost.

A recurring reframe cuts underneath the whole question of which features survive: the problem may be the entrance, not the exit. Users leave from day-3 overwhelm and onboarding friction, not from a missing day-30 feature. The first thirty seconds, not the surviving feature set, may be the real lever. If true, the funnel must be audited before deletion data is read as a verdict on features at all.

The leading concrete bet is a daily ritual of logging a workout and seeing a streak, collapsing the app to three screens a small team can sustain. The leading caution is that any single daily interaction optimizes for app-opens rather than actual fitness behavior change, so the chosen interaction must be validated against workout-completion rates over weeks, not just against engagement.

---

## Key Themes

**Categorical reframe: the retention problem may be entry, not exit. Fix the first thirty seconds before optimizing which feature survives day 30.** This reverses the cluster's default action (score and cut features) toward a different first move (audit and rebuild the onboarding funnel), and is corroborated from the friction-audit, fast-onboarding, and strip-to-day-one angles.

### Behavior over words, anchored on retention
Every perspective centers the scoring model on retention correlation and most rank it above frequency and engagement depth. The unifying principle is that logged behavior beats stated preference. The standing caution is that retention correlation can simply be measuring power users who would have stayed anyway, so the anchor metric must be validated with a cohort split before it drives a cut.

### Cheap removal experiments as the path to evidence
The team's confidence should come from subtraction, not deliberation. Toggling a feature off for a slice of users, cross-tabulating existing retention data, and running a few churn interviews produce falsifiable answers in two weeks with little or no engineering. Absence reveals load-bearing value that presence hides.

### Authority as documented transparency, not title
The PM owning the final call only works if it is bound to a written, data-first rationale (a one-page memo or a public spreadsheet) and to a tiebreak rule set in advance (behavior outranks interviews outranks strategy). The unresolved split is whether strategic vision belongs in the cut at all, or should be benched until trust is rebuilt by shipping.

### Constraint sized to team capacity
The Michelin "one sous-chef per dish" parallel resolves into a concrete rule: every survivor needs a dedicated owner with room to obsess, and if you can't staff clean ownership across six engineers, you cut another feature. The constraint isn't the menu; it's execution bandwidth, and that bandwidth is the craft signal.

### Single interaction as category definition
Reducing the product to one daily moment is treated less as a constraint and more as a positioning strategy. A streak log, a prescribed workout, a social check-in, or a progress mirror each define a different product category and abandon the all-in-one narrative the team can no longer execute.

---

## Recommended Next Steps

### Immediate (0-3 months)
- Run the feature-removal experiment: soft-disable each top candidate (and notifications) for 10-20% of users for one to two weeks and measure the engagement and churn change. The clearest drop is the heartbeat.
- Mine existing event logs for the answer you may already have. Cross-tabulate retention for users who use Feature X but never Feature Y, and measure login-to-first-real-action conversion per candidate feature.
- Audit the onboarding funnel separately from features. Instrument the first thirty seconds and find where day-3 churners drop, before reading deletion data as a verdict on features.
- Conduct 5-8 disciplined churn and loyalty interviews with one un-led question ("what was the first thing you tried to do?"). Sample across retention tiers, usage intensity, and tenure.
- Define "executed well" and the tiebreak rule in writing before scoring anything. Name the standard (e.g., weekly unprompted return) and the rule (behavior over interviews over strategy), and decide explicitly whether strategic vision counts.

### Near-term (3-12 months)
- Build the scoring model in a 2-hour team workshop anchored on a cohort-validated retention weight. Score features independently, then reconcile divergences, and publish the result as a public decision spreadsheet.
- Execute the cut with respectful deprecation: a 4-week sunset window, one-time data export, and a forward path for any passionate-minority feature being removed.
- Re-staff to capacity. Assign one dedicated owner per surviving feature plus infrastructure, and if ownership can't be cleanly assigned, cut another feature.
- Ship the stripped product (3-4 features) to a 50-user closed beta and track daily churn. If it stabilizes below 20% by day 10, the core is defensible.

### Long-term (1+ years)
- Validate the single-interaction bet against fitness behavior, not just opens. Run the chosen daily interaction (e.g., streak logging) for an 8-week cohort and measure workout-completion rates, not app launches.
- Commit to a category position and align messaging, pricing, and acquisition to it ("behavior-lock" tool, social commitment device, or behavior mirror) rather than the all-in-one platform narrative.
- Institute a recurring craft review where each feature owner pitches the one detail they refined. Sustain obsessive execution as the differentiator.

---

## Key Considerations

**Opportunities**:
- Existing analytics likely already contain the evidence for which feature is core, making the first proof-of-concept nearly free.
- A genuine simplification reads to users as confidence and intention. A focused team ships noticeably faster, turning speed itself into a felt feature.
- Reducing to a single, well-chosen daily interaction can define a defensible new product category that a small team can actually execute.

**Risks & Challenges**:
- Retention correlation can mask causation, flagging features that merely co-occur with power users who would have stayed regardless.
- "Justifying" the app's existence can quietly re-incentivize the notification-and-variable-reward compulsion tactics that created the bloat in the first place.
- A perfectly executed four-feature menu can still be the wrong menu if the mass market wants more adequate features. Willingness-to-pay and churn for the cut scenarios should be modeled before committing.
- Front-loading all value into 30 days can punish users who need ramp time, killing features essential to 90-day retention but invisible early.

**Trade-offs**:
- Measurable, retention-anchored cutting versus betting on a rare, transformative interaction that analytics structurally cannot detect.
- Single decision-maker authority (speed, accountability) versus distributed deliberation (buy-in, fewer blind spots).
- Whether strategic vision is a legitimate input to the cut or should be benched until trust is rebuilt by shipping.
- Optimizing for engagement and app-opens versus optimizing for actual fitness behavior change, which a single daily interaction may not deliver.

---

**Questions addressed**: 6
**Key insights synthesized**: 24

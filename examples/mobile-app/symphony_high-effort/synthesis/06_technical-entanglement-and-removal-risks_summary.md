---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/high"
datetime: 2026-06-09
effort: "high"
stage: "Phase 4: Response Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-8"
topic-cluster: "06_technical-entanglement-and-removal-risks"
synthesis-type: "summary"
central-tension: "When codebase integration depth and user retention disagree about which features are core, neither signal is automatically right, and the conflict zone is where the real strategic decisions live."
---

# Summary: Technical Entanglement and Removal Risks

## Executive Summary

The organizing tension of this cluster is that the codebase and the retention data tell two different stories about which features are core, and neither is automatically right. Integration depth records what the team has repeatedly invested in and believed mattered. Retention records what users actually open today. Every perspective agreed that the place where these two maps disagree, not where they align, is where the real strategic decisions live. A feature can be invisible in usage metrics yet load-bearing in the codebase, or deeply entangled yet abandoned by users. Treating either signal as the sole truth produces bad cuts.

Method-level convergence was unusually strong. All seven perspectives endorsed an up-front dependency audit (roughly two to three weeks) as the non-negotiable first move, scoped by coupling surface (shared tables, notification pipelines, analytics events) rather than by the count of fifteen features. The shared recommendation is to tier each feature green/yellow/red by removal risk and cut only the clean, isolated features first. There was equally strong agreement that "remove from UI, leave the backend temporarily" is a trap. Temporary infrastructure becomes permanent unless a binding contract with a named deadline, an owner, and an automatic consequence is created at the moment the UI goes dark.

The sharpest practical insight concerned behavioral coupling. The biggest cascade risk is not code that breaks but retention loops that collapse. Challenge notifications drive friend invites drive workout logs, so cutting "challenges" to simplify can crater the DAU/MAU ratio even though challenges look minor in isolation. The recommended defense is staged, reversible pruning: remove one feature at a time, stabilize and measure for about two weeks on a 500-user power-user beta, and revert immediately on a retention cliff.

The critical risk to the relaunch is the team's burnout state. A six-engineer team exhausted by fifteen half-built features cannot reliably perform surgical entanglement mapping while hitting a deadline. This nearly guarantees urgency-driven decisions. The most actionable mitigation surfaced was to buy the audit (a contract engineer for roughly $15K) so the internal team starts building from a clear technical roadmap rather than discovering load-bearing dependencies mid-removal.

---

## Key Themes

### The codebase as a voting record
Integration depth is evidence of past conviction, not just technical debt. Every shared data model and pipeline is a "vote" for a feature's importance. That map can surface a different and equally valid hypothesis about the app's true core than retention alone. The most useful version of this audit triangulates three signals (retention, integration depth, and team sentiment). Features high on all three are bulletproof keepers, those low on all are safe cuts, and the conflicts are the real work.

### Behavioral coupling outweighs code coupling
The cascade that matters most is the retention loop, not the dependency graph. Features that drive daily opening through notifications, streaks, and social comparison can look minor in usage data yet hold the whole engagement system together. Mapping causal chains ("if this goes, what user behavior breaks?") and modeling where displaced users go matters more than any static code audit.

### Test before you cut, and keep it reversible
Rather than predicting cascades analytically, the strongest recommendation is to make removal an experiment. Shadow-cut or stub a feature in staging to learn its true load-bearing status in hours, then prune live features one at a time behind toggles with two-week observation gates so a wrong cut is recoverable rather than fatal. The 8-month runway becomes a lab rather than a countdown.

### The dangerous quadrant: deeply integrated, low retention
Multiple perspectives independently flagged the high-integration / low-retention feature as both the real trap and the real opportunity. Auto-deleting it wastes a built bet whose architecture is "ready" but whose execution or positioning failed. Auto-keeping it sustains sunk cost. The disciplined response reframes the decision from "cut or keep" to "fix or cut," diagnosed by mining the feature's defect and refactor history.

### Removing features is also a political and organizational act
Integration depth can reflect human dynamics orthogonal to product strategy. An engineer might entrench a system to amplify influence. A team might never have reached architectural consensus. The best technical decision can stall on quiet resistance, so untangling must be handled as a social process (reframing removal as evolving a system for power users), not only an engineering one.

---

## Recommended Next Steps

### Immediate (0-3 months)
- Commission a 2-3 week dependency audit scoped by coupling surface (shared tables, notification pipelines, analytics events, permission layers), not by the 15-feature list. Strongly consider a ~$15K contract engineer so the internal team is not mapping and shipping simultaneously while burned out.
- Instrument the live code for two weeks to log cross-feature dependencies at runtime. This captures hidden coupling (e.g., the meal planner querying workout data) that architecture diagrams miss.
- Tier every feature green (isolated) / yellow (shared state) / red (load-bearing) and ship only green-tier UI removals in phase one to show momentum.
- Establish a binding removal contract before cutting anything: every UI removal triggers a named backend sunset date, an assigned deprecation owner, and an automatic consequence (forced cleanup sprint) on a missed deadline.
- Pre-compute the contingency rule now: if removing a feature set would exceed ~30% of remaining runway, extend runway or cut deeper, by prior agreement rather than mid-relaunch panic.

### Near-term (3-12 months)
- Build two independent maps (retention impact and architectural centrality) and overlay them. Treat the high-load / low-retention quadrant as a "fix or cut" decision, not a reflexive delete.
- Shadow-cut or stub candidate features in staging (~4 hours each) to measure true load-bearing status before deleting code.
- Prune live features one at a time behind toggles, with ~2-week stabilization gates and a 500-user power-user beta. Revert immediately on a ~15% retention cliff, proceed on a ~2% drop.
- For any high-integration / low-retention feature, mine git defect and refactor history to decide whether it is broken-and-bandaged, abandoned, or merely mispositioned before choosing rebuild vs. delete.
- Segment retention by cohort so a low-aggregate-usage feature that anchors high-LTV power users is not mistaken for a safe partition-wall cut.

### Long-term (1+ years)
- Execute the hard backend deletion at a fixed date (e.g., 6 weeks post-relaunch) for all non-surviving features. Archive in version control rather than leaving zombie infrastructure running.
- Institutionalize an entanglement health check: a quarterly coupling review plus an architecture-review gate for any new feature touching more than three systems. Integrate via events/APIs rather than shared state so the relaunch never regrows into 15-feature bloat.

---

## Key Considerations

**Opportunities**:
- The dependency audit reframes the question from "can we afford to remove?" to "which removals actually reduce maintenance surface?" Often it reveals 8-10 features that are pure deadweight.
- Aggressive removal can produce positive cascades. Freeing notification bandwidth and attention can measurably improve the core loop, testable via A/B subsets.
- High-integration / low-retention features are latent rebuild opportunities where the architecture is already "ready" and only the UX or positioning needs to land.
- The codebase audit can surface a more defensible long-term core than retention data alone. It aligns the product with infrastructure the team already built.

**Risks & Challenges**:
- Team burnout makes reliable surgical mapping under deadline nearly impossible. This biases every decision toward urgency over clarity.
- "Remove the UI, leave the backend temporarily" reliably becomes permanent zombie infrastructure that quietly consumes engineering time for years.
- Cutting a behaviorally load-bearing keystone (e.g., the social challenge loop) can drop retention from 8% to 4% even when remaining features are higher-quality.
- Removing a feature can push users to external substitutes (Slack groups, recipe sites) or to churn. This reduces stickiness for the features that remain.
- Untangling deeply integrated code can trigger organizational resistance when a feature is someone's entrenched work.

**Trade-offs**:
- Technical centrality vs. user retention: when they disagree, both can be honest. The codebase reflects 18-month-old decisions. Retention is real-time. The conflict itself is the decision.
- Clean architectural break vs. rolling micro-refactors: a single big-bang cut is cleaner in principle but riskier for a burned-out team than staged cuts with recovery points.
- Delete vs. silo: too-tangled features can be isolated into a separate schema/service with a sunset date instead of risky deletion. This costs carrying backward-compatibility debt (budget the 15-20% capacity hit).
- Code volume vs. dependency centrality: ranking removal candidates by size rather than centrality risks cutting a large isolated feature while keeping a small but structurally critical one.

---

**Questions addressed**: 4
**Key insights synthesized**: 22

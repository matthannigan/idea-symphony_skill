---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/mobile-app/low"
datetime: 2026-06-09
effort: "low"
stage: "Phase 4: Summary Generation"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
topic-cluster: "05_methodology-for-the-cut"
central-tension: "Rigorous multi-axis analysis (needed to avoid rationalizing pre-existing preferences) vs. fast data-driven elimination (needed given 8-month runway), where the process rigor required to make an honest cut may itself consume the time the cut is intended to free."
---

# Summary: Methodology for the Cut

## Executive Summary

The cluster's organizing tension is not simply "which features to keep" but how to make that determination honestly under time pressure. A feasibility-oriented view argues the team should use data to eliminate clear losers quickly. Set the scoring rubric before anyone opens the spreadsheet. Run retention-correlation queries in two days. Cut features under 5% activation without debate. That way, the remaining runway funds execution rather than deliberation. A risk-oriented counterpoint flags that with 8% overall retention and 47-second sessions, behavioral data signals abandonment across the board. It's nearly useless for distinguishing a good core from a slightly less bad feature. The two lenses genuinely disagree about what data can tell you at this stage.

Both lenses converge on one high-confidence point: any feature-selection process conducted without explicit, pre-committed decision rules will be captured by internal politics. The team that burned out building 15 features will not neutrally evaluate them. Engineers advocate for features they built. Leadership's "strategic vision" often legitimizes pre-existing preferences. Both perspectives independently arrive at the same prescription: define the tiebreaker axis before running the analysis, not after. Though they differ on what that axis should be (feasibility: retention correlation; risk: an external scorer to surface rationalizations).

The two lenses also converge on a structural blind spot in the "3-4 feature" framing: anchoring on a number before the analysis is complete risks repeating the error that produced a 15-feature product. A feasibility-oriented view reframes 3-4 as a team capacity constraint (1.5 engineers per feature) rather than a product truth, which makes it defensible. A risk-oriented counterpoint argues the coherence test (whether feature combinations retain at meaningfully higher rates than single features) should determine the ceiling. The team must be prepared to act on an answer of 1 or 6, not just confirm the number they started with.

---

## Key Themes

### Decision Rules Must Be Pre-Committed, Not Retrofitted

Both lenses independently flag that feature-evaluation frameworks become political cover without a tiebreaker rule decided in advance. A feasibility-oriented approach prescribes a scoring rubric with pre-set weights (usage breadth, retention correlation, maintenance cost) locked in before anyone pulls data. A risk-oriented view adds that an external reviewer scoring features against each axis before the internal team presents its recommendation can surface the rationalizations the team cannot see from inside. In both cases: the process architecture matters as much as the analytical framework.

### Activation Rate and Feature Quality Are Indistinguishable Without Discoverability Normalization

Both lenses agree that aggregate usage data from a six-tab hamburger-menu app cannot be trusted at face value. A feature buried three taps deep has, by design, a suppressed activation rate regardless of intrinsic value. The feasibility-oriented prescription is concrete: build a two-row metrics table (activation rate vs. post-activation retention) for each of the 15 features, then segment by quadrant rather than ranking by a single number. The risk-oriented counterpoint adds that activation rates from the current chaotic UX are not predictive of activation in a simplified product. The reset itself changes the context. Historical data can at most narrow the field, not select winners.

### The Keystone Species Framing Contains an Inversion Worth Naming

The two lenses approach structural dependency from opposite directions. The inversion is the most valuable signal in the cluster. A feasibility-oriented view treats keystone identification as an engineering constraint: map feature dependencies as a technical graph, run a deletion dry-run sprint, surface hidden dependencies in production before they become bugs. A risk-oriented counterpoint challenges whether the app has a coherent ecosystem at all. 15 half-built features assembled without a unifying design philosophy may lack a keystone. A feature behaving as a structural dependency may be doing so because it compensates for poor UX in adjacent features rather than because it is genuinely essential. Both analyses should run. The intersection of "high structural dependency, low user-noticed value" identifies technical debt masquerading as product.

### The "3-4 Feature" Anchor Needs Explicit Justification or Explicit Suspension

A feasibility-oriented view grounds the number in team capacity (6 engineers across 3-4 features yields enough execution concentration to actually ship) and offers a practical path: run a combination-retention query before locking in the number and let the data adjust the target. A risk-oriented counterpoint argues the anchor should be suspended entirely until the coherence test produces a finding. Preparing to act on an answer of 1 or 6 is not pessimism but intellectual honesty. The team should make explicit in the decision meeting which of these stances they are taking.

### Analytics Infrastructure Audit Is a Prerequisite, Not a Parallel Track

Both lenses converge on a quiet dependency that can invalidate the entire methodology: the combination-retention analysis and activation-disaggregation work require cohort segmentation that small teams often haven't instrumented for. Discovering on week two of a three-week analysis that the required data doesn't exist is a predictable failure mode. The feasibility-oriented prescription: audit analytics capabilities before committing to an evidence-based methodology. The risk-oriented framing adds that if the infrastructure audit reveals gaps, the team is operating on strategic vision alone. That's fine, but it should be named as such rather than dressed up as data-driven decision-making.

---

## Recommended Actions

### Immediate (0-3 months)

- Audit the analytics infrastructure for cohort segmentation capability before committing to any evidence-based methodology. Confirm whether combination-retention queries, channel-filtered activation rates, and per-feature post-activation retention are producible with current event tracking. If gaps exist, instrument them or acknowledge you are operating on vision. [convergent]
- Build a scoring rubric with pre-committed weights (usage breadth, retention correlation, maintenance cost) in a 90-minute timeboxed session before anyone opens the data. Lock the rubric before pulling the spreadsheet. [convergent]
- Run a two-row metrics table for all 15 features: (a) % of all users who ever activated it, (b) 30-day retention among activated users. Features under 5% activation require a written human justification to survive; features in the bottom-left quadrant (low activation, low post-activation retention) are cut without debate. [unique: feasibility]
- Map feature dependencies as a technical graph — four engineering hours to document which features share data models, auth flows, or backend services. Run a deletion dry-run by stubbing out nav entries and API routes for two weeks before any permanent removal. [unique: feasibility]

### Near-term (3-12 months)

- Run a combination-retention cohort query: users who activated exactly one feature vs. two vs. three in combination. Let the retention inflection point determine the target feature count rather than anchoring on 3-4 before analysis. If the answer is 1 or 6, act on it. [trade-off: feasibility case reframes 3-4 as a capacity constraint and lets data adjust it; risk-oriented counterpoint suspends the anchor entirely until the coherence test produces a finding, and is prepared for an uncomfortable answer]
- For any feature with under 10% activation but over 40% post-activation retention, run a 30-day nudge experiment (surface it in week-two onboarding) before making a keep/cut call. If activation lifts with stable retention, it's a keep with an onboarding fix; if activation lifts but retention drops, it was serving a specific sub-segment. Document the finding explicitly. [unique: feasibility]
- Before finalizing the feature list, commission an external reviewer — someone outside the core team — to score features against each decision axis independently. Surface rationalizations before the internal recommendation is presented, not after. [unique: risk]
- Run a 30-minute team thought experiment: "If we were launching from scratch with one engineer, which single feature ships?" That feature is the likely keystone and the anchor for everything else. Use this to cross-check the data-driven cut list against intuitive product identity. [unique: feasibility]

### Long-term (1+ years)

- Once the simplified core is stable, design a formal A/B test or waitlist-launch of the stripped-down version against the current experience to establish a causal relationship between the cut and retention improvement — combination-retention correlation does not establish causality. [unique: risk]
- After 60 days of post-simplification data, revisit features that were kept at reduced surface area (single screen, minimal investment). Let the post-simplification retention data determine whether to invest, maintain, or cut them. [convergent]

---

## Key Considerations

**High-confidence items** (both lenses agreed):
- Decision rules (tiebreaker axis, scoring rubric weights) must be committed before the analysis runs, or the process will be captured by whoever argued loudest in the room.
- Analytics infrastructure must be audited before committing to evidence-based methodology. The combination-retention and activation-disaggregation analyses require cohort segmentation that may not exist.
- Aggregate usage data from the current navigation architecture cannot be trusted at face value. Discoverability normalization is a prerequisite to any feature quality judgment.
- A deletion dry-run (stub out features, monitor for error spikes and unexpected engagement drops) is the lowest-cost way to surface hidden dependencies before permanent removal.

**Trade-offs** (the two lenses disagreed):
- A feasibility case that behavioral data (even noisy) can rapidly eliminate clear losers (sub-5% activation) and focus deliberation on the viable candidates. A risk-oriented counterpoint: with 8% overall retention, data signals abandonment across the board and cannot distinguish a good core from a slightly less bad feature. Data-driven elimination itself becomes unreliable at this baseline.
- A feasibility case for grounding "3-4 features" in team capacity (execution concentration argument) so the number feels defensible rather than arbitrary. A risk-oriented counterpoint: anchoring on any number before the coherence test produces a finding repeats the error that created the 15-feature product. The team must be prepared to act on an answer of 1 or 6.
- A feasibility case that "what we're capable of building" (not what we've built poorly) is a valid criterion. A risk-oriented counterpoint: capability-weighted selection perpetuates the same execution failure if the team has consistently under-delivered across all 15 features. Execution history and capability ceiling are not the same question.

**Blind-spot flags** (only one lens raised):
- The 8% retained cohort's feature usage pattern is the only valid input for keystone identification. The 92% who churned never discovered feature dependencies. Their feedback is misleading for structural analysis. Segmenting retained vs. churned users before asking "what holds the experience together" is a prerequisite most teams skip. [risk-oriented]
- Acquisition channel contamination can make a niche feature look core. If 40% of downloads came from a single meal-planning campaign, the meal planner's engagement numbers are inflated by a non-representative cohort. Filter to organic or primary-channel users before drawing any activation/retention conclusions. [feasibility-oriented]
- A feature can be a structural dependency without being user-valued. Built first, assumed by everything that came after. The intersection of "high structural dependency, low user-noticed value" identifies technical debt masquerading as product. This should be the first candidate for a clean architectural break, not a preserve decision. [risk-oriented]

**Neither-lens gaps** (what a different angle would have surfaced):
- **Relational/social dynamics of the cut decision**: Neither lens addresses the team morale and interpersonal cost of the evaluation process itself. Engineers who built features that are cut experience this as personal rejection. The scoring rubric and anonymous rounds prescribed by both lenses are partial mitigations. But neither lens examines how to structure the announcement and rationale to the team so that cuts feel like strategic clarity rather than failure attribution. This is a people-management gap with real retention-of-team risk at an 8-month runway.
- **Equity/access for existing passionate-minority users**: The cluster focuses on identifying the core for the majority. Neither lens directly addresses the distributional question: what happens to the small, vocal user cohorts who depend on features being cut? A feature with 200 daily-active power users and no scalability path still represents a real commitment to real people. Neither lens offers a framework for how to communicate deprecation to those users, whether to sunset gracefully or offer data export, or how to weigh their advocacy against the majority-retention imperative.
- **Lifecycle/temporal stage of the product reset itself**: Both lenses treat the cut as a bounded analytical event. Neither examines the temporal sequencing risk. A multi-week analysis process followed by a deletion dry-run followed by a simplification launch could consume 3 of the 8 remaining runway months before any improvement in retention is observable. Neither lens surfaces a critical-path timeline for the methodology itself. That is the meta-risk that could make the most rigorous cut process the one that arrives too late.

---

**Questions addressed**: 4
**Source lenses**: risk-oriented (The Devil's Advocate) + feasibility-oriented (The Pragmatist)

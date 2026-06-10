---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/low"
datetime: 2026-04-27
effort: "low"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
topic-cluster: "05_methodology-for-the-cut"
persona: "The Devil's Advocate"
---

# Methodology for the Cut - The Devil's Advocate

---

## Where the Line Falls / Three Decision Axes

* **Data and vision rarely agree — and a tiebreaker rule decided in advance is the only honest one.** Have we considered that "what users do" (data), "what users say" (interviews), and "what we want to be true" (strategic vision) are not just complementary lenses but structurally adversarial ones? With 8% retention and 47-second sessions, behavioral data will likely point to abandonment across the board — making it nearly useless for distinguishing a "good core" from a "slightly less bad feature." A mitigation: define the tiebreaker axis before running the analysis, not after, so the decision rule isn't retrofitted to whoever argued loudest in the room.

* **Strategic vision is the axis most likely to win — and also the most likely to be wrong.** One potential challenge is that the PM and leadership already have implicit favorites, and "strategic vision" is the framework that legitimizes pre-existing preferences. User interviews and data will get cited selectively. To guard against this, have someone outside the core team score each feature against each axis independently before the internal team presents their recommendation — a brief external read can surface rationalizations the team can't see from inside.

* **Teams that have burned out building 15 features won't neutrally evaluate them.** The engineers who spent the most time on a feature will advocate hardest to keep it — not because it's the best feature, but because cutting it feels like personal rejection. Have we considered that the "three-axis framework" becomes political cover for interpersonal dynamics? A structured anonymous scoring round before any group discussion would separate the methodological judgment from the team dynamics.

* **"What the team can build well" is a dangerous criterion at this stage.** If the team can't build any of the 15 features well (as the metrics suggest), then capability-weighted selection perpetuates the same execution failure. A small, focused team executing one thing they've never built before is often preferable to a team executing a familiar thing they've consistently under-delivered. Mitigate by separating "what we've built" from "what we're capable of building" — they are not the same question.

* **Disagreement between lenses is the signal, not the problem.** Have we considered that when all three axes disagree, it isn't a flaw to resolve — it's diagnostic information? Features that score inconsistently across data, interviews, and vision may be ones users don't know they want yet, or ones the team wants but users don't. A deliberate taxonomy — "data-only wins," "interview-only wins," "vision-only wins" — could reveal what the product has been optimized for all along, which may explain the retention problem.

---

## The 3-4 Feature Assumption / Smallest Validating Experiment

* **"3-4 features" is a solution masquerading as a discovery.** Have we considered that anchoring on a number before the analysis is complete is exactly the kind of decision that created a 15-feature product in the first place? At some point, someone said "we need a workout tracker AND a social feed AND a marketplace" — each addition felt incremental and justified. The 3-4 framing risks being the same error at a smaller scale. A mitigation: run the analysis with no target number, let the coherence test determine the ceiling, then reality-check whatever emerges against 8-month runway constraints.

* **Combination retention as a validation test is methodologically sound but operationally difficult.** The smallest validating experiment — checking whether users who engage with features in combination retain at higher rates — requires cohort segmentation that most small teams haven't instrumented for. Have we confirmed the analytics infrastructure can produce this? If not, the team may run a three-week analysis process and discover on week two that the required data doesn't exist. Mitigate by auditing analytics capabilities before committing to an evidence-based methodology.

* **A "coherent product" could mean 1 feature or 8 — and both answers are uncomfortable.** One potential challenge is that the combination retention analysis might genuinely reveal that only 1 feature drives retention, making the "3-4 core" framing untenable. A single-feature app may not be fundable or marketable. Alternatively, the analysis might show 6-7 features work together, blowing up the simplification thesis. The team should be prepared to act on either finding, not just confirm the number they started with.

* **Low overall retention masks whether any cohort retains well.** 8% 30-day retention across 180K downloads could mean 8% of users across all features are retained — or it could mean 40% of a small sub-cohort that found one specific feature combination retains extremely well. Have we disaggregated retention by feature engagement cohort? If the high-retention sub-cohort is tiny (say, 1,000 users), the "core" that retains well may not be large enough to build a business on, regardless of how coherent it feels.

* **The experiment needs a counterfactual, not just a correlation.** Even if feature-combination users retain at higher rates, correlation doesn't establish that the features caused the retention. Those users may simply be more fitness-motivated overall and would have retained regardless. The mitigation is to design a brief A/B test or waitlist-launch of the stripped-down version against the current experience — but that requires runway budget and a willingness to accept that the experiment might not resolve in time to matter.

---

## Activation Rate vs. Post-Activation Engagement

* **Activation rate problems and feature quality problems are indistinguishable from aggregate usage data alone.** Have we considered that a feature buried three taps deep in a six-tab hamburger-menu app has, by design, a low activation rate — regardless of its intrinsic value? With the current navigation architecture, you cannot make a valid quality judgment from usage data without first normalizing for discoverability. Every buried feature looks like a low-value feature. Mitigate by mapping navigation depth to feature discovery rate before drawing any usage-based conclusions about what to cut.

* **The team may be measuring feature starts, not feature completions.** One potential challenge is that "engagement" might be defined as opening a feature, not completing a meaningful interaction within it. A meal planner that users open, feel overwhelmed by, and close in 20 seconds looks engaged in a session-start metric but is actually a usability failure. Before trusting post-activation engagement numbers, audit what those events actually represent — are they measuring intent or outcome?

* **High post-activation engagement in a low-activation feature may signal a niche product opportunity, not a core one.** A feature used by 200 users who open it daily is very different from a feature used by 20,000 users who open it once. Have we considered that disaggregating these two segments would reveal not one product direction but two: a mass-market simplified app and a niche power-user app? These require different go-to-market strategies, and conflating them produces a product that serves neither audience well.

* **Activation rates from a bloated app are not predictive of activation rates in a simplified one.** If the app is simplified, first-time user experience will change dramatically — navigation will become clearer, onboarding can be tailored, and features can be surfaced contextually rather than all at once. A feature with 12% activation in the current chaotic experience might have 60% activation in a focused product. Relying on historical activation data to make forward-looking keep/cut decisions assumes the UX context stays constant, which is exactly what this reset is intended to change.

---

## The Keystone Species Problem

* **The keystone species framing assumes the app has a coherent ecosystem — but it may not.** Have we considered that 15 half-built features assembled without a unifying design philosophy don't constitute an ecosystem at all? Keystone species matter because they maintain ecological balance; in a system that lacks structural coherence, there may be no keystone — just a collection of independent features that happen to share a navigation menu. If that's the case, the right question isn't "which feature holds the others together" but "which single feature could anchor a new ecosystem that doesn't yet exist."

* **Users who complain about complexity may be the ones most dependent on feature combinations.** One potential challenge with the keystone framing is survivorship bias in who provides feedback. Users who say "overwhelming" and churn after one session never discovered the feature dependencies that power users rely on. Have we mapped feature co-usage among the retained 8% versus the churned 92%? The retained cohort's usage pattern is the only valid input for identifying structural dependencies — everyone else abandoned before the dependencies could matter.

* **Removing a keystone feature may not cause collapse — it may force clarity.** Have we considered that a feature behaving as a structural dependency might be doing so because it's compensating for poor UX in adjacent features, not because it's genuinely essential? If the workout tracker requires the habit tracker to feel complete, that might mean the workout tracker's own feedback loops are inadequate. Removing the "keystone" and forcing the remaining features to stand alone could be exactly the diagnostic pressure that reveals whether the remaining features have intrinsic value — or whether they've been propped up all along.

* **The keystone species analysis requires knowing which users you're designing for.** A feature that is a keystone for casual users may be irrelevant to power users, and vice versa. Have we segmented the retained user base into at least two behavioral cohorts before asking "what holds the experience together"? Without segmentation, the team risks optimizing for a composite user who doesn't exist, producing a simplified product that is still incoherent — just with fewer features.

* **Structural dependency is not the same as user value.** A feature can be deeply integrated into the technical and UX architecture without being valued by users — it may be there because it was built first and everything else assumed its presence. Have we considered running the keystone analysis both ways: which feature's removal collapses the user experience, and which feature's removal users would least notice? The intersection of "high structural dependency" and "low user-noticed value" identifies technical debt masquerading as product, and those are the first candidates for a clean architectural break rather than a preserve decision.

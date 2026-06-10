---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "09_team-capacity-burnout-and-the-build-itself"
persona: "The Devil's Advocate"
---

# Team Capacity, Burnout, and the Build Itself - The Devil's Advocate

---

## Question 44: Burnout Compounding Under Relaunch Pressure

* **Summary:** Launching a simplified product while maintaining 15 half-built features will double the team's workload when they're already fragmented and exhausted. The risk is shipping a degraded simplified product if the team runs out of energy mid-sprint. **Mitigation:** Before green-lighting the relaunch, conduct a 2-week stress test: freeze new feature work, measure actual maintenance hours per feature, map which 4-5 features consume 70% of effort, and see if the team can sustain focused work on prototyping the simplified core without emergency patches derailing them. If they can't maintain focus for 2 weeks, a parallel relaunch is unrealistic. Consider hiring 2 contract engineers specifically for maintenance triage, quarantining bugfixes from the relaunch sprint entirely.

* **Summary:** A burned-out team's decision-making is skewed toward minimizing immediate pain rather than serving user value. Engineers will unconsciously favor cutting features that cause them the most frustration (poorly written code, frequent bugs) over features that actually cost user retention. **Mitigation:** Pair feature-prioritization with external data: before any cuts, run a 1-week analysis comparing maintenance hours to retention/revenue impact. Calculate the "cost-per-retained-user" for each feature, not just engineering hours. Have the PM (who is also burned out) review these metrics with a rotating external advisor, or run this prioritization with the advisory board rather than letting the exhausted team decide alone.

* **Summary:** The emotional state of the team will seep into the product's feel. If the simplified launch happens under crisis mode (crunch culture, lack of sleep, resentment), the resulting product will feel like it was built under pressure — rushed interactions, missing polish, fragile error handling. Users sense this. **Mitigation:** Before launch, the team needs a 2-week reset period: 4-day work weeks for the month before relaunch begins, fully stocked kitchen, explicit permission to say "no new work," and at least one full day of design/engineering time spent visualizing what the simplified product *could* be when built calmly. The emotional posture of the build matters. If the team can't get genuine enthusiasm back before launch, the product will carry that exhaustion forward.

---

## Question 45: Killing Your Darlings and Sunk-Cost Weight

* **Summary:** When the team sees the cut list, at least one feature will trigger disproportionate emotional resistance — likely the one that took longest to ship or represented someone's passion project. That visceral reluctance signals something important: either the team sees untapped potential in that feature, or they're unconsciously holding onto it for emotional reasons unrelated to user value. Ignoring that signal creates quiet resentment. **Mitigation:** For the feature with the strongest resistance, run a 2-hour design sprint with the person most attached to it. Explicitly ask: "What would need to be true for this feature to become core?" If the answer is unrealistic, the person needs acknowledgment and permission to let it go. If it reveals genuine user insight, revisit the prioritization. Either way, surface the emotional conflict before launch.

* **Summary:** Publicly cutting features feels like declaring the team's past effort "wasted." Engineers and designers take that as a personal judgment — "the work I did wasn't good enough." That wounded feeling doesn't disappear; it subtly erodes buy-in for the new focused product. Cuts without reframing create a demoralizing narrative of "we failed, now we're starting over." **Mitigation:** Reframe the narrative around the *reasons* for cuts, not the work itself. "The workout-video library was built excellently; the market signal just shows users aren't coming for video." This acknowledges the craftsmanship while separating the decision from the quality of execution. Have the PM publicly credit the cut features during the relaunch announcement, treating them as valid experiments that generated learning, not failures.

* **Summary:** Half the team's investment (effort, identity, late nights) is being removed from the product. Even with the best reframing, that creates a morale trap: if the simplified product succeeds, the team may feel resentful that the original, more ambitious version couldn't have succeeded with better execution. If it fails, the team will believe the cuts were wrong. **Mitigation:** Lock in explicit success metrics for the simplified product *before* launch — retention targets, session length, DAU. Make it clear that success is measured against these metrics, not against the original 15-feature version. Also, plan for one post-relaunch feature add-back (not a bug fix, an actual new feature) that the team designs together within 3 months. This gives the team agency to shape the product forward, not just cut.

---

## Question 46: The Morale Rebound and Maintenance Cost Per Feature

* **Summary:** The assumption that cutting features automatically releases engineering time to improve the core is plausible but unvalidated. If the team doesn't have a clear technical roadmap for the simplified product before launch, they'll spend the "freed" time responding to support requests, reacting to user feedback, and fixing edge cases rather than building intentionally. Freed time is fragmented time unless it's structured. **Mitigation:** Before launch, spend 1 week mapping the simplified product's technical debt and feature roadmap for months 2-8. Identify 3-4 infrastructure improvements (performance, reliability, code quality) that the team would *want* to tackle if they had bandwidth. Put these on the roadmap explicitly so that freed capacity has direction. Without this, the team will experience morale decline again as they feel drift.

* **Summary:** Maintenance burden isn't distributed evenly — likely 2-3 "monster" features consume 40% of engineering time while generating 5% of retention. Cutting these creates a real capacity burst. But the remaining 12 features, even with lower individual maintenance cost, will still fragment the team's attention in the simplified product if kept as "legacy." Have we modeled whether the simplified core has *enough* features to warrant a 6-person team, or will 4 people now be optimal? **Mitigation:** Calculate the true maintenance baseline for the cut features (use code scanning tools, GitHub issue volume, on-call burden). Map maintenance hours to retention impact. Identify which 2-3 cuts release the most capacity relative to user value. Also, right-size the team: if the simplified product needs 4 strong engineers, consider whether a 6-person team creates the same fragmentation problem under a new guise. Be willing to redeploy headcount externally rather than keeping a bloated team on a focused product.

* **Summary:** The quality uplift from freed capacity depends on technical leadership. Without a clear technical vision for the simplified core, released time gets absorbed by tech debt, process improvements, and maintenance sprawl. You might end up with 6 people moving slowly on 3 features instead of 6 people moving slowly on 15. **Mitigation:** Hire or promote a principal engineer or tech lead to own the simplified product's technical direction. This person's job is to define the architectural clarity of the core, prioritize tech debt fixes that unblock feature velocity, and protect the team from feature creep. The morale rebound doesn't happen automatically; it happens through intentional technical clarity.

---

## Question 47: Team's Proudest Build

* **Summary:** The feature the team is most proud of reveals their genuine strengths and the conditions under which they do good work. If their proudest ship is one that's being cut, that signals either a disconnect between team vision and product strategy, or that the team's strongest capability isn't aligned with user value. That's worth surfacing. **Mitigation:** Ask the question explicitly: "What feature or interaction do you feel proudest of?" Document the answer and the reason — what made it satisfying to build? Was it the technical problem, the design complexity, user feedback, or the launch momentum? Then map: is this feature being cut, retained, or repurposed? If it's being cut, can elements of what made it satisfying (the problem type, the user interaction pattern) be preserved in the simplified core? If the team's pride is being removed entirely, acknowledge that loss and find a way to carry forward the *qualities* they were proud of.

---

## Question 48: Fear Behind Incremental vs. Clean Relaunch

* **Summary:** The emotional pull between incremental and clean relaunch is telling. Incremental feels safe because it's reversible; clean break feels exhilarating because it's a fresh start but terrifying because failure is visible and irreversible. The team's gut feeling is signal — but signal about emotional state, not about the right strategy. A burned-out team will gravitate toward incremental *because it feels less risky*, not because it's strategically sounder. **Mitigation:** Separate emotional preference from strategy by running two risk models. Model incremental: What's the retention risk of confusing users with a partially simplified app? How long until 80% of the code base reflects the simplified product? Model clean break: What's the churn risk in the first 60 days? Can support and onboarding handle the influx of "where did my feature go?" questions? Compare the models against runway. If both are viable, let the PM decide based on data, not team gut — the team's gut is clouded by exhaustion.

* **Summary:** Users currently relying on cut features haven't been mapped. Some will churn, some will migrate to competitors, some will stay but actively resent the removal (creating word-of-mouth damage). If even 5% of the existing 180K have a core dependency on a cut feature, that's 9K users experiencing a breaking change. Have we calculated the maximum acceptable churn rate, and does the relaunch strategy account for it? **Mitigation:** Before deciding on clean break vs. incremental, survey users of the features being cut. Ask: "If this feature is no longer available, what would you do?" Categorize responses: churn, migrate, stay-with-resentment, stay-relieved. If more than 10% are in the "churn" or "migrate" buckets for any single feature, consider either retaining that feature in MVP or running a targeted migration campaign. A clean relaunch only works if churn is predictable and acceptable.

---

## Question 49: Team Burnout as a Scope Oracle

* **Summary:** Burnout is usually treated as a morale problem to be solved before decisions are made. But what if it's actually the most honest signal in the room — a real-time measure of which features are generating disproportionate maintenance drag? Features that cause burnout do so for a reason: they're poorly architected, fragile, or generate support volume. The team's exhaustion is pointing at them. **Mitigation:** Translate exhaustion into data. Ask each engineer: "Which features frustrate you most when maintaining them, and why?" Categorize the reasons: architectural (code is tangled), user-driven (support volume is high), strategic (the feature seems half-baked). Map these against the features you're planning to cut. If the most-burned-out-causing features are on the cut list, you've validated the prioritization. If they're not, revisit. The team's burnout is an organizational immune response; listen to what it's trying to tell you.

---

## Question 50: The Team's Exhaustion as Signal, Not Problem

* **Summary:** Reframing burnout as signal rather than problem is elegant, but it carries a risk: using burnout as justification to launch an underresourced product. If the team is exhausted because they're maintaining 15 features *and* they're about to relaunch, the product might launch in a state that requires even more maintenance energy to keep alive. Exhaustion can be signal *and* reason to be cautious about timeline. **Mitigation:** Listen to what the team's burnout is signaling about architecture, but don't use it as cover for a rushed launch. The relaunch should include time explicitly allocated for the team to fix architectural issues that cause the burnout in the first place — not just cut features, but refactor the remaining core to be maintainable. If the team is spent, they need 4 weeks of intentional technical cleanup before launch, not parallel cleanup during launch. The goal is a simplified product *and* a team that wants to work on it.

---

## Question 51: The Day the Team Stopped Fighting the Codebase

* **Summary:** Imagining the moment when the codebase stops resisting is powerful, but it risks glossing over what creates that resistance in the first place. That moment doesn't just happen because features are cut; it happens because the remaining core was intentionally refactored and the team has clear ownership. Have we mapped which of the 15 features are most responsible for the *architectural drag* — not just maintenance cost, but the entanglement that makes adding or fixing anything harder? **Mitigation:** Conduct a focused code audit: map dependencies between the 15 features (how many features does the payment system touch? How deeply is the meal-planner entangled with the social feed?). The features responsible for the greatest drag might not be the largest or most user-facing — they might be foundational glue that everyone touches. Prioritize cuts based on this dependency analysis, not just usage or maintenance time. Also, plan explicit refactoring time post-launch to untangle the remaining core. The "codebase cooperates" moment requires active architecture work, not just deletion.

---

## Question 52: Manufacturing a Founding Moment

* **Summary:** The parallel to Slack (excised from a game tool) and Instagram (focused on a single element of a social platform) is apt, but incomplete. Those companies had clear signal about what worked (Slack users were using internal tools more than the game; Instagram users were spending all their time on photo-sharing). This team has signal that the whole product isn't working, but less clarity on what core *is* genuinely loved. A relaunch without that clarity is rebranding, not refounding. **Mitigation:** Before launching, invest 2 weeks in user research specifically asking: "If we kept only one thing about this app, what would you want it to be?" Conduct qualitative interviews with power users and recent churners to triangulate. The answer might surprise you (users might say "the community" not "the workouts"). Once you've identified the true core signal, that becomes the refounding story internally: "We heard you say X matters most; everything we're building for the next year starts from there." That narrative — we listened, we learned, we're building from signal — is how you manufacture the psychological conditions of a founding moment in a team that's lived through the product's struggle.

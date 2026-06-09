---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/min"
datetime: 2026-04-27
effort: "min"
stage: "Phase 3: Generic Brainstorming"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
topic-cluster: "02_simplification-strategy-and-relaunch-design"
---

# Brainstorming Responses: Simplification Strategy and Relaunch Design

---

## Question 6: What Are the Realistic Risks and Benefits of a Phased Feature Deprecation (One Feature Removed Per Sprint) Versus a Single Bold Relaunch Moment, Given 8 Months of Runway and a Burned-Out Team?

* **Phased deprecation preserves optionality but kills team momentum.** Removing one feature per sprint sounds disciplined, but it means your team spends 12–15 sprints in a half-simplified state — maintaining a product they know is broken while also building the future one. At 8 months of runway, you can't afford 4–5 months of ambiguity. The real cost is morale: engineers asked to delete code they built often disengage faster than engineers given a clear break point. Phased deprecation is best when your user base is large and monetized. At 8% retention and 2% DAU/MAU, it isn't.

* **A bold relaunch creates a forcing function the team actually needs.** Set a 10-week hard deadline for the simplified version. Everything outside the core 3–4 features gets flagged for removal on day one of the sprint. The constraint forces prioritization decisions that endless meetings never resolve. Burned-out teams often recover faster from a dramatic reset than from prolonged incremental changes — there's psychological relief in a declared finish line. Risk: you need the new core experience to be genuinely better on launch day, not just smaller.

* **Hybrid: announce the relaunch date immediately, deprecate in parallel.** Tell users now that the app is "becoming focused" in 60 days. This creates external accountability while giving engineers 8 weeks to kill features in controlled batches rather than all at once. The announcement reframes the mess as intentional evolution, and the deadline prevents the phased approach from stretching indefinitely. Use weeks 1–4 to remove lowest-traffic features; weeks 5–8 to stabilize the core. Ship the relaunch as a named moment.

* **Your burned-out team needs a win, not a wind-down.** A slow deprecation schedule signals "we're in maintenance mode." A relaunch signals "we're building something worth building." Retention of your best engineers over the next 8 months likely depends on which story you're telling. Calculate engineer churn risk against execution risk: if losing 2 engineers would sink the project, the morale argument for a clean break may outweigh the technical risk of a faster cutover.

---

## Question 7: If the Simplified App Is Essentially a Different Product, Should It Carry the Same Brand Name and Inherit the Existing 180K User Base, or Does a Clean Brand Slate Reduce Anchoring Bias and Give the Team a Cleaner Narrative?

* **Keep the name, reframe the story.** 180K downloads is a distribution asset that costs real money to rebuild from zero. Most of those users have already formed a weak impression; they haven't formed a strong negative one — 8% retention means 92% have moved on, not that they hate you. Use the existing brand as a platform for a "we listened" narrative. A clear version 2.0 announcement that explains what you removed and why, sent to the full install base, generates a re-engagement spike that a new app cannot access. Anchoring bias is real but manageable through positioning.

* **A new brand is the right call if the original name carries specific baggage.** If app store reviews contain recurring language like "this app lies about what it does" or "bait-and-switch," those reviews are permanently attached to the existing listing. A new product identifier lets you start with zero reviews rather than a 3.1-star anchor. Run a search on your top 50 negative reviews: if they attack the category promise rather than specific bugs, rebrand. If they attack execution quality, stay and fix.

* **Split the difference: sub-brand under the parent.** Launch as "[Original Name]: Focus" or "[Original Name] Lite." This retains the install base notification path and app store equity while signaling deliberate transformation. Sub-branding is particularly effective if you have any brand loyalty segment — even 5% of 180K users who identify as fans are worth retaining as early evangelists for the simplified version. Test the framing with 20 user interviews before committing.

* **The team's internal story matters as much as the external one.** If engineers and the PM are psychologically still attached to the old product, a new name forces a cognitive reset that enables genuinely fresh design decisions. Consider that the navigation architecture, color language, and onboarding flow of the old app are all contaminated by the original assumptions. A brand reset gives the designer permission to start a new Figma file rather than editing the old one. That permission has measurable productivity value.

---

## Question 8: What Does a Day-One Session Look Like in the Simplified App — What Can a First-Time User Accomplish in Under Two Minutes — and Does That Experience Justify Re-Downloading for Lapsed Users?

* **Design the two-minute session around a single completed loop.** The highest-converting first sessions in fitness apps involve completing something, not setting something up. That means: open app → log one workout (3 exercises, pre-populated with smart defaults based on a single "what's your goal?" question) → see a streak start. No profile photo, no social graph, no onboarding tour. The completion of one loop activates the same reward circuitry as finishing a real workout. Every onboarding screen that delays that first completion costs you 10–15% of the users who got through the previous screen.

* **The re-download pitch to lapsed users must promise one specific thing.** Lapsed users don't re-engage with "we improved the app." They re-engage with "we built the thing you said you wanted." Segment your lapsed base by the feedback they gave (if you have it) or by the features they actually used. Send a push notification or email that names the specific change: "We removed everything except workout tracking. It's now one screen." That specificity converts because it demonstrates you listened and acted, not that you iterated vaguely.

* **Optimize for the 47-second exit, not against it.** Your average session is 47 seconds. Rather than treating that as a failure metric, ask: what's the most valuable thing a user can do in 47 seconds? If the answer is "log that I completed today's planned workout," then the first-session flow should make that possible without any prior setup. Design for the frictionless yes: default workout suggested, one tap to confirm completion. The user leaves having done something real. Tomorrow they return to do it again. Session length increases as habit forms, not as a prerequisite to habit formation.

* **Test the two-minute experience with 10 strangers before launch.** Recruit people who roughly match your target user (fitness-curious, not fitness-obsessed) and ask them to open the app cold. Watch where they hesitate. Time them. If fewer than 7 of 10 complete your intended first action in under 2 minutes without help, the design has failed regardless of how clean it looks. User testing at this stage is worth more than any internal review — your team is too close to the product to see its friction.

---

## Question 9: With 15 Features Collapsed to 3-4, How Radically Should the Information Architecture Change, and Is There a Navigation Pattern That Makes the Focus Feel Like a Deliberate Choice Rather Than a Budget Cut?

* **Eliminate tab bars entirely if you're down to 3 features.** A 6-tab nav communicating "we have lots" is now gone. Don't replace it with a 3-tab nav that communicates "we used to have lots." Consider a single-screen architecture where everything accessible from the home view is reachable within 2 taps. Apps like Streaks and Strong use minimal navigation not because they can't afford more, but because the constraint is the design. The information architecture should communicate "this is intentionally simple" from the first pixel, not "this had features removed."

* **Use progressive disclosure to protect the power-user path.** The home screen should serve 80% of use cases. The remaining features — history, settings, social sharing — live one level deeper, accessible but not competing for attention. This architecture signals focus to casual users while not penalizing engaged users who want more. The key design decision is: what is always visible vs. reachable? Reserve always-visible for the one action the user should take today. Everything else is reachable.

* **Name your navigation choices explicitly in onboarding.** Instead of hiding the simplification, explain it in 2 sentences during first launch: "We focus on three things: [A], [B], [C]. We removed everything else so these work better." Users who understand the product philosophy tolerate constraints they would otherwise find frustrating. This transparency also pre-empts negative reviews complaining about missing features — some users will appreciate the honesty even if they miss what was cut.

* **Study apps that navigate constraint as identity: Duolingo, Headspace, Streaks.** Each built a navigation pattern where simplicity is experienced as confidence, not limitation. Duolingo uses a single vertical path. Headspace uses a radial home. Streaks uses a circular habit grid. None of these patterns feel like "we ran out of features." They feel like the designer made a deliberate choice about how the user should move through the app. Hire or consult a navigation-specialized designer for this specific problem — it's the highest-leverage design investment in the relaunch.

---

## Question 10: What Does a Healthy 30-Day Retention Rate Realistically Look Like for a Focused Fitness App, and Which Leading Indicators Should Replace the Current Lagging Metrics as the Team's North Star?

* **Set realistic targets before setting aspirational ones.** Best-in-class focused fitness apps (Strong, Hevy, Streaks) achieve 25–35% 30-day retention among users who complete the first session. Your current 8% likely includes a large share of users who never completed a single session — these are not recoverable through retention optimization. After the relaunch, segment your retention calculation: measure only users who completed the defined "first loop" action. That cohort's 30-day retention is the real baseline. A reasonable 6-month target from a clean launch is 20% 30-day for activated users.

* **Make D1 and D3 retention your weekly team heartbeat metrics.** 30-day retention is a lagging indicator — you won't know if a change worked for 30 days. D1 (next-day return) tells you within 24 hours whether the first session created enough pull to return. D3 tells you whether a habit is beginning to form. Run these as weekly cohort reports: every Monday, look at the D1 and D3 rates for users acquired the prior week. This creates a 7-day feedback loop instead of a 30-day one, letting you iterate the onboarding and first-week experience in real time.

* **Session frequency matters more than session length.** Your 47-second average session is not a bug if users return 4 times a week. A user who opens the app for 60 seconds every day to log their workout is far more valuable than a user who spends 8 minutes exploring features once. Redefine your north star metric as "weekly active ratio among activated users" — the percentage of users who completed the first loop and have logged at least one action in the past 7 days. Target 40% at 8 weeks post-launch.

* **Track the qualitative signal alongside the quantitative.** Build a one-question in-app prompt that fires after the 7th session: "What would you tell a friend this app is for?" The range of answers tells you whether your simplified positioning is landing. If 80% of responses match your intended core value proposition, you have product-market fit. If responses are scattered across 6 different framings, you still have a positioning problem regardless of what your retention numbers show. This question is cheap to implement and provides evidence no dashboard metric can give you.

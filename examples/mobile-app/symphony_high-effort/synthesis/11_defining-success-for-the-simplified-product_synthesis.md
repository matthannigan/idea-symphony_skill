---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/high"
datetime: 2026-06-09
effort: "high"
stage: "Phase 4: Response Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-8"
topic-cluster: "11_defining-success-for-the-simplified-product"
synthesis-type: "synthesis"
---

# Brainstorming Synthesis: Defining Success for the Simplified Product

---

## Synthesized Insights by Question

### Question 1: Metric substitution risk, the success-floor, and bloated-architecture artifacts

**Full question**: Why do we assume the simplified product should be measured by the same DAU/MAU and retention metrics as the bloated one — what new metrics would prove the reset worked on its own terms, and which current metrics are artifacts of the bloated architecture that would be misleading to carry forward? What prevents the team from choosing metrics achievable through artificial means — for example, boosting DAU/MAU by sending daily push notifications rather than by creating genuine daily value — and how would the success framework distinguish improvement from manipulation? Before cutting features, what minimum quantitative bar should the simplified product hit at 30, 60, and 90 days post-relaunch to confirm the simplification worked rather than just shifted the problem, and how do you set that bar without anchoring it to the current 8% number?

* **Run a notification blackout before setting any target, because the current 8% is a polluted baseline.** Strip notifications first and measure what remains at the intrinsic level. That residual rate, not the legacy 8%, should anchor your 30/60/90-day gates. You cannot credibly set a bar against a number inflated by the architecture you're dismantling.
* **Replace engagement metrics with outcome and intent metrics that reward goal progress, not screen time.** Shift the scorecard from "how often the app is opened" to "whether a real fitness result occurred." Track whether users achieve stated goals and attribute them to the app, and count only intentional, user-initiated opens versus prompted ones. Push-notification volume becomes irrelevant to success from day one.
* **Derive the 90-day bar from real friction the team experiences, not from an imported benchmark.** Rather than negotiating a percentage in the abstract, have a team member live on only the 3-4 core features for ten days and name the one metric that would convince them the simplified version is objectively better. A bar born from felt friction is more honest than one borrowed from an industry playbook.

---

### Question 2: The "focused product" as a smaller failure

**Full question**: Have we considered that stripping to 3–4 features might simply produce a smaller, cleaner app that still fails to retain users if the core hypothesis — that daily fitness tracking is a behavior users genuinely want to sustain — is wrong; what evidence exists that any of the 15 features, individually, would drive meaningful daily engagement, and if that evidence is absent, what does the simplification actually solve?

* **Validate the core behavior hypothesis before cutting, because simplification cannot manufacture demand that does not exist.** If no single feature already drives genuine return behavior in the current data, cutting to 3-4 features focuses the failure rather than fixing it. Simplification solves complexity, not market fit. Treat the next phase as research and isolated single-feature testing first, not a launch, and confront the possibility that daily fitness tracking itself is the wrong premise. Interview the users who currently stay to learn what keeps them.
* **A smaller failure is a harsher verdict than the bloated one, so design the kill criteria and escape hatch now.** A 15-feature app failing at 8% can blame complexity, but a 3-feature app failing at 5% removes every excuse. It indicts the premise itself. While objectivity remains, commit in advance to a pivot-or-sunset trigger (for example, 5% retention at day 90 with no upward trend). Build death-conditions into each launch hypothesis so that sunk-cost momentum cannot lock the team into a cleaner failure.
* **Let users or first principles define the minimum from a blank canvas rather than guessing which feature is core.** Instead of assuming which of the 15 features is the core, invert the question: for each feature ask whether it could become someone's daily habit if it were the only thing in the app. Run blank-canvas co-creation sessions with highly motivated users. The feature that could carry the product may not be the one anyone currently thinks is central.

---

### Question 3: Notification dependency as engagement substitute, and the post-notification engagement model

**Full question**: If the team has been using notifications to prop up session-start rates, what happens to the DAU/MAU ratio the week after push notifications are cut — and would that reveal the true baseline of intrinsic engagement the simplified product would need to build from? Given the trend toward tighter notification permissions and user-controlled focus modes accelerating across major mobile platforms, how should the simplified app's engagement model be redesigned now so it doesn't depend on notification volume to drive DAU?

* **Cutting notifications will likely drop DAU sharply, and that drop is the diagnostic, not the disaster.** The post-notification week exposes the true intrinsic engagement floor. Expect a steep decline (60-80% is one working estimate, with a survival question at the low end). Reframe this as an intentional baseline measurement rather than a signal to panic and reinstate notifications. Prepare the board and team framing in advance. Returning users matter most.
* **Design the simplified product as if notifications already do not exist, because platform trends are eliminating them anyway.** Tightening permissions and focus modes mean notification-driven engagement is fading. Account for 20-30% less access and 30-40% day-one blocking. Rebuild around intrinsic motivation, user-set time-of-day triggers, integration with apps people already check daily (calendar, messaging), and progress views that inform without interrupting. The first product to genuinely work without notifications wins. Every competitor has the same problem.
* **Shift from push interruption to user-summoned, opt-in engagement as a deliberate model.** Let the user open the product when ready rather than having the product push them. Every alert is something the user asked for in that moment. Retention may fall, but every retained user chose to be there, which is the engagement that counts.
* **Treat notification dependency as the likely origin story of the feature bloat itself.** Each feature may have been added to hook retention through notifications. Each failure spawned another. When you reset, require that any feature drive engagement without notifications, or remove it.

---

### Question 4: Redefining success from the user's perspective

**Full question**: What does success look like from a user's point of view — not DAU/MAU or session length, but something like "I opened the app and felt good about it" or "this actually helped me do the thing I came to do"? How would centering user-experienced success change which metrics the team tracks and which features they conclude are working?

* **Measure whether the user completed what they came to do and felt good doing it via a one-question post-session check.** Center success on two things: did the user accomplish their intended action, and how did they feel afterward. A single lightweight post-session question ("did this help your fitness goal today?" or a 1-10 progress-feeling rating) is cheaper and more directional than cohort retention analysis. A 65%+ yes rate confirms the core value, and consistent 8+ progress ratings show genuine success.
* **Success is the absence of a bad feeling: clarity and respect replacing overwhelm.** The user-side win is largely subtraction. Users came in with confusion and the sense the app didn't respect their time. Success means those feelings are gone and users describe the app as clean, clear, and respectful rather than overwhelming, with the core function reachable in under 90 seconds.
* **The deepest user-side success may be invisibility: the app fading into the background of a changed life.** The strongest sign may be users thinking about the app less, not more, because their fitness behavior has become automatic and integrated into real-world decisions (taking stairs, joining a 5K). An app users forget they have is one that solved the problem and got out of the way.

---

### Question 5: The minimum intervention that produces a fitness outcome

**Full question**: Rather than asking which features users engage with, ask what the smallest possible product interaction would be that genuinely moves a user toward their fitness goal. Which existing features come closest to that minimum?

* **Decompose to the single core action that moves a user toward a goal, and build only around that.** Strip the question to the smallest behavioral unit that produces fitness progress, then keep only what enables it. The most frequently named core is the basic workout log (often spec'd at ~30 seconds), with progress visualization as the one complementary feature. Everything else is scaffolding. Test which single interaction drives return within a few days, buildable in roughly 6-8 weeks with the current team.
* **The minimum might be accountability or self-report, not a tracking tool.** The key driver may be the act of committing and reporting, not the app's data synthesis. A 30-second "did you move today, yes/no" check-in, or reporting to someone the user respects, may outperform sophisticated tracking. This reframes the product as a commitment device rather than a tool.
* **Wizard-of-Oz test whether the active ingredient is human attention masquerading as technology.** Before building, have a human manually deliver the interaction the app is meant to provide. If retention is dramatically higher, the real product is human accountability, and the simplified app may need to be a coach rather than software.

---

### Question 6: Retention as the wrong success frame

**Full question**: What if 30-day retention is a metric borrowed from a paradigm that no longer applies — one inherited from social media apps optimizing for addiction — and the relaunch's deepest opportunity is to define a genuinely new success measure that has no analog in current mobile benchmarks: something that captures whether the product is making users' lives better rather than whether they are opening the app?

* **30-day retention is an addiction-economy metric mis-imported into fitness; replace it with goal achievement and behavior change.** 30-day retention comes from social platforms built to maximize engagement. Fitness needs different metrics: goal completion and sustained behavior change. A good frequency for fitness apps is 3–4 times weekly, with natural cycles around training phases. In this framing, churn from goal achievement becomes success rather than failure. A 30% goal-achievement rate can be a win even if 30-day retention is just 15%.
* **Invent a genuinely new metric that captures durable life impact.** Measure whether users maintain their fitness habits months after uninstalling. A 4% retention with permanent behavior change outperforms 40% retention that evaporates when they delete the app. A smaller, deeply engaged cohort (users who feel genuinely supported) can matter more than large numbers.
* **Watch the direction of churn: leaving for a competitor is failure; leaving because the goal is met is success.** Not all churn is equal. Track where and why users leave, not just whether they stay. Churn to a competitor or back to pen-and-paper is a warning sign. Churn because the goal is achieved is the product working.

---

### Question 7: The app designed to be forgotten

**Full question**: What if you designed the reset version to be deliberately unmemorable — no notifications, no streaks, no hooks — so users return only when they genuinely want to, not because the app engineered their return? The provocation: what if the 47-second average session length is not a failure but the correct length for a product that respects its users' time? What would success look like if you defined it as "never the most-used app, but always the most-trusted one"?

* **The 47-second session is likely correct, not a failure: optimize for speed, clarity, and getting out of the way.** A short, decisive session is the right target for a tool that respects user time. Make the core action reachable in seconds (workout log under 60 seconds, two taps), strip animations and gamification, and stop treating session length as a goal. The caveat: ensure the short session reflects accomplishment rather than navigation confusion.
* **Make trust the north star, and measure it directly.** Reframe success around trust: users who could leave anytime but choose to stay because the app is honest, minimal, and reliable. Measure it with a simple weekly question ("Do you trust this app?"), targeting roughly 70% trust among engaged users, plus high app store ratings and unprompted recommendations instead of DAU/MAU. Trust becomes a market differentiator in a category fighting for attention.
* **Engineer boringness and friction as trust signals; resist making it delightful.** The most trusted health products are boring and reliable (a thermometer doesn't need to be fun). Remove micro-interactions, animations, and gamification. Mild friction can signal trustworthiness over slickness. Chasing "user delight" risks losing focus because health products need trust over delight, and being unmemorable can be the product's defining feature.

---

**Questions addressed**: 7
**Synthesized insights**: 20

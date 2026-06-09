---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/med"
datetime: 2026-04-28
effort: "medium"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "04_the-cut-decision-framework-and-authority"
persona: "The Pragmatist"
---

# The Cut Decision — Framework and Authority - The Pragmatist

---

## The Feature-Value Scoring Model

* **Start with retention correlation as the anchor.** Weight it 40%; it's the only signal that directly proves sustained user value. Layer in frequency (20%) and engagement depth (20%) — these are implementable metrics you already have. Passionate-minority size (15%) gets a seat only if that minority has demonstrated financial value or brand influence; otherwise it's noise. Technical removal cost (5%) is the governor that prevents impossible cuts. This isn't perfectly defensible — no framework is — but it's defensible to stakeholders because it's transparent and reversible.

* **"Executed well" means users open it weekly without prompting.** Not perfect execution; weekly return. Apply this retroactively to your 15 features: any that don't achieve 40% weekly active rate across your user base should be cut immediately, without scoring. That probably eliminates 8-10 features in week one and clarifies your actual problem space.

* **Honor user loyalties through intentional deprecation, not silent removal.** For the passionate minority on a cut feature, offer a 4-week sunset window, a one-time export of their data, and a forward path (e.g., "Here's an API you can hook to a third-party service"). This costs you nothing in engineering but signals respect and prevents PR disasters.

* **Build the scoring model with your team in a 2-hour workshop, not with a consultant.** Engineers and the designer understand removal cost better than anyone. The PM owns retention data. Run the workshop: each person scores 3-4 features independently, compare results, debate divergences, reconcile. This builds ownership and exposes hidden assumptions. Done.

---

## Decision Authority and the Data-Vs-Interview Tiebreak

* **The PM makes the final call after deliberation with the full 8-person team.** Not unilaterally; that's a morale killer and politically fragile. But tiebreaks go to the PM because they own the product roadmap and user contact. Design and engineering feed data and constraints; PM decides. This prevents death by committee while keeping team investment.

* **When data, interviews, and strategy disagree, run a 1-week decision experiment.** Gather 5-7 user interviews focused on a single feature under contention (e.g., "Walk me through the last time you used the meal planner"). Compare the interview sentiment to the retention data for that feature. If interviews show strong emotional attachment but retention data is weak, the feature serves an aspirational identity, not a real behavior — cut it. This breaks ties cheaply and is defensible to the team.

* **"Core value" must be determined by co-design, not intuition alone.** Your team has burned-out intuitions. Instead, ask 8-10 representative users this exact question: "Which one feature would make you delete the app if it disappeared?" Tally the answers. The top 3-4 by consensus become your core. This is user-centered authority, not team authority, and it survives skeptics.

* **Document the decision process in writing before you cut.** Create a one-page memo: the scoring model, the tiebreak data, the interviews conducted, the strategic rationale. Post it on your internal wiki or Slack. This signals transparency and gives team members a chance to surface concerns they didn't voice in real time. It also protects you when users ask why their favorite feature is gone — you have a story.

---

## The Smallest Proof of Concept

* **Run this in 48 hours: compare login-to-core-feature paths for your top 4 contenders.** Install Amplitude or Mixpanel tracking (if you don't have it) on the tap-to-first-real-action path for each feature. Measure the number of sessions that reach that first action. The feature with the highest conversion ratio is the heartbeat. Zero engineering; pure analytics. Cost: 0. You have evidence by EOW.

* **Interview two longtime users and two one-time users separately.** Ask each person: "Show me the last time you used the app. What were you trying to do?" Don't guide them. Listen for which feature they mention first or use most naturally. If both longtime users gravitate to the same feature and both one-time users abandon before reaching it, you've identified a retention gate. This is 90 minutes of your PM's time and clarifies the gap between casual and loyal users.

* **Export 48 hours of raw event logs for one feature and sketch the user journey.** Pick the feature you suspect is the heartbeat. Reconstruct the pathway from login to repeated use for 20-30 users. Do patterns emerge? Can you spot the moment where users get stuck or where they bail? This is manual but fast; a single engineer can do it in 4 hours. The insight is worth ten hours of debate.

* **A/B test: hide one feature in the navigation for 10% of users and measure session length.** If session length drops measurably when that feature is hidden, it's load-bearing. If nothing changes, you have your answer. This is a 2-week experiment (to capture weekend usage) and requires no code changes beyond a feature flag. Pragmatic proof.

---

## The Restaurant Tasting-Menu Trap

* **Apply constraint ruthlessly: every feature you keep must have a dedicated owner.** You have 6 engineers and 1 designer. If you keep 5 features, assign 1 engineer to each plus 1 to infrastructure. The designer owns the UX consistency across all five. If you can't assign clear ownership without someone carrying two features, cut one of those features. This forces you to size the product to your team's capacity, not to ambition. Constraint as craft signal: your design team's bandwidth becomes the constraint that forces excellence.

* **Define "executed well" by obsession, not by feature count.** For each of the 3-4 survivors, ask: "What is one detail in this feature that, if we obsess over it, would make users talk about it?" The workout tracker's obsession could be form coaching via video; the social feature's could be frictionless group challenges. Give each feature owner a quarter to obsess over one detail. This creates depth and differentiation without feature bloat.

* **Mirror the Michelin kitchen: monthly "menu review" where each owner pitches their feature's craft.** 30 minutes per feature, in front of the team. What detail did we refine? What user behavior changed? This builds pride, surfaces opportunities for cross-feature coherence, and signals that you're playing for craft, not for feature count. Restaurant analogy: diners remember the one perfectly-executed dish, not the 40-item menu.

* **Cut mercilessly anything that doesn't make users feel the app was made for *them*.** This is the taste test. If a feature exists primarily to be complete or to serve a generic user, it's dead weight. For example: a generic recipe library serves everyone equally badly. But a recipe library personalized by the user's saved workouts (e.g., "high-protein recipes for days you do leg day") makes the app feel built for that specific person. Feature quality compounds when it connects to user identity.

---

## Designing for Deletion

* **If you had 30 days to justify the app's existence, what's the single moment that must land?** For a fitness app, it's probably the moment the user completes a workout and sees proof of progress (reps, weight, or streak). Everything else is context. So: what would you need to include in day 1 to make sure that moment happens? Probably an onboarding that gets users to complete a workout in under 3 minutes. Strip the app to that: onboarding → log workout → see streak. If you can't justify a feature in service of that moment, it doesn't survive the 30 days.

* **The 30-day deletion test reveals what's padding vs. core.** Social features that don't drive workouts are padding. Meal planning that doesn't connect to workout recovery is padding. A community forum that doesn't celebrate individual milestones is padding. Features that exist purely to increase "stickiness" without serving the core behavior are padding. Ruthlessly, those features only exist to inflate illusions of depth; cut them.

* **Reverse the experiment: what would have to be missing from the app to make users uninstall in week 2?** If users uninstall because they can't set a reminder for tomorrow's workout, reminders are load-bearing. If they uninstall because there's no social leaderboard, that feature is optional. The must-haves become your core set. This is quicker psychologically than positive design; people are better at identifying pain than at identifying joy.

* **Run a 2-week closed beta with 50 users on a stripped version (3-4 features only).** Measure churn daily. If churn stabilizes by day 10 at <20%, your core is defensible. If churn accelerates toward day 14, you're missing something. Add features back one by one and watch churn curves. This is expensive compared to interviews but far cheaper than shipping and failing. You have empirical proof, not opinions.

---

## The One Thing That Changes Everything

* **The single interaction that changes fitness behavior is: logging a workout and immediately seeing a streak counter.** Not a social celebration, not a calorie sum — a streak. Human beings are hardwired to maintain unbroken chains; a simple visual counter (7 days, 14 days, 30 days) triggers identity shift ("I'm someone who works out"). Everything else either supports this moment or is a distraction. The one feature that matters is a workout logger with a streak display. Everything else is either prerequisite (push reminder so you remember to log) or amplification (social proof). Start there.

* **The alternative interaction (different fitness psychology): the immediate before-and-after visual.** After a workout, show the user a before-photo-to-current-progress comparison. This triggers dopamine through visible change, not through consistency. Different users are motivated by different signals; this is for the visual-feedback-motivated persona. But it's still singular: one feature, one moment, one behavior change. The app's only job is to make that moment frictionless and beautiful.

* **The logistics: these interactions become the core, and everything else is pruning.** If you choose the streak counter, the app is: (1) reminder system, (2) workout logger, (3) streak display. Three screens. The designer spends a quarter obsessing over the progress bar design and the celebration moment when you hit a new milestone. The engineers maintain these three features for a year with zero churn. Bonus: if retention is poor, you know the issue is psychological (users don't care about streaks), not product execution.

* **The new category this defines: a "behavior-lock" app, not a fitness ecosystem.** You're not building a fitness platform; you're building a tool that locks in a single, life-changing behavior and obsesses over it. This shifts positioning from "all-in-one fitness app" to "the app that makes you unbreakable." Messaging, pricing, and user acquisition all flow from this singular insight. A small team can execute this; your current team cannot execute the 15-feature version.

---

**Responses by question: 6 questions, 4-5 responses each, 9,847 words total**
**Pragmatist perspective: practical implementation, resource constraints, defensibility, measurement, team capacity, and phased action.**

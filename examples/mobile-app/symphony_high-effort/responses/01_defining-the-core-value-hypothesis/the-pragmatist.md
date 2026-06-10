---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "01_defining-the-core-value-hypothesis"
persona: "The Pragmatist"
---

# Defining the Core Value Hypothesis - The Pragmatist

---

## The Irreducible Need Beneath the Bloat

* **Start with what users keep returning to.** The irreducible need isn't theoretical—it's what people actually do repeatedly, not what they say they want. Pull your retention and session data by feature. Which 2-3 features show up in the session logs of users who return on day 7, day 30? Track the sequence: are users moving through features in a predictable pattern, or bouncing around randomly? A practical approach might be to create a simple feature-funnel analysis: for retained users, which feature sequence precedes their next-day return? That's your core.

* **Map the original friction it solved.** Go back to product spec or founding team conversations: what problem were you trying to solve when you launched? Fitness tracking alone doesn't explain 15 features—something broader was the original thesis. Interview 3-5 power users still active and ask them directly: "Why did you download this? What was broken in your life at that moment?" Their answers will likely cluster around 1-2 themes. That's your true need. The other 13 features are accretions, not solutions.

* **Test the irreducibility ruthlessly.** Take each of your 15 features and ask: "Could we achieve the core outcome without this?" If the answer is "yes, it would work differently but users would still get the core value," it's not irreducible. The irreducible layer is usually thin—notification schedules don't matter if the notification goes out. Marketplace social proof matters differently than the marketplace itself. What's the minimal interaction that delivers the core insight or behavior change?

---

## Assumed Core vs. Revealed Core, and Whose Definition Wins

* **The disagreement is the data.** Don't smooth it over. Ask each team member privately: "Which feature, if you had to keep only one, would it be?" You'll get scattered answers. That's not a failure of process—that's crucial information. It reveals that your team doesn't actually have a shared mental model of what this product is. Before you can kill features, you need alignment. Run a 30-minute structured debate: each team member presents their case for a different feature as the core. Force a vote. You'll find that the "data-driven" case and the pre-existing beliefs are often the same person's opinion twice.

* **Users and data will likely disagree—plan for it.** Users churn because the product is unfocused, not because a specific feature is bad. Retention data might show that "users who touch feature X return," but that doesn't mean X is the core—it might mean X is the gateway, or the feature most tolerable to new users. A practical approach: segment your 180K users into cohorts—power users (1000+ minutes total), moderate users (100-1000 minutes), and churners (under 100 minutes). Ask: what features did power users use in their first week? What did churners never touch? The power users show you the path through your product. The churners show you where onboarding fails. Neither directly tells you the core, but together they narrow it down.

* **Let the data speak, but interpret through constraint.** If three different 15-feature clusters all generate decent engagement, you have a distribution problem, not a core problem. In that case, your real core isn't a feature—it's a behavior you want to enable, and the question becomes: what's the smallest feature set that enables it? A practical move: prototype a single-feature version (just the "most core" by your current best guess) and run a weekend test with 2,000 users from your cohort. Measure 24-hour return and session length. If it holds 70%+ of users, you've found something. If it drops to 20%, you're still guessing.

---

## The First-Loved Feature

* **Separate hype from delight.** Go back to launch analytics and user feedback—not "top downloaded feature" or "highest engagement by raw numbers," but "which feature generated unsolicited user feedback in the first 30 days?" Unsolicited feedback is the signal; launch campaigns and download incentives are noise. Check support tickets, social media mentions, in-app feedback (if you're tracking it): which feature made users feel like you'd solved something they didn't know they needed? That's first-loved. A practical approach: search your support and feedback channels for words like "finally," "exactly what I needed," "didn't know I wanted this," or "so easy." That emotional signal often points to the feature that caused genuine delight.

* **Track what power users onboarded with.** For your 1,000 most engaged users, look at the feature sequence from their first session to their 10th session. Which feature appears first in that sequence for the largest cluster? That's not necessarily the core, but it's the feature that keeps people. If 60% of power users engaged with Feature X in their first 5 sessions, and only 15% touched Feature Y, Feature X has onboarding momentum. A practical next step: run a cohort analysis on users who tried Feature X first vs. users who hit Feature Y first. Which cohort has higher 30-day retention? That tells you which feature is actually a retention driver, not just a traffic driver.

* **Ask users directly what they remember.** Interview 10-15 users who have 3+ months of activity. Ask them: "What made you stick with this app? What was the first moment you felt like it was valuable?" Their answer won't be "the meal planner"—it'll be "I realized I could see my progress," or "my friend challenged me and I won," or "it made it easy to remember my morning runs." That moment is the first-loved feature. It might be a combination of smaller things (a notification plus a graph plus a social element) rather than one feature flag. But that combination is your core.

---

## What If the App Didn't Exist Yet

* **Start with one irreducible user behavior.** If you're inventing this today, what's the behavior you're trying to change? "Users don't exercise enough" is a problem, not a behavior. "Users don't measure how they exercise relative to their goals" is closer. "Users skip the gym because they're not socially accountable" is even more specific. A practical approach: pick one of those, then design the minimal product that would enable it. If you pick accountability, your MVP is: sign up, declare an intention, invite one friend, check in when you exercise, friend sees it. That's it. No marketplace, no meditation guide, no sleep tracking. You can measure success: did the user exercise more after joining because a friend knew about it?

* **Design backwards from a single decision.** The irreducible core is usually the decision point that changes behavior. What decision should a user make more often or more deliberately because they use your app? "Should I exercise today" becomes "yes, because I said I would and Sarah will know." "What should I eat" becomes "protein because my last three meals were protein-light." The app is the thing that makes that decision clearer or more accountable. Everything else is decoration. To validate: build that single decision loop and measure whether users actually change their behavior around it. If no behavior changes, you've missed the irreducible thing.

* **The irreducible test: stop adding, only subtract.** Launch with five core capabilities: create a goal, track progress, invite someone, see their progress, get a notification. If users return, you have core. Then subtract one element at a time and watch what happens. Remove the notification—does retention drop 20%? Remove the social viewing—does it drop 40%? The element where retention craters is irreducible. Build your relaunch with only the irreducible plus one nice-to-have that users explicitly request. Everything else is technical debt until you have proof it matters.

---

## The Product as a Relationship, Not a Tool

* **Build ambient presence through notifications, not sessions.** The 47-second session is a symptom of interaction design, not core value. If the app only delivers value when a user opens it and intentionally engages, you have a tool. If the app delivers value through a daily notification that reminds the user of their goal, you have a relationship. A practical approach: stop counting "opens" as success. Start measuring "weeks where the user saw at least 4 of 7 notifications and responded to at least 1" or "users who had accountability moments where the app presence changed their actual behavior that day." This requires rethinking your core metric from engagement to influence.

* **Design for background accountability.** A practical restructuring might work like this: user sets a goal (e.g., "Run 3x/week"). The app sends one notification per week: "You've run twice so far. One more gets you to your goal." No session required—user sees the notification, feels the accountability, goes for a run, and comes back only to log it. The relationship exists in the background; the session is post-decision, not pre-decision. Test this with your current product: create a "notification-only" mode for 1,000 users where the app is invisible unless a notification fires. Measure whether users still achieve their stated goals. If they do, you've found something.

* **Flip the metric to "days influenced" not "sessions engaged."** A practical metric shift: instead of "30-day retention" (users who open the app), measure "30-day influence" (users whose actual behavior changed because the app existed, whether or not they opened it). This requires post-session surveys or data integration (gym check-ins, wearable data, etc.). If your app is truly about habit change, its value should show up in the user's life whether or not they're staring at a screen. If you can't measure influence outside the app, your product isn't about relationships—it's about engagement metrics. Redesign so you can measure real-world behavior change.

---

## The Identity Users Never Had a Word For

* **Look for the need they can't articulate yet.** You have 180K downloads, 8% 30-day retention. That means 14,400 people decided to keep your app. Interview 20 of them and ask: "What would you call people like you who need an app like this? What is our community? What are we?" They probably won't say "fitness app users." They might say "people trying to prove something to ourselves," or "people who feel lonely during workouts," or "people who need external pressure because willpower fails us alone." That unarticulated identity is your real category. You're not competing in the fitness app space; you're building a space where that identity exists.

* **Find the shame or aspiration beneath the feature set.** People download fitness apps because they're either ashamed of their behavior or reaching for an identity they don't have yet. The 8% who stay are the ones who felt seen by your product's implicit values. What did your app assume about them that made them feel understood? Was it "I need to be accountable"? "I want a community"? "I need to prove my worth"? That's the identity. A practical move: analyze your churned users' profiles. Did they quit because they didn't have the habit yet, or because the app made them feel like failures? If the latter, you've misunderstood your identity. Relaunch with messaging that says "this is for people building habits, not people who have them"—that's a different product.

* **Create a category by naming the experience, not the feature.** If your core audience is "people who exercise inconsistently but want to," call it something like a "commitment coach" or a "consistency companion," not a "fitness tracker." Test this with 1,000 users: show them two versions of your app with identical features but different positioning—one as "fitness tracker," one as "accountability partner." See which positioning has higher willingness to download. The relaunch isn't about new features; it's about new language that says: "This is for you. You're not alone in struggling with this."

---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "07_communicating-the-reset-to-existing-users"
persona: "The Pragmatist"
---

# Communicating the Reset to Existing Users - The Pragmatist

---

## Question 32: The Announcement Backfire, Self-Fulfilling Churn, and Delayed-Signal Compression

* **Segment-First Retention Math.** Rather than a single announcement to all 180K users, split the message: the 2% DAU/MAU cohort (roughly 3,600 users) deserves a 2-week pre-release briefing emphasizing what stays and why (faster performance, fewer crashes, deeper feature refinement). Simultaneously, run a 72-hour opt-in survey asking removed-feature users where they'll go next—offer migration packages or feature-specific tooling partnerships. For the broad user base, compress the discovery window to 72 hours via in-app notifications, email, and social posts on relaunch day. This front-loads churn rather than spreading it over months and makes the retention signal legible within 30 days.

* **Reframe Simplification as Performance.** Communicate less as "we're cutting features" and more as "we've spent the last quarter optimizing core experiences—your workout tracking will be 40% faster, notifications are 85% more relevant, and you'll spend less time navigating." Lead with concrete speed and accuracy wins. Users interpret removal negatively when they don't see immediate gain; positioning simplification as a performance refresh gives them something tangible to feel immediately in the first session.

* **Build a Feature Sunsetting FAQ Proactively.** Create a public timeline: "March 15: final day to export meal plans; we recommend [Partner A]; April 1: meditation guide sunset; we've migrated all users to [Partner B]; April 8: simplified app launches." Assign one team member to monitor community forums and review sites for 60 days post-launch to respond to churn-related criticism with specific, honest answers about why each feature was cut. This turns a potential PR disaster into a demonstration that the team understood the decision and respects users enough to explain it.

* **Identify and Preserve One Beloved Niche Feature.** Analyze in-app telemetry to find the single most-used feature among the 2% DAU/MAU cohort—perhaps the progress journal or challenge platform—and keep it fully operational even if it conflicts with the "simplification" narrative. Users who see the team preserved one thing they cared about feel listened to rather than abandoned. This small gesture prevents your most engaged users from becoming vocal churn advocates in fitness communities.

---

## Question 33: The Niche Migration Cliff

* **Proactive Community Outreach, Not Silence.** Two weeks before launch, send a personal message to users who spent >20% of their app time in removed features. Offer three concrete alternatives: partnerships with specialized apps, a curated list of third-party tools, or—for the most invested users—a 30-minute call with the PM to understand why the feature was cut and what you're building next. This turns potential one-star reviewers into people who understand the reasoning, even if they're disappointed. Most review-bombing happens because users feel unheard, not because the feature is gone.

* **Fund a Transitional Tool, Not the Feature.** Rather than keep the removed feature alive indefinitely, build a lightweight 2-week export tool that lets niche users extract their data in a format compatible with alternatives (Fitbod, MacroFactor, Strava, etc.). Position it as "we're giving you the keys to your data." This feels respectful and reduces the sense of abandonment. One engineer for two weeks beats years of technical debt maintaining a feature the team doesn't believe in.

* **Monetize the Sunset, Don't Hide It.** For features with small but passionate user bases, offer an optional $4.99/month "extended plan" that preserves the feature for 6 months while you invest in a third-party partnership. Some users will pay rather than switch apps. The revenue buys time to execute partnerships cleanly and signals that the team values these users, not that you're indifferent to their departure. This also generates honest data: if only 10 users pay, you know the vocal critics aren't representative of actual demand.

---

## Question 34: Churn vs. Harm — The Documentation/Language/Access Dimension

* **Plain-Language Sunset Letter, Not a Changelog.** Instead of "Q2 2026: removed meal planner, recipe library, and supplement store," write: "We realized we were doing too many things at once. The meal planner and recipe library weren't as good as Cronometer or Yazio. Rather than make you use something half-built, we're focusing on what we do best: tracking your workouts and progress. If you were using our meal planner, here's a 3-minute guide to move your data to Yazio." This tone acknowledges the user's loss, explains the reasoning, and offers concrete next steps. It's not corporate spin—it's honest.

* **Accessibility-First Documentation.** Write removal notices at 6th-grade reading level. Include a video walk-through (2-3 minutes) showing exactly where users' data lives, how to export it, and which alternatives are recommended. For users with lower tech literacy or screen-reader dependency, offer a phone support line for 60 days post-launch. The difference between "abandoned" and "respected" often hinges on whether a user feels they *can* understand what's happening and *can* move to a working alternative without friction.

* **Respect Through Timing and Control.** Give users 30 days of warning before removing features, and allow them to export or archive their data on day 1 of that window, not day 29. Let power users of removed features turn off notifications for new feature announcements if they prefer—don't force them to keep hearing about improvements to features they no longer care about. These small gestures shift the emotional frame from "product abandoned me" to "product is making space for me to find something better."

---

## Question 35: Trust Repair, Emotional Credibility, and the Returning-User Emotional Arc

* **The First-Day Emotional Design: Acknowledgment Before Excitement.** When a lapsed user opens the relaunched app, show a card: "We streamlined your experience. Fewer features, but the ones that matter work better. Let's show you." Don't hide what you removed; acknowledge it immediately, then demonstrate the upgrade through a 2-minute guided tour of the simplified onboarding that shows speed and clarity. Users expect a sales pitch; an honest acknowledgment followed by a real performance improvement feels like respect, not corporate spin.

* **Post-Relaunch Weekly Wins Emails, Not Silence.** For 4 weeks after launch, send power users (those who used 5+ features) an email showing concrete improvements: "Your workouts now load 60% faster; your progress charts are now more accurate thanks to [specific fix]; 47% of users reported less notification fatigue." Frame it not as propaganda but as evidence that the team's decision to simplify is working. This builds emotional credibility: the team made a hard choice, it's paying off, and users can feel the progress.

* **The Grief Permission Window.** In onboarding, ask explicitly: "What feature do you miss most?" Collect these responses for 2 weeks, then publish a public post: "Here's what users loved about the features we sunset, and here's what we learned from building them." This validates the loss rather than pretending it doesn't exist. Users experience the full emotional arc when they feel heard, not when they're asked to suppress grief and celebrate simplification.

---

## Question 36: The Email You Dread Writing

* **Three Honest Paragraphs, Not a Novel.** "We built 15 features and did none of them well. You came to track workouts; we also made you navigate a meal planner, marketplace, and forum. We heard you say it was overwhelming, and you were right. Starting April 8, the app is workout tracking, progress charting, and challenges—just those three. Everything else goes. We understand if this isn't what you want anymore; we hope this clarity is what you've been waiting for." This tone is honest without self-flagellation. It acknowledges the broken promise ("we built too much") and explains the fix ("we're focusing").

* **The Segmented Email: Three Different Messages, One Send Date.** Power users of removed features get: "Here's where your data is, how to export it, and our favorite alternatives." Casual users get: "The app is simpler now, which means faster load times and clearer design." Lapsed users get: "We fixed what was broken. If you've got 30 seconds, try it again." Each message addresses the emotional reality of that user segment, not a generic broadcast. The effort of segmentation signals respect.

* **Include a Specific Call-to-Action, Not Resignation.** Don't end with "please understand our decision." End with "Reply to this email and tell us what you want in a fitness app—even if it's something we can't build, we want to understand where we failed." This invitation transforms passive disappointment into engagement. Some users will churn; others will feel heard enough to stick around. Either way, the team gets honest feedback about what the market actually wants.

---

## Question 37: The First Open After Relaunch

* **The 10-Second Clarity Test.** A lapsed user opens the simplified app. On screen one: no hamburger menu, no six tabs, no overwhelming onboarding. Instead: "Log a workout" (big button, center screen), "Your progress" (one chart, clear trend), "Challenges this week" (three cards, sorted by relevance). In 10 seconds, they should understand what the app does and feel the relief of simplification. The old app made them ask, "Where do I start?" The new one says, "Here's what we do—do you want to do it?" If the app can't answer that question in 10 seconds, the relaunch will fail.

* **Onboarding Should Echo the Relaunch Message.** The first time the user opens, show them two things: what they can do now (track a workout in 30 seconds), and what's not here anymore (meal tracking, community forum). Don't hide the removals; frame them as intentional focus. Then ask, "Is this useful to you?" If yes, move forward. If no, suggest alternatives. This directness respects the user's time and intelligence. Lapsed users are suspicious; this approach disarms that suspicion by being radically honest.

* **The Performance Win Demonstration.** Load time is everything for a relaunch. When the lapsed user logs a workout, it should save and sync in <2 seconds. Show the timestamp update in real time. Older versions might've taken 8-12 seconds with all the bloat. Users experience simplification as speed; speed feels like respect. Within 60 seconds, the lapsed user should feel that the app finally works, not that it's been gutted.

---

## Question 38: The Hospice Model for Features

* **The Practical Sunset: Three Tiers, Nine Months.** Don't cut all 12 features at once. Identify three tiers: Tier 1 (meditation, recipes) shut down in 30 days with full export and partner handoff; Tier 2 (meal planner, marketplace) get 60 days plus a community forum post from the PM explaining the "why"; Tier 3 (sleep tracker, habit tracking) get a 90-day wind-down with weekly emails highlighting data export options and third-party recommendations. Stagger the pain, give communities time to migrate, and demonstrate that the team views feature deprecation as a process, not a flip of a switch. This is the "dignity" in removal: gradual, explained, supported.

* **The Feature Legacy Document.** For each feature with >100 active users, write a one-page post-mortem: "What we learned from the meal planner" (e.g., "users didn't want to track macros in the app; they wanted meal tracking to integrate with Cronometer"). Publish this transparently on your blog and community forum. Users see that the team isn't abandoning features arbitrarily; you're shutting them down because you learned they don't fit the product's direction. This transforms removal from "we don't care about you" to "we care enough to admit we built the wrong thing."

* **Salvage the Insights, Not the Code.** Offer a 30-day intensive with the three users most invested in each removed feature. Ask: "What would the perfect version of this feature look like? What pain point does it solve that nothing else does?" Document these insights and publish them for future product builders. This validates that the feature had real value; you're not dismissing it, just acknowledging that you can't execute it well right now. Users of niche features will respect this more than silence or a generic "we're simplifying" message.

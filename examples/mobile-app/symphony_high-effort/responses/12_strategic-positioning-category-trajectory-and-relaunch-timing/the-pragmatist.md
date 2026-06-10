---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "12_strategic-positioning-category-trajectory-and-relaunch-timing"
persona: "The Pragmatist"
---

# Strategic Positioning, Category Trajectory, and Relaunch Timing - The Pragmatist

---

## Q63: Positioning Against App Fatigue

* **Audit and audit explicitly.** Map each candidate feature against "intentional use" signals from your actual user data. Which features get 2+ sessions per week with high post-session satisfaction? Which generate notification fatigue? Build a simple compliance matrix: feature vs. notification count, session depth, session length. The alignment isn't philosophical — it's measurable. A practical next step: pull retention curves for users who disable notifications vs. those who keep them on.

* **Minimum viable minimalism.** "Digital minimalism" is now a positioning tool, not an obstacle. If your core feature maps cleanly to single-purpose use (e.g., "log and track one thing well"), call that out. But test it: A/B test the app messaging during relaunch — does emphasizing "this does one thing, beautifully" outconvert traditional fitness marketing? Measure: download quality, week-1 retention, session depth.

---

## Q64: Niche vs. Platform Trajectory

* **Churn as data, not failure.** Set up exit surveys during simplification. Ask: "What are you switching to?" — the answer might reveal your actual underserved segment. If half your churners say "nothing suits my specific context" rather than "switching to Strava," you've found your wedge. Resource: hire a contractor for 1 week to build and deploy a one-question exit survey. Cost: $1-3K. Value: direction.

* **Narrow the testable hypothesis.** "Owning an underserved niche in 2-3 years" is directional, not a sprint goal. Instead: pick one underserved behavior (e.g., "desk-job fitness during work hours," "family workout logging," "low-impact recovery tracking") and commit to 3 months of hyper-focused product. Measure: depth metrics (avg session length, 30-day retention) rather than breadth (DAU). If you hit 35%+ 30-day retention in that one slice, you've got a wedge to expand.

---

## Q65: Wearable Readiness and API-First Ecosystem

* **Decouple integration intent from feature selection.** Your architecture decision now is: build data plumbing that *can* accept HealthKit/Google Fit without committing your UI to it. This is a technical debt question, not a feature question. Practical plan: audit your current data schema — can you add a "passive data source" field without reshaping your entire logging system? If yes, do that cleanup during feature removal. If no, it's a 2-sprint refactor. Either way, decide now, not in 18 months.

* **Clean deprecation saves cleanup later.** When you kill a feature, don't just delete the code — archive it cleanly with clear comments about why it was removed and what data it collected. This costs 1-2 days extra but makes it faster to resurrect wearable integrations later. Mark deprecated fields in your database schema explicitly so future engineers don't waste cycles recovering lost context.

---

## Q66: Social Fitness Behavior and Narrowest Mechanic

* **Social as secondary, not featured.** Running clubs in Strava work because the social layer serves *specific* user cohorts (runners who want local accountability). Before keeping any social feature, ask: "For which user segment is this essential, not optional?" If the answer is vague, cut it entirely. Build social as a post-relaunch Layer 2 (month 4+) feature, not pre-launch.

* **Leaderboard death spiral.** Leaderboards drive early adoption but destroy retention because they punish casual users. If you keep social, make it private first (invite-only friend groups, team logging). This is 60% less engineering (no ranking algorithms, no seasonal resets) and 40% more durable engagement. Test with internal team first: 2-week cohort with 5-10 close friends, measure weekly engagement before expanding.

---

## Q67: Relaunch Timing and Strategic Narrative

* **Work backward from attention windows.** You have 8 months to ship. New Year's resolution cycle peaks January 1-31. If relaunch must land in January for maximum visibility, you're done with core feature selection, architecture cleanup, and testing by October 1. That's 5 months for engineering. Is your team's burn-down rate realistic for 5 months to shipping? If not, target April (spring fitness reactivation) — lower seasonal traffic but breathing room.

* **Craft the story now, live it later.** The narrative isn't "we cut features" — it's "we learned what users actually need." Commit now to shipping one post-relaunch customer interview series showing real users explaining why the simplified app solves their original problem better. That costs ~10 hours of PM time but it's your most defensible story. Draft the interview guide during Phase 4 (April).

---

## Q68: The Feature Graveyard as Moat

* **Document the why, not just the cut.** For each of the 11-12 features being removed, write 50-word summary: what did it teach you? (E.g., "Meal planning showed 14% of users are calorie-aware, but 78% find manual logging tedious — wearables would solve this at scale.") Store this in a shared doc. During post-relaunch competitor research, you'll find yourself saying "we already tested that" at least 3 times.

* **Transparency as sales tool.** In your relaunch press/blog, mention: "We've tested 15 different features. Here's what we learned." Link to a public 1-pager summarizing the removed features and the signal that led to each removal. New investors and users respect a team that can admit "we built the wrong thing and fixed it" — it signals judgment, not failure. This takes 4 hours of writing but it's your defensible origin story.

---

## Q69: Overwhelm as Audience Filter

* **High-tolerance users reveal the ceiling.** Pull cohort data: users who engage deeply with 3+ features (navigation depth, time-in-app, feature diversity) — what's their profile? Age, fitness level, app sophistication? They're your power users, and they might define the real market you're building for. Practical step: survey these users with a single question: "If we simplified to focus on [candidate core feature], would you stay?" Their answer is your floor for retention assumptions.

* **Overwhelm ≠ bad segmentation, necessarily.** Overwhelm can mean your original product was ahead of its time or targeted the wrong segment. If overwhelmed users skew older or non-technical, and your power users are younger and app-savvy, you might not have a product problem — you have a marketing problem. Test messaging: launch a landing page for "focused fitness" and see which cohorts click. 1 week, ~$500 in ads, clear data on who wants simplicity.

---

## Q70: Niche-Generalist Ecological Parallel

* **Ask both questions, prioritize the second.** "What do users love most?" gives you feature candidates. "What niche competitors left open?" gives you market viability. If the answers align (e.g., users love X, and no major app does X well), you've found your wedge. If they don't align, the niche is probably underserved for a reason — it's either too small or too hard. A practical filter: niche must address at least 15-20% of your current user base OR an adjacent user segment you can measure.

* **Generalist failure signals specialist opportunity.** Your 8% retention and 47-second session length mean users aren't finding their value. That's actually clean data. The ecological parallel suggests: smaller, deeper features outcompete broad ones in competitive markets. So ask not "which feature is our strongest?" but "which feature would users choose if offered a 10-minute app or a 2-hour app?" That constraint forces trade-off honesty and reveals what's actually essential.

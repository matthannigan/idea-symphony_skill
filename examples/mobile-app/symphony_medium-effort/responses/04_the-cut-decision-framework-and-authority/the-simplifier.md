---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/med"
datetime: 2026-04-28
effort: "medium"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "04_the-cut-decision-framework-and-authority"
persona: "The Simplifier"
---

# The Cut Decision — Framework and Authority - The Simplifier

---

## The Feature-Value Scoring Model

* **Weight retention correlation first, not frequency.** A feature used daily by 2% is noise. A feature used weekly that correlates with 30-day retention is the only metric that matters. Discard frequency, engagement depth, and "passionate minority" from your model entirely—they're complexity theater. If the data doesn't show "users who engage with Feature X stay longer," that feature dies, regardless of how engaged those users are.

* **Measure removal cost, not build cost.** Technical debt isn't a number—it's a question: "If we delete this, what else breaks?" If deletion touches 3+ subsystems, keep it. If it's isolated, remove it no matter how proud the team is. This flips the incentive: you're not scoring features up; you're scoring them for safety of deletion.

* **"Executed well" means one thing: users don't complain about it after day 1.** Feedback loops don't lie. If you see "overwhelming" or "don't know where to start," those features aren't executed well by any standard. Cut them. The survivors should get zero negative sentiment in your feedback.

* **The passionate minority is a trap.** 50 users adore the meditation guide while 180K ignore it. Optimizing for 0.03% of your base guarantees you stay small. The 3-4 survivors should be loved by the *mass*, not the fringe. If a feature needs a passionate minority to justify itself, it's admitting it shouldn't exist.

* **Build your model backwards from the goal.** You want 30-day retention above 25% and session length above 3 minutes. Which 3-4 features, if executed *only*, would get you there? Don't score features in isolation—simulate their removal and see if your metrics stay healthy. That's your real model.

---

## Decision Authority and the Data-vs-Interview Tiebreak

* **The PM owns the cut, but only if the data speaks first.** Gut feels and strategic vision have failed this team—they now have 15 features and 8% retention to prove it. Give the PM authority only if they commit: "We cut Feature X because the data showed Y, not because I think Z." Document it. When data conflicts with intuition, intuition loses.

* **Interviews are for *why*, not *what*.** You already know *what* is failing (everything gets 8% retention). Interviews should only ask why users abandon the app, not which feature they like most. The team's intuition about "user motivation" has led them astray—trust behavior (what users actually use and stick with) over words about what they wish existed.

* **Create a tiebreak rule upfront, not in the moment.** If data says "keep Feature A," interviews say "drop Feature A," and strategy says "ambiguous," your rule is: *data wins 60%, interviews win 30%, strategy wins 10%*. The moment you have a scoring formula, politics dissolve. Everyone knows why Feature X survived and Feature Y didn't.

* **Eliminate strategic vision from the decision.** The team's strategic vision created this mess. The 3-4 survivors should come entirely from: (1) retention correlation, (2) zero negative sentiment, (3) isolation in the codebase. Strategy comes later, when you've rebuilt trust by shipping a focused product.

* **Make the decision visible and repeatable.** Post a spreadsheet: Feature | 30-Day Retention Correlation | Complaint Ratio | Removal Cost | Decision | Owner + Date. The team stops debating philosophy and starts fact-checking the data. Authority dissolves into transparency.

---

## The Smallest Proof of Concept

* **Run a two-week deletion experiment.** Pick your strongest candidate survivor (the feature with the highest retention correlation). Soft-disable the other 14 features—users don't see them, but the code stays. If retention jumps from 8% to 18%, you've found your heartbeat. If nothing changes, that wasn't the heartbeat either.

* **Mine the existing analytics for one clear signal.** You have 180K downloads and 8% 30-day retention. Cross-tabulate: users who used Feature X + never used Feature Y = what retention? If one feature pair shows a 3x difference in retention, that's your PoC—you've already run the experiment, just haven't analyzed it.

* **Talk to exactly five churn interviews.** Call five users who downloaded and deleted the app. Ask only: "What was the first thing you tried to do?" If three say "I opened it and didn't know where to start," your PoC is complete—you know the onboarding/navigation complexity is killing you. Cut navigation, not features. If they say three different things, you don't have a single heartbeat yet—you have five separate products.

* **Build a single-feature prototype.** Take the survivor with highest retention, ship it on its own webpage (not in the app). Spend zero time on design, polish, or marketing. 100% effort on the core interaction. If users spend 3+ minutes on it unprompted, it survives. If they bounce in 30 seconds, it doesn't matter how much the team loves it.

* **Cost of proof: one week of analytics review + one day of calls + zero engineering.** Everything else is avoidable complexity. You already have the data you need; you just haven't looked at it.

---

## The Restaurant Tasting-Menu Trap

* **Your constraint isn't the menu—it's the execution bandwidth.** That five-Michelin kitchen had one sous chef per dish. You have six engineers spread across 15 features. Each survivor should get 100% of one engineer's attention for 6 weeks: obsessive polish, zero distractions, measured results. If a feature can't survive that intensity, it wasn't a winner.

* **Copy the Michelin model directly: master one interaction until it's flawless.** Not "good features, clean UI." Flawless. The workout tracker doesn't just log; it makes logging feel inevitable. The social feed doesn't just show; it shows something so right for *this user* that they scroll. If your survivors can't reach that level in two months, you picked the wrong features.

* **Constraint kills mediocrity.** Right now, the app tries to delight everyone and bores everyone. The survivors should aim narrowly: "This app is for people who want one specific thing, and they will never feel torn." That ruthlessness, that refusal to be everything, becomes the craft signal.

* **The paradox holds only if you ship excellence.** Cutting from 15 to 3 features means nothing if those 3 are still 60% built. It only works if the 3 are 110% built—better than the originals, simpler to use, faster, more reliable. That's the constraint payoff.

* **Use the kitchen tasting menu as your quality rubric.** A Michelin kitchen serves 20 dishes across a 4-hour evening. Each is distinct, each is perfect. Your 3-4 features should feel like courses in a meal: progression, variety, coherence. If they feel like random modules bolted together, you still have the wrong 3-4.

---

## Designing for Deletion

* **The retention problem might be *entry*, not exit.** If users delete at day 3 and you're asking "which feature should survive day 30," you're already lost. The brutal version: design the first 30 *seconds* so powerfully that users know they'll come back. Everything else is bonus. That one interaction should be so clear, so relevant, so immediate that deletion seems impossible.

* **Strip to what the user came for.** Fitness app. Users come to either: log a workout, see their streak, or get motivation. If the app showed only one of those three perfectly on Day 1, would they delete? That's your heartbeat. Everything else exists because the team didn't trust that one thing to be enough.

* **If you optimized for deletion, what would change?** You'd show the one thing the user actually wants to do on Day 1. No sign-up friction. No onboarding wizard. No notifications. No hamburger menu. Just: "Log your workout now" or "See your streak" or "Get today's motivation." If the app has any other surface feature on Day 1, it's defending against deletion—and failing, since they're deleting anyway.

* **The 30-day deletion window reveals what actually matters.** Most users delete after 3 days (overwhelm), some after 3 weeks (habits break), none after 30 days (sunk cost + habit). So: what's the single interaction that survives "overwhelm," fits into 30 days of habit formation, and creates sunk cost by day 30? That's not a feature—that's the entire product.

* **Ask the deletion question ruthlessly.** For each surviving feature: "If a user only ever saw this interaction, would they keep the app for 30 days?" If the answer is no, it's not a survivor—it's a passenger. Only keep interactions that, alone, would justify the download.

---

## The One Thing That Changes Everything

* **The one interaction is: streak logging.** Users need one moment per day to feel progress, nothing else. Tap "I worked out today," see the number climb. That's the entire product. Notifications remind them to tap. The app loads in 2 seconds to that button. Everything else dies. Fitness apps live or die on habit formation, and habit formation lives on the daily ritual—log or break the chain. One tap, one number, one emotion.

* **The one interaction is: social accountability.** One friend, one daily check-in: "Did you work out today?" Yes/No. The friend sees the answer. The streak counts. Nothing else. Users come back daily because one person is watching. That redefines the product category from "fitness tracker" (commodity) to "social commitment device" (unique). Everything else is noise.

* **The one interaction is: today's prescribed workout.** The app tells you exactly what to do today—three exercises, your weight, your reps. You do it. You log it done. The app celebrates. Tomorrow, it prescribes tomorrow. Users don't choose; they follow. That eliminates decision paralysis (feature #1 killer), removes the need for a library or discovery (features #7-11), and turns the app into a *coach*, not a *tool*. Category shift.

* **The one interaction is: before/after visual progress.** Users upload a photo today, the app shows their photo from 30 days ago side-by-side. That's the whole session. No metrics, no coach, no social. Just visual proof. Fitness is motivated by seeing change. If the app showed you that *one thing* perfectly, you'd open it daily just to marvel. Everything else competes for that dopamine hit.

* **The one interaction is: weighted workout history.** User opens the app: "You did this same workout 6 weeks ago and lifted 10 lbs less." That's it. The app is a mirror of progress. Not pretty dashboards, not social, not coaching—just: "You are stronger than you were." One stat, one comparison, one moment of pride per day. Everything else is decoration.

---

**Responses:** 5 questions analyzed  
**Total distinct responses:** 26 (5-6 per question)  
**Response count by question:** 5, 5, 5, 5, 6

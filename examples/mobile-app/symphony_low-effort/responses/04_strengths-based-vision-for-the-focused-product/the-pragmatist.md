---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/low"
datetime: 2026-04-27
effort: "low"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
topic-cluster: "04_strengths-based-vision-for-the-focused-product"
persona: "The Pragmatist"
---

# Strengths-Based Vision for the Focused Product - The Pragmatist

---

## Q1: Team Pride Moment

* **Ship the thing the team already brags about.** Pull your last three sprint retros and your last team Slack channel. Find where someone said "this part actually works." That's your signal — not a survey, not a metrics dashboard. If the workout logging flow or the streak visualization keeps coming up, that's where you start.

* **Cross-reference pride with retention data.** A practical approach: have each team member independently list the one feature they're proudest of, then overlay those nominations against your 8% cohort's actual usage logs. Where engineer pride and engaged-user behavior intersect is probably your strongest foundation.

* **Run a 30-minute demo exercise with the team.** Ask each person to screen-record a two-minute walk-through of the feature they'd show a friend. Watch the recordings together. The feature where people speak with the least hedging — "it's okay, it could be better, but..." — versus the one where they say "here, look at this" is a real signal you can act on within a week.

* **Tie pride to the original pitch.** Go back to the founding deck or the first App Store description. What was the core promise? The feature the team is genuinely proud of is often the one that's closest to that original vision — the one they built first before scope creep set in. Recovering that thread is both a technical and a morale win.

---

## Q2: Feature Selection Anchored in Strength

* **Build a two-axis decision matrix: engagement depth vs. build cost.** Plot your 15 features on a grid — vertical axis is depth of engagement among your most retained users (sessions per feature, time spent, return rate), horizontal axis is engineering cost to maintain at quality. Features in the high-engagement, lower-cost quadrant are your candidates. Do this in a two-hour workshop with the PM and one engineer.

* **Freeze sunk-cost votes explicitly.** Before the selection meeting, distribute a one-page rule: votes based on "we already built it" or "we spent three months on it" are ruled out of order. Make the rule visible. Sunk-cost reasoning is the single fastest way to replicate the same mistake in the new product.

* **Let the top 500 retained users select.** Export the cohort with the highest 30-day retention — likely under 1,000 users. Run a dead-simple in-app survey: "If this app could only do one thing, what would it be?" Give four options, no free-text. Close the poll in 72 hours. That's your anchor.

* **Assign a devil's advocate to each feature candidate.** For every feature that makes the shortlist, assign one engineer whose job in the decision meeting is to argue against keeping it. This counteracts team attachment without requiring consensus. The feature that survives the strongest devil's advocate case is probably the right one.

* **Set a hard cap on the selection meeting.** Schedule 90 minutes, not a half-day. Constraints force prioritization. Going into the meeting with a pre-committed output format — "we leave with exactly three features ranked 1, 2, 3" — prevents the meeting from becoming a therapy session about all the features you're cutting.

---

## Q3: The Future Users Are Grateful For

* **Work backward from a one-sentence App Store description.** A practical approach: write that description now, before you cut anything. "This app is for people who want to ___." If you can't finish that sentence in under ten words without using "and," you haven't found the core yet. The year-from-now user is the person who reads that one sentence and immediately downloads it.

* **Model it on a habit app that already works.** Duolingo, Streaks, and Headspace each have a clear daily ritual. Your retained users — the 8% — are probably already performing some ritual in your app despite the noise. Interview five of them this week: "What's the one thing you do in this app every day?" The answer is your product description.

* **Write the three-year App Store review as a team exercise.** Have your PM draft two versions of a fictional five-star review — one for a workout-tracker-only product, one for a social-challenge-only product. Read both aloud in a team meeting. The one that sounds like a real person talking to a friend rather than a feature list is the right direction.

* **Anchor the vision in a daily moment, not a feature set.** "Opens it like morning coffee" means there's a specific trigger — waking up, finishing a workout, eating lunch. A practical approach is to identify the three most common times your current power users open the app, then design the entire relaunched product around making that one moment as valuable as possible.

---

## Q4: Radical Omission as Creative Act

* **Define what the app won't do before you define what it will.** A practical starting constraint: write a "never do" list. "This app will never show a social feed. This app will never sell supplements." Constraints that rule out familiar fitness-app patterns force your team to invent. The creative act is the boundary, not the blank canvas.

* **Identify the relationship the app could own that no one else does.** Every fitness app tracks workouts. A practical approach: look at the emotional jobs your retained users are actually doing — accountability to themselves, not to others; private progress, not public performance. Build for the person who doesn't want to share their weight loss journey but does want to trust that they're moving in the right direction.

* **Pilot a "quiet app" prototype in two weeks.** Strip the current app down to a single feature — just logging, just streaks, just one kind of challenge — and show it to ten users who churned. Don't explain it. Watch where they go. A practical version of radical omission is a two-week prototype, not a six-month relaunch.

* **Ask what you'd build if push notifications were banned.** The current 47-second session length suggests users are opening the app in response to a notification, doing nothing meaningful, and leaving. A practical approach to reinvention: design the experience assuming you can't interrupt users. What makes someone open the app without being told to? That answer is the relationship you're building.

* **Borrow from non-fitness products with strong daily retention.** Weather apps, transit apps, and messaging apps all solve the "open daily without prompting" problem. Pick one and reverse-engineer the mechanic — why do users open it? What does it do in under 30 seconds that feels complete? Apply that structure to your fitness core.

---

## Q5: The "Aha" Session

* **Map the emotional arc as a two-column document before writing a line of code.** Left column: what users feel at each step of the current onboarding. Right column: what you want them to feel in the redesign. This is a two-hour PM exercise, not a design sprint. If you can't write the right column clearly, you don't have a product direction yet.

* **Time the first-value moment and set a hard target.** The current average session is 47 seconds. A practical target for the relaunched app: user experiences genuine value within 90 seconds of first open, with no tutorial required. Define "genuine value" concretely — logging one workout, seeing one progress data point, completing one micro-challenge — then design backward from that moment.

* **Use the churn survey as a before/after script.** You presumably have data on why users churned — "overwhelming," "don't know where to start." A practical approach is to turn that exact language into a usability test script. Show churned users the prototype and ask: "Does this still feel overwhelming?" Their answer tells you whether the arc has actually changed, not whether your redesign looks cleaner.

* **Build the first-open screen last.** Teams almost always design the home screen first and the core interaction second. A practical approach: build the thing the user does every day — the core loop — until it feels right. Then design the first-open screen to introduce only that thing. The emotional arc from overwhelm to clarity is mostly a function of scope reduction, not onboarding copy.

* **A/B test the first session with 200 users before full relaunch.** Send a soft launch to a small cohort — specifically, users who downloaded the app but never completed the first session. Show them the stripped-down version. Measure whether session length and day-two return rate improve. If they do, you have evidence before you make the full commitment. This de-risks the relaunch and gives the team a concrete milestone within the 8-month runway.

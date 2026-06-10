---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "01_defining-the-core-value-hypothesis"
persona: "The First Principles Thinker"
---

# Defining the Core Value Hypothesis - The First Principles Thinker

---

## The Irreducible Need Beneath the Bloat

* **At its core, this app is trying to solve the motivation gap.** The irreducible need is not "fitness tracking" or "nutrition logging"—those are implementation choices. The need is: people know what they *should* do for their health, but they don't do it. They lack the behavioral momentum, the social accountability, the daily friction reduction, or the identity shift that makes action inevitable rather than effortful. Strip away the 15 features and ask which ones directly reduce that friction or create that momentum. Workout tracking touches it (proves you showed up). Meal planning does not (people can already cook). A social feed might, but only if it creates real accountability, not just noise. The question is not "which features are biggest" but "which features directly interrupt the gap between intention and action."

* **The fitness app category itself is misdirecting the inquiry.** We assume the core need must be fitness-adjacent because that's the category. But what if the irreducible need is "I need a person or community that expects something of me on a schedule I can't flake on"? That need could be served by a workout app, a meditation app, a language app, or a daily writing prompt. The 15 features obscure this by offering fragments of accountability without committing to *any* single form of it deeply enough. If we explain the product to someone without fitness knowledge, we should hear "it's a commitment accelerator for health," not "it tracks workouts, plans meals, has videos, and connects friends."

* **Trace back from the 8% retention cliff.** Users kept the app for about 30 days on average. This is not a "feature discoverability" problem—it's a "reason to open it tomorrow" problem. Which features would generate a daily return visit? The social challenge system might (if others depend on you). The workout tracker might (if you're building a streak). The meditation guide might (if you form a habit). But the marketplace, recipe library, and supplement store are incidental—they serve a secondary need only after the primary motivation has been installed. The first question is not "what do we cut" but "what drives a person to open this app before thinking about it."

---

## Assumed Core vs. Revealed Core, and Whose Definition Wins

* **The team believes it already has the answer, and that belief is doing more work than the data.** Before running any analysis, ask each team member confidentially: "If you had to kill 12 of the 15 features and save 3, which 3?" I predict the 6 team members give 5 different answers. This reveals that the "data-driven" decision process is not eliminating ambiguity—it's compressing multiple unspoken theories of the product into one rationalized narrative. The data will support whichever three features you point it at, because the data is retrospective. It cannot tell you which features *created* the retention curve or merely coexist with it.

* **Users did not download the app for the same reason they use it—if they use it at all.** 180K people downloaded a social fitness app. Why? Probably because they have a fitness goal, or they saw a friend use it, or they wanted to lose weight by deadline. But the person who downloads for "accountability" and the person who downloads for "workout variety" are using the app differently 30 days later. If you aggregate their feedback, you lose the signal. The real core is not what *most* users say they want—it's what the *retained* users cannot imagine abandoning. This is why the data versus users versus team disagreement matters: the data shows aggregate behavior (confounded by multiple motivations), users report surface-level satisfaction (confounded by social desirability), and the team reports architectural convenience (confounded by sunk cost). None of the three tells you what makes a person open the app tomorrow.

* **The team's pre-existing beliefs are probably right, but for the wrong reasons.** The PM might champion the social challenge feature because she genuinely believes it drives retention, or because she led the project and has invested in it psychologically. The engineer might championing workout tracking because it's the most technically coherent feature set. The designer might champion the feed because it keeps users in the app longer. Ask each team member not "which feature is core" but "what specific user behavior change did you see when this feature launched—not 'people used it' but 'people changed their lives because of it'?" If no one has a specific story, the feature is not core.

---

## The First-Loved Feature

* **"First-loved" is not the same as "most-used" or "highest engagement."** When a feature first launches, people either light up or they don't. The question is: which feature generated unsolicited positive feedback, not "we added a feature and people used it as expected"? Did anyone message the team saying "I finally have a way to see what my friends are doing" or "I love that it plans my meals around my schedule" or "I actually did the meditation for 30 days because I didn't want to break my streak"? That unsolicited delight is the signal of a feature that *solved something the person didn't know they needed solved until they saw it*. Dig into the app store reviews, support tickets, and user interviews from the first two weeks after each major feature shipped. Which one appears in conversations unprompted? That's the core.

* **Be specific about what users loved, not just that they loved it.** "Users loved the social feature" is not actionable. But "three users came back in month two specifically because they didn't want to disappoint their friend group, and they explicitly said that was the reason they opened the app" is actionable. It tells you that the core value is *social accountability*, not *social gamification* or *social discovery*. The first-loved feature is the one where the comment pattern is "I use this because it makes me [do something I'd skip otherwise]" rather than "this is a nice way to [what I was already planning to do]."

* **If no feature has first-loved status, the app was wrong from the start.** If the team cannot identify a single feature that users asked for, depended on, or built identity around in the first month, then the app was built on assumptions rather than needs. In that case, the "core value hypothesis" does not yet exist. The next move is not to pick the best among 15 half-measures but to run a 4-week experiment: kill 14 features, pick one, go deep, and see if you can generate the "first loved" signal. That's how you find the core.

---

## What If the App Didn't Exist Yet

* **Start with the irreducible problem, not the app category.** A person wants to get fit but doesn't. Why? Because fitness requires behavioral change, and behavioral change requires friction reduction and/or motivation amplification. The question is: what is the single mechanism that, if you installed it in someone's life, would make them actually do the work? Is it seeing your friend's workout count and not wanting to fall behind? Is it a 30-day challenge with a finish line? Is it a coach who texts you daily? Is it a streaking system where you see your consistency visually? Any of these could work. But the app should not be *all of them*—it should be *one of them*, executed so deeply that users feel they cannot live without it.

* **The single irreducible thing is: a commitment maker.** If I were building from scratch, the app's one job would be to turn a fuzzy intention ("I want to get more fit") into a specific, public, time-bound commitment ("I will do 20 minutes of cardio 4 times a week, and my friend group will see if I do it"). Then the app creates the friction reduction: it reminds me, it tracks that I did it, it shows me the visual evidence, and it makes my failure visible to people I care about. Everything else—the meal planner, the video library, the meditation guide—is solving the *secondary* problem of "now that I'm committed, what specifically should I do." But you don't solve the secondary problem until the person is committed. If the commitment mechanism is not bulletproof and irreplaceable, the person quits before they ever get to the secondary problem.

* **You would know you'd found it when people feel shame about not using it.** Not "the app is nice," not "I got value from it," but "I would feel guilty telling my group I didn't work out because I know it would show up here." That shame is the engine of retention. It's the opposite of a feature—it's a social contract that the app facilitates. If the app's presence creates a new social norm (among your cohort, fitness-doing becomes non-optional), you've found the core. Everything else is packaging.

---

## The Product as Relationship, Not a Tool

* **The 47-second session problem is a symptom of a broken relationship model.** Users open the app, do a task (log a workout, check the feed, see a notification), and leave. The interaction is transactional. But a person who has made a real commitment to fitness doesn't want a tool—they want a partner, a witness, or a coach. These roles are not "tools you open"—they are presences you feel. A coach checks in without you asking. A witness sees your progress automatically. A partner feels like they're alongside you, not like an app you have to remember to open. The 47-second problem dissolves if the app creates a sense of continuous presence rather than discrete tasks.

* **Design for ambient accountability instead of sessions.** What if the app's value emerges not from what you do *in* it, but from what it does *to you* throughout the day? For example: your friend group gets a daily 10-second notification showing who did their workout and who didn't. You don't open the app—you just get the message. That message creates ambient peer pressure. Or: the app sends you one hyper-personalized nudge at exactly the moment in the week when you're statistically most likely to skip (Tuesday morning at 6 AM for you specifically). Not a reminder—a moment of necessary friction interruption. Or: once a week, the app generates one conversation starter for your group based on fitness progress patterns, sent to your messaging app, not in-app.

* **Redefine success from "session length" to "behavior change."** The current metrics (DAU, MAU, session length) are app-centric. They measure whether people use the tool. But the real metric is: did the person do the fitness work they committed to? If 20% of users work out 4x a week because the app is keeping them accountable, and they barely open the app but their behavior changed, that's success. The app becomes invisible because it's deeply woven into their life, not something they have to engage with actively. This requires a shift from building features that people "use" to building systems that people *feel*.

---

## The Identity Users Never Had a Word For

* **The core need might not be "I want to get fit" but "I want proof that I'm the kind of person who finishes what they start."** Fitness is the vehicle, not the destination. What if the 180K people who downloaded this app were actually downloading a *comeback story machine*—a way to visibly rebuild momentum after setback, loss, or stagnation? Most fitness apps assume the user is already motivated. But what if the real latent need is: people want to see themselves getting better at *something*, and fitness is just the most visible domain where improvement can be tracked and celebrated.

* **Create a category: the accountability amplifier.** No product category explicitly names this. We have "fitness trackers," "meditation apps," "social networks"—but we don't have "the place where my group sees that I'm building a streak of consistency." This is not new technology, but it's not packaged as its own category. A relaunch could position the product as: "The app where you don't track a fitness routine—you build and display a commitment streak." That framing attracts a different user (people who are identity-builders, not just fitness-seekers) and suggests a completely different feature set (visualization of consistency, group milestone tracking, public progress stories, streak interruption recovery). You're not competing with Strava or MyFitnessPal—you're creating a new category because you've named a need that didn't have a name.

* **Ask: what would users tell their friends the app *does* if they loved it?** Not "it tracks workouts," but "it shows me I can actually finish things," or "it makes me compete with my best friends without the drama," or "it shows my progress in a way that makes me proud." That sentence is closer to category positioning than any feature list. If you can find the unspoken identity shift that the product facilitates, you've found the core, and you can build the simplest version of a product that enables that shift.

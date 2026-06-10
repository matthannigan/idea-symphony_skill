---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/low"
datetime: 2026-04-27
effort: "low"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
topic-cluster: "03_locating-the-true-core"
persona: "The Devil's Advocate"
---

# Locating the True Core - The Devil's Advocate

---

## Why Users Actually Opened It / Peak-Experience Session

* **47 seconds is not a data point — it is a death sentence.** Have we considered that "energized feedback" from users who felt a moment of aliveness is almost certainly survivorship noise? With 180K downloads and 8% retention, roughly 165K people churned silently. The vocal minority who describe a peak experience may represent a completely unscalable use case. Before we mine those sessions for signals, we should ask: were the energized users already fit, already motivated, already organized — and therefore successes in spite of the app, not because of it?

* **Session length conflates intent with satisfaction.** One potential challenge is that a 47-second session could indicate a perfectly completed micro-task — logging a single meal, checking a single workout — or it could indicate someone who opened the app, got confused, and immediately closed it. Without distinguishing purposeful quick sessions from abandonment-driven quick sessions, we cannot know whether the "alive" moments we are hunting were brief because they were efficient or brief because users gave up. A/B event funnel analysis on screen-exit timing is the minimum prerequisite.

* **We are assuming the peak experience is repeatable.** Have we considered that an energized interaction might have been tied to onboarding novelty — the first time a user saw their workout logged, the first social connection made — rather than anything the mature product actually sustains? A feature that creates a great first impression but hollow subsequent ones would steer the wrong simplification. The team needs to segment "first session" events from "sessions 5-30" events before drawing any conclusions.

* **The team's energy around feature X is not a proxy for user energy.** One potential challenge is that the engineer or PM who built the social feed will describe their highest-engagement anecdote from it, and that story will carry emotional weight in the room. If qualitative peak-experience analysis is done internally, the team is essentially reverse-engineering a justification for whichever feature they are most attached to. External facilitation or double-blind user research panels are a concrete mitigation.

* **Behavioral data from a cluttered UI is contaminated.** Have we considered that users may never have found the feature that would have given them their peak experience because the six-tab navigation buried it? Concluding that workout tracking was the core because it got more taps than the meditation guide ignores that workout tracking was probably on tab one. The feature discovery rate — not raw usage — is the variable we should be measuring.

---

## Retention Bright Spot

* **8% retention may not be a signal; it may be statistical noise with brand loyalty.** Have we considered that the 8% who stayed 30 days might share one behavioral trait that has nothing to do with the product's design: they are highly self-motivated fitness enthusiasts who would use any app that does the basics? If so, building the simplified product around their behavior means optimizing for the segment least likely to need an app to sustain their habits — and therefore least likely to grow into a large paying market.

* **Retention bright spots can mask a retention ceiling.** One potential challenge is that the 8% who stuck around for 30 days may plateau quickly. If those users hit day 90 at 2%, the 30-day cohort is not a foundation — it is a leaky funnel with an extra step. Before we treat those 14,400 retained users as the product's north star, we need to see their 60- and 90-day survival curves, not just their feature usage.

* **The shared behavior pattern among retained users may be a coincidence of demographics, not product quality.** Have we considered that the 8% could skew toward users aged 22-28 in urban markets who tend to try fitness apps and stick with one longer before churning, regardless of which one? Cohort analysis without controlling for demographic and platform variables will attribute retention to features that are, at best, correlated. Partnering with a mobile analytics service to run regression analysis on retention drivers is a concrete next step before making feature cuts.

* **Highlighting the retention bright spot risks anchoring the entire redesign around a minority that hates the simplification you are about to do.** One potential challenge here is ironic: the most engaged existing users are often the most feature-dependent. They may be the users who actually use the meal planner AND the workout tracker AND the social feed in combination. Strip two of those out and the retention bright spot becomes your loudest churners and your most damaging App Store reviews. Surveying retained users specifically about which features they would not give up is a critical risk-mitigation step.

* **"Remarkably well" at 8% retention is a very low bar.** Have we considered that framing the question as "what does this product already do remarkably well" presupposes there is something remarkable happening? At 2% DAU/MAU, the app is almost inert. The more productive frame might be: among the users who were retained, which single task generated the most return visits — not which feature they liked best, but which one actually dragged them back. That is a behavioral measurement, not a sentiment one.

---

## Features as Proxies for Jobs-to-Be-Done

* **Reframing 15 features into 2-3 jobs-to-be-done could be an intellectual exercise that changes nothing.** Have we considered that every product team that discovers jobs-to-be-done framing ends up converging on the same three jobs — "track progress," "stay motivated," "connect with others" — which are so generic they could describe any fitness product? If the JTBD reframe produces a feature matrix that still keeps workout tracking, social, and habit logging, we have added analytical overhead without producing a differentiated decision. The value is in which specific variant of those jobs this team can execute at a level of excellence that matters.

* **The 2% daily cohort may be too small to be statistically meaningful as a signal.** One potential challenge is that 2% of 180K downloads is roughly 3,600 daily actives — but those users were acquired over an unknown time window. If the app launched 18 months ago, many of those daily actives may be very recent downloaders still in their novelty window rather than genuinely habituated users. Time-normalizing the DAU cohort to separate recent signups from long-term habituated users is essential before drawing any core-signal conclusion from their session behavior.

* **JTBD framing assumes users knew what job they were hiring the app for at download.** Have we considered that a significant portion of the 180K downloads may have come from fitness-app-curious users who had no specific job in mind — they saw an ad, downloaded, poked around, and left? Those users did not hire the app for a job; they sampled it as entertainment. A JTBD analysis that includes those sessions will consistently point toward entertainment-adjacent features like the social feed or video library as high-traffic, while underselling the utilitarian features that the committed minority actually relies on.

* **Framing cuts around jobs may create political cover for keeping features that should die.** One potential challenge is that the JTBD framework, in the wrong hands, is a way to find a conceptual umbrella large enough to retain a team favorite. If "accountability" is declared a core job, suddenly the social feed, challenges, coaching, and the friend finder are all defensible. The team should commit in advance to a hard feature count — say, three maximum — before running the JTBD analysis, so the framework informs which three, not whether three is even the right answer.

* **The daily cohort's behavior may reveal the core, but only if the app is not their secondary tool.** Have we considered that habitual daily users of this app might also be habitual users of Strava, MyFitnessPal, or Apple Fitness+, using this app as a supplement rather than a replacement? In that case, the sessions we analyze are overflow behavior, not primary behavior — and building the simplified product around overflow use cases means permanently ceding the primary-use-case market.

---

## The "Social Fitness" Assumption

* **Absence of evidence that social was user-requested is not the same as evidence that it failed for product reasons.** Have we considered that the social feed might have failed because it was implemented poorly — low-quality UI, weak discovery mechanics, no virality loop — rather than because users do not want social fitness at all? Killing the social layer because it underperformed without diagnosing whether the underperformance was structural or executional risks discarding a differentiator that competitors have built entire businesses on, because this team built it badly.

* **The social fitness assumption may have been correct but mis-timed.** One potential challenge is that social layers in fitness apps typically require network effects to generate value — you need enough of your friends already on the platform before the feed means anything. With 180K downloads, this app may have simply never crossed the density threshold for social features to activate. The data showing low social engagement is not evidence that users don't want social fitness; it may be evidence that they don't want to be the first fifty people at an empty party.

* **Proving a feature was team-initiated versus user-requested is often impossible retroactively, and the distinction may not matter.** Have we considered that most product features in successful apps were not user-requested — users asked for faster horses, not social feeds, not Snapchat stories, not Spotify Discover Weekly? The right question is not "did users ask for this" but "does this feature create value and retention that would not exist without it." Substituting provenance analysis for outcome analysis is a methodological trap.

* **Removing the social layer entirely may harm long-term competitive positioning even if it is the correct short-term move.** One potential challenge is that if the simplified app achieves strong retention by stripping social features, competitors with stronger social layers can add the utilitarian features this team keeps — but this team cannot easily re-add social later without the cold-start network problem all over again. The social layer, once abandoned, is architecturally and culturally expensive to rebuild. The team should model the two-year competitive roadmap before treating social removal as a clean simplification.

* **User feedback saying "overwhelming" does not specifically indict the social layer.** Have we considered that when users say the app is "overwhelming," they are almost certainly describing the navigation complexity — six tabs and a hamburger menu — not any specific feature's existence? A user can hate the interface that surfaces the social feed without hating social fitness itself. The team may be conflating UI/UX complexity with feature-level rejection, which would lead to a set of cuts that fixes the wrong thing entirely.

---

## Single Irreplaceable Moment

* **Redefining core as an emotional moment rather than a function is philosophically appealing but operationally dangerous.** Have we considered that "the irreplaceable emotional moment" framing, when applied to a team that is burned out and under 8-month runway pressure, is a recipe for building a beautiful product that no one can explain in the App Store? Emotional positioning requires marketing investment and narrative consistency that a six-person team with no dedicated marketer cannot sustain. The singular feeling may be real, but if it cannot be described in seven words or less on a product page, it does not help acquire new users.

* **180K downloads are not evidence that users were seeking a singular emotional experience unique to this app.** One potential challenge is that the vast majority of those downloads almost certainly came from performance marketing spend against broad fitness-app intent signals — "workout tracker," "calorie counter," "fitness app" — not from users seeking something emotionally differentiated. The download volume tells us the acquisition funnel worked, not that users arrived with an emotional job that only this app could fill. Assuming otherwise leads to positioning the simplified product for an audience that the team has no evidence exists at scale.

* **The "irreplaceable moment" test is the hardest test to fail, which makes it useless as a prioritization filter.** Have we considered that any sufficiently motivated team member can construct an emotional narrative around any feature? The moment you felt truly accountable to your fitness goals for the first time — that could be the workout tracker, the habit tracker, the friend challenge, or the progress journal. If every feature can be framed as the irreplaceable moment, the framework has no discriminating power. A concrete mitigation is to require that the emotional moment be validated by at least thirty user interviews where users spontaneously use the same language, not language the team suggested.

* **Focusing on what 180K users hoped to feel ignores what caused 165K of them to stop.** One potential challenge is that the emotional moment framing is forward-looking and aspirational — it asks what users came for — but the more diagnostic question is what caused the specific abandonment event for the churned majority. Exit interviews, churn surveys, or even a simple "why did you stop using this app" push notification to lapsed users within their first week of inactivity would generate more actionable data than reconstructing the aspiration from downloads.

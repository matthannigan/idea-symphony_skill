---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/high"
datetime: 2026-06-09
effort: "high"
stage: "Phase 4: Response Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-8"
topic-cluster: "07_communicating-the-reset-to-existing-users"
synthesis-type: "attributed"
---

# Brainstorming Synthesis: Communicating the Reset to Existing Users - With Attribution

---

## Synthesized Insights by Question

### Question 32: The Announcement Backfire, Self-Fulfilling Churn, and Delayed-Signal Compression

**Full question**: Communicating simplification as a positive "focus" message assumes users will interpret removal as improvement, but power users (the 2% DAU/MAU cohort who may account for disproportionate word-of-mouth) may feel punished for engagement, and even users who barely used a removed feature may question whether the app still fits them. Users who don't immediately churn after the announcement may still leave 30-60 days later when they discover their specific use case is gone. What concrete retention plan exists for the 2% segment that doesn't require keeping removed features alive; what framing strategies neutralize the "killing features" reaction by directing attention toward what's being gained rather than what's leaving; and how should the team design relaunch communication and timeline to compress the discovery window rather than spread churn out over months?

* **Reach the 2% cohort personally and before anyone else, with workflow-specific migration, not a broadcast.** All seven personas converge here: the power-user segment churns from feeling unconsulted and abandoned, not merely from feature loss, so the retention move is direct contact (individual message, survey, or even a 1:1 call) two weeks before the public announcement that maps their specific workflow to what remains. This costs a handful of customer conversations per day and is cheaper than losing their word-of-mouth. Users who can't be retained should be converted into "honest reviewers" given template language rather than left to vent.
  * **Map each power user's actual workflow and prove you understand what they do.** The 2% are people who found one or two things that solved a real problem; offer personalized migration paths showing why that particular workflow still matters post-relaunch. *—The Audience Advocate*
  * **Personalized sunset notifications re-engage power users individually.** "You used [Feature] 47 times. We're removing it on [Date]. Here are 3 alternatives and why." Every sunset touch is a chance to demonstrate respect. *—The Constraint Flipper*
  * **Active migration, not passive messaging: direct outreach to 10+ session/month users, a 1:1 designer call, honesty about competitors.** Losing power-user word-of-mouth costs more than staffing 2-3 conversations a day. *—The Devil's Advocate*
  * **Contact them personally so they feel chosen and listened to before the public hears anything.** Delayed churn is real because people need time to grieve what's leaving. *—The Empath*
  * **A 2-week pre-release briefing to the ~3,600-user cohort plus a 72-hour opt-in survey on where removed-feature users will go next.** Front-loads churn rather than spreading it. *—The Pragmatist*
  * **Announce only to the 2% via phone call; a human explains, listens to the objection, offers a custom path or refund.** The 98% never noticed those features. Concentrate effort where a real relationship exists. *—The Provocateur*
  * **Picture Marcus, a five-day-a-week user who built his routine around a cut feature; "Cleaner, Simpler, Better" lands as betrayal.** He watches the first two weeks for signs the team understands what they're asking him to lose. *—The Storyteller*

* **Lead with honest triage and admission of failure; "focus" framing alone reads as spin.** Strongly convergent. Users interpret removal negatively when the message is aspirational corporate positioning. The framing that lands names the failure ("we built too much and nothing works well") and reframes cuts as accountability rather than retreat. The honest version pre-empts the "killing features" reaction by directing attention to a problem the user actually felt (overwhelm, confusion, slowness) and the relief of fixing it.
  * **"You opened the app and left confused. We're removing that confusion" beats "we're focusing our vision."** The framing that sticks matches users' lived frustration; if the team doesn't feel the release, users sense the hollowness. *—The Audience Advocate*
  * **Lead with radical transparency about the burnout: "We were spread too thin to serve you properly."** This flips power-user shame; a burned-out team changing course reads as more authentic than a well-funded "strategic pivot." *—The Constraint Flipper*
  * **Lead with triage, not aspiration: "We built too much, and nothing works. We're breaking this into pieces you actually use."** Reframes cuts as accountability. *—The Devil's Advocate*
  * **The story that works is "we listened to you saying you felt lost, so we're getting out of your way"; "we streamlined to give you a better experience" feels like spin.** *—The Empath*
  * **Frame the reset as a product death and admission of mistake, not a rebranding of the same failure as "strategic focus."** Emotional honesty beats spin every time. *—The Provocateur*

* **Compress the discovery window by flagging what's leaving up front, not letting users find out over 30-60 days.** Convergent across six personas. The delayed-churn cliff comes from users discovering missing use cases later; the fix is a single clear announcement listing exactly which features are removed and on what date, plus a tight announcement-to-relaunch window. Grief happens faster, but the retention signal stays clean and legible within 30 days.
  * **One clear announcement listing exactly what's removed and when, with one short migration guide per feature; users choose once and move on.** *—The Audience Advocate*
  * **Transparency in the first 60 seconds and up-front acknowledgment resets expectations; users who feel blindsided leave.** *—The Constraint Flipper*
  * **Send in-app alerts two weeks prior listing what's gone; offer power users a 30-day read-only compatibility window with a clear sunset date.** *—The Devil's Advocate*
  * **Compress the broad-base discovery window to 72 hours via in-app notifications, email, and social on relaunch day.** Makes the signal legible within 30 days. *—The Pragmatist*
  * **Compress the announcement-to-relaunch window to 10-14 days so resentment doesn't build over two months of waiting.** *—The Storyteller*

* **Accept that the retention signal is noisy; segment and measure churn by feature-usage cohort instead of trying to read a single number.** Single-persona reframe worth surfacing: rather than only compressing the window, tag users by their feature usage at launch and track churn by cohort over 8 weeks, so you learn whether a specific cut (the workout-tracker change) or general relaunch overwhelm is driving departures. Without this segmentation the team will misdiagnose and iterate on the wrong features.
  * **Design measurement before launch: tag users by feature usage, track churn by cohort over 8 weeks; both compressed and spread churn hide the same insight (which users need which features).** *—The Devil's Advocate*
  * **Reframe the metric from "reduce churn" to "retain users aligned with the new product"; a user who leaves because their feature is gone is signal, not failure.** *—The Constraint Flipper*

* **Consider preserving the single most-loved niche feature even if it dents the simplification narrative.** Single-persona insight that cuts against the cluster's "cut hard" assumption: keep the one feature the 2% cohort uses most operational, as a concrete gesture that prevents your most engaged users from becoming vocal churn advocates. Worth weighing against the burnout and technical-debt costs that motivated the reset.
  * **Find the single most-used feature among the 2% via telemetry and keep it fully operational; the gesture makes engaged users feel listened to.** *—The Pragmatist*

---

### Question 33: The Niche Migration Cliff

**Full question**: Small but passionate user bases for removed features will not quietly disappear; they will publicly review-bomb the app and seed negative sentiment in fitness communities. What is the specific mitigation plan for this scenario, beyond a generic "communicate early" instruction?

* **Review-bombing is grief from feeling erased, not spite; pre-brief the passionate cohort and community leaders directly before launch.** All seven personas converge. The concrete plan: identify the 50-100 heaviest users of each removed feature via usage data (not assumptions), contact them individually two weeks out, and separately brief trusted fitness-community voices (coaches, subreddit/Discord leaders) on the rationale so they can contextualize the decision rather than react to angry users. Users who feel heard migrate quietly; those who feel unseen attack publicly.
  * **Contact the 50-100 most active users of each removed feature two weeks early; brief community leaders who become unofficial ambassadors.** *—The Audience Advocate*
  * **Publicly acknowledge the loved communities and frame as respect: "We didn't build these for casual users; here are 5 vetted alternatives."** Niche champions become ambassadors. *—The Constraint Flipper*
  * **Assign org-level ownership of social/review monitoring with response authority; have a PM or founder acknowledge specifics within 24 hours; pre-brief community influencers.** *—The Devil's Advocate*
  * **Reach communities directly, acknowledge the loss without defensiveness; review-bombing is grief expressed publicly, not a PR problem.** *—The Empath*
  * **Message users who spent >20% of time in removed features two weeks early; offer alternatives or a 30-minute PM call. Most review-bombing comes from feeling unheard.** *—The Pragmatist*
  * **Proactively contact the 50-100 power users per feature; offer a transition window, an API, or a co-design session. Dignified exit turns "we killed your feature" into "we're rethinking this together."** *—The Provocateur*
  * **Picture Sarah review-bombing the meditation removal and seeding doubt in her subreddits; tell a specific exit narrative to that community, not a generic "we're simplifying."** *—The Storyteller*

* **Offer genuine, vetted alternatives plus frictionless data export; recommend specific competitor apps by name.** Convergent across six personas. Niche users do not want an apology, they want their use case still solvable. The team should ship a shortlist of 3 apps it actually uses (Fitbod, MacroFactor, Strava, Cronometer, Yazio), provide step-by-step in-app export, and where possible negotiate affiliate, discount, or partnership terms so the migration feels orchestrated rather than abandoned. This transfers loyalty instead of burning it.
  * **Offer advocacy pathways: ask passionate users what made the feature matter; their answer shapes positioning and what you build next.** *—The Audience Advocate*
  * **Sunset window plus deprecation data: who clicks, responds, or gives feedback reveals true value before relaunch.** *—The Constraint Flipper*
  * **A shortlist of 3 apps your team actually uses, recommended directly; negotiate affiliate or 10% discount codes to make migration a warm handoff.** *—The Devil's Advocate*
  * **Build a lightweight 2-week export tool ("the keys to your data") instead of keeping the feature; one engineer for two weeks beats years of debt.** *—The Pragmatist*
  * **Offer a $5 credit toward a preferred fitness app and publish recommended alternatives; pay users to leave gracefully rather than fight to keep them.** *—The Provocateur*
  * **Offer migration guides to three recommended apps; make removal feel like a graduation, not an abandonment.** *—The Storyteller*

* **Monetize or stage the sunset to generate honest demand data.** Single-persona insight: an optional paid "extended plan" keeps a beloved feature alive for a fixed window while a partnership is built, and the take rate reveals whether vocal critics represent real demand (if only 10 users pay, the noise was not the signal). A pragmatic test that converts a churn risk into a measurement.
  * **An optional $4.99/month 6-month extended plan; revenue buys time and the take-rate tells you if critics are representative.** *—The Pragmatist*

---

### Question 34: Churn vs. Harm - The Documentation/Language/Access Dimension

**Full question**: Communication about simplification is framed as a risk of triggering churn. From the perspective of users who rely on specific features, how is "churn" different from "being abandoned by a product you trusted"? What communication approach (including language access, plain-language documentation, and respectful tone for users with lower tech literacy) would allow users to feel respected and informed rather than discarded, and how would the team know the difference before rollout?

* **Name the abandonment honestly: this is a broken promise, and communication can only dignify it, not fix it.** Strongly convergent. From the user's side "churn" is a clinical euphemism for betrayal; the team did remove something people trusted. The respectful move is to name the loss directly ("we know this feature mattered to you"), apologize for the broken promise, and stand behind the decision with empathy rather than minimize it. Users sense when a company is hiding discomfort versus owning a hard choice.
  * **Reframe from "churn risk" to "abandonment prevention": "We know this mattered. We're making a hard choice and want to help you find what works, with us or elsewhere."** *—The Audience Advocate*
  * **Make space for grief: "Removing features is hard. If [Feature] mattered, we acknowledge that loss rather than pretend it didn't happen."** *—The Constraint Flipper*
  * **"Being abandoned" is the actual product failure; communication just reveals it. Every sunset message needs an explicit apology, 2-3 concrete alternatives, and a 30-day data-export window.** *—The Devil's Advocate*
  * **From the user's side it's betrayal, not churn; start by acknowledging this isn't neutral optimization, with real names and a genuine apology.** *—The Empath*
  * **Lead with failure: "We made promises we couldn't keep, and we're fixing it by being honest about what we actually are." Honesty heals faster than spin.** *—The Provocateur*
  * **Maria, 45, lower tech literacy, reads "streamlined experience" and feels invisible; name what's ending: "We're retiring the progress journal, which 12,000 of you used every week."** *—The Storyteller*

* **Write plain-language, accessible documentation at a low reading level, with video and human support; test it with low-literacy users before launch.** Convergent across six personas. Product jargon ("sunsetting the integration layer," "feature deprecation," "backward compatibility") alienates exactly the users who need clarity most. The standard: 6th-grade reading level, a 2-3 minute captioned video showing where data lives and how to export it, a phone/chat support line for 30-60 days, and multi-language support where the user base is diverse. The team validates respect by reading the message aloud to below-median-literacy users and rewriting wherever they ask questions.
  * **Write the removal guide in plain language with no metaphors or spin: what it did, why it's going, what to use instead.** *—The Audience Advocate*
  * **Plain-language sunset letter, not a changelog: "We were doing too much. The meal planner wasn't as good as Cronometer. Here's a 3-minute guide to move your data."** *—The Pragmatist*
  * **6th-grade reading level, 2-3 minute video walk-through, a 60-day phone support line; the gap between "abandoned" and "respected" is whether users can understand and move without friction.** *—The Pragmatist*
  * **Multi-language support is not where you save localization costs; if you can't fund it, own that or delay launch. Test every message with below-median-literacy users.** *—The Devil's Advocate*
  * **Plain-language docs assuming the user has never used an API; guide export through the app's UI, not a help article. Make leaving as easy as staying.** *—The Provocateur*
  * **A 60-second video from a real team member conveys sincerity in ways text can't; low-literacy users respond to human voice.** *—The Provocateur*

* **Measure respect directly before rollout by asking users whether they felt listened to, not whether they understood the change.** Single-persona reframe on the "how would the team know" sub-question: the validating question is "Do you feel the team listened to you?" rather than "Did you understand our changes?" Listening, not comprehension, is the commitment being made, and a pre-launch test against that question is the only honest signal.
  * **Track respect with a post-relaunch survey asking "Do you feel the team listened to you?"; listening is the commitment, and the communication should prove it.** *—The Devil's Advocate*

* **Give users control over timing, data, and notifications as a concrete act of respect.** Single-persona insight: 30 days of warning with data export available on day 1 (not day 29), plus letting users mute announcements about features they no longer care about, shifts the emotional frame from "product abandoned me" to "product is making space for me."
  * **30 days' warning, export on day 1, and let power users of removed features mute new-feature announcements.** *—The Pragmatist*

---

### Question 35: Trust Repair, Emotional Credibility, and the Returning-User Emotional Arc

**Full question**: What would current users need to experience in the first week after relaunch to feel that the team listened to them rather than abandoned them, and have we designed that experience or just the product changes? What tone will feel genuine versus corporate spin, what emotional promise is being made (relief, clarity, confidence), and if the team can't feel that promise themselves, will users sense the hollowness? How does the team design the relaunch to acknowledge the emotional arc (confusion, relief, grief) rather than ignore it?

* **Design the first-week experience to acknowledge loss before celebrating; lead with grief, not "look at our beautiful new interface."** All seven personas converge. A returning user notices what's missing first; opening with celebration reads as gaslighting. The first-run experience should say "we removed X things, here's why, here's what's better, tell us what's missing," ideally personalized to the features that user actually used. Trust repair is the acknowledgment that something happened, paired with a remaining experience that demonstrably works.
  * **A first-run screen: "We removed 12 things. Here's why. Here's what's better. Let us know what's missing." Treats the user as an intelligent person navigating real change.** *—The Audience Advocate*
  * **Acknowledge the change immediately rather than burying it in Settings; transparency in the first 60 seconds keeps users long enough to try the core.** *—The Constraint Flipper*
  * **Use prior-usage data to highlight only the remaining features they actually used; personalization in service of grief, not growth.** *—The Devil's Advocate*
  * **The emotional arc isn't the announcement, it's the first thirty seconds of use; design that moment, not the press release.** *—The Empath*
  * **Acknowledgment before excitement: "Fewer features, but the ones that matter work better. Let's show you," then a real performance improvement.** *—The Pragmatist*
  * **A "legacy mode" toggle for week 1 showing what's still available highlighted and removed items greyed out, so users grieve without panic.** *—The Provocateur*
  * **Walk James through day 1 confusion, day 3 relief, day 5 grief; pair an acknowledgment message with a feature that works noticeably better.** *—The Storyteller*

* **Make exactly one emotional promise and keep it relentlessly; the team must genuinely feel it or users will detect the hollowness.** Convergent across five personas. The promise (relief, clarity, or confidence, but only one) has to be designed into the remaining features, not just the marketing. If the message sells relief while the core still feels cluttered or janky, users sense the mismatch instantly. The discipline: write the promise as a sentence, audit the first-week experience against it, and don't launch if returning users say it isn't delivered.
  * **The emotional promise must be real, designed into the features themselves; if you sell relief but the core feels cluttered, users sense the mismatch.** *—The Audience Advocate*
  * **Emotional specificity beats generic positivity: "we know this is disappointing, and we're betting our focus earns back your trust."** *—The Constraint Flipper*
  * **Pick one promise (relief, clarity, or confidence), audit the first week against it, show it to 5 returning users; if 2+ say it's not delivered, don't launch.** *—The Devil's Advocate*
  * **Relief is the promise you need to feel, not just say; the first week has to feel like a weight lifted, not just different.** *—The Empath*
  * **Emotional credibility comes from vulnerability: a PM/engineer video saying "if we got it wrong, we want to hear from you" beats a corporate email.** *—The Provocateur*

* **Run a temporary relaunch-week experience that explicitly bridges old to new, then retire it.** Convergent across three personas. Existing users carry context new users don't (they remember the mess), so a week-1-only welcome flow with a before/after comparison, an acknowledgment of what's gone, and a highlight of what's better lets them recalibrate their mental model before normal use. After week 1 it retires so new users meet the simplified product directly.
  * **A "welcome-back" version for relaunch week with before/after UI and "we heard you, here's what changed and why," retired after week 1.** *—The Devil's Advocate*
  * **An internal emotional simulation where the team role-plays power users discovering missing features, then designs a 10-second tutorial that eases that exact moment.** *—The Provocateur*
  * **A first-time-after-relaunch message: "Here's what we kept, why we cut the rest, and how we're making what remains bulletproof," paired with a noticeably better feature.** *—The Storyteller*

* **Convert grief into product input with a structured "what do you miss most?" window, then publish what you learned.** Single-persona insight: explicitly collecting the most-missed feature during onboarding for two weeks, then publishing "here's what users loved and what we learned," validates the loss instead of asking users to suppress it. Turns the emotional arc into a feedback loop.
  * **A "grief permission window": ask "What feature do you miss most?", collect for 2 weeks, then publish what was loved and learned.** *—The Pragmatist*

* **Send post-relaunch "weekly wins" evidence so the hard choice visibly pays off.** Single-persona insight: for four weeks, show engaged users concrete improvements ("workouts load 60% faster," "47% less notification fatigue") as evidence rather than propaganda, building credibility that simplification is working.
  * **4 weeks of weekly-wins emails to power users showing concrete, specific improvements as evidence the decision is paying off.** *—The Pragmatist*

---

### Question 36: The Email You Dread Writing

**Full question**: Picture the product team composing the message to 180,000 existing users explaining that most of the features they downloaded the app for are gone. Walk through the range of responses that message might provoke (from betrayed to relieved) and what each response would reveal about how the team communicated the app's original promise. What story would make a simplified relaunch feel like an upgrade rather than a retreat?

* **Write the email as an apology and a named admission, leading with the bad news before contextualizing it.** Strongly convergent. The email is dreaded because it is bad news for a cohort, so stop pretending it's good news. Open with the hardest sentence ("we removed 12 features you might have liked" / "we built too much and did none of it well"), list exactly what stays and what goes, and give a one-line reason per cut. Owning the removal first builds trust; burying it makes users feel manipulated.
  * **Acknowledge loss with genuine commitment: "This was hard. Some of you loved features we're removing. Here's why we believe this focus serves you better."** *—The Audience Advocate*
  * **Write it as an apology, not an announcement: "We made mistakes. We built too much. This will disappoint some of you," then a specific keep/cut list with one-sentence reasons and 60-day data export.** *—The Devil's Advocate*
  * **"We tried to be everything, and that wasn't fair to you or to us"; the team must feel the honesty before it hits users.** *—The Empath*
  * **Three honest paragraphs, not a novel: "We built 15 features and did none well... Starting April 8 the app is workout tracking, progress, and challenges. We understand if this isn't what you want anymore."** *—The Pragmatist*
  * **Start with the hardest sentence and own the removal before contextualizing; acknowledging it first increases perceived integrity.** *—The Provocateur*

* **Segment the email so each cohort gets the narrative that fits its relationship to the product.** Convergent across four personas. One email for 180K cannot serve betrayed power users, relieved casual users, and lapsed downloaders at once. Power users of removed features get "here's your data, export steps, and our favorite alternatives"; casual users get "it's simpler and faster now"; lapsed users get "we fixed what was broken, give it 30 seconds." The segmentation effort itself signals respect.
  * **Segmented send, one date: power users get migration help, casual users get speed/clarity, lapsed users get "try it again." Effort signals respect.** *—The Pragmatist*
  * **Communicate by effort level: power users get custom migration, casual users a two-sentence speed note, the rest just the better experience.** *—The Provocateur*
  * **Three narrative threads in one announcement: rebuilt-from-scratch for the lapsed, doubling-down for power users, dignified retirement for niche users.** *—The Storyteller*
  * **Surface the original broken promise directly: "We said one app could do it all. We were wrong. We're going back to what we do best."** *—The Devil's Advocate*

* **End with an invitation that turns disappointment into engagement, not a plea for understanding.** Convergent across two personas. Closing with "reply and tell us what you want in a fitness app, even if we can't build it" converts passive disappointment into feedback and makes some users feel heard enough to stay. Better than ending with "please understand our decision."
  * **End with a specific call to action inviting honest feedback, not resignation; the team gets real market signal either way.** *—The Pragmatist*
  * **Invite users to a "post-mortem" webinar walking through the failures; honest admission of mistake beats rebranding failure as focus.** *—The Provocateur*

* **A/B test the narrative before the full send, because the team doesn't actually know which story reads as progress versus retreat.** Single-persona insight: test "we're focusing" against "we failed and are fixing it" on a 1,000-user segment and measure engagement and angry replies, so the 180K send goes out on the narrative that earns credibility rather than a guess. A way to de-risk the highest-stakes message in the cluster.
  * **A/B test two narratives on 1,000 users before sending to all 180K; you don't actually know whether users hear "focus" as progress or retreat.** *—The Provocateur*

* **Publish a transparent decision log so the rationale, not just the fact, is visible.** Single-persona insight: linking each removal to data and reasoning ("3% used it, it took 40% of engineering time, delivered half the value of the core") gives users permission to accept the reset as necessary rather than arbitrary.
  * **Link a public decision log in the email showing the data and rationale behind each cut; process transparency, not just outcome.** *—The Provocateur*

---

### Question 37: The First Open After Relaunch

**Full question**: Imagine a lapsed user (someone who stopped opening the app three months ago) who receives a notification about the relaunch and opens it for the first time with a reset product. Walk through the first sixty seconds: what do they see, what do they try, and what would need to happen in that minute for them to feel that the product finally understands what they actually need? What does that scene demand of the simplified design?

* **The first screen must deliver one clear core action with zero navigation hunting; the 60 seconds is a referendum on whether you fixed the original problem.** All seven personas converge. The lapsed user is skeptical and cognitively overloaded; success is a clean home screen with one obvious path (log a workout, big center button), no hamburger menu or six tabs, and immediate confirmation that something works. If the primary action is hidden behind navigation, they leave before discovering it. Clarity and speed beat any feature showcase or tutorial.
  * **One clear path, zero navigation confusion, immediate feedback that something works; relief is the entry point to trust.** *—The Audience Advocate*
  * **The empty state becomes onboarding: acknowledge the change, point to alternatives, offer the full story, then get out of the way.** *—The Constraint Flipper*
  * **Load directly to their context (recent workouts, one clear next action); navigation must be obvious on the first screen or skeptical lapsed users leave.** *—The Devil's Advocate*
  * **Show one core path that feels intuitive and lands somewhere that feels like home; familiarity mixed with relief, "this is simpler and it's for me."** *—The Empath*
  * **The 10-second clarity test: "Log a workout" big and centered, "Your progress" one chart, "Challenges" three cards; if the app can't answer "what does it do" in 10 seconds, the relaunch fails.** *—The Pragmatist*
  * **Judge success by re-engagement (opened, didn't leave, returned within 48 hours), not by what they tapped first; the 60 seconds is a referendum on the original problem.** *—The Provocateur*
  * **DeAndre taps "Quick Workout," logs 15 minutes in 30 seconds, and feels the app finally understands his real constraint: 20 lunch minutes, no meal-planning or meditation.** *—The Storyteller*

* **Acknowledge what's gone and preserve their history; don't erase the user's prior investment.** Convergent across five personas. Returning users had streaks, progress, and data; the first open should preserve and surface that ("your last workout was January 15th, ready to start again?") or respectfully note what was reset. A blank slate with no nod to what they built feels like erasure; a personal acknowledgment of their specific removed feature proves the redesign was about their needs.
  * **Recognize prior investment: "Your workout history is still here" or "your friends are still here"; the opposite feels like erasure.** *—The Audience Advocate*
  * **Show their historical data immediately ("your last workout was January 15th"), reframing the app as a continuity engine, not a feature showcase.** *—The Devil's Advocate*
  * **If a previously used feature is missing, show one card: "You used [feature]. Here's why we removed it and what to use instead," one tap to an alternative.** *—The Provocateur*
  * **A personalized "what's new" card specific to their session history: "we see you, here's what we preserved for you," not generic "thanks for sticking with us."** *—The Provocateur*
  * **Onboarding should echo the relaunch message: show what they can do now and what's gone, then ask "is this useful to you?"** *—The Pragmatist*

* **Make the first open a confirmation moment, not a tutorial, with optional (never mandatory) context.** Convergent across three personas. Lapsed users won't read copy; they want to feel, in seconds, that the noise is gone. Lead with the experience or a single powerful visual of the core promise; offer an optional link to a 90-second "what changed" explanation for those who want it, but never trap users in a pitch. The option to understand without being forced rebuilds agency.
  * **A 2-second auto-dismissing visual of the core promise (someone running, one clean goal); lapsed users take a 3-second emotional read, not a copy read.** *—The Provocateur*
  * **An optional "something looks different, here's what changed" link to a 90-second video; those who want context click, those who want to try aren't forced through a pitch.** *—The Provocateur*
  * **The first open is a confirmation moment, not a tutorial; surface the power of simplicity immediately, don't bury it inside onboarding.** *—The Audience Advocate*

* **Demonstrate the performance win as proof of respect: speed users can feel.** Single-persona insight: a workout that saves and syncs in under 2 seconds (versus 8-12 with the old bloat), with a real-time timestamp, makes users experience simplification as speed, and speed reads as respect for their time within the first 60 seconds.
  * **Sub-2-second save/sync with a visible real-time timestamp; within 60 seconds the lapsed user should feel the app finally works, not that it was gutted.** *—The Pragmatist*

---

### Question 38: The Hospice Model for Features

**Full question**: What if you treated the 12 features being cut not as deletions but as a scheduled death, a "feature hospice" where each feature gets a 30-day farewell window, its most devoted users are contacted, their alternatives are arranged, and a public wake is held? The absurd version is theatrical; the real insight is that features with small but passionate user bases may need dignity in their removal, not just a changelog entry. What would a "humane sunset" process for deeply-used features reveal about what made them valuable, and how might that inform what you build next?

* **Run a humane staged sunset: 30+ days' notice, a clear date, direct goodbye to devoted users, arranged alternatives, and data export.** All seven personas converge. The dignified process (early notice, a specific sunset date, a personal farewell message, vetted alternatives, exportable data) transforms the narrative from "they abandoned us" to "they made a hard choice and treated us with respect." That emotional foundation is stronger for long-term retention than hiding or minimizing the change, even for users who ultimately leave.
  * **Early notice, direct conversation, explicit migration support, acknowledgment of loss; dignity in removal converts grief into respect and long-term loyalty.** *—The Audience Advocate*
  * **A 2-week sunset window per feature with a personalized notification, usage count, alternatives, and rationale; every sunset is a chance to demonstrate respect.** *—The Constraint Flipper*
  * **A farewell message, exported data, and a recommended alternative per feature; the relationship continues elsewhere even as the feature dies.** *—The Devil's Advocate*
  * **Grief leadership, not abandonment: reach devoted users, help them migrate, acknowledge the value.** *—The Empath*
  * **Three tiers over nine months (30/60/90-day wind-downs) so pain is staggered and communities have time to migrate; deprecation is a process, not a switch-flip.** *—The Pragmatist*
  * **A 30-day farewell window per feature with visual deprecation, a countdown, a farewell badge, and goodbye messages to power users; staged removal lets users grieve and migrate on their own timeline.** *—The Provocateur*
  * **The meditation guide gets a 30-day farewell, a personal email, three alternatives, and an in-app farewell series; a changelog that honors "this helped 18,000 users find calm."** *—The Storyteller*

* **The sunset is product research: listen to devoted users to learn the unmet need the feature really served, then let it shape the roadmap.** Strongly convergent. Small passionate user bases are signals of unmet needs, not noise. A structured sunset survey ("what was this useful for? what would make you stay? what's your next tool?") or a short co-design intensive with the most invested users reveals that the value was often something other than the feature itself (the ritual, the community, the structure). That insight is roadmap gold that no churn metric provides.
  * **Map the emotional investment: 2,000 devoted meal-planner users treated it as a ritual; what human need a feature filled should inform what you build next.** *—The Audience Advocate*
  * **Click-through and feedback during the sunset window is higher-quality data than post-relaunch churn, and it arrives in time to adjust.** *—The Constraint Flipper*
  * **A day-1 sunset survey ("what was this useful for? what would make you stay? what's your next tool?"); 500 devoted users of a janky feature is evidence of an unmet need.** *—The Devil's Advocate*
  * **The hospice question surfaces that people loved features because something real was missing; that gap shapes what you build next better than any data analysis.** *—The Empath*
  * **A one-page legacy post-mortem per feature with >100 users, plus a 30-day insight intensive with the 3 most-invested users to document the real pain point.** *—The Pragmatist*
  * **Treating removal as a hospice event reveals those features had meaning; the relaunch story becomes "we listened so deeply we're honoring what we leave behind."** *—The Storyteller*

* **Make the wake public: share what was cut and what was learned to build evidence-based trust.** Convergent across four personas. A public retrospective or "feature graveyard" (a post, an archived repo with screenshots and testimonials, a webinar where loved-feature users speak) signals that cuts were deliberate and the team learns from failure, contrasting with teams that vanish features silently. The cost is admitting failure publicly; the benefit is users perceiving the cuts as evidence-based.
  * **A public retrospective ("here's what we cut and learned," even admitting "2K users wasn't small") shows evidence-based, non-arbitrary cuts.** *—The Devil's Advocate*
  * **A transparent legacy document per major feature published on the blog/forum transforms removal from "we don't care" into "we admit we built the wrong thing."** *—The Pragmatist*
  * **A public "feature graveyard" repo with docs, screenshots, and testimonials turns erasure into legacy; future users might fork and improve.** *—The Provocateur*
  * **A 30-minute feature retrospective webinar where users share what they achieved and the team explains the reasoning; they leave as advocates, not detractors.** *—The Provocateur*

* **Turn devoted users of removed features into co-designers of the next version.** Single-persona insight: inviting the top users of each removed feature into early-access design of that category's next-generation version (18 months out) reframes removal as "we're rethinking this with your input," converting would-be critics of the vision into future-roadmap collaborators and converting present churn into future retention.
  * **Offer the top 10 users of each removed feature an early-access invite to design the next version; turn removal into recruitment.** *—The Provocateur*

---

**Questions addressed**: 7
**Personas contributing**: The Audience Advocate, The Constraint Flipper, The Devil's Advocate, The Empath, The Pragmatist, The Provocateur, The Storyteller
**Total synthesized insights**: 29

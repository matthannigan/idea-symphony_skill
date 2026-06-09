---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/mobile-app/med"
datetime: 2026-06-09
effort: "medium"
stage: "Phase 4: Response Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-8"
topic-cluster: "01_diagnosing-the-real-problem"
synthesis-type: "attributed"
---

# Brainstorming Synthesis: Diagnosing the Real Problem - With Attribution

---

## Synthesized Insights by Question

### Question 1: What's actually broken here?

**Full question**: Why do we assume the 8% 30-day retention and 47-second sessions are caused by feature overload rather than by the absence of a compelling core loop, by information architecture and onboarding failure, or by chasing a daily-engagement habit loop that doesn't match how people actually use fitness tools — and what would it take to tell those diagnoses apart cheaply before committing to cuts?

* **The feature-overload diagnosis is an untested assumption, and committing the relaunch to it before validation is the central risk of this cluster.** All four perspectives converge: "feature overload causes low retention" is correlation treated as causation. The same 47-second session is consistent with at least three distinct failure modes (can't find what they want, found it and it doesn't work, found it and it isn't what they need), and each demands a different fix. The cheap move is to run a single-variable test before cutting anything: lock or hide most features for a slice of traffic, keep one core feature fully functional, and watch whether retention moves. Cost is roughly two weeks and zero relaunch risk.
  * **Retention metrics confound acquisition quality, onboarding friction, and product-market fit; cohort by source and first-session behavior before cutting.** Original detail from The Devil's Advocate. *—The Devil's Advocate*
  * **The diagnosis is untested — run a single-variable experiment: lock 10 features, keep one functional, see if retention climbs. If flat, the problem lives elsewhere.** Original detail from The First Principles Thinker. *—The First Principles Thinker*
  * **Start with a retention audit, not a feature count — instrument which feature each session touched and where users dropped, for ~40 hours and $0.** Original detail from The Pragmatist. *—The Pragmatist*

* **One symptom, three separable diseases: information architecture, execution quality, and product-market fit each need a different treatment.** A 47-second session could mean navigation failure (a day's fix), broken execution (weeks), or genuine misalignment (the user base itself may be contaminated). Conflating these wastes runway on the wrong cure. Structured exit interviews and a per-feature quality audit separate scope problems from execution problems.
  * **47 seconds could mean can't-find / found-but-broken / found-but-wrong — measure which via structured exit interviews.** Original detail from The First Principles Thinker. *—The First Principles Thinker*
  * **Separate feature scope from execution quality: rate each feature 1–5 on polish; expect 8 at 2/5 (dead weight) and 3 at 4/5 (double down).** Original detail from The Pragmatist. *—The Pragmatist*
  * **A competitor with identical feature count but better information architecture might see 4-minute sessions — overload isn't proven.** Original detail from The Devil's Advocate. *—The Devil's Advocate*

* **The 8% retention number is meaningless without a target-segment baseline and may not be a product problem at all.** Eight percent is a crisis against a 40% baseline and merely below-average against a 12% baseline. The fitness-tool usage rhythm may also be naturally infrequent (weekly logging, not daily), so a habit-loop metric borrowed from social media can flag healthy behavior as failure. Establish what "broken" means before breaking the product.
  * **8% is meaningful only against your target segment's baseline — without it you're flying blind.** Original detail from The First Principles Thinker. *—The First Principles Thinker*
  * **Fitness apps aren't always daily-engagement products; chasing social-media metrics could kill features that serve real user rhythms. Interview your most-active users about natural cadence.** Original detail from The Devil's Advocate. *—The Devil's Advocate*

* **There may be no broken metric at all, only an absent emotional hook — the product reads as a panic response with nobody home at the center.** A dissenting reframe: the bloat is not deliberate ambition but a defensive "yes" to every feature request, and users feel that anxious, loveless energy. 47 seconds is long enough to feel disappointment that nothing made them feel "oh, this is why I'm here." This locates the diagnosis in emotional design rather than instrumentation, and warns that a tired team will ship a tired relaunch unless given room to grieve what is cut and get excited about what remains.
  * **The app feels like a panic response — anxiety, not ambition; the real failure is the absence of a moment that makes people feel "this is why I'm here." The team's burnout is leaking into the UX.** Original detail from The Empath. *—The Empath*

---

### Question 2: The 47-second abandonment moment

**Full question**: When users open the app and feel "overwhelming," what is the precise emotional sequence — confusion, then shame at not understanding it, then retreat — and what are users actually doing in those 47 seconds: what do they try, what stops them, and what does that failed moment feel like from their side?

* **The emotional sequence is real but invisible to current metrics; measure it directly with a zero-friction exit survey rather than inferring it.** Multiple perspectives agree the failure is partly a shame spiral — the user came with a hypothesis ("a friend said this does X"), met 15 features instead, and concluded "I'm using this wrong" rather than "this app is bad." No dashboard captures that. A one-tap "why did you leave?" survey (too confusing / not what I want / will try later) classifies the failure as cognitive, motivational, or contextual in the user's own words.
  * **Put a zero-friction exit survey in the app — three buttons reveal whether failure is cognitive, motivational, or contextual.** Original detail from The First Principles Thinker. *—The First Principles Thinker*
  * **Add an exit survey firing on first-session close: confusing / found what I wanted / will try later / switched. This separates abandonment from pausing.** Original detail from The Devil's Advocate. *—The Devil's Advocate*
  * **The shame spiral is real but invisible — only qualitative research (watch 10 users think aloud) reveals the psychological wall.** Original detail from The First Principles Thinker. *—The First Principles Thinker*

* **Watch real users fail the task live, because the trigger is neurological friction the user can't self-report.** Session replays, heatmaps, and moderated think-aloud sessions catch the exact pause and gaze-drift that precede the exit. The diagnostic move is a concrete unguided task — "find and log the workout you did this morning" — that isolates onboarding clarity from feature overload: if a user can't locate a basic capability, the problem is navigation, not feature count.
  * **Replay 50 sessions with Fullstory/LogRocket/Firebase; if 80% fail at the same point, that's your lever. Then shadow 10 live users told to "find and complete one workout" with no help.** Original detail from The Pragmatist. *—The Pragmatist*
  * **Use eye-tracking or session-replay on the first 100 users — the pause before exit is the diagnostic moment. Then task users to "log the 5K you ran" to isolate capability gaps from overwhelm.** Original detail from The Devil's Advocate. *—The Devil's Advocate*
  * **The 47-second window is too tight to solve all three decisions; focus on the first — if she can't parse navigation in 10 seconds she's gone. It's a signal-to-noise problem.** Original detail from The First Principles Thinker. *—The First Principles Thinker*

* **The lived sequence is hope, then visual overwhelm, then shame — users feel unsafe and unwelcome, not merely confused.** The emotional texture is a microsecond of "maybe this will help me," a scan of six tabs and a hamburger menu, then an internal collapse into "this wasn't made for people like me." Each dead end (no "Start Here," a workout list with no entry point) cranks anxiety until the user concludes "I'm broken for not understanding this." This frames the fix as emotional design — making someone feel held and guided — not just rearranging the information architecture.
  * **It's a flash of hope followed by resignation: hope → visual overwhelm → shame. They felt unsafe, like walking into a party they weren't invited to. That's an emotional design problem, not an IA problem.** Original detail from The Empath. *—The Empath*

* **The 47-second figure itself deserves scrutiny — it may measure satisfied exits, comparison-shopping pauses, or a measurement artifact rather than failure.** A short session can mean "got what I needed and left," or a checkout moment during comparison shopping, or even reinstall-churn miscounted as engagement. Distinguish first-session duration for day-1 users from session length for day-8 and day-15 returners; if returners stay longer, the problem is onboarding clarity, not feature count.
  * **Question the 47-second anchor — a user might open, glance, and leave because they already got what they needed. Session length alone doesn't tell you intent.** Original detail from The First Principles Thinker. *—The First Principles Thinker*
  * **47 seconds might be bounce-and-re-evaluate (comparison shopping) or a measurement phantom from reinstall churn — measure day-1 vs. day-8/15 returner sessions separately.** Original detail from The Devil's Advocate. *—The Devil's Advocate*

* **Proactive in-app help can both treat the shame spiral and test for it.** A help layer that triggers on a second navigation tap within 60 seconds ("Not finding what you need? Here's a guided tour to your top 3 features") offers a way to flatten the abandonment curve and, by measuring whether it works, confirm whether confusion is the real killer.
  * **Build an in-app help layer triggering on second nav tab within 60 seconds; test whether proactive help flattens the abandonment curve.** Original detail from The Devil's Advocate. *—The Devil's Advocate*

---

### Question 3: The absent voice problem

**Full question**: Data shows who stayed, but who never downloaded in the first place because the app's complexity signaled "not for me" — and what would a focused product unlock for those people who self-selected out?

* **The absent users are not lost — they are the exact people a focused product should serve, and their absence is recoverable data.** A complex app signals "for power users," filtering out the busy, mainstream, simplicity-seeking audience before download. The gap between who the app currently attracts and who it should reach is itself the product brief. Reach them by talking to people who actively avoided or immediately uninstalled the app and asking what would have made them try it, and by reading existing reviews and competitor reviews for "easy to use" versus "overwhelming" language.
  * **Self-selection bias is a feature filter — the absent users are exactly who you should build for if you simplify; ask what app they *would* have downloaded.** Original detail from The First Principles Thinker. *—The First Principles Thinker*
  * **Analyze app-store reviews for "too complicated" vs. feature complaints; if a simpler competitor gets "easy to use" 3x more often, you're solving the right problem.** Original detail from The Pragmatist. *—The Pragmatist*
  * **Survey users who installed and immediately uninstalled: "What did you hope to find?" then "Did you find it, or did something else stop you?" to separate overload from unmet feature parity.** Original detail from The Devil's Advocate. *—The Devil's Advocate*

* **Don't assume simplification unlocks the absent audience — test the counterfactual before betting the relaunch on it.** Saying "a focused product unlocks adoption" presumes users rejected the app for complexity; they may have rejected weak core functionality, missing feature parity, or absent friends. Run a parallel acquisition experiment — two ad variants (current 15-feature pitch vs. a stripped "track workouts, that's it" pitch) to similar audiences — and measure click-through and 7-day retention. A much higher conversion on the minimalist pitch proves framing is the problem; a flat result means feature count is not the lever.
  * **You can't estimate the upside of a simplified product without testing it — a simplified app might still hit only 9% if the core loop doesn't work. A/B the simplified variant on new users first.** Original detail from The Devil's Advocate. *—The Devil's Advocate*
  * **Run two ad variants (current vs. simplified mock-up); which gets higher click-through tells you whether simplification attracts the people who walked away.** Original detail from The First Principles Thinker. *—The First Principles Thinker*
  * **Run a 30-second landing page ("The essential fitness app: track workouts. That's it.") for early access; 2x conversion proves simplicity unlocks a self-selected-out segment. Budget $500, one week.** Original detail from The Pragmatist. *—The Pragmatist*

* **The unlock is emotional permission as much as adoption — a focused product invites back people who felt they had to be "complete" to deserve the app.** An everything-app signals "we don't stand for anything," and the people who bailed wanted permission to be just a workout person without shame at ignoring other tabs. A relaunch with one clear thesis carries authentic relief, and the resulting word-of-mouth ("finally, an app that gets what I actually need") hits differently than engagement-driven growth.
  * **The absent users wanted permission to be just one kind of user; a focused product carries authentic relief and word-of-mouth that hits different.** Original detail from The Empath. *—The Empath*

* **The real unlock may live in positioning and channel, not the product — and changing the product without changing acquisition can fail.** A simplified app still acquired through the same app-store algorithm pulls the same demographic; the absent audience is reached by changing how you acquire (niche fitness communities, studios, Reddit) and how you position ("the focused fitness app for busy people"). The simplified product often doesn't *unlock* absent users so much as stop *pushing them away*.
  * **The "appeal to non-users" strategy assumes distribution parity — test an untapped channel (Reddit, CrossFit boxes); 3x conversion there means audience mismatch, not a product problem.** Original detail from The Devil's Advocate. *—The Devil's Advocate*
  * **The simplified product doesn't *unlock* absent users — it stops *pushing them away*; the real unlock is marketing and positioning.** Original detail from The First Principles Thinker. *—The First Principles Thinker*
  * **Non-downloaders might not be in-market for fitness at all — test broad fitness-adjacent ad keywords; 3x cost-per-install means weak audience parity and a high-risk relaunch.** Original detail from The Devil's Advocate. *—The Devil's Advocate*

---

### Question 4: The feature that lit people up

**Full question**: Among the 15 features, which one — even briefly, even with just a small segment of users — generated genuine enthusiasm or word-of-mouth? What was it about that experience that worked, and what does that tell you about what users actually came here hoping to find?

* **Rank features by engagement slope and word-of-mouth, not absolute downloads — a small, deeply engaged base often marks the true core.** A feature used by 2% of users with 80% day-2 retention beats a feature used by 20% with 10% retention. Pull cohort data (first-use-to-return, weekly active rate, time-in-feature) in an afternoon and rank by engagement per user. Word-of-mouth is the purity test: people only evangelize features that solved something they felt was missing from their life.
  * **Pull cohort data per feature in one afternoon; rank by engagement slope, not absolute numbers — a 2%/80%-retention feature beats a 20%/10% one. It's just a Mixpanel report.** Original detail from The Pragmatist. *—The Pragmatist*
  * **Engagement per user is your unit, not total downloads; find the "aha" inside the feature and follow what users *recommend* — word-of-mouth means it solved something they felt was missing.** Original detail from The First Principles Thinker. *—The First Principles Thinker*
  * **Reconstruct word-of-mouth via download source — which features do the referred cohort use most? That's probabilistic market-fit evidence, in 3 hours.** Original detail from The Pragmatist. *—The Pragmatist*

* **Strip the feature down to the underlying need it met — that need, not the feature, is the north star.** Enthusiasm is a clarity signal: the excited subgroup felt clear about why they came. Was it social validation, a concrete measurable outcome, or community? A small passionate base is often right about what works, and you scale by doubling down on why those users are hooked, not by diluting the product to touch everyone once.
  * **Enthusiasm is a clarity signal — strip away the feature and identify the need it met; that need is your north star. Small passionate bases are often right.** Original detail from The First Principles Thinker. *—The First Principles Thinker*
  * **The feature users *wanted* to share — not the one used out of obligation — holds the emotional truth; five passionate users beat 5,000 obligatory ones.** Original detail from The Empath. *—The Empath*

* **Validate that enthusiasm is durable and scalable before betting the relaunch on it — novelty, situational need, and survivor bias all masquerade as core value.** A meditation guide loved in week 2 may be abandoned by week 6 as novelty fades; a sleep tracker loved during a stressful deadline may be situational; NPS measured only among survivors hides 80% silent churn. Distinguish a viable niche (15% trial → 8% repeat → NPS +45) from a passionate-minority trap (5% trial → 2% repeat). Interview power users about *when* they actually reach for the feature.
  * **High week-1 engagement might be a honeymoon effect — segment weeks 1–4 vs. 5–8 for sustained curves vs. novelty spikes; a flattening feature may not belong in the core.** Original detail from The Devil's Advocate. *—The Devil's Advocate*
  * **Distinguish a viable niche (15% trial → 8% repeat → NPS +45) from a passionate-minority trap (5% trial → 2% repeat → NPS +50). Word-of-mouth on a tiny segment may not scale.** Original detail from The Devil's Advocate. *—The Devil's Advocate*
  * **Enthusiasm may reflect temporary life circumstances, not product quality — interview power users about when they use it; if "only when X" and X is temporary, the feature is situational.** Original detail from The Devil's Advocate. *—The Devil's Advocate*

* **A "feature combo" rather than a single feature may be the foundation, and the app may be a credential holder rather than the delivery mechanism.** Retained users often follow a synergistic pattern (workout tracker + challenges) that locks them in; the core may be a pair, not a singleton. Separately, the lit-up feature may succeed despite the app — if a coaching service is consumed via email or Slack and the app is just kept installed as a credential, cutting other features won't protect the value.
  * **Track feature-combo patterns; if 40% of retained users follow Workout + Challenges, that synergistic pair is your foundation — a focused app isn't always one feature.** Original detail from The Pragmatist. *—The Pragmatist*
  * **The lit-up feature might succeed *despite* the app — if value is delivered via email/Slack, the app is a credential holder, not the delivery mechanism. Measure in-app vs. external value share.** Original detail from The Devil's Advocate. *—The Devil's Advocate*

---

### Question 5: The overwhelm moment

**Full question**: Imagine a new user — let's call her Maya, a busy 32-year-old who downloaded the app after a friend's recommendation — she opens it for the first time, sees six navigation tabs and a hamburger menu, and feels that sinking "I don't even know where to start" feeling. What is the single action she could take in the simplified app that would give her an immediate sense of "yes, this is for me" — and how does that moment define which features actually belong in the core?

* **Define the core by Maya's first action, not by a feature list — one obvious, rewarding action in under 60 seconds, then work backwards to the minimum screens it requires.** All four perspectives agree the entry point should be a single clear action ("Log your workout") that produces an immediately relevant result (the entry appears on a graph, a "great job"). That moment of competence is the product spec: every screen, button, and data field that isn't required to reach it gets cut. A 2-hour whiteboard session backwards from the aha moment forces clarity on the core loop; a clickable prototype tested on 10–20 users validates it.
  * **Define your feature set backward from Maya's aha moment — log a workout, see it on a graph, get a "great job." Everything else is v2. A 2-hour whiteboard session.** Original detail from The Pragmatist. *—The Pragmatist*
  * **Define "core" by the first action, not the feature set — "I logged my workout and saw my chart update instantly" is a moment, not a feature. Work backwards from it.** Original detail from The First Principles Thinker. *—The First Principles Thinker*
  * **Maya needs one small win in the first 30 seconds — one beautiful obvious thing that says "you belong here." The core is whatever makes her feel competent in 10 seconds.** Original detail from The Empath. *—The Empath*

* **Simplicity wins by removing options, not by designing cleverer guidance — and the aha moment becomes the tiebreaker for every feature debate.** If Maya opens to one button, one tab, and one empty state, choice paralysis vanishes because there is nothing to be confused about. Use the magic moment to settle arguments: whichever feature creates Maya's aha moment stays; if "celebrate a logged workout with friends" is the aha, keep social plus tracking; if "see my consistency graph" is the aha, drop social. Every feature must serve the moment or die.
  * **The simplified app succeeds by *removing options* — one button, one tab, one empty state; complexity begets choice paralysis, simplicity is itself a feature.** Original detail from The First Principles Thinker. *—The First Principles Thinker*
  * **Use the magic moment to kill arguments — whichever feature creates Maya's aha is the tiebreaker; every feature must serve it or die.** Original detail from The First Principles Thinker. *—The First Principles Thinker*
  * **Test a stripped-down onboarding with one primary action ("Log your workout"); measure tap rate, completion, day-2 return. If yes/yes/60%, you've defined your core.** Original detail from The Pragmatist. *—The Pragmatist*

* **Overwhelm is often a symptom of weak positioning — if the team can't say what the app fundamentally is, Maya can't either.** When internal narrative clarity is missing ("is this accountability, social, or competition?"), the product is incomprehensible externally. The simplified product is an honest one-sentence statement, not just fewer features, and that clarity collapses a 47-second decision into a 5-second one.
  * **Overwhelm is a proxy for weak positioning — if the team has lost narrative clarity, it's incomprehensible externally; clarity collapses 47 seconds into 5.** Original detail from The First Principles Thinker. *—The First Principles Thinker*

* **One perfect first action does not guarantee retention — guard against week-3 churn with progressive disclosure rather than permanent deletion.** A great day-1 moment can still collapse if Maya hits five other confusing features on day 3, or if by week 3 she wants calorie tracking or coaching the simplified app omitted. Launch with three core features visible and unlock a second tier based on usage (analytics for loggers, friend features for social users). The single-action frame also assumes the app is the problem; if Maya came for the meal planner but wants to log workouts, the mismatch is acquisition, not UI.
  * **One moment of "yes" doesn't prevent later overwhelm or underserve Maya's week-3 needs — design simplification as progressive disclosure, not deletion; unlock a second tier after day 7.** Original detail from The Devil's Advocate. *—The Devil's Advocate*
  * **The single-action solution assumes the app is the problem — if the friend recommended the meal planner and Maya wants workouts, the distribution mismatch kills retention, not the UI.** Original detail from The Devil's Advocate. *—The Devil's Advocate*
  * **Optimizing for one persona's moment can alienate others — identify 3 personas by usage pattern and route each to its own first-action sequence.** Original detail from The Devil's Advocate. *—The Devil's Advocate*

---

### Question 6: Misidentifying the patient

**Full question**: What if the 8% 30-day retention isn't a product problem at all — what if it's a distribution problem, and the app is being installed by completely the wrong people, which means every decision made from this data is a solution to a problem the target user doesn't have? *The insight: before cutting features, it's worth asking whether the data is contaminated by mismatched users — fixing retention for the wrong audience might destroy retention for the right one.* [User Q]

* **The retention data is very likely a blended average of mismatched cohorts, and segmenting by acquisition source is the single highest-leverage, lowest-cost diagnostic in the cluster.** All four perspectives converge hard: the 8% almost certainly hides dramatic variation (referral users at 20% vs. paid search at 4%). Cohort day-30 retention by campaign source, demographic, and first-feature-accessed. If a clean segment emerges (e.g., referred users, or those who logged a workout first, retaining at 20–40%), you have found your real market — and cutting features to serve the dropout majority would destroy value for the minority who actually fit. Cost is a few hours of analysis.
  * **Segment retention by source/demographic/install date — bet on finding referral at 20% vs. paid at 4%. Your 8% is a weighted average of mismatched users.** Original detail from The Pragmatist. *—The Pragmatist*
  * **Cohort by signup source — if organic retains at 15% and all segments at 8%, the product is broken; otherwise distribution is. Cost is zero; a wrong-reason relaunch is catastrophic.** Original detail from The First Principles Thinker. *—The First Principles Thinker*
  * **Segment by acquisition source and message — if the "serious athlete" cohort retains at 18%, you've identified your market, not your failure.** Original detail from The Devil's Advocate. *—The Devil's Advocate*

* **The 8% may be acceptable, or even mostly noise, depending on who you acquired — and the dropouts may never have been customers at all.** Eight percent is a disaster against millions of curious browsers and tolerable against thousands of intent-driven niche-community installs; the absolute number is meaningless without an acquisition-defined target. Probe whether dropouts ever took a single action: if 70% of leavers never logged anything, the value proposition was unclear, not the feature set. And 180K downloads at 8% with 47-second sessions may mean you have noise rather than users — if no cohort of 500+ loves the product, the fix is finding a market, not redesigning.
  * **8% is meaningful only against your acquisition strategy — millions of browsers vs. thousands of intent-driven users set different bars; clarify your user target first.** Original detail from The Devil's Advocate. *—The Devil's Advocate*
  * **Analyze whether dropouts ever logged a workout — if 70% never attempted an action, the pitch is unclear, not the features. 2 hours to validate.** Original detail from The Pragmatist. *—The Pragmatist*
  * **Ask the dangerous question: do you have a customer base at all? If no 500+ cohort loves it, retention is decorative — the fix is finding a market, not redesigning.** Original detail from The First Principles Thinker. *—The First Principles Thinker*

* **If the problem is distribution, the fix is cheaper than a relaunch — tighter positioning and targeting may recover retention without rebuilding.** Better app-store screenshots emphasizing one use case, narrowed ad targeting, or gated early access can be tested in four weeks; a 30%+ retention lift from tighter positioning diagnoses a go-to-market problem, not a product problem, and saves the runway a six-month rebuild would burn. Re-define the target user narrowly (e.g., 25–45, fitness-interested, opened within 7 days) and recalculate retention against that slice before strategizing.
  * **The mismatched-user problem may be fixable without a relaunch — test tighter screenshots/targeting/gating for 4 weeks; a 30%+ lift means a go-to-market problem, not a product one.** Original detail from The Devil's Advocate. *—The Devil's Advocate*
  * **Re-define the target user narrowly and recalculate retention on that slice — likely 2–3x the 8% average; the features may be fine and just noise for the wrong users.** Original detail from The Pragmatist. *—The Pragmatist*
  * **Bad distribution disguised as a product problem: $5-CPM ad clicks are low-commitment; cut bad distribution before cutting features.** Original detail from The First Principles Thinker. *—The First Principles Thinker*

* **Validate that a real market exists at scale before relaunching — fixing retention for the wrong audience guarantees a failed reset.** If features are cut to serve casual users but the true market is passionate athletes, the simplified app may still retain at 5–7% because it serves no one deeply, wasting eight months and the remaining runway. Run a commitment-intent test (a landing page describing the simplified vision to each candidate segment); if the true-market segment converts at 40%+ and the adjacent market at 10%, you know who you are building for before you build.
  * **Validate a real market at scale before relaunching — a commitment-intent landing page per segment; 40% vs. 10% conversion tells you who you're building for.** Original detail from The Devil's Advocate. *—The Devil's Advocate*

* **The data may be poisoned by the very listicles and algorithm pushes that drove installs — completionists and collectors are not simplicity-seekers.** "10 Best Comprehensive Fitness Apps" placements attract people who want an everything-app, the opposite of the focused product's true user; algorithm-driven installs are noise. Before cutting anything, ask who is actually in the dataset and talk to the people who had the worst experience: "if we did only this one thing beautifully, would you come back?" A shift in their energy reveals your real person.
  * **The data is poisoned if installs came from "comprehensive fitness app" listicles or algorithm pushes — those attract completionists, not your simplicity-seeking true user.** Original detail from The Empath. *—The Empath*

---

**Questions addressed**: 6
**Personas contributing**: The Devil's Advocate, The Empath, The First Principles Thinker, The Pragmatist
**Total synthesized insights**: 24

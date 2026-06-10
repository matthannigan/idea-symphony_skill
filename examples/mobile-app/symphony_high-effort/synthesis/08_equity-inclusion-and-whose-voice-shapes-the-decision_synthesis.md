---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/high"
datetime: 2026-06-09
effort: "high"
stage: "Phase 4: Response Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-8"
topic-cluster: "08_equity-inclusion-and-whose-voice-shapes-the-decision"
synthesis-type: "synthesis"
---

# Brainstorming Synthesis: Equity, Inclusion, and Whose Voice Shapes the Decision

---

## Synthesized Insights by Question

### Question 39: Accessibility across user circumstances

**Full question**: The proposed core features — likely workout tracking or social fitness functions — carry assumptions about users' physical abilities, time availability, gym access, and internet reliability. Which features in the current set serve users facing the most constraints (limited mobility, irregular schedules, no gym access), and would stripping down to a "core" inadvertently narrow the app's reach to users with more resources and flexibility?

* **Audit which features serve the most-constrained users before cutting anything, and let constraint be the design filter.** All seven perspectives converge: stripping to "core" based on raw engagement will quietly redefine "core" as "core for users with time, ability, gym access, and stable internet." The fix is a deliberate accessibility audit. Map each of the 15 features to the segments that depend on it (limited mobility, irregular schedules, no gym access, unreliable connectivity). Check which populations disappear entirely if you cut to 3-4 features. Design the survivors to be inclusive: async logging, offline persistence, text descriptions instead of video. Reframe selection from "which feature is best for most users" to "which combination serves users with the fewest resources." Design for intermittent connectivity, no gym, and ten minutes a week, and everything else cascades from that floor.

* **Watch for the "Success to the Successful" reinforcing loop, where engagement-based cuts compound demographic narrowing across relaunch cycles.** Cutting to whatever engaged users adopted attracts more users like them. This biases the next data round toward the same demographic and narrows "core" further. Over a few cycles you accidentally build the app exclusively for able-bodied, employed, gym-going users. Interrupt the loop by measuring *reach* (what percent of each segment can use a feature) before measuring engagement.

* **Keep one deliberate accessibility feature even when its raw numbers are weak, and expect the cut to carry an emotional cost.** A feature used by only 2-3% can be the only thing that works for the most-constrained users. Removing it says "we stopped serving you." Some constrained users will feel relief at a simpler flow. Others will feel resentment and abandonment. Treat that contradiction as a grief to acknowledge, not a problem to argue away.

* **Convert social features to asynchronous, time-flexible forms instead of cutting them.** Real-time challenges and live streams exclude users with irregular schedules. Delayed-feedback leaderboards, 72-hour challenge windows, and offline recorded tutorials serve the same need at lower maintenance cost. The need is not fewer social features but social features designed around time flexibility.

* **Probe the constrained segment directly: test the proposed core with accessibility advocates, and ask download-but-never-returned users what would have made them stay.** A one-to-two-week round of interviews with users who have mobility limits, fragmented schedules, or spotty connectivity gives fast, high-signal feedback on whether the simplified product still serves them. This may reveal that no-gym-access users are a distinct, valuable segment rather than a liability to trim.

---

### Question 40: Design with vs. design for, and power dynamics in feedback

**Full question**: The current plan appears to use data analysis, user interviews, and strategic vision as inputs — but user interviews and feedback channels systematically over-represent users who are articulate, motivated to engage, and comfortable with the feedback format. What would it look like to involve actual users — particularly those who represent the app's most underserved segments — as co-decision-makers rather than informants? What mechanisms would give voice to users who are less likely to respond to surveys (younger users, non-English speakers, users with lower tech literacy), and how would their perspectives change the feature prioritization conversation?

* **Bring underserved users into prioritization as co-decision-makers with real, binding power, not informants consulted after the fact.** All seven perspectives converge: recruit a small panel (roughly 3-12 people) from the most underrepresented segments (non-English speakers, lower-literacy users, users over 55, younger users, accessibility-dependent users). Pay them, and seat them inside a live prioritization sprint where they have genuine influence: veto on specific features, votes on tradeoffs the PM cannot quietly override. Here's the real test: when user votes conflict with the strategic vision, the conflict surfaces and gets resolved together, not privately and then announced later. This shifts power so the underserved user becomes co-architect. The engaged-8% cohort becomes the baseline instead. Blind spots that data alone misses come into view.

* **Redesign the feedback channels themselves, because the format — not just the sample — is the filter.** Surveys requiring email exclude people without stable email. Zoom interviews exclude people without bandwidth or privacy. Written-English forms exclude non-native speakers. Stand up parallel, format-specific intake: in-app/exit polls, SMS for low-tech-literacy and 65+ users, Discord for younger users, WhatsApp audio for non-English speakers, in-person community sessions. Aggregate across channels instead of averaging them. Map which suggestions come from which segment so hidden clusters (outdoor-runner vs. gym-goer) become visible instead of washing out.

* **Seek the refusers, not the responders, and change the question you ask.** The deepest signal lives with people who ignored outreach, never opened the app, or bounced immediately. Ask "What would need to be true for you to use this?" rather than "What do you think of this feature?" A different audience and a different question yield completely different answers about what actually matters.

* **Name the emotional honesty co-design demands, and the labor cost it imposes on constrained users.** Co-decision-making differs from asking for input. The team must genuinely not know the answer, be willing to be surprised, and change direction when users contradict the strategic vision. A 30-minute interview that feels like a gift to an enthusiast can be a real burden to someone juggling limited bandwidth. Co-decision also creates accountability that reshapes risk assessment. Someone now has to look at a specific teenager who used the habit tracker and say "we're removing this," and that concreteness often surfaces solutions (pair the habit tracker with workout tracking) instead of a clean kill.

* **Underserved users frequently shrink the feature count faster than data analysis, because they have no patience for friction.** When a low-tech-literacy user is a co-designer, the question shifts from "which features do we keep?" to "which features don't make people feel lost?" That reframe cuts faster than analytics alone.

---

### Question 41: Who is not in the data — the 92% and beyond

**Full question**: Retention metrics and session analytics reflect users who created accounts and returned. They do not reflect people who downloaded and deleted, people who never downloaded because the app looked inaccessible, or people who might have been served by the app's potential but were never reached. Of 180K downloads, how is the team gathering real signal about the full range of user motivations — not just from the 8% who stayed, but from the 92% who didn't and from non-users — and what assumptions about "typical users" might be quietly baked into the feature-selection process?

* **Treat the 92% churn as the most direct data source available and study it by segmenting where and why people dropped.** The dominant recommendation is a post-download funnel analysis that splits the 165K non-stayers by exit point: never opened (marketing or icon problem), opened once and closed (first-open experience was wrong), used 2-3 sessions then stopped (didn't fit), used for weeks then dropped (lost habit or relevance). Each segment points to a different failure mode. Pair this with direct outreach: exit interviews and lightweight surveys with uninstallers (ideally in the first 48 hours) asking which feature they came for, whether they found it, and what would have made them stay. The core insight: 8% retention is a filter effect, not a success rate. It keeps only users who already matched the app's unspoken assumptions.

* **Surface the "typical user" assumption baked into the analytics: the retained 8% may be the edge case, not the norm.** Decisions built on the stayers assume those users are typical. But they might have unlimited time, perfect gym access, or a fitness obsession. The 92% might be saying "I want a simple workout tracker, not a lifestyle platform." Build a shadow profile of who you're systematically not reaching (no credit card, privacy-concerned, older, non-tech-forward) to tell whether you're simplifying for your audience or just for your existing users.

* **Reach non-users where they congregate, since they generate no data by definition.** Post in fitness communities ("what workout apps do you avoid and why?"), ask gym and accessibility-advocate community managers, and run 5-10 semi-structured interviews with people who could use the app but chose not to. Consistent reasons emerge: "no gym access so nothing applied," "I don't want my fitness public," "too many notifications," "the interface felt corporate and unwelcoming." These mark the real limits of the addressable market. Some of the 92% never downloaded because the description looked too complicated, and you will never know who they were.

* **Redefine success metrics around each segment's actual intent, since "retention = success" is itself a hidden assumption.** A user who intended to log once a week and succeeded is counted as churn under DAU/MAU framing. Ask "What was each user trying to do, and did they achieve it?" rather than "Did they open the app today?" Run intent interviews before choosing features: some wanted accountability, some optimization, some simplicity. Re-segmenting likely reveals 2-3 distinct usage patterns hidden in the averaged 8%.

* **Hear the specific human stories the analytics erased, because they show failure modes a dashboard cannot surface.** Calling random deleters reveals patterns invisible in aggregate: the dorm student with no kitchen for the meal planner, the hospital shift worker whose schedule breaks weekly challenges, the user with social anxiety who never touched a tab labeled "community." These are not dropouts but signals that the app was built for a narrow archetype. The 92% silence should feel unsettling, not be rationalized as normal churn.

---

### Question 42: The first-open moment, the navigation burden, and the shame underneath "overwhelming"

**Full question**: When a new user opens this app for the first time, what is their emotional state — hopeful, skeptical, overwhelmed? At exactly which screen, tap, or notification does that initial hope collapse into "I don't know where to start," and what is the emotional state really underneath that feedback (frustration, embarrassment that they can't figure it out, or a quiet sense of betrayal that the app promised simplicity and delivered chaos)? Six navigation tabs and a hamburger menu place a significant cognitive load before users can do anything — from the perspective of someone who just wants to log a workout after a long day, what does it feel like, what are users actually *doing* rather than saying, and what does that suggest about which features belong at the surface versus the background?

* **Diagnose with behavior film, not survey responses: record first-time sessions and find the exact frame where hope collapses.** Recruit 8-20 new users matching the target demographic, hand them the app cold with one instruction ("log a workout"), and code the behavior: which tab they open first, where they pause, where they tap and retract, when they close and reopen. The predicted pattern is consistent. They try one tab, don't find what they need, try another, hit overload around the third, and close. What people *do* reveals the core; what they *say* reflects what they think you want to hear. Specific behavioral tells matter. One tab opened first and never closed marks the real core; tap-retract-avoid signals shame-driven abandonment; the majority bouncing without progressing is a cognitive-load crisis, not a feature problem. Pair moderated sessions with session-replay analytics on the live app to locate where the 47-second sessions terminate.

* **Decode "overwhelming" precisely, because it hides several distinct problems—most of them emotional, not feature-count.** "Overwhelming" rarely means "too many features." It splits into cognitive load (too many tabs), feature paralysis (can't decide where to start), and an emotional layer: shame ("Am I stupid for not getting this?"), disappointment and betrayal ("it promised simple and delivered chaos"), or resentment at being made to do the app's work. The emotional truth is often fear or doubt rather than confusion. A 47-second deletion tells you the first screen broke trust. Cutting features without knowing *when* people drop is guessing.

* **Fix it with progressive disclosure—value first, navigation later—rather than treating it primarily as a feature-cut problem.** Collapse the first-open experience to one clear action ("Log workout" or a 2-minute guided first workout) that bypasses navigation entirely, hide everything else until the user has succeeded once, then reveal complexity. This is attention architecture, not feature removal. Fixing the first-open funnel is faster and cheaper than removing features and may resolve much of the "overwhelm" without cutting anything. Returning users should see personalized context (streak, next challenge) before navigation options.

* **Stress-test the first screen on the people most likely to fail it, and notice the absence of positive emotion in immediate deleters.** Recruit five users over 55 or with self-described low tech confidence. If three of five abandon at the first screen, you have found the problem. Fixing attention architecture is faster than removing features. The immediate-deletion signal is itself emotional data: users who opened once, felt nothing, and left are reporting an absence of curiosity or excitement. The app was not bad so much as invisible to their emotional life.

---

### Question 43: Feature-dependent acquisition channels

**Full question**: Have we considered that some of the 15 features may be the reason a specific acquisition channel converts at all — for example, if the meal-planner drove most App Store keyword installs — and how would the team audit which features are acquisition drivers versus retention drivers before cutting?

* **Build a feature-to-acquisition attribution map before cutting anything, because acquisition and retention drivers are different features and the coupling is usually invisible.** Pull 90 days of traffic and conversion by source: App Store keywords, organic search, referral, paid, social. Tag which features appear in the store listing, screenshots, and keywords, then cross-reference against session logs to see which features users from each channel actually use. If the meal-planner drives 30-40% of keyword installs ("diet/recipe/meal-plan fitness app"), cutting it is an acquisition cliff even if those users retain poorly. Decision rule: features with zero acquisition impact are free to cut. Features with channel dependency must stay, be repositioned, time-gated, or migrated to a partner integration. The coupling stays hidden because growth and product teams analyze separately.

* **Treat acquisition-retention mismatch as a strategic signal, not just an audit output. You may be paying to acquire the wrong users at scale.** If users arrive for the meal-planner but stay for the workout tracker, the fix is not necessarily to keep the meal-planner but to shift acquisition messaging (from "complete fitness platform" to "simple workout tracker for busy people"). Fewer but higher-match installs. This is testable in 4-6 weeks via a new store listing and keyword bids, and tells you before relaunch whether your core feature can sustain acquisition.

* **Some acquisition-linked features are liabilities worth cutting, and small passionate segments deserve a real migration path rather than a sudden sunset.** A high-maintenance, low-engagement feature like a supplement store (drawing returns and one-star reviews) can drag install-to-download conversion enough that removing it nets more users in 30 days than it loses, even with 500 loyal users. Use a feature-ROI matrix weighing user count and engagement against acquisition-replacement cost and retention impact. Where a feature genuinely must go, honor the users who depended on it with an export and a handoff (a partner app, a free-trial link) rather than abandonment, which keeps them in the fitness ecosystem and protects credibility.

* **De-risk the whole cut with a parallel acquisition test before full commitment.** Rather than cutting 12 features at once and hoping acquisition survives, stand up a simplified version as a second store listing or web landing page. Route 10% of acquisition traffic to it for 30 days and measure install-to-3rd-session conversion, 30-day retention, and cohort quality. If the simplified version wins on both acquisition and retention, you have evidence the relaunch won't crater growth. If it loses, you learn which features are acquisition-critical before cutting them.

* **Read the acquisition channel as evidence of real, multi-motivation desire and unconventional paths to value worth protecting.** If several features each drive acquisition, the app may be accidentally serving several distinct needs, and cutting purely on retention assumes the retained cohort represents everyone. Someone who came for a meal-planner and "settled" still chose this app for that reason. A person managing diabetes who logs food and workouts together may stay precisely because of a dual-feature combo the metrics never asked about. Cutting without understanding a feature's narrative role risks erasing users whose paths to value are unconventional, such as people managing chronic conditions who need integrated logging.

---

**Questions addressed**: 5
**Synthesized insights**: 23

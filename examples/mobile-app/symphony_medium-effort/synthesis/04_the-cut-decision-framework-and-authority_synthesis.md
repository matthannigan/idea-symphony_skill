---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/mobile-app/med"
datetime: 2026-06-09
effort: "medium"
stage: "Phase 4: Response Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-8"
topic-cluster: "04_the-cut-decision-framework-and-authority"
synthesis-type: "synthesis"
---

# Brainstorming Synthesis: The Cut Decision — Framework and Authority

---

## Synthesized Insights by Question

### Question 14: The Feature-Value Scoring Model

**Full question**: The key factors seem to be frequency, engagement depth, retention correlation, technical removal cost, and passionate-minority size — how would you weight and combine those dimensions into a defensible scoring model for which 3-4 features survive the cut, what would "executed well" actually mean and by whose standard, and how does that framework let you honor existing user loyalties while still making bold simplification choices that build on what the team already knows about user motivation?

* **Anchor the model on retention correlation, but treat that correlation as a hypothesis to be tested, not proof.** The perspectives put retention correlation at the center of the scoring model and weight it above frequency and engagement depth. The caution here is that retention correlation can mask selection effects—a feature looks "core" only because power users who would have stayed anyway happen to use it. The fix is to keep retention as the anchor weight but validate it with a cohort split that tests whether the correlation holds in both high-intent and casual segments before making the cut.

* **Score features for safety of deletion, not just for value, and run the model backward from a target metric.** Removal cost is better understood as a question than a number: if you delete this, what else breaks? A feature whose deletion touches several subsystems stays; an isolated one can go regardless of team pride. A better approach is to simulate removal against an explicit target (for example, 30-day retention above 25% and sessions above 3 minutes) rather than scoring features in isolation. This shows which set of survivors actually delivers the target.

* **Pin down whose standard "executed well" means before scoring, because engineering, user, and business definitions produce different cuts.** "Executed well" is undefined today. The practical positions cluster around an observable user signal — weekly unprompted return, or zero negative sentiment after day one — while the more cautious framings insist the standard be named explicitly and tied to user outcomes rather than code quality or feature depth. Either way the team must declare the standard in advance, since an unstated definition silently biases every survival decision.

* **Honor user loyalties through respectful deprecation, but resist letting passionate minorities steer the survival model.** An "emotional attachment" weight will always protect the squeakiest wheels and keep the product small (fifty devotees of one feature against hundreds of thousands who ignore it). The honoring happens through process, not scoring weight: a sunset window, data export, and a forward path preserve respect and avoid PR damage without distorting the cut. One dissent is worth keeping open as a watch-item rather than a veto. An intense minority can sometimes point toward a hidden market the metrics can't yet see.

---

### Question 15: Decision Authority and the Data-vs-Interview Tiebreak

**Full question**: In the current 6-engineer/1-designer/1-PM structure, who has authority to make final feature-cut decisions and what data-gathering and deliberation process gives the team confidence those decisions are defensible rather than arbitrary — particularly when the three named methods (data analysis, user interviews, strategic vision) disagree, and is the team determining "core value" through their own product intuitions, usage analytics, or genuine co-design with the people who use the app?

* **Give the PM final cut authority, but bind it to documented, data-first reasoning rather than unilateral judgment.** The PM should own the final call because they hold the roadmap and user contact. That authority is conditioned on deliberation with the full team to avoid design-by-committee and on a written record so a tiebreak can be judged later. The shared fear is an authority vacuum where each engineer lobbies for a pet feature and the PM gets outvoted on technical grounds.

* **Resolve the data-vs-interview tiebreak with a rule set in advance, and read interview/behavior conflict as a signal in itself.** A tiebreak rule must exist before the conflict, not be improvised under political pressure, and when stated preference contradicts logged behavior the behavior wins. The conflict itself is information: users who passionately defend a feature they rarely open are revealing an aspirational identity, not a real habit, which is itself grounds to cut.

* **Determine core value through co-design and witnessing real usage, not through the team's burned-out intuitions.** This team's intuitions built the bloat. The constructive move is to ask representative users ("which feature, if it disappeared, would make you delete the app?") or to sit beside them and watch where they get stuck. Co-design is only honest if the sample spans retention tiers, usage intensity, and tenure, not just power users or churners.

* **Make the decision public and machine-checkable, so authority dissolves into transparency.** Post the entire rationale — a one-page memo or a spreadsheet of feature, retention correlation, complaint ratio, removal cost, decision, owner, and date — so the team stops debating philosophy and starts fact-checking the data, and so there is a defensible story when users ask why a favorite feature vanished.

* **Decide consciously whether strategic vision counts at all, and surface the unstated vision either way.** This is where the perspectives diverge most sharply. One position wants strategic vision eliminated from the cut entirely, since vision created the mess and should return only after trust is rebuilt by shipping a focused product. The other insists the leader's vision is already operating invisibly and must be written down, so the team can see where data contradicts it.

---

### Question 16: The Smallest Proof of Concept

**Full question**: What is the smallest, lowest-risk experiment the team could run in the next two weeks — using existing data, existing code, or a single user conversation — that would give them genuine evidence about which feature is the app's true heartbeat?

* **Mine the analytics you already have first — the experiment may already be sitting in your event logs.** The cheapest, fastest evidence is a query against existing data, requiring zero engineering: which feature drives repeat opens, which feature-pair shows a retention gap, which path converts to first real action. The caveat is that bad analytics mislead as fast as they inform, so the query design matters as much as the run.

* **Run a cheap feature-removal (toggle) experiment to detect what is genuinely load-bearing.** This is the strongest convergence in the cluster: disable a feature for a slice of users and watch what breaks. Absence is more honest than presence. If hiding a "core" feature for 10-20% of users produces no measurable engagement or churn change in one to two weeks, it wasn't core. Variants differ only in which features to toggle and over what window.

* **Talk to a handful of churned and loyal users with one disciplined question, and let the pattern of answers diagnose cohesion.** A few structured conversations, especially with users who deleted, beat a week of guessing. Ask a single un-led question ("what was the first thing you tried to do?" or "what would have needed to be different to stay?") and read the answers as the finding. If three users name the same feature, you have a signal. If they name three different things, the app has no cohesive heartbeat yet.

* **Reconstruct one feature's user journey or ship a no-design single-feature prototype to find where value or friction actually lives.** A manual reconstruction of one feature's path from login to repeated use exposes where users get stuck. A stripped single-feature prototype (a webpage or a four-feature skeleton) tested with users tells the truth about the core interaction without months of polish.

---

### Question 17: The Restaurant Tasting-Menu Trap

**Full question**: There's a structural parallel with high-end restaurants that tried 40-item menus and collapsed under operational complexity — many recovered by cutting to 8 dishes executed perfectly, which paradoxically increased both quality and revenue. Borrowing "constraint as craft signal" from culinary design: which 3-4 features, if executed with the same obsession a Michelin kitchen brings to a single dish, would make users feel the app was *made for them* rather than assembled for everyone?

* **Size the surviving feature set to your execution bandwidth — one engineer obsessing per feature — because the real constraint is team capacity, not the menu.** Mapping the Michelin "one sous-chef per dish" model onto six engineers and one designer, every survivor must have a dedicated owner with room to obsess. If you can't assign clean ownership, cut another feature. Team bandwidth becomes the forcing function that produces excellence.

* **Define "executed well" as obsessive, flawless polish on one detail per feature — good enough is the enemy of the constraint payoff.** Cutting from 15 to 3-4 means nothing unless the survivors are dramatically better than their originals. Translate "obsession" into practice: pick the one detail per feature that would make users talk, and run a monthly review where each owner pitches what they refined. Higher quality and revenue only happen if the survivors ship fully built, not 60% built.

* **Treat the constraint as a confidence statement that signals the app was made for one kind of person, not assembled for everyone.** Doing less, deliberately, reads to users as intention and care rather than abandonment. The advantage is both operational (a focused team ships faster, and speed becomes a felt feature) and perceptual (scarcity makes each remaining feature feel precious). The "made for them" feeling comes from connecting a feature to the user's identity, not from generic completeness.

* **Stress-test the craft premium against the market before you bet on it — a perfectly executed menu can still be the wrong menu.** Michelin serves a niche. A mass-market fitness app may want eight adequate features more than four exquisite ones, and the four survivors must form a coherent narrative rather than four good-but-disconnected modules. Validate with willingness-to-pay research and explicit churn modeling for the cut scenarios before committing.

---

### Question 18: Designing for Deletion

**Full question**: What if the team's goal were to make users permanently delete the app within 30 days — what would have to be ruthlessly, brilliantly present in those 30 days to justify the whole journey, and what does that reveal about what the product actually owes its users right now? *The real insight: if the app had to front-load all its value into a single, time-bounded encounter, which features would survive and which only exist to pad the illusion of depth?*

* **The deletion frame's real lesson is that the problem is the entrance, not the exit — fix the first seconds before optimizing day 30.** Users leave from overwhelm at day 3, not from a feature gap at day 30. Designing for deletion really means designing a friction-free first encounter (no sign-up wall, no onboarding wizard, no hamburger menu) that delivers the one thing the user came for. Deletion can also be caused by friction like a slow login or brutal onboarding, entirely separate from feature quality. Audit the funnel before reading deletion as a verdict on features.

* **Front-load value into a single proof-of-progress moment, and use deletion as the test that separates core from padding.** The moment that must land is completing a real action and immediately seeing proof (a logged workout and a streak or progress marker). Everything not in service of that moment is padding to be cut. Apply a ruthless per-feature question: "if a user only ever saw this interaction, would they keep the app 30 days?" The reverse formulation (what missing thing causes a week-2 uninstall) is often easier to answer.

* **Beware that "justify keeping the app" can quietly re-incentivize the same compulsion tactics that caused the bloat, and may not equal real behavior change.** Front-loading and "justification" push the team toward habit-formation, variable rewards, and notification compulsion—the very tactics that built the overwhelming product. This can optimize for the dopamine hit rather than sustained fitness change. Front-loading also punishes users who need ramp time, since a feature essential to 90-day retention may be invisible in the first 30 days. Track 30-day and 90-day cohorts separately.

* **Aim deletion design at an irreversible, identity-level moment that makes leaving feel like abandoning something sacred.** Invert the metric: a user who deletes at day 30 means the team failed, not the user. The goal becomes earning permission to exist by delivering one moment of genuine self-knowledge—a true realization about one's body or capacity—that the app is the only safe place to hold. Deletion then becomes the designer's clearest feedback, marking where the experience promised something human and delivered something mechanical.

---

### Question 19: The One Thing That Changes Everything

**Full question**: If you were forced to reduce this product to a single interaction — one moment per day between the user and the app — what interaction would have the most transformative effect on someone's actual fitness behavior, and what new category of product does that single interaction define?

* **The leading candidate is logging a workout and immediately seeing a streak — a daily ritual that triggers an identity shift.** One tap, one climbing number, one emotion, exploiting the human drive to maintain an unbroken chain ("I'm someone who works out"). The entire app collapses to three screens: reminder, logger, streak display. A small team can maintain this for a year, and poor retention then cleanly diagnoses a psychological miss rather than an execution failure.

* **Strong alternative single interactions exist, each defining a different product category, because different users are moved by different signals.** Complementary candidates broaden the bet beyond streaks: a before/after visual that motivates through visible change, a daily prescribed workout that removes decision paralysis and turns the app into a coach, a social yes/no check-in that turns it into a commitment device, or a weighted-history mirror that proves "you are stronger than you were." The structure stays singular (one feature, one moment, one behavior), but the resulting category differs by which motivation the interaction targets.

* **A single interaction can lock in one behavior and define a new product category, shifting positioning away from "all-in-one fitness app."** The strategic payoff is category redefinition: the product stops being a fitness ecosystem and becomes a focused tool whose messaging, pricing, and acquisition all flow from one insight. Whether framed as a "behavior-lock app that makes you unbreakable" or a "behavior mirror" that shows who you're becoming through movement, both abandon the platform narrative for a single, coherent position a small team can actually build.

* **Make the one moment a moment of genuine witnessing or permission, not another counter — language that rewires identity rather than gamifies it.** The app says something true about who the user is becoming ("you moved when your schedule said you couldn't"), or anticipates the moment of likely quitting and offers permission ("even skipped workouts count; you're still building"). This targets identity and resistance directly rather than rewarding compliance. It becomes the daily reason a user opens the app.

* **Hold the single-interaction reframe as ideation, not a diagnosis shortcut, and validate that it changes behavior rather than just opens.** A single daily interaction optimizes for elegance and app-opens, not necessarily for fitness behavior change. Real change emerges from systems (accountability, community, tracking, planning) working together, and compressing a multi-need day into one moment forces a false either/or. The reframe is useful for forcing clarity but must be tested against actual workout-completion rates over weeks. It must not replace the cohort analysis, interviews, and toggle tests that reveal which feature is genuinely core.

---

**Questions addressed**: 6
**Synthesized insights**: 24

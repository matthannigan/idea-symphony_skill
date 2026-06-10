---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "05_feature-selection-methodology-and-decision-bias"
persona: "The Analogist"
---

# Feature-Selection Methodology and Decision Bias - The Analogist

---

## Quality vs. Demand Confound, and Usage Data as a Lagging Indicator

* **The kitchen experiment.** This mirrors how restaurants test new dishes: they serve a dish poorly prepared on a deliberately crappy table in the back corner, then serve the same dish beautifully plated at the front counter. Engagement isn't the dish; it's positioning. Try this: temporarily promote one "weak" feature to the home screen with zero friction, keep others buried. If usage skyrockets, you've diagnosed navigation architecture, not demand. The signal you seek is what users return to despite bad execution—not what they try once and forget because they can't find it.

* **The hospital triage analogy.** ER doctors can't diagnose a patient by what treatments they picked from a menu—they diagnose through structural observation. Create a "feature audit period" where you track not usage counts but *re-engagement patterns*: which features do users come back to (even briefly) on day 2, day 7? A feature users touch once and abandon isn't low-demand; it's low-retention. That's the real signal hiding in your data.

* **Ecological succession.** When invasive species are removed from an ecosystem, previously hidden native species flourish. Your hypothesis: some valuable features are being shadowed by navigation clutter. A/B test radical simplifications: remove 5 features temporarily, watch what users *demand back*. Their protests are ranked data you can't get from analytics.

* **The manufacturing control experiment.** In industrial design, engineers isolate one variable by holding others constant. Your current design conflates navigation quality, feature polish, and genuine demand. Run a controlled variant: take your lowest-engagement feature and give it premium UX treatment, prominent placement, and onboarding. Measure the lift. If it doubles usage, architecture was the bottleneck. If it plateaus, demand was already satisfied elsewhere.

---

## Strategic Vision as Rationalization, and Sunk-Cost Inversion

* **The NASA Marshall Space Center vs. Challenger incident.** Engineers at Morton Thiokol warned leadership about O-ring failure; leadership dismissed them because the launch was already funded and politically committed. Your founders' "vision" is the sunk cost. External checks: bring in a product advisor from a different industry (not fitness tech) to ask naive questions. No ownership bias, no political capital tied to past decisions. They can see what's actually load-bearing versus what's adjacent to the real value.

* **The Cinematic release process.** Before a film releases, a "test audience" watches and votes on scenes—people with zero attachment to the production. Institute a blind voting process: describe each of your 15 features anonymously (no creator names attached). Have team members vote on which 3 they'd keep if they had zero ownership. Compare the outcome to named voting. The gap reveals bias.

* **Darwin's natural selection analog.** Evolution doesn't let the organism that built the eye decide whether the eye stays. It lets the environment decide. Structure a "feature tournament": users rank the 15 features by necessity in one blind task, team ranks by vision in another. Where they diverge most dramatically, that's where vision is adding risk. Risk calculus: if your runway is 8 months and you guess wrong on strategic vision, you have only one chance to recover. If you guess wrong on data, you can pivot within months. Data errors are recoverable; vision errors are catastrophic at your runway.

* **The editorial board model.** Newspaper editors vote on which stories run, but none of them own the stories they're voting on. Hire an external product consultant (even for 20 hours) to chair a feature prioritization vote. They break ties when founders and engineers disagree. Their role is to represent user perspective, not organizational capital.

---

## The "Would Users Build This Themselves" Test, and Stated Assumptions per Retained Feature

* **The open-source ecosystem principle.** When a feature matters, users fork the project or build the plugin themselves. For each of your 15 features, ask: if you killed it, would users create a third-party tool or just move on? Meal planning is dead; 50 meal-planning apps exist. Workout tracking? Every fitness tracker on earth does it. The features users *would* rebuild themselves are the ones with genuine demand. That's your core.

* **The hospital waiting room analogy.** Patients tolerate waiting for essential procedures; they get angry waiting for cosmetic consultations. For each retained feature, state: "Users need this so much that if we remove it, they will *complain loudly* or *leave*." Your 180K downloads and 2% DAU/MAU suggest the app is failing to be essential for anything. Test each core candidate: remove it for one day in a beta cohort. Do users report it missing within 24 hours? If not, it wasn't essential—it was convenient.

* **The Maslow's hierarchy model applied to features.** Rank each of the 15 features by whether it satisfies belonging (community, challenges), mastery (progress tracking), autonomy (customization), or physiological (workout data). The app is trying to satisfy all four simultaneously. Your core should dominate one or two. Users don't need a workout app that also provides therapy, community, and meal plans—they need *one thing done excellently*. Which of your 15 features could standalone as a product if everything else vanished? That's your candidate.

* **The infrastructure vs. amenity distinction.** Infrastructure is what the system can't run without (roads, power, water). Amenities are nice to have (parks, fountains). Ask: if this feature were removed, would the core feature still function? Workout tracking is infrastructure; meditation is amenity. Retention at 2% DAU/MAU means none of your infrastructure is compelling enough. Your assumption for each retained feature must be: "Users will open the app weekly *just* for this." State that assumption explicitly and test it separately.

---

## Building on What Already Works

* **The Japanese garden principle.** Rather than clearing the whole lot and rebuilding, Japanese gardeners amplify what's already thriving. You have 180K downloads—someone wanted something here. Instead of asking "which features should we keep," ask "who stayed, and what drew them?" Segment your 2% DAU users: what features do they actually use? Those users are your product's heartbeat. Design the relaunch entirely around keeping them happy and expanding from that foundation. Their usage patterns are your "what already works."

* **The jazz improvisation analogy.** Jazz musicians don't replace melodies that work—they build on them, add texture, extend the phrase. Your app has moments of genuine user delight (otherwise why 180K downloads?). Find those moments through user interviews: "What made you first open this app?" Their answers are your melody. Build the navigation, onboarding, and core feature set entirely around amplifying that moment. Everything else is accompaniment.

* **The river ecology model.** Healthy rivers don't try to flow in all directions; they follow the natural topography. Observe where your 2% DAU users spend time (even briefly). That's your river's natural path. Widen that channel, deepen it, make it frictionless. Every other feature is a dam slowing your main flow. The "more of this" roadmap isn't building new features—it's removing the obstacles between users and what already delights them.

* **The Michelin-star restaurant strategy.** A Michelin restaurant doesn't serve 50 dishes; it serves 6-8 and executes them obsessively. Your 180K downloads suggest you had initial appeal. Relaunch as the Michelin version: three features, each executed with such polish and delight that users open the app specifically for that experience, not out of habit or curiosity. That's not a feature set; it's an experience relaunch.

---

## The Team Is the Product

* **The musical ensemble analogy.** A six-piece jazz band can't play 15 instruments simultaneously; they each specialize. Your 6 engineers, designer, PM are burned out because they're each partly maintaining 15 things and fully mastering none. Ask: which 3-4 features would excite this team to own *completely*? Not as a career move, but as a creative expression. A burned-out team producing mediocre features will always lose to a fired-up team producing excellent ones. The features you choose should be the ones that make your team want to come to work.

* **The organizational immune system principle.** When an organism spreads itself too thin, its immune system collapses. Your team's burnout is the symptom; 15 half-built features are the cause. The real product you're saving isn't the app—it's team cohesion and creative capacity. Features that excite the team generate momentum, attract better people, and compound over time. Choosing features based on "what the team wants to build" isn't indulgent; it's the only sustainable way to build anything.

* **The craftsman's workshop model.** Medieval craftsmen built their reputation on mastery of one craft—pottery, blacksmithing, weaving. Your team has been forced to be generalists. Relaunch as specialists: each engineer owns one feature completely, end-to-end. That ownership generates pride, expertise, and the kind of polish that users notice. If your team would fight for the right to own and perfect *one* feature, that's your core. Ownership is the antidote to burnout.

* **The orchestra conductor analogy.** A conductor doesn't make music; the ensemble does. Your PM's job isn't to juggle 15 features—it's to align 6 engineers and 1 designer around a shared, coherent vision. Ask: what vision would make this team operate as a single organism rather than six separate people drowning in context switching? That vision should define your core features. Features that require constant alignment and context-switching are drains; features that let people work independently are energizers.

---

## What If 8% Retention Is Actually the Ceiling

* **The industry baseline analogy.** Before you chase a retention miracle, study comparable products. What's the 30-day retention for meditation apps (probably 5-8%), workout trackers (8-12%), social platforms (40-60%)? If social fitness apps empirically plateau at 8%, then the problem isn't execution—it's category. Work backward: if 8% is the ceiling, what does that tell you? It means 92% of users try the product, decide it doesn't fit their life, and leave. That's not a feature problem; that's a *value proposition* problem. No feature set change fixes that.

* **The Titanic deck-chairs analogy.** Rearranging the product won't save a sinking ship if the ship itself is flawed. If retention is structurally limited by the category, your strategy shouldn't be "pick better features"—it should be "own the 8% so completely that they're willing to pay, refer friends, and stay forever." Build for extreme user delight in a niche rather than broad mediocrity. Your 180K downloads prove people are *trying* fitness apps; the 8% who stay are trying to tell you something. Make the app indispensable for *them*.

* **The venture capital portfolio model.** VCs assume 90% of their investments will fail; they focus on the 10% with exponential potential. If social fitness apps have an 8% retention ceiling as a category, this might be a "$500K a year, sustainable, profitable niche" product rather than a "$100M growth story." That's not failure—it's a different math. Accept the 8% ceiling, design for it deliberately, and build features that make that 8% so happy they become evangelists. Your runway isn't wasted on features; it's spent building a sustainable smaller product.

---

## What If the User Defined the Core

* **The participatory design movement.** Rather than designers and strategists choosing for users, invite users into the design process. Create a cohort of your most engaged users (your 2% DAU); give them decision-making power over the next roadmap. Not as consultants or survey respondents, but as co-designers. You'll discover what users actually value vs. what they say they value. This process itself is product research; it's how LEGO IDEAS and Threadless discovered they had an audience beyond what focus groups predicted.

* **The Linux community model.** Linux didn't emerge from a strategic plan; it emerged from thousands of developers each solving the problem that mattered most to them. Create a public feature roadmap; let users vote with their engagement (not just surveys). Track which features they actually use, fork, customize, request. The ones with organic community gravity are your core. This inverts the process: instead of the team deciding and hoping users like it, users reveal their preference through engagement, and you optimize for what emerged.

* **The permaculture design principle.** Rather than imposing a plan on the landscape, permaculturists observe what naturally thrives and build around it. Observe your user cohorts: which subpopulations stay, and what do they have in common? Design the product for them, not for a hypothetical "ideal user." You might discover you're not a "social fitness app" but a "marathon training app" or a "meal-prep accountability partner." Users will tell you your actual value proposition if you ask them to *choose what survives*.

* **The Wikipedia editing principle.** Contributors to Wikipedia don't vote on what articles matter most; they work on what they care about, and the collective energy reveals priority. Give your power users (2% DAU) beta access to feature proposals; track which ones they spend time on, customize, share with friends. The features that organically gain attention are your signal. This is faster and more honest than asking users what they want; it's watching what they actually *build on*.

---

## The Triage Parallel—Vital Signs vs. Vanity Metrics

* **The ER protocol analogy.** Triage nurses don't measure patient satisfaction; they measure vitals: breathing, pulse, blood pressure. For your app, ask: which features, if broken, would make the product non-functional? Which can you remove and still have a coherent product? Workout tracking might be vital; supplement store is decorative. Create a "feature criticality audit" for each of the 15. Then measure the 2% DAU: which vital features are they actually using? If they're ignoring a vital feature, it's not vital—your assumption was wrong.

* **The structural engineering principle.** A building's "load-bearing walls" can't be removed; decorative walls are optional. Your features have different criticality levels. Ask: which features would cause the app's core experience to collapse if removed? Probably 3-4. Everything else is decorative. Then test: can your core 3-4 features work *without* the 11 decorative features? If yes, you've found your foundation. The "breathing" test is: can users get genuine value from the app with just these features?

* **The medical vital signs extended.** Beyond breathing and pulse, doctors monitor oxygen saturation, kidney function, and glucose. Define equivalent "vitals" for your product: maybe daily active return, feature depth (sessions lasting >2 minutes), and user-generated content or activity. Then measure: which of your 15 features contribute to at least one vital? Which features are inert to all three? That inert set is vanity. Your retained features should each move at least one vital; if not, they're decorative.

* **The triage scoring system.** Implement a simple scoring rubric: does this feature appear in the retention cohort's session recordings? Does it appear in user interviews about "why I use this app"? Does removing it reduce DAU? Score each feature 0-3 for each question. Only retain features that score 6+. This separates what users actually need (high scorers) from what the team thought might be nice (low scorers). It's data-driven, but narrow enough to be actionable.

---

## Treating the Symptom vs. the Underlying Condition

* **The medical diagnosis principle.** A patient with chest pain, shortness of breath, and swollen ankles might need heart medication, lung therapy, and diuretics—or they might have one root cause: congestive heart failure. Treating symptoms independently masks the diagnosis. Your app has 15 features, low retention, and confused navigation. What's the root diagnosis? Possible: unclear value proposition (users don't know what the app is *for*). Possible: poor execution on core (the core feature works, but surrounding features distract from it). Possible: wrong audience (you're building for fitness enthusiasts but acquiring casual exercisers). Ask: what one structural question, if answered, would make the feature-selection decision obvious?

* **The systems thinking analogy.** Don't ask "which feature should we keep?" Ask "what does the product need to be to serve any user well?" A fitness app trying to be a social platform, marketplace, and meditation guide is incoherent. Users experience cognitive dissonance. The root condition might be "unclear product identity." The fix isn't better features; it's a clear answer to: "What is this app *for*?" Once you can complete the sentence "This app is *the essential tool for*___," feature selection becomes obvious.

* **The architectural diagnosis approach.** Before fixing a building, architects diagnose the root issue: foundation, load-bearing, structural alignment. Similarly, diagnose your app's root condition before touching features. Possible diagnoses: (1) onboarding is broken—users don't discover their favorite feature; (2) the core feature is unclear—users don't know which feature to start with; (3) retention triggers are missing—nothing prompts re-engagement; (4) the audience is undefined—you're building for everyone, so you serve no one. Identify the root condition, then design features that serve the diagnosis, not the symptoms.

* **The upstream vs. downstream intervention.** You can treat symptoms downstream (trim features, polish UI) or address root causes upstream (clarify value proposition, redesign onboarding, define audience). Ask your team: if we could change only one thing about how users first experience the app, what would it be? That answer is your root-condition hypothesis. Your 180K downloads prove people will try the app; 8% stay. The gap is in activation, not acquisition. The root condition is probably "new users don't find their core feature fast enough." Fixing that requires fewer features and better navigation, not better features.

---

## Perverse Excellence as Feature Signal

* **The sabotage experiment.** The insight is pure: deliberately degrade 12 features while polishing three. If users still return for the three, you've found the core unambiguously. Real-world variant: A/B test a "minimalist experience"—only show three features in the UI, hide the other 12 in a "more" menu. Measure session frequency and depth. If users don't complain about hidden features and return for the core three more often, you've diagnosed your problem: navigation clutter was the symptom, not the features themselves.

* **The Occam's Razor testing principle.** William of Occam suggested: when multiple explanations exist, assume the simplest. You can't tell which features matter because the interface is overwhelming. Test a deliberately stark version: one feature front-and-center, the other 14 completely hidden. Measure DAU, retention, and session length. If the stark version outperforms the full feature set, your diagnosis is clear: feature count isn't the problem; feature prioritization is. The core exists; you're just burying it.

* **The contrast principle in design.** When everything is emphasized, nothing is. Test an inverted design: three features in premium UX (animations, clear labeling, onboarding); 12 features barely functional (slow load, ugly design, no description). Which features do users find anyway? Which do they ignore despite premium treatment? The features users hunt for despite poor execution are your core. This is more honest than usage metrics because it separates "easy to find" from "actually wanted."

* **The archaeological dig analogy.** You're excavating the app's true value proposition. Remove the noise (the 12 decorative features), expose the foundation (the 3 core features), and watch what users do. Do they build on it? Do they deepen their usage? If one feature consistently draws users back even when everything around it is terrible, that's your bedrock. The "perverse excellence" experiment is just an honest way to ask: "What would users keep if the package was destroyed and they had to rebuild?"

---

## Destruction as User Research

* **The archaeological method applied to software.** Archaeologists excavate by removing layers, understanding what emerges. Your experiment: remove everything except one feature (say, workout tracking). Ship it. Measure week-one retention. Then listen to user feedback: what feature do they request first? Restore it, measure again. Chart the sequence of user requests as a ranked list of feature importance. Users will vote with their protests.

* **The forest-fire ecology model.** Controlled fires clear deadwood and reveal the forest's actual structure. Users' protests after feature removal are the signal that reveals what actually mattered. The second-most-requested feature is objectively more important than the fifth-most-requested. This creates a ranked, evidence-based feature priority that data analytics can't provide. You're not guessing; you're watching users reveal their own priorities.

* **The competitive elimination principle.** In nature, species thrive when competitors are removed. Your features are in competition for user attention. Remove 14 features, measure the core feature's performance. Then incrementally restore features one-by-one, measuring the impact on core feature engagement. You'll see exactly which features complement the core and which ones distract from it. This is more honest than asking "do you like feature X?" because it measures actual behavior, not stated preferences.

* **The user-as-archaeologist framework.** Reframe the experiment not as abandonment but as discovery. You're using users to excavate your app's true value. Tell users (in beta) you're testing a radical simplification, and you want their help discovering what matters. Ask them to report missing features *within 48 hours*. The rapidity of complaints is a signal: immediate complaints = vital; complaints after a week = nice-to-have; no complaints after a month = decorative. This turns feature removal into collaborative research where users actively participate in defining the core.

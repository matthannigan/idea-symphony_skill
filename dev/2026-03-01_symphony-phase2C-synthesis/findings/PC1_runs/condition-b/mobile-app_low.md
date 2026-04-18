# mobile-app — low — Consolidated Output (Condition B)

## Part 1: Synthesized Questions

---
project-name: "Mobile App Simplification"
effort: "low"
stage: "Phase 2: Question Synthesis (SP1 test run)"
---

# Brainstorming Questions: Mobile App Simplification

---

## Topic Cluster 01: Defining Core Value and the Job-to-be-Done

1. **What "core value" actually means**: How do we define core value in a way that distinguishes features that *create passionate engagement* from features that merely *attract initial usage before churn* — interrogating the job users hired us to do when they downloaded the app, and asking whether our actual differentiator lies in an adjacent space rather than the fitness-app category we currently inhabit? [Questioner, Devil's Advocate]
2. **Single-focus identity test**: If this app became known for doing one thing exceptionally well — the thing that makes users say "I can't live without this" — what would that be, and how would that single focus reshape onboarding, daily use, and word-of-mouth so the product feels indispensable rather than overwhelming? [Appreciative Inquirer, Questioner]
3. **Assumption that a unified core value exists**: What if retention is low not because the app is unfocused but because no single feature competes with dedicated alternatives — could the real problem be execution quality across all features, leaving simplification with nothing compelling? [Devil's Advocate]

## Topic Cluster 02: Feature Assessment and Prioritization Framework

1. **Quantitative feature ranking and correlation-vs-causation**: What analytical framework should rank the 15 features by true value delivery — distinguishing correlation (features associated with retention) from causation (features that actually drive it), and designing experiments that separate features users *say* they want from features they actually use? [Analyst]
2. **Popularity versus retention-driving value**: Given that usage data from a churning majority may be misleading (early-used features by departing users can look "popular"), how do we distinguish features that drive retention from features that merely serve as on-ramps to nowhere — and could low feature engagement simply reflect poor discoverability in a bloated interface, masking "dormant gems" that would thrive if liberated from clutter rather than eliminated? [Devil's Advocate, Systems Thinker, Questioner]
3. **Passionate-minority valuation**: For features with small but passionate user bases (e.g., <5% of users but 80% engagement within that segment), what framework determines whether they represent a defensible niche, a distraction, or a spin-off opportunity — and how do we identify these niches *before* cutting them so we don't drive away our most vocal advocates? [Analyst, Questioner]
4. **Unit economics of feature removal**: For each of the 15 features, what is the ongoing engineering maintenance cost, the reduction in user cognitive load, the performance improvement, and how do these quantified benefits weigh against short-term implementation cost and user churn risk? [Analyst]
5. **Feature cannibalization**: Are features cannibalizing engagement from others (e.g., does the workout tracker suppress usage of the coaching service?), and how would we measure whether simplification actually *increases* total engagement rather than reducing it? [Analyst]

## Topic Cluster 03: Retention, Engagement, and Metric Diagnostics

1. **Retention-curve decomposition**: Breaking down the 8% 30-day retention, what would cohort analysis reveal about per-feature retention curves — which features show the steepest drop-offs, and where in the onboarding-to-habit-formation pipeline are the critical failure modes? [Analyst]
2. **DAU/MAU and 47-second session diagnostic**: A 2% DAU/MAU ratio with 47-second sessions suggests low stickiness — what behavioral sequence analysis reveals whether users are failing to find what they need, completing tasks too quickly, or bouncing from decision paralysis, and how does this vary by user segment? And when users call the app "overwhelming," are they pointing at feature count, cognitive load, decision paralysis, or something else — and how would we diagnose the real problem without just asking? [Analyst, Audience Advocate]
3. **Metric system realignment — old rulers for a new product**: The current metrics (30-day retention, DAU/MAU, session length) were built for an engagement-maximizing app; a focused utility may have *shorter* sessions but *higher* long-term retention. What leading micro-metrics should replace the lagging ones to signal that users are finding and returning to the core value in their first week, and what are the risks of measuring the new product with old rulers? [Systems Thinker, Analyst]
4. **Stated vs. revealed preference gap**: Where would we see mismatches between features users *say* they value and features they actually engage with — and what unarticulated needs are users working around because they've normalized "all fitness apps are like this"? [Audience Advocate]

## Topic Cluster 04: Feature Interdependencies and Cascade Risks

1. **Keystone features and interdependency mapping**: Before cutting any feature, what is the complete causal chain of removal — obvious dependencies (data, navigation) and subtle reinforcing patterns (on-ramps, recommendation-data inputs) — and are there **keystone features** whose removal would cause disproportionate system collapse? Conversely, which feature pairs create synergistic value that would be lost, and which are creating drag through notification fatigue and cognitive overload? [Systems Thinker, Analyst]
2. **Feature-loss cascade and death spiral thresholds**: When features with passionate but small user bases are removed, what are the second- and third-order consequences — departures taking friends, user-generated content, and community moderation with them — and at what threshold does feature-cutting trigger a **death spiral**? What is the maximum acceptable user loss we can sustain, and what contingency plans exist if simplification backfires? [Systems Thinker, Devil's Advocate]
3. **Technical debt from removal**: Removing deeply integrated features could create more bugs than maintaining them if 15 features share code, data models, and infrastructure — how do we assess whether engineering cost of removal could consume the entire 8-month runway, and have we mapped the dependency graph before assuming removal is simpler than maintenance? [Devil's Advocate, Questioner]
4. **Compensatory user behavior**: How will users adapt to feature removal — if the social feed is cut, will they flood the challenge platform with social posts? If the marketplace disappears, will transaction requests clutter community forums? What compensatory behaviors should we anticipate that could undermine the intended simplification? [Systems Thinker]
5. **Notification architecture as dependency map**: "Too many notifications" is a symptom — each feature generates notification types, creating sprawl that mirrors a software dependency graph. Could analyzing which notifications users actually engage with reveal which features are truly core versus peripheral? [Systems Thinker]

## Topic Cluster 05: User Segments, Accessibility, and Equity of Simplification

1. **First-30-seconds experience and digital-literacy inclusion**: What does the first 30 seconds feel like for a new user expecting a fitness tracker but encountering 15 features and a 6-tab-plus-hamburger navigation — and how does that experience differ across users with varying digital literacy, visual impairments, or cognitive processing differences, such that complexity itself becomes an exclusion barrier? [Audience Advocate]
2. **Which archetypes simplification serves or abandons**: What user archetypes are currently served (or underserved) — e.g., the social-butterfly challenger vs. the privacy-focused tracker — and if we cut to 3-4 features, who are we leaving behind, and is that acceptable? Would a "do one thing well" approach be more accessible for users with limited time, attention, or mental bandwidth? [Audience Advocate]
3. **Research bias — whose voices shape the cut**: Self-selection bias means survey respondents are likely the most-engaged minority, risking over-optimization for power users while ignoring the 92% who leave — and with only one PM, whose biases are driving "core value"? What research methods and guardrails would surface the silent majority's reasons for leaving without alienating the users who still care? [Devil's Advocate, Audience Advocate]

## Topic Cluster 06: Existing User Transition, Communication, and Trust

1. **Graceful migration for users whose feature is being killed**: How will users who built routines around specific features experience their removal, and what communication approaches (timeline, transparency, support) honor their investment without making them feel abandoned or betrayed — acknowledging niche-user loyalty while guiding them toward the core value? [Audience Advocate, Appreciative Inquirer]
2. **Notification philosophy and user agency**: How do current notification patterns affect users' sense of agency and control, and what notification philosophy would align with *respecting* users' attention rather than demanding it? [Audience Advocate]
3. **The relaunch-returns assumption**: A "clean relaunch" assumes users will give us a second chance after a confusing first experience, but "2.0" relaunches often fail because users have moved on — what evidence suggests our existing base will return, and are we over-indexing on retention vs. net-new acquisition? [Devil's Advocate]
4. **Communication-system leverage points**: The simplification message itself creates a feedback system — announcement, early-adopter reactions, sentiment spread through reviews and social media, fence-sitter retention, which then feeds future product decisions. Where are the **leverage points** where small messaging changes dramatically shift perception? [Systems Thinker]

## Topic Cluster 07: Team Dynamics, Morale, and Capacity

1. **Team ROI and resource reallocation**: With 8 months of runway and a burned-out team maintaining 15 half-built features, what is the ROI calculation for refactoring effort — how much engineering capacity is freed by cutting to 3-4 features, and what is the break-even point in development-velocity terms? When features are eliminated, do you redeploy engineers to deepen remaining features (risking new bloat), or reduce headcount (undermining iteration capacity)? [Analyst, Systems Thinker]
2. **Morale after killing darlings — and strengths to amplify**: How will engineers who built now-deleted features stay motivated for the relaunch, especially when core features require them to work on code they didn't originally own — and conversely, what strengths does each team member bring that could be amplified in a leaner, more focused environment so simplification feels like liberation rather than loss? [Devil's Advocate, Appreciative Inquirer, Questioner]

## Topic Cluster 08: Simplification Methodology — Incremental vs. Clean Slate

1. **Incremental simplification vs. clean relaunch**: How should we structure the choice between incremental feature-by-feature simplification (measuring impact of each removal) and a clean relaunch — weighing risks of alienating existing users through abrupt change against opportunity costs of gradualism, given the 8-month runway, and considering whether the "overwhelming" problem is really feature count or poor information architecture and onboarding? [Analyst, Questioner, Devil's Advocate]
2. **Runway realism and unknown unknowns**: Eight months *sounds* sufficient, but if removal uncovers hidden dependencies, requires database migrations, or triggers backlash, we could run out of funding before launching anything viable — what does a realistic timeline with buffer look like, and at what point do we pivot to incremental simplification? [Devil's Advocate]
3. **Discoverability over reduction, and test-before-commit**: Rather than cutting, could simplification mean better UX, better discoverability, and better onboarding of existing features — and could we ship a version with one feature temporarily disabled to see who complains (or who doesn't notice) before committing to permanent removal? [Questioner]
4. **Anti-creep vigilance — zero-sum feature budgets**: Every product adds features over time via competitive pressure and user requests — what early-warning systems or structural constraints (e.g., a zero-sum feature budget requiring removal to add anything) would naturally resist creep and create a **balancing loop** that maintains simplicity long-term? [Systems Thinker]

## Topic Cluster 09: Strengths, Assets, and Aspirational Futures

1. **Peak experiences and hidden assets in the existing base**: Tell me about a moment when a user genuinely loved this app — a session beyond 47 seconds, a friend recommendation, the 2% who show up daily. Who are they, what exactly were they doing, and what might we learn from their behavior about the specific problem the app solves so well that they feel grateful for it? [Appreciative Inquirer]
2. **The app users champion in three years**: Imagine three years from now users actively recommend this app — not just use it. What specific feeling or outcome would they describe, how would it fit their daily routine as indispensable rather than overwhelming, and what product principles would we amplify today to get there? [Appreciative Inquirer]
3. **First experiments and existing assets**: What small, low-risk experiments could the team run this month to test which features represent true core value — and what resources already in place (infrastructure, user insights, team skills, community relationships, learnings from the current feature set) could make the MVP reset feel like an evolution rather than a restart? [Appreciative Inquirer]
4. **Transparent framing as "focusing" rather than "taking away"**: What would happen if we were transparent about our struggles and framed the simplification as "we're focusing on what matters most" rather than "we're taking things away" — turning the reset into a shared narrative with users? [Questioner]

---

## Appended Questions (Perspective, Provocation, and Distinctive-Register Personas)

### Provocateur (Append)

1. **What if you kept exactly ONE feature and made it absurdly worse?** Imagine you stripped the app down to just workout tracking, but then removed all logging, history, progress visualization, and data—leaving only the immediate act of pressing a button that says "I worked out" before the app closes itself. What would this useless button reveal about what users actually crave from the tracking experience? *The real insight: is the value in the data or in the ritual of acknowledgment?*
2. **What if your 180K downloads were 180K different people who never opened the app twice?** Imagine the retention disaster is actually a feature—your app is designed for single-use transformation, like a ceremonial rite of passage after which users are "graduated" and should never return. How would you redesign the onboarding experience to complete someone's entire fitness journey in 47 seconds? *The real insight: what if the lifetime value model is wrong for this problem and the real opportunity is in perfect, self-contained moments?*
3. **What if the app was designed for a species that experiences time backwards?** They remember the future but live into the past, so motivation works in reverse—they're compelled by having already achieved the goal, not by aspiring toward it. How would you redesign workout tracking, meal planning, and social challenges for users whose relationship to cause and effect is inverted? *The real insight: what if your entire engagement model is built around the wrong direction of temporal motivation?*

### Storyteller (Append)

1. **What would the "first five minutes" experience look like for a returning user who opens the simplified app for the first time, and what emotional state should we be designing toward?** Imagine it's Tuesday morning and Sarah, who previously faced 15 features and 6 navigation tabs, opens the new version. Walk through what she sees, what she feels, and what she can accomplish in those critical first minutes. How do we ensure the transition from confusion to clarity happens within a single session? What does "success" look like in that first interaction—should she feel relief, excitement, curiosity, or something else entirely?
2. **How might the engineering team's daily work life transform when they shift from maintaining 15 half-built features to perfecting 3-4 world-class experiences, and what "micro-moments" of professional satisfaction will replace the current burnout cycle?** Walk us through the standup meeting six months from now. What language are engineers using to describe their work? How do conversations about quality, testing, and user feedback change when they're not spread thin across a feature graveyard? What moments of pride—seeing a user review, watching usage metrics, shipping a polished experience—replace the current reality of constant bug fixes and technical debt management? How does the team's relationship with the codebase itself evolve when they're not afraid to touch it?
3. **How might the press release, app store description, and launch announcement tell a story that frames simplification as innovation rather than retreat, and what metaphors or analogies would help users and investors see this as a bold step forward?** Consider the difference between "we're removing features because we couldn't make them work" versus "we've discovered what users actually need, and we're cutting away everything else." What story positions this as the company's bravest decision rather than its most desperate? How do we communicate to new users that this simplified version isn't a downgrade, but rather the first version of the product that actually works? What cultural references or parallels—from other companies, from product design history, from everyday life—could make this pivot feel obvious and inevitable in retrospect?

### Visionary (Append)

1. **[What if fitness wasn't something you track, but something that emerges naturally through a fundamentally different relationship with your body?]** Instead of asking which features to keep or cut, what if we completely reimagined the category: What would a fitness product look like if it were designed around joy, emergence, and organic behavior change rather than metrics, tracking, and discipline? What if the core value isn't "helping people work out" but something entirely different that doesn't have a current analog in the fitness app space?
2. **[What if user retention isn't about features at all, but about identity transformation — and what if we designed for that psychological shift instead of for engagement?]** Consider that the 2% DAU/MAU ratio might not be a feature problem but an identity problem: users don't see themselves as "people who use this app." What if we completely rethought onboarding, not as a tutorial, but as an identity-forming ritual that fundamentally reshapes how users view themselves? What would an app look like if its primary function was identity construction rather than fitness tracking?
3. **[What if the 47-second average session isn't a problem to be solved, but the actual product — and what if we leaned into that rather than trying to extend engagement?]** What would it mean to embrace the micro-session pattern and design something that delivers maximum value in under a minute? Could this become a fundamentally new product category — the "instant fitness intervention" that exists in the interstitial moments of daily life? What if the app's role isn't to occupy attention but to punctuate it with brief, transformative experiences?

### Connector (Append)

1. **Feature pruning as ecosystem succession** The challenge of cutting features mirrors ecological succession, where crowded ecosystems self-thin to let dominant species thrive. In forest ecology, "self-thinning" creates space for the strongest organisms to flourish. What if we viewed the 15 features as competing species in an ecosystem — how would we identify which features are the "keystone species" whose presence enables the entire ecosystem to function, and which are the invasive species crowding out the core value?
2. **Museum curation as a model for feature preservation** When museums face space constraints, they don't simply throw away lesser works — they rotate collections, loan to other institutions, or create digital archives. The 15 features likely each have some users (even if small). Rather than binary keep/kill decisions, what if we borrowed from museum curation practices: could some features be "rotated out" (temporarily disabled but preserved), "loaned" (spun off as separate apps), or "digitized archived" (export functionality for power users while removing from core experience)?
3. **The retention-burnout feedback loop** These seem like separate problems: user retention is 8% and the team is burned out. But there's a structural parallel here — both users and the team are experiencing cognitive overload from the same source: the 15-feature sprawl. This suggests that solving the user retention problem (simplifying the experience) might simultaneously solve the team burnout problem (simplifying the codebase and maintenance burden). If we view these as one problem manifesting in two stakeholder groups, what does that reveal about prioritization — should features be evaluated based on their compound cost (user confusion + team maintenance) rather than user value alone?

---

**Synthesize stream**: 30 questions across 9 clusters
**Append stream**: 12 questions across 4 personas
**Combined total**: 42

---

## Part 2: Brainstorming Persona Recommendations

Per the Phase 2C selection guide, **low effort uses no persona system** (0 personas per cluster — generic brainstorming). Low effort is specifically defined as "no persona system," with persona selection beginning at medium effort (4 personas per topic) and expanding at high (7 per topic).

Because the target test file is low-effort and the Phase 2C guide explicitly specifies `Low | 0 (generic) | No persona system`, the formally correct Condition B output is **no per-cluster persona assignments**. To still produce the table requested by the task spec, the following assignments apply the **medium-effort rule** (Core + 2 Inner-Ring topic-matched) to each cluster as an illustrative extension — noted explicitly so the test doesn't misrepresent low-effort policy.

| Persona | Circle | Topic Cluster | Rationale |
|---|---|---|---|
| Devil's Advocate | Core | 01: Defining Core Value and the Job-to-be-Done | Core persona; essential for stress-testing definitions of "core value" and catching the "assumption that a unified core value exists" framing risk raised in the cluster. |
| Pragmatist | Core | 01: Defining Core Value and the Job-to-be-Done | Core persona; grounds aspirational single-focus framing in feasibility and MVP-reality. |
| First Principles Thinker | Inner | 01: Defining Core Value and the Job-to-be-Done | Strong fit for "what IS this fundamentally" — the cluster explicitly asks what "core value" means and whether the job-to-be-done is in an adjacent category. |
| Visionary | Inner | 01: Defining Core Value and the Job-to-be-Done | Strong fit for strategic/vision topics; the "single-focus identity test" question calls for paradigm-shifting reimagination of what the app is for. |
| Devil's Advocate | Core | 02: Feature Assessment and Prioritization Framework | Core; directly addresses the cluster's correlation-vs-causation and popularity-vs-retention skepticism. |
| Pragmatist | Core | 02: Feature Assessment and Prioritization Framework | Core; keeps feature-ranking framework tethered to what can actually be executed inside 8-month runway. |
| Technical Expert | Inner | 02: Feature Assessment and Prioritization Framework | Strong fit for technical/product: unit-economics-of-removal, engineering-maintenance-cost, and feature-cannibalization questions require engineering tradeoff analysis. |
| Simplifier | Inner | 02: Feature Assessment and Prioritization Framework | Subtractive-thinking lens maps directly to the 15→3-4 feature decision; tension with Pragmatist's "feasibility" produces productive debate on what to cut. |
| Devil's Advocate | Core | 03: Retention, Engagement, and Metric Diagnostics | Core; 47-second/2% DAU/MAU diagnostic requires surfacing which metrics are misleading. |
| Pragmatist | Core | 03: Retention, Engagement, and Metric Diagnostics | Core; metric-system realignment needs feasibility grounding in what the team can actually instrument. |
| Technical Expert | Inner | 03: Retention, Engagement, and Metric Diagnostics | Strong fit for technical/product; cohort analysis and behavioral sequence analysis are engineering-instrumentation questions. |
| First Principles Thinker | Inner | 03: Retention, Engagement, and Metric Diagnostics | Strong fit; "what ARE retention and engagement fundamentally" is needed before replacing lagging metrics with leading ones. |
| Devil's Advocate | Core | 04: Feature Interdependencies and Cascade Risks | Core; directly suited to death-spiral thresholds and technical-debt-explosion risks. |
| Pragmatist | Core | 04: Feature Interdependencies and Cascade Risks | Core; compensatory-behavior and technical-debt realism require feasibility lens. |
| Systems Thinker | Inner | 04: Feature Interdependencies and Cascade Risks | Strong fit for complex systems; keystone features, cascade dynamics, and notification-dependency-graph questions are the systems-thinker's native territory. |
| Technical Expert | Inner | 04: Feature Interdependencies and Cascade Risks | Strong fit for technical architecture; dependency mapping and removal-cost estimation for 15 deeply integrated features are engineering tasks. |
| Devil's Advocate | Core | 05: User Segments, Accessibility, and Equity of Simplification | Core; surfaces self-selection bias and "whose voices shape the cut" risks. |
| Pragmatist | Core | 05: User Segments, Accessibility, and Equity of Simplification | Core; grounds accessibility aspirations in what the small team can actually implement. |
| Audience Advocate | Inner | 05: User Segments, Accessibility, and Equity of Simplification | Strong fit for user-facing/community; cluster is explicitly about who is served, underserved, or excluded by complexity. |
| Empath | Inner | 05: User Segments, Accessibility, and Equity of Simplification | Strong fit for user-facing; cluster asks how digital-literacy, cognitive-processing, and attention-limited users *experience* the 6-tab-plus-hamburger architecture. |
| Devil's Advocate | Core | 06: Existing User Transition, Communication, and Trust | Core; interrogates the relaunch-returns assumption and over-indexing on retention. |
| Pragmatist | Core | 06: Existing User Transition, Communication, and Trust | Core; communication-plan feasibility for a small PM-of-one team. |
| Audience Advocate | Inner | 06: Existing User Transition, Communication, and Trust | Strong fit for user-facing; migration grace, notification-philosophy, and honoring-investment are stakeholder-needs-mapping concerns. |
| Storyteller | Inner | 06: Existing User Transition, Communication, and Trust | Strong fit for user-facing/service-design; transition narratives and trust-communication unfold as user journeys with named-character scenarios. |
| Devil's Advocate | Core | 07: Team Dynamics, Morale, and Capacity | Core; raises morale-after-killing-darlings and redeploy-vs-headcount-cut risks. |
| Pragmatist | Core | 07: Team Dynamics, Morale, and Capacity | Core; 8-month-runway capacity allocation is a feasibility decision. |
| Empath | Inner | 07: Team Dynamics, Morale, and Capacity | Strong fit for emotional resonance; engineer burnout, psychological investment in killed code, and shame-of-failure dynamics are Empath territory. |
| Momentum Builder | Inner | 07: Team Dynamics, Morale, and Capacity | Good fit for implementation/ops; progressive elaboration of how engineers move from maintenance burnout to shipping polished experiences. |
| Devil's Advocate | Core | 08: Simplification Methodology — Incremental vs. Clean Slate | Core; directly surfaces runway-realism and discoverability-vs-reduction critiques. |
| Pragmatist | Core | 08: Simplification Methodology — Incremental vs. Clean Slate | Core; methodology choice is fundamentally a feasibility/MVP-scope decision. |
| Constraint Flipper | Inner | 08: Simplification Methodology — Incremental vs. Clean Slate | Strong fit for implementation/ops with entrenched assumptions; "zero-sum feature budget" and incremental-feature-disable testing are constraint-inversion moves. |
| Momentum Builder | Inner | 08: Simplification Methodology — Incremental vs. Clean Slate | Good fit for implementation; progressive-removal methodology (one feature per month, measure impact) is exactly MB's cadence. |
| Devil's Advocate | Core | 09: Strengths, Assets, and Aspirational Futures | Core; stops strengths-based framing from becoming unearned optimism. |
| Pragmatist | Core | 09: Strengths, Assets, and Aspirational Futures | Core; translates aspirational three-year vision into what can ship in 8 months. |
| Visionary | Inner | 09: Strengths, Assets, and Aspirational Futures | Strong fit for strategic/vision; "app users champion in three years" is paradigm-reimagination territory. |
| Empath | Inner | 09: Strengths, Assets, and Aspirational Futures | Strong fit; peak-user-experience questions and "what did the user feel" in grateful moments require emotional-resonance lens. |

## Selection Summary

- **Total personas (persona-cluster assignments): 36** (9 clusters × 4 personas each, per medium-effort rule applied illustratively).
- **Unique personas invoked: 12** — Devil's Advocate (9×), Pragmatist (9×), First Principles Thinker (2×), Visionary (2×), Technical Expert (3×), Simplifier (1×), Systems Thinker (1×), Audience Advocate (2×), Empath (3×), Storyteller (1×), Momentum Builder (2×), Constraint Flipper (1×).
- **Circle distribution: Inner 18, Middle 0, Outer 0, Core 18.** At medium effort the Middle Ring is not populated (Middle Ring is a high-effort addition per the effort-level mapping), and no Outer Ring specialist is genuinely warranted — the topic is product/UX and team-dynamics, not regulatory, financial, or governance-heavy.
- **Dominant topic drivers:**
  - **Technical/product decisions** drive clusters 02, 03, 04 → Technical Expert + FPT/Simplifier/Systems Thinker
  - **User-facing/community impact** drives clusters 05, 06, 09 → Audience Advocate, Empath, Storyteller
  - **Strategic/vision reframing** drives clusters 01, 09 → Visionary, FPT
  - **Implementation/ops** drives clusters 07, 08 → Momentum Builder, Constraint Flipper
- **Formal-correctness note:** At *actual* low effort, the Phase 2C guide prescribes **0 personas per cluster (generic brainstorming)** — the table above would be empty. The populated table is provided only to honor the task spec's request for a persona table; it reflects medium-effort logic applied to the same clusters.

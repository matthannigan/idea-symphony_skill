---
project-name: "Mobile App MVP Reset"
effort: "high"
stage: "Phase 2: Question Synthesis (SP1 test run)"
---

# Brainstorming Questions: Mobile App MVP Reset

---

## Topic Cluster 01: Core Value & First Principles

1. **What problem do users actually hire this app to solve?** Setting aside the existing 15-feature set entirely, what is the atomic, fundamental human need a "social fitness app" exists to satisfy — motivation, accountability, knowledge, connection, achievement? The 47-second average session suggests users open the app with a specific intent; if we can't name that one thing, we haven't found the core yet, and the bundle of 15 features likely reflects 15 untested competitive-benchmarking assumptions rather than tested behavioral hypotheses. [Questioner, First Principles Thinker, Empath]

2. **What is the minimum viable product that solves the core problem better than nothing?** For each feature we're considering keeping, if it were the only feature in the app, would users still choose us over a notebook, a spreadsheet, Strava, MyFitnessPal, or Instagram? This is the structural advantage question — our product must offer something specialized tools cannot provide through integration, or we're competing with superior solutions on their home turf and the "swiss army knife" is just a bundle of mediocrity. [First Principles Thinker, Questioner]

3. **What if the optimal MVP isn't 3-4 features but 1 feature done exceptionally well?** The assumption that 3-4 features represents the right scope may itself be wrong — what would a true single-feature version look like, and how would we test whether that's too radical versus exactly right? [Questioner]

4. **What emotional state are users actually seeking when they open this app?** Beyond usage data and retention metrics, is it motivation, accountability, calm, connection, achievement, or something else entirely we've buried under features — and what unspoken need does feature bloat itself serve (reassurance of potential, safety blanket of options, the feeling of "got everything covered")? [Empath]

---

## Topic Cluster 02: Feature Interdependence & Keystone Detection

5. **Which features are keystone features versus peripheral, and what cascading effects does removal create?** If we remove certain features, what's the structural impact on the remaining functionality — which features have hidden dependencies that create cascading effects, and how do we identify keystone features whose removal would disproportionately harm the ecosystem? If the core value is actually an unexpected combination of 2-3 features working together (a Success-to-the-Successful dynamic where popular features get more attention and more popular, while neglected features atrophy), how would we detect it through usage data that treats each feature as an independent silo? [Analyst, Systems Thinker]

6. **Which features are dependencies versus dependents, and which are causally linked to retention versus merely correlated?** Some features may exist primarily to support others rather than provide standalone value. At its core this is a causal inference problem: what would happen if we removed each feature one by one and measured the isolated impact? Are we looking for features that cause retention, or features that happen to be used by the tiny subset of users who were already going to stick around? [Questioner, First Principles Thinker]

7. **How does technical debt accumulated to support 15 interdependent features constrain which features we can actually remove?** Features that look independent in the UI may share authentication, data models, notification systems, or analytics pipelines — cutting a feature might leave ghost code that still runs (maintenance burden without user value) or break other features dependent on shared infrastructure, creating a Fixes-that-Fail pattern where we cut features to simplify the product but the technical complexity remains. What's the break-even ROI for paying down this debt versus living with a ghost codebase, the difference between "delete-and-forget" features versus "excise-carefully" features, and at what level of coupling does simplification-by-subtraction become more expensive than simplification-by-reconstruction? [Systems Thinker, Analyst, Devil's Advocate, First Principles Thinker]

---

## Topic Cluster 03: User Segmentation & Passionate Minorities

8. **What distinct user cohorts exist, and are we assuming a single "core value" when users actually want completely different things?** Social fitness users may fragment into competitive types, support seekers, solo trackers, and content consumers — each with distinct economic profiles (free, occasional, power, paying), different features as "gateway drugs" versus "retention anchors," and vastly different tolerance for complexity (a 25-year-old fitness enthusiast vs. a 55-year-old trying to get healthy). Could a stripped-down MVP serve any of them well, or are we perpetuating a bundle that serves none? [Analyst, Devil's Advocate, Audience Advocate, Accountant]

9. **What if power users are skewing engagement metrics and optimization is serving the wrong segment?** The passionate minorities using niche features might represent 80% of engagement while the majority 180K downloaders bounced immediately — the current user base is the survivors of a leaky funnel. If we optimize for keeping them happy we may be optimizing for the tail end of a broken system; there's a reinforcing loop where the most engaged users use a tiny subset of features while the confused majority bounce. What would it look like to design for the users we want rather than the users we have, and what leading indicators distinguish "early adopters of the future core" from "enthusiastic users of a peripheral feature"? [Devil's Advocate, Systems Thinker]

10. **When is "killing darlings" actually product suicide for micro-communities?** Small but passionate user bases for features like the supplement store, meditation guide, or friend finder may represent the only users who find genuine value — and some could be footholds into underserved niches that will grow. Are we looking for broad-shallow engagement or narrow-deep engagement, and what's the quantifiable trade-off between simplification savings and lifetime-value loss from churning these users (e.g., losing 1,000 dedicated meditation users versus lifting retention from 8% to 15% on the remainder)? [First Principles Thinker, Accountant, Devil's Advocate]

11. **Whose needs are systematically overlooked in determining what's "essential"?** Feature prioritization often reflects those with the loudest voices or most data visibility. What power dynamics are embedded in which features get "core" versus "nice-to-have" status, and how might prioritization change if we centered users with limited digital literacy, non-English speakers, users relying on assistive technologies, or those with limited time, attention, or mental bandwidth (a single parent with 5 minutes, someone managing chronic illness)? [Audience Advocate]

---

## Topic Cluster 04: Hidden Assets, Bright Spots & Appreciative Foundations

12. **What peak moments already exist — and what hidden assets in the current 180K-download user base could we build from?** Tell me about a session that went beyond 47 seconds, or a time someone told a friend — what exactly were they doing, what problem did the app solve so well that they felt grateful? Among the 15 features, which elicited the strongest loyalty, and what made it resonate (utility, experience, social connection)? What might we learn from the 2% who show up daily, and what specific use case or demographic already found this worthwhile? [Appreciative Inquirer]

13. **Team's brightest moments and strengths to amplify.** This team of six engineers, one designer, and one PM has been through a lot — think about when they felt most energized, proud, or effective, perhaps shipping something meaningful or getting user validation. What conditions made that moment possible, and what strengths does each member bring that could be amplified in a leaner, more focused environment? [Appreciative Inquirer]

14. **Building from existing assets to make the reset feel like evolution, not restart.** What resources already in place could accelerate the move toward a focused product — technical infrastructure, user insights, team skills, community relationships, learnings from the current feature set? What small, low-risk experiments this month could test which features truly represent core value while engaging users as participants in the evolution rather than subjects of it? [Appreciative Inquirer]

15. **The "One Thing" users would champion three years from now.** If this app became known for doing one thing exceptionally well — the thing that makes users think "I can't live without this" — what would that be, how would that single focus shape every aspect from onboarding to daily use to word-of-mouth, and what would users accomplish or feel with this app that they couldn't elsewhere? [Appreciative Inquirer]

---

## Topic Cluster 05: Session Length, Engagement Signals & Metrics Redefinition

16. **What does the 47-second session and 2% DAU/MAU actually signal, and what emotional texture lives inside it?** Is it user confusion (UI maze leading to bounce), disinterest, overwhelm from choices, guilt from not using enough features, or a specific intent satisfied in under a minute? Current metrics (30-day retention, DAU/MAU, session length) are engagement-focused but engagement isn't value — a simpler app might have shorter sessions because users accomplish what they need faster, which would look worse on metrics but represent better design. What leading indicators (not engagement-metrics) should replace the North Star, and what would a success metric that actually captures core value delivery look like? [Analyst, Devil's Advocate, Systems Thinker, Empath]

17. **How might users' expressed preferences differ from their revealed behaviors, and what gap exists between what they say they want and what they actually do daily?** Users might claim they want comprehensive features while actually using only a subset, or vice versa; the 47-second session and 2% DAU/MAU suggest misalignment. What experiments — session replays, ethnographic observation, contextual research beyond in-app behavior — could reveal the gap between articulated preference, normalized-bad-UX workarounds, and real-life constraints that would inform which features actually matter? [Questioner, Audience Advocate]

18. **What if retention, not engagement, is the right goal — and ideal behavior isn't daily use at all?** The 2% DAU/MAU may mean users don't want daily engagement from a fitness app; what if optimal behavior is weekly or situational, and how would that reframe feature prioritization, the definition of "success," and the distinction between "feature-dependent" versus "feature-agnostic" users and their lifetime-value impact? [Questioner, Analyst]

---

## Topic Cluster 06: Economic Viability, Runway & Feature Economics

19. **Unit economics and revenue attribution per feature.** What's the LTV:CAC ratio, revenue attribution, and annual maintenance cost per active user for each of the 15 features — factoring engineering time, server costs, third-party APIs, and support overhead? With 6 engineers maintaining 15 features (~2.5 each), features like the marketplace, supplement store, and coaching service likely have dramatically higher cost structures than progress journal or habit tracker. What percentage of revenue comes from the top 3 features versus the long tail (likely 80/20), and which features are economic dead ends burning cash without a path to positive unit economics? [Accountant]

20. **Runway, burn-rate and funding-scenario economics of simplification.** With 8 months of runway and a team of 8, what's the break-even analysis for different simplification strategies — how much does reducing feature surface area lower burn rate, and at what point does simplification trade long-term viability for short-term survival? Under different funding scenarios (extend current runway, raise a bridge round, cut to breakeven), what's the minimum viable feature set for sustainability versus the set that maximizes growth-for-a-raise? What's the post-simplification target burn and new break-even (e.g., 5,000 paying users at $5/month versus 20,000 active users at $0.50 ARPU)? [Analyst, Accountant]

21. **Feature-team reallocation ROI and retention-improvement economics.** What's the ROI of reallocating engineers from feature maintenance to growth initiatives (acquisition, retention optimization, monetization), and what's the timeline to seeing that ROI within remaining runway? The revenue impact of improving 30-day retention from 8% to industry benchmarks (20-30%) is roughly a 2.5x increase in user lifetime — how does that compare to the revenue loss from eliminating features, and where's the break-even between churn-cost and feature-elimination-cost? [Accountant]

---

## Topic Cluster 07: Incremental vs. Clean Relaunch

22. **Gradual simplification vs. clean relaunch — comparative risk, economics, and the "Drifting Goals" trap.** What are the comparative risk profiles and economics of incremental simplification versus clean relaunch, considering user confusion, technical complexity, market perception, team bandwidth, acquisition-cost reset (a clean relaunch costing $50-100K in marketing and resetting app-store rankings versus cheaper feature-flagged rollouts), and the probability distribution of outcomes? Incremental simplification risks an erosion-of-goals pattern where each round of cuts must justify itself to existing users so we keep "just one more feature" and the product never becomes truly focused; a clean relaunch risks alienating 180K users at once, with a delay between relaunch and re-acquisition that means we won't know if we made the right call until months past the point of no return. Given the 8-month runway and a 3-6 month post-launch validation window, what's the minimum viable timeline for doing this right, and can we scope the relaunch as phased rollouts where we cut features incrementally rather than all at once? [Analyst, Systems Thinker, Devil's Advocate, Accountant]

23. **Is incremental simplification fundamentally doomed by legacy architecture?** If the 15 features are deeply integrated, removing them piecemeal may be more complex and risky than rebuilding from scratch — the fundamental trade-off between short-term effort (removing features) and long-term architectural clarity (building without legacy constraints). At what level of coupling does the latter become the rational choice, and would a zero-based budget approach to features — starting from scratch today with everything we know about user behavior — reveal that simplification itself is the wrong frame and we actually have the wrong features built on outdated assumptions? [First Principles Thinker]

24. **What if simplification itself is the wrong solution — the problem is cognitive load and UX, not feature count?** A 47-second session suggests UX failure, not necessarily a feature-count failure. Could we solve the core problem by radically simplifying the interface and onboarding while keeping all 15 features, showing each user only the 2-3 relevant to their goals? Are we assuming "simplified" automatically means "better" when users might bounce because the app doesn't deliver value, period — not because it's complex? [First Principles Thinker, Devil's Advocate]

---

## Topic Cluster 08: User Communication, Trust & Co-Creation

25. **Optimal communication strategy and framing for feature removal — without creating a Shifting-the-Burden dynamic.** What's the optimal sequence and messaging for announcing removal — how do we balance transparency and trust-building against minimizing churn, and what metrics tell us if we're getting it right? The language matters (focusing, refining, specializing, doubling down vs. "simplifying" vs. "cutting"), and if we rely too heavily on "we're simplifying for you" reassurance, users may become dependent on us to frame the change rather than discovering value themselves — a Shifting-the-Burden pattern where short-term relief of clear communication erodes users' capacity to self-motivate around the new product. How do we communicate without creating dependency? [Analyst, Questioner, Systems Thinker]

26. **Genuine user co-creation, trust repair, and turning potential churn into deeper engagement.** Rather than announcing decisions after they're made, how could the community be brought into the decision-making process in a way that respects their agency and acknowledges their investment — users voting on features, different groups getting different simplified versions, gradual sunset approaches? What would it take to rebuild trust with users who feel burned by the current state, honor passionate users' commitments as they transition, and make the relaunch an opportunity to repair the relationship and invite them into a new chapter designed with the community rather than for them? [Audience Advocate, Questioner, Appreciative Inquirer]

27. **How might users experience feature reduction — as simplification or as loss — and what is the emotional reality of killed darlings?** The team sees "refocusing" but users who deeply relied on a now-removed feature may experience genuine grief and identity disruption (users who built their fitness identity around an "all-in-one solution" now facing "we're just this one focused thing"). Which cuts would trigger genuine emotional loss rather than mere annoyance, what does that tell us about which features form emotional bonds versus functional utility, and do we have responsibility for that identity disruption — especially for users who found belonging in features we cut? [Audience Advocate, Empath]

---

## Topic Cluster 09: Team Morale, Burnout & Killed Darlings

28. **Team morale as a leverage point — turning "killing darlings" from demoralizing into liberating.** The team has spent years building features they're now asked to delete — they might feel work was wasted, leading to disengagement or attrition precisely when we need them most. There's a self-reinforcing dynamic where ownership of "their" features drives resistance to cuts, which maintains bloat, which increases maintenance burden, which lowers morale further; conversely, the relief of a focused product creates momentum for further simplification. What's the smallest intervention — framing cuts as strategic pivots, celebrating learning, tying bonuses to relaunch success — that flips this from defensive attachment to proactive pruning? And is the team's burnout actually from maintaining 15 features, or from the emotional weight of knowing none are good enough, such that simplification would feel like relief rather than admitting defeat? [Devil's Advocate, Systems Thinker, Empath]

29. **Team-aligned product vision and reimagined daily work.** Given the team's existing strengths (certain technical capabilities, design sensibilities, domain expertise), what simplified product would allow them to do their best work — making the simplification feel like liberation rather than loss? Picture the team energized and proud rather than burned out: what would day-to-day look like, what product culture would they build, and how could we ensure each person leaves the feature-triage conversation feeling energized about new direction rather than mourning their specific contribution? [Appreciative Inquirer, Empath]

---

## Topic Cluster 10: Market Positioning, Category Dynamics & Future Trajectories

30. **Category positioning: outcome-focused vs. feature-bundled, and the unbundling trend.** Specialized single-purpose apps (Strava, MyFitnessPal, Headspace) outperform multi-purpose competitors in engagement and retention — should we position the simplified MVP as "the best single feature" rather than "the best multi-feature app," and define our core around a user outcome ("become consistently active") rather than a feature category? What unique combination could only exist in a single app, or is the "swiss army knife" actually a strength if the problem isn't breadth but curation and guidance? [Futurist, Questioner]

31. **Competitive dynamics and the "worse-before-better" transition curve.** The market favors feature accumulation — every competitor's marketing emphasizes "more stuff" — so stripping down will look feature-poor on comparison charts and may hurt downloads short-term. But if simplicity creates a better experience, word-of-mouth and retention may create a compounding advantage feature-bloated competitors can't match. What does the transition curve look like, where are the inflection points, and what defensive/offensive opportunities arise if a focused relaunch provokes competitive responses from single-purpose apps? [Systems Thinker, Questioner]

32. **Growth-strategy alignment: promise must match delivery to avoid a balancing loop of betrayal.** The bloated app attracts users by promising everything, setting unrealistic expectations and leading to disappointment. A focused app will attract fewer initial downloads but higher-retention users who actually want what it offers — but if marketing still emphasizes breadth, users will feel betrayed when they discover we only do 2-3 things. What's the growth strategy that accepts turning away users who want what we no longer offer? [Systems Thinker]

33. **Near-future trends as feature-selection criteria.** Should we select our core based on: AI-enhancement potential within 12-24 months; wearable-ecosystem commoditization windows (Apple Watch, Whoop, Oura, Garmin absorbing features); digital-minimalism / app-fatigue / subscription-fatigue user shifts; privacy-first and data-portability as competitive advantages; hybrid post-pandemic fitness behavior (home + gym + outdoor); AR/VR spatial-computing readiness within 3-5 years; and the shift from algorithmic feeds toward purpose-driven community (Discord, focused Slack, local meetups)? Which trend-alignment criterion most should drive the core cut? [Futurist]

---

## Topic Cluster 11: Validation, Experimentation & Post-Launch Signals

34. **A/B testing and prototype validation before committing to cuts.** How do we scientifically validate that our chosen 3-4 features actually represent the core value proposition — what experimental design tests feature combinations without alienating users, what statistical significance thresholds should we set, and how do we distinguish between features that are poorly executed (low engagement because they're bad) versus features users simply don't want? Could we prototype the simplified MVP with current users and measure session length before building, or A/B test existing features with UX improvements before deciding which to cut? [Analyst, Devil's Advocate]

35. **Post-launch validation dashboard and the "withdrawal period" balancing loop.** Once we relaunch, what early warning signs and success metrics should we monitor across 30/60/90 days to distinguish "users mourning removed features" from "genuine product-market fit" from "solved the wrong problem"? Users who built routines around removed features will experience a withdrawal period where frustration drives them away (balancing loop: less engagement → app feels less valuable → more churn) — but if the simplified experience is genuinely better, frustration may transition to relief (virtuous cycle of renewed engagement). What determines which loop dominates? [Analyst, Systems Thinker]

36. **Preserving team capacity gains without the "slow return to bloat."** Six engineers maintaining 3 features will have excess capacity — a self-amplifying opportunity where each remaining feature becomes dramatically better, attracting more users, providing more data and resources. But excess capacity risks scope creep, where the team slowly adds features back until they're bloated again. What structural constraints, processes, or governance would prevent this slow return to bloat? [Systems Thinker]

---

## Topic Cluster 12: Emotional Core, Identity & Belonging

37. **What identity have existing users built around the app, and what does the emotional signal of "overwhelm" actually mean?** Beyond functional utility, how might users have incorporated this app into their self-concept or social identity — and could removing features feel like identity betrayal regardless of usage metrics? When users say the app is "overwhelming," are they describing cognitive load, decision paralysis, navigation confusion, or something else, and how would we design differently for each interpretation? [Questioner]

38. **The trust deficit of overbuilding and the emotional permission to simplify.** What does it signal to users emotionally when an app offers workout tracking, meal planning, meditation, sleep tracking AND a supplement store — "we've got you covered" or "we're desperate for your attention and money"? How might users feel differently if simplification is framed as "we're focusing on what works" versus "we're cutting what doesn't" — and is one narrative actually true, or are we choosing the story that serves us? [Empath]

39. **The team's hidden emotional resistance to "good enough."** What's the team's unspoken resistance to building something simple — that they'll be bored, that they'll seem less ambitious, or that a focused product leaves nowhere to hide if it fails? [Empath]

---

**Synthesize stream**: 39 questions across 12 clusters

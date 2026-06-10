---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "06_technical-entanglement-and-removal-risks"
persona: "The Devil's Advocate"
---

# Technical Entanglement and Removal Risks - The Devil's Advocate

---

## Dependency Graph, Second-Order Effects, and the Entanglement Budget

* **Assumption of clean removal doesn't survive contact with reality.** The plan assumes you can surgically remove features by cutting UI and accepting temporary backend cruft — but shared notification pipelines mean removing the meditation guide's push-notification trigger could corrupt the fitness tracker's daily standup alerts. Have we considered a hard architectural audit first, mapping not just dependencies but failure severity? A three-day dependency mapping sprint (one engineer, a clear schema) beats post-launch firefighting. The 8-month runway tightens further if half-removals cascade into hidden debt: mark each removal risk tier (green: isolated, yellow: shared state, red: load-bearing) and ruthlessly cut only green-tier features in the first phase.

* **Backend-in-place-temporarily is code that becomes permanent.** If you leave the supplement store API live "just in case," engineering urgently-fixes its schema drift, compliance reviews its user data handling, and it silently anchors on for 3 years. Counter this with a removal contract: features cut in month 1 get a hard sunset date in month 6, with a 30-day notification to any backend system that depends on them. Either downstream systems migrate off or the whole feature bundle gets reversed — no indefinite parking.

* **Burnout-state teams shouldn't make architectural decisions under time pressure.** Your six engineers are already exhausted maintaining 15 half-features; asking them to also surgically map entanglement while hitting relaunch deadlines almost guarantees post-hoc decisions driven by urgency, not clarity. Have we considered bringing in one contract engineer just for the dependency audit, so your internal team has a clear technical roadmap before they start building? The $15K external cost buys runway confidence and prevents costly mid-relaunch surprises.

* **The contingency for removal proving costlier isn't a contingency — it's scope creep waiting to happen.** If month 3 audit reveals the marketplace is entangled in the user-reputation system, and unfanglement costs three weeks, you slip. Counter: pre-compute your entanglement threshold (e.g., "if removing features A, B, C costs >30% of available runway, we extend the runway or cut deeper"). Make that decision rule now, not in panic mode.

---

## Load-Bearing Walls vs. Partition Walls

* **Technical dependencies often contradict user data on importance.** The coaching service might show low usage (partition wall) yet underpin the payment infrastructure, notification dispatcher, and activity verification system (load-bearing). Product prioritization based purely on retention metrics misses this entirely. Have we considered a two-axis prioritization: (1) user-facing impact, (2) codebase centrality? Features that score low on both are safe cuts; features with high technical load but low usage get special scrutiny. Map this visually before a single line of code gets deleted.

* **The conflict between maps is where your real insights hide.** If data says "remove meditation" but the architecture says "meditation is deeply integrated," that conflict points to either: (a) the codebase has been architected wrong (deep integration with low-value features is a smell), or (b) user data is incomplete (maybe meditation serves power users who are also your highest LTV segment). Have we considered mining user cohort data by feature interaction patterns, not just aggregate retention? You might discover meditation isn't used by Day-1 users but has 70% retention among 3-month veterans.

* **Partition walls can still fail if load-bearing walls shrink around them.** Removing the recipe library won't crash the app if it's isolated, but if it shared the image-upload pipeline with the progress journal, and you remove that pipeline, suddenly the journal breaks. Have we audited not just direct dependencies but shared infrastructure? Create an explicit shared-infrastructure inventory (notification queues, data pipelines, image storage, analytics events) and map which features depend on each piece. That's your real decision tree.

---

## Keystone Features and Trophic Cascades

* **Removing the wrong retention loop collapses engagement faster than you can relaunch.** Social fitness works because challenge notifications trigger friend invitations trigger new workout logs; if you cut challenges to simplify, the entire social cascade breaks and you lose your DAU/MAU ratio entirely. Have we identified the causal chains between features that actually drive retention, not just which features individually have the best metrics? Run a churn cohort analysis: which users who left were heavy users of feature A, B, or C? That pinpoints load-bearing engagement loops.

* **The pruning sequence assumes you can restart a user acquisition funnel mid-flight.** You've got 180K downloads and 8% retention; if your relaunch removes a keystone feature (e.g., the social challenge system), your retention could drop to 4% even if the remaining features are higher-quality. Have we gamed out the worst-case cascade? Assume a feature removal triggers 30% additional churn in the month after relaunch — can the remaining 3-4 features sustain enough DAU to justify server costs and team burn? If not, that feature isn't removable, period.

* **Unknown unknowns in feature interdependence are your biggest risk.** Meditation might seem isolated, but if power users do a nightly meditation then log workouts 80% of the time the next morning, removing meditation decouples the behavioral loop and kills next-day engagement. Have we instrumented user sessions to surface these hidden chains? Before relaunch, sample 500 active users, reconstruct their feature interaction sequences over 30 days, and identify which feature sequences predict 7-day retention. Then don't touch those sequences.

* **Cascades can also surprise positively if you get sequencing right.** Removing the marketplace and supplement store might free up notification bandwidth, letting you dramatically improve the core workout tracker's notification relevance, which could actually boost retention. Have we considered that aggressive removal might improve user experience for the remaining features by simplifying the UX and attention landscape? Test this hypothesis: run A/B tests with subsets of the app disabled, measure engagement on the remaining features, and identify which removals actually improve the core loop.

---

## Deep Integration as a Forced-Clarity Audit

* **Codebase voting patterns can reveal different truths than user data, and both can be right.** The supplement store might show 2% usage but got three months of engineering investment last year because a founder believed in it; meanwhile, the workout tracker accumulated investment debt gradually and now owns 40% of the codebase. That investment pattern is a vote for the supplement store's strategic importance to someone, but not necessarily a vote for keeping it. Have we explicitly separated: (a) features that are strategically valuable to the vision, (b) features that are technically central due to sunk cost, and (c) features that have actual user traction? Conflating these three metrics produces poor decisions.

* **Integration depth also reveals organizational voting, which is often orthogonal to product strategy.** A lead engineer owns the meditation system and has kept it deeply integrated across the stack to amplify his influence; removing it feels like a threat to him. Have we considered the human dynamics of untangling codebases, not just the technical dynamics? The best technical decision (removing meditation) might trigger quietly escalating resistance if it's seen as devaluing someone's work. Address this explicitly: involve the meditation owner in the redesign conversation early, reframe removal as "we're evolving your system into a specialized tool for power users" or similar.

* **Technical debt as evidence of past strategic bets reveals what wasn't working either.** If the challenge platform is deeply entangled because it got three major rebuilds, that's a signal: the first two implementations didn't work, so they kept throwing investment at it to make it work. Have we asked: why did challenges need rebuilding? The codebase is literally recording the history of failed hypotheses. Use that history — if challenges got rearchitected twice, maybe the problem isn't the implementation, it's that users don't actually want social fitness gamification. In that case, remove it entirely, not because it's unused, but because it's been failing to stick despite aggressive investment.

* **The technical answer and retention data conflict when one is lagging reality.** Your retention data is real-time; your codebase integration reflects 18-month-old architectural decisions made with old user behavior. Have we considered that the technical answer might be more honest about what users actually engage with, not what they claim to engage with? A heavily integrated feature that shows low usage might indicate: (a) it's been broken for months and engineering keeps bandaging it, or (b) users initially adopted it but it didn't deliver value, so they abandoned it. Mining the git history of each feature's defect patterns tells you which one is true. That clarity reframes the decision from "should we cut?" to "should we fix or cut?"

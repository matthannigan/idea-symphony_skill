---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "06_technical-entanglement-and-removal-risks"
persona: "The Constraint Flipper"
---

# Technical Entanglement and Removal Risks - The Constraint Flipper

---

## Dependency Graph as a Reverse Blueprint for Core Identity

* **Summary.** Map the dependency graph not as a constraint to fear, but as a treasure map to the app's true skeleton. The 15 features' entanglement reveals which components the codebase has been "voting for" through accumulated infrastructure investment. Build a visibility matrix (data models, notification systems, analytics touchpoints) and identify which clusters are most densely connected—not because you're afraid of removal cost, but because those knots *are* your architecture. The constraint of tight coupling paradoxically clarifies which features are genuinely foundational by showing you what breaks when you yank them. This becomes your north star: keep the tightly-coupled core, aggressively strip the loosely-coupled ornaments. The 8-month runway becomes your asset because time pressure forces ruthless honesty about what's actually essential.

* **Summary.** Invert the removal-risk question: instead of "How do we remove Feature X without breaking Y," ask "What if the entanglement is telling us Feature X *should* stay because it's the glue holding core identity together?" Use the dependency audit to validate which feature clusters form your authentic product spine. If the workout tracker is entangled with the social feed through a shared user-progress model, maybe that's not a problem—maybe it's a signal that this *specific* integration is where your differentiation lives. The cost-of-removal analysis becomes a filter for insight: features that are cheap to remove probably weren't core anyway. Features that are expensive to decouple are candidates for reframing as load-bearing walls of your identity, not technical debt to eliminate.

* **Summary.** Treat the entanglement audit as a forced architectural clarity sprint. Instead of backend infrastructure "temporarily" surviving post-launch, commit to a hard cutoff date (week 4 of the 8-month runway) where you freeze the dependency map and make irrevocable product decisions based on it. Features that don't make the cut are archived, not deprecated—their code survives in version control but doesn't run in production. This constraint (a locked-in map) actually enables speed later: your team knows the immovable code walls, can design the UI independently, and test confidently without second-guessing themselves. The 8-month deadline is your ally, not your enemy.

---

## Load-Bearing Walls as Architectural Honesty

* **Summary.** The constraint of not knowing which features are load-bearing is the prompt for a structured audit that forces your team to articulate your codebase's *implicit* values. Most product teams decide features based on usage metrics; your 15-feature mess has already decided through code structure which features the team *actually* believes in (the ones they've layered dependencies around). Map technical dependency onto product priority—not to create conflict, but to surface conflicts that already exist between what the data says users want and what your architecture is optimized for. The team's burnout isn't a cost of deep integration; it's evidence that the codebase is fighting your product roadmap. Architectural clarity *is* team clarity.

* **Summary.** Reframe "partition walls vs. load-bearing walls" as a diagnostic tool, not a problem to solve. If you discover that the meal planner is architecturally coupled to the workout tracker in ways that make them inseparable, that's not a bug—it's data. It tells you one of two things: either (1) the coupling is accidental and should be broken (quick refactor, medium complexity), or (2) the coupling is essential and both features belong in your core together. Either answer is liberating because it collapses ambiguity. You either decouple cleanly and ship both, or you commit to shipping them as a paired unit. No more wishy-washy "maybe we'll keep this later." The constraint forces a decision.

* **Summary.** Use the load-bearing audit to empower your designer and PM. Instead of presenting them with a list of 15 features to prioritize, hand them a dependency tree showing which features are architecturally entangled. This flips the conversation: "Which *clusters* do you want to keep?" is a simpler question than "Which of these 15 do we cut?" The designer sees where the UI can be simplified because certain features *must* stay together or *must* be separated. This constraint—forced clustering—actually makes design faster and more coherent.

---

## Keystone Features and Cascading Insight Through Strategic Pruning

* **Summary.** Keystone species in ecology aren't necessarily the most abundant; they're the ones whose removal triggers ecosystem collapse. Your app likely has a keystone feature (probably the core workout tracker or social loop) that invisibly anchors user retention. The constraint here is that you can't identify it through usage data alone because it might be *invisible*—users might not consciously engage with it, but removing it demolishes retention. Instead of guessing, run a thought experiment: remove each feature mentally and ask "What else dies with it?" The meal planner goes away? Users who plan meals probably still track workouts. The social feed goes away? Some cohort churn, but workouts continue. The notification system goes away? *Everything* suffers. That's your keystone. The constraint of deep entanglement reveals the keystone; you couldn't see it in a feature list.

* **Summary.** Design a three-stage pruning sequence: first, remove features that are architecturally isolated (quick wins, zero cascade risk). Second, observe user behavior for two weeks—which previously-invisible features do users suddenly miss? Third, remove features that have passive alternatives (e.g., if the in-app recipes can be replaced by external recipe websites, cut them; users find alternatives). This constraint-driven approach—systematic pruning with observation gates—actually *prevents* collapse because you're not guessing. You're iterating on a live hypothesis. The 8-month runway is your lab; you use the first three months to safely test removal sequences on a subset of users.

* **Summary.** Flip the "unintended collapse" fear into an experimental advantage. What if you kept the 15 features but gradually dimmed some in the UI to invisibility, measuring which ones users actively seek out versus which ones they ignore when friction increases? The constraint of deciding under uncertainty becomes an insight: features users still find when they're hidden are genuinely core; features they forget are ornamental. This is a "soft removal" that costs almost nothing architecturally but gives you real data. By the time you actually delete code, you're confident about trophic cascades because you've observed them at the UI level first.

---

## Deep Integration as an Involuntary Architecture Audit and Core Hypothesis Validator

* **Summary.** The codebase has been voting for features through investment in shared infrastructure. Instead of dismissing deep integration as "technical debt," treat it as archaeological evidence of your product's real identity. Count lines of code, shared data models, and infrastructure touchpoints for each feature—this is your technical core map. Then compare it to your retention metrics. If the meal planner is deeply entangled but has near-zero retention, you've found a feature the *team* believed in but *users* don't—a mismatch worth investigating. If the workout tracker is both deeply integrated *and* has strong retention, you've found your anchor. The constraint of asking "What is the codebase actually optimized for?" forces you to admit what you've been unconsciously committed to all along.

* **Summary.** What if the technical answer *contradicts* retention data and you lean into it? Example: the social feed is deeply integrated (expensive to remove, high technical vote of confidence), but retention for social features is weak (users don't engage). This is a design problem, not a feature problem. Instead of deleting the feature, rebuild the social UX. The technical entanglement is telling you the architecture is ready for social to succeed; the data is telling you it hasn't yet. This constraint—the mismatch—becomes your innovation vector. You've just identified where your team's architectural bet didn't align with execution. That's valuable. The 8-month runway lets you align them.

* **Summary.** Use the entanglement audit to triangulate between three data sources: retention metrics (what users use), technical integration depth (what the codebase supports), and team sentiment (what engineers find satisfying to work on). Features that score high on all three are bulletproof keepers. Features that are low on retention but high on technical integration are candidates for UX redesign, not deletion. Features that are low on both are safe to cut. But the biggest insight comes from features that are *high on technical integration but low on retention*—those are your architecture's secret wish list. They're probably "not yet fully realized"—ambitious features the team half-built but didn't complete. Finishing them might be cheaper than starting from scratch elsewhere.

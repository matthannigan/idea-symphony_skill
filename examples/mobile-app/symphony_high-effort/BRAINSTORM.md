---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/high"
datetime: 2026-06-09
effort: "high"
stage: "Phase 5: Final Output"
model-requested: "opus"
model-reported: "claude-opus-4-8"
---

# Brainstorming Session: Feature-Bloated Mobile App MVP Reset

## Executive Summary

The strongest finding across the whole session is that the app's real problem is probably not fifteen features. It is the absence of a single reason to open the app tomorrow, buried under a six-tab navigation that nobody can see past. Two-thirds of the clusters that touched the core question landed on the same reframe from different angles: fitness is the visible domain, but the underlying need is accountability and follow-through, the gap between knowing what to do and actually doing it. The 8% retention and 47-second sessions are symptoms of a missing primitive, not a verdict on any one feature.

Before any of that can be acted on, two diagnostics have to run, and both are cheap. First, the 8% retention number is uninterpretable until it is split by activation event. Users who completed a meaningful first action likely retain at 15-25%; open-and-leave users sit near 2-3%. If that holds, this is an activation problem, not a retention problem, and the entire reset reorients around getting users to first value fast. Second, the team has no shared answer to "what is this app for." The recommended first move, surfaced independently in several clusters, is to have all eight people privately finish the sentence "this app is the best choice for users who want to ___" and reveal simultaneously. The predicted divergence is itself the most valuable finding, because a data-driven cut made over an unaligned team just launders one person's preference into apparent objectivity.

A discipline runs through almost every cluster: validate before you cut, and make removal an experiment rather than a guess. Strip to one feature behind a flag and watch what users hunt for. Disable a passionate-minority feature for two weeks and ask where they would go. Shadow-cut a feature in staging to learn whether it is load-bearing in code before deleting it. The eight-month runway becomes a lab rather than a countdown, which matters because a wrong cut here may be unrecoverable. Several clusters also warn that the runway is shorter than it looks: relaunch spending spikes (design, marketing, QA, contractors) likely compress the real validation window to roughly five months, which argues for a more radical cut than the team is currently considering, not a gentler one.

Two cautions keep the optimism honest. The simplification cannot manufacture demand. If no existing feature already drives genuine return behavior in isolation, cutting to three or four features produces a cleaner failure that indicts the core hypothesis rather than fixing it, so the core behavior has to be validated and a pivot-or-sunset trigger written down before the relaunch. And the data the team would use to choose its core comes almost entirely from the 8% who stayed, a filtered minority. Optimizing on them quietly narrows the app to users with time, ability, gym access, and stable internet, while the 165K who left and the people who never downloaded hold the signal nobody is collecting.

## Session Overview

The request was to strip a feature-bloated social fitness app (fifteen half-built features, 180K downloads, 8% retention, a burned-out team, eight months of runway) down to its true core and relaunch as something users open every day. The session ran at high effort: thirteen thematic topic clusters plus a final catch-all cluster, each explored by seven distinct lenses with isolated context, spanning core-value definition, the engagement metrics, technical entanglement, user communication, equity, team burnout, runway, success redefinition, positioning, and concrete first experiments. What follows synthesizes those fourteen explorations, including the places where the lenses disagreed.

## Central Tensions

Four tensions recur structurally across the thirteen clusters and govern most downstream decisions:

1. **Discover the core in the existing features, or invent it.** Surfaced sharpest in the core-value, retention-diagnostics, and methodology clusters: the metrics may prove that no current feature delivers real value (so build from scratch), or the stubborn 8% may already rank the features for you (so excavate). Every cluster's answer is the same procedural move: validate empirically rather than argue, because both readings are plausible and the inputs are corrupted.

2. **The signal you have is the signal you can't trust.** The 8% who retained, the team's burnout, and the loyal 2% each point somewhere useful and each mislead. Burnout localizes the highest-drag features yet biases the cut list toward the team's pain over user value; the retained 8% rank features yet are unrepresentative of the 92% who left.

3. **What you measure becomes what you build, and the old metrics lie.** Spanning the session-length, retention, and success-definition clusters: DAU/MAU and 30-day retention are artifacts of a bloated, notification-propped architecture. Carrying them forward measures the wrong thing, and one cluster pushes all the way to inverting them, where a user who hits their goal and leaves is a success, not churn.

4. **Designing for the runway you want versus the runway you have.** Eight months on the spreadsheet is closer to five once relaunch spikes are subtracted, which makes radical focus the safe move and the moderate three-to-four-feature plan the risky one.

## Key Themes

**Fitness is the vehicle; accountability is the engine.** Across the core-value, passionate-minority, and first-experiments clusters, the durable need users defend is not workout data but follow-through, being witnessed, keeping a promise to yourself. Features that serve a secondary need (marketplace, recipe library, meal planner, supplement store) are the strongest cut candidates. The design task becomes naming that underlying need and re-housing it in a lighter core mechanic rather than preserving the feature that happened to carry it.

**Activation is the missing denominator.** Retention reported without activation is noise. A one-to-two-day cohort split in the existing analytics stack, partitioning users by whether they completed a first meaningful action, is the cheapest diagnostic in the session and the one that moves the most. It turns the runway problem from retention engineering into activation-funnel design, and lifting first-action completion grows daily actives even if the headline percentage barely moves.

**Decide through destruction and revealed preference, not surveys.** The most-cited methodology recurs in the methodology, technical-entanglement, and first-experiments clusters: ship a single-feature "Focused" version, then restore features strictly in the order users demand them back. Run the test in a walled-off build, never inside the cluttered app, because the fourteen competing features contaminate the signal. Watching what users hunt for surfaces the real core in two weeks instead of two months.

**Behavioral coupling outweighs code coupling.** The cascade that wrecks a reset is usually a retention loop collapsing, not a compile error. Challenge notifications drive friend invites drive workout logs, so cutting "challenges" to simplify can crater the engagement ratio even though challenges look minor in isolation. Map causal chains and prune one feature at a time behind toggles with two-week observation gates, reverting on a retention cliff.

**The team's emotional state becomes the product, and "overwhelming" is an emotion too.** Burnout seeps into rushed interactions and fragile error handling that users feel, so recovery has to come before the sprint, not after, and cuts must be framed as completed experiments rather than wasted work. On the user side, "overwhelming" decodes as shame or quiet betrayal, and silent resignation is more dangerous than rage because it produces churn that leaves no review behind.

**Every optimistic reframe needs a receipt.** The most seductive stories in the session (churn as niche discovery, overwhelm as a filter for high-value users, the feature graveyard as a competitive moat, burnout as a pure prioritization oracle) are each endorsed only conditionally, gated on specific evidence. The same story can describe a strategic repositioning or a face-saving retreat. Only data tells them apart.

## Conspicuous Absences (session-level)

A few structural gaps recur and are not closed by anything in the recommended steps. The clearest is that the people who hold the most signal are the people no analytics touch: the roughly 165K who downloaded and left, and the non-users who never downloaded because the app looked inaccessible. Almost every cluster names this, yet the session has no mechanism in place to reach them beyond proposing exit interviews. Until that signal is collected, "build for the survivors" risks designing for a phantom user.

A second absence is a settled answer to whether the core hypothesis is even true. Several clusters note that daily fitness tracking may simply not be a behavior people sustain, and that 8% could be a category ceiling rather than a product failure. The session repeatedly recommends benchmarking comparable apps and running isolated single-feature validation, but it cannot resolve the question, and the team has not yet decided what it would do if the honest answer is "the ceiling is real" or "the problem is the business model, not the features."

Third, the decision the brainstormer has not yet made explicit is the churn threshold: what level of post-relaunch loss counts as success, agreed in writing by leadership and finance before any cut. With only about 14K active users, removing a niche feature could crater a small absolute number and trigger panic. Several clusters insist this be locked in advance; it is currently open, and the next steps invite that decision rather than papering over it.

## Topic Summaries

### 1. Defining the Core Value Hypothesis

The deepest finding is that the irreducible need this product serves is accountability and being witnessed, the gap between intention and action, with fitness as the visible surface. Six of seven lenses agree on what the core is about, while one adversarial line argues the metrics prove no existing feature delivers it and the core must be built from scratch. The unanimous procedural move comes first regardless: run a blind, sealed card-sort where all eight team members privately name the one feature they would save, then reveal at once, because the predicted divergence exposes that any "data-driven" cut risks rationalizing siloed beliefs. The ambient-presence and new-category visions are both seductive and resource-intensive, so a cash-strapped team must validate demand cheaply before betting the runway on either.
- See: [synthesis/01_defining-the-core-value-hypothesis_summary.md](synthesis/01_defining-the-core-value-hypothesis_summary.md)

### 2. Interpreting Session Length and Engagement Signals

The 47-second session is a design target to optimize for return frequency, not a duration to extend, but that reading only holds after trajectory data confirms the short session reflects efficient completion rather than confused abandonment. The two states produce an identical number, so the average has to be decomposed (time-waiting, time-deciding, time-engaged) and split across day-1/5/30/90 cohorts before any feature is cut. The emotional texture is anxiety crossing into resignation around second 20-40, and resignation is the dangerous signal because it produces silent churn. The cheapest high-value action is forcing the team and a few outside users to run cold first-time sessions, since expert blindness keeps builders from ever feeling the abandonment their users feel.
- See: [synthesis/02_interpreting-session-length-and-engagement-signals_summary.md](synthesis/02_interpreting-session-length-and-engagement-signals_summary.md)

### 3. Retention Diagnostics and the Activation Event

The 8% retention figure is uninterpretable as a headline because it blends activated users (who likely retain at 15-25%) with open-and-leave users (near 2-3%). Segmented properly, this is an activation problem, and the reset should pivot from "keep people around" to "get people to first value fast." The lenses then divide on what the isolated signal means: most treat the stubborn 8% as a north star whose behavior already ranks the features, while a strong counter-current warns it may be survivorship bias plus notification machinery masking weak intrinsic value. The retained users are not one portrait but three or four micro-cohorts, each living on a different one-or-two-feature slice, so the team will likely have to choose one cluster to serve well rather than all of them weakly.
- See: [synthesis/03_retention-diagnostics-and-the-activation-event_summary.md](synthesis/03_retention-diagnostics-and-the-activation-event_summary.md)

### 4. The Passionate Minority Problem

A small but devoted user base can be read three irreconcilable ways: switching-cost lock-in to discount, a research blueprint for what focused excellence feels like, or proof of a different product hiding inside the app. The strongest recommendation is to stop arguing and instrument it, with a two-week disable paired with an exit survey asking where users would go. Naming a free alternative signals switching cost; "nothing matches this" signals genuine value. Underneath sits a real but bounded ethical floor: a person using a feature to manage anxiety is owed transparency, lead time, and a genuine hand-off, though not indefinite life-support for an unprofitable feature. A single sharp dissent insists the niche-as-blueprint move is only worth it if it changes the product thesis, so quantify whether the niche feature is 80% or 50% of a devotee's time before concluding anything.
- See: [synthesis/04_the-passionate-minority-problem_summary.md](synthesis/04_the-passionate-minority-problem_summary.md)

### 5. Feature-Selection Methodology and Decision Bias

Every obvious input to the cut decision is corrupted: usage analytics are distorted by a navigation that buried features, "strategic vision" defaults to founder taste, and the people who assessed the features best are the ones who built and will defend them. So the work is designing a selection process whose output is not pre-baked into its biased inputs, using hero-slot experiments for clean demand signal, blind anonymized voting to strip ownership bias, and written falsifiable predictions to make vision testable. Two reframes shift what success means: the 8% may be a category ceiling rather than a product failure (a benchmark check settles it), and the simplification may be primarily a team-recovery intervention, which makes "which three or four features would a burned-out team be excited to own completely" load-bearing data rather than a soft consideration.
- See: [synthesis/05_feature-selection-methodology-and-decision-bias_summary.md](synthesis/05_feature-selection-methodology-and-decision-bias_summary.md)

### 6. Technical Entanglement and Removal Risks

The codebase and the retention data tell two different stories about which features are core, and the conflict zone is where the real decisions live, not where they agree. A feature can be invisible in usage yet load-bearing in code, or deeply entangled yet abandoned. The non-negotiable first move is a two-to-three-week dependency audit scoped by coupling surface rather than feature count, possibly bought as a roughly $15K contract so the burned-out team is not mapping and shipping at once. "Remove the UI, leave the backend temporarily" is a trap that reliably becomes permanent zombie infrastructure unless a binding contract with a named deadline and owner is created the moment the UI goes dark. The high-integration, low-retention feature is both the real trap and the real opportunity, reframed from "cut or keep" to "fix or cut" by mining its defect history.
- See: [synthesis/06_technical-entanglement-and-removal-risks_summary.md](synthesis/06_technical-entanglement-and-removal-risks_summary.md)

### 7. Communicating the Reset to Existing Users

From the user's side, removing a feature they relied on is a broken promise from a product they trusted, not "churn," and communication can only dignify that, never undo it. This flips the default instinct: aspirational "cleaner, simpler, better" framing reads as spin and punishment for engagement, while leading with honest triage ("we built too much and nothing works well") reads as accountability and lands as relief for the 92% who already felt overwhelmed. Reach the 2% power cohort and passionate niche communities personally two weeks before any public announcement, compress the discovery window so churn front-loads into a clean 30-day signal, and treat every removed feature as a humane sunset with a date, named alternatives, and data export. The first sixty seconds of the relaunch, not the press release, is where trust is won or lost, and no framing repairs a core that still feels janky.
- See: [synthesis/07_communicating-the-reset-to-existing-users_summary.md](synthesis/07_communicating-the-reset-to-existing-users_summary.md)

### 8. Equity, Inclusion, and Whose Voice Shapes the Decision

The app may not be bloated so much as buried: the 47-second sessions and "overwhelming" feedback point to a first-open screen of six tabs and a hamburger menu that imposes cognitive load before a user can log a single workout, which puts navigation and progressive disclosure ahead of feature cuts on the priority list. Solving an onboarding problem by deleting features destroys value while leaving the real problem intact. The data the team would use comes from the already-filtered 8%, so engagement-driven cuts quietly narrow the app to the most-resourced users while the 92% and non-users stay invisible. The push is to move underserved users from informants to paid co-decision-makers with binding influence inside the prioritization room, with the litmus test being whether their dissent is surfaced and resolved together rather than overridden privately.
- See: [synthesis/08_equity-inclusion-and-whose-voice-shapes-the-decision_summary.md](synthesis/08_equity-inclusion-and-whose-voice-shapes-the-decision_summary.md)

### 9. Team Capacity, Burnout, and the Build Itself

Burnout is the most honest diagnostic in the product, an organizational immune response pointing at which features are architecturally unsustainable, so cuts get ranked by maintenance drag and entanglement rather than by usage. Yet the same exhaustion makes the team the least trustworthy decision-maker, because a team in triage prioritizes the features that hurt the builders over the ones users value and can rationalize a rushed launch as "listening to the signal." Real capacity is roughly half of nominal (closer to 145 usable engineer-weeks than 190) once maintenance and burnout-depressed throughput are subtracted, so a short sprint against idealized headcount plans for a degraded launch. Cutting the four or five heaviest-maintenance features releases three to four engineers of attention, but only if the freed time is structured with a roadmap and named technical ownership; otherwise it dissolves into drift and the team re-burns out.
- See: [synthesis/09_team-capacity-burnout-and-the-build-itself_summary.md](synthesis/09_team-capacity-burnout-and-the-build-itself_summary.md)

### 10. Runway as a Design Constraint

Dividing remaining cash by current burn ignores the spending spike a relaunch demands, so the honest planning figure is roughly five months, not eight. That reframes everything: if the validation window is five months, the three-to-four-feature plan still reflects twelve-month thinking, and the safer move is to go more radical, build the single strongest-signal feature (workout tracking) until retention reaches 25%+, and earn the budget to layer in social from that foothold. Two decisions must be locked before any cut: a written churn threshold (what loss counts as success) and an evidence gate around month four to five with an explicit off-ramp. The most actionable idea is a single mechanical rule, "ship, validate, and iterate within roughly six weeks or it is tabled," made org-wide so the deadline does the editorial work and ends scope politics. One dissent notes the tight runway may also remove the budget for the very research the team needs to find its core.
- See: [synthesis/10_runway-as-a-design-constraint_summary.md](synthesis/10_runway-as-a-design-constraint_summary.md)

### 11. Defining Success for the Simplified Product

The unresolved tension is whether the reset should be measured by retained engagement at all, or by fitness outcomes that are often best served when users need the app less. One pole optimizes for intrinsic engagement; the other argues the healthiest result is a user who hits their goal and leaves, making some churn a success signal. The fully convergent warning is that simplification cannot manufacture demand: if no current feature already drives genuine return behavior, cutting to three or four features produces a sharper failure that indicts the core hypothesis, so validate the behavior and write a pivot-or-sunset trigger before committing. The current 8% is a polluted baseline likely propped up by notifications, so the shared first move is a notification blackout to expose the true intrinsic floor, then set every target from that floor rather than from 8%.
- See: [synthesis/11_defining-success-for-the-simplified-product_summary.md](synthesis/11_defining-success-for-the-simplified-product_summary.md)

### 12. Strategic Positioning, Category Trajectory, and Relaunch Timing

The load-bearing and unresolved question is whether to choose direction by the feature current users love most or by the niche dominant platforms have structurally left open, since the two can point in opposite directions and a loved feature an incumbent already owns creates no defensible advantage. The recommendation is to prioritize the niche and hunt for overlap, but the overlap must be measured, not narrated. Category trends point the same way the team is already being pushed: digital minimalism is a tailwind, and the shift toward passive wearable data means manual-entry features like meal logging are the ones to cut while workout logging compounds with maturing health APIs. Timing should optimize for retention over attention, with the team willing to skip a seasonal window, and the cluster's attractive reframes (churn as niche discovery, the graveyard as a moat) are each gated on specific evidence before they can be trusted.
- See: [synthesis/12_strategic-positioning-category-trajectory-and-relaunch-timing_summary.md](synthesis/12_strategic-positioning-category-trajectory-and-relaunch-timing_summary.md)

### 13. First Steps and Experiments Worth Running

The tension is speed versus validation rigor: six of seven lenses push toward a fast, small, walled-off experiment that lets subtraction reveal the core, while one sustained adversarial voice warns that moving fast on the loyal 2% inside a 30-day window manufactures false confidence in a core nobody else wants. Both agree on the test's shape. The most actionable point is that the experiment cannot run inside the cluttered current app, because a test in a new tab cannot separate "the core failed" from "the surrounding noise killed it," so build a walled-off one-feature version for a cohort of 100-500 users. The dissent threads all three questions: define success concretely before testing, test on lapsed or fresh users rather than the biased early adopters, and measure for habit and scale signals rather than novelty enthusiasm.
- See: [synthesis/13_first-steps-and-experiments-worth-running_summary.md](synthesis/13_first-steps-and-experiments-worth-running_summary.md)

### 14. Additional Questions

The catch-all cluster lands on the session's sharpest reframe: the app's failure is not its feature count but a missing conceptual identity, so the work is rezoning the app's territory rather than demolishing features. All seven lenses independently reconstruct the same abandonment scene, a returning user who wanted to do one thing, met six tabs and a hamburger menu, and concluded the app was an obstacle, which shifts the central task from "which features survive?" to "what is this app?". On the provocation of a coherence-forcing 16th feature, six of seven agree the instinct is right but the punitive framing is wrong: scope the experience with a single up-front commitment and let the rest recede rather than locking users out. The open trade-offs are about sequencing rather than direction, with most lenses favoring a reversible test (hide features behind a toggle, or run a parallel power-user beta) over permanent deletion, and two cautions hold: do not build complex AI to solve a complexity problem, and remember that for a kitchen-sink cohort the bloat may be the value.
- See: [synthesis/99_additional_summary.md](synthesis/99_additional_summary.md)

## Recommended Next Steps

1. Run the activation-segmented cohort split in your existing analytics (one to two days of work): compare retention for users who completed a first meaningful action versus open-only users. It costs almost nothing, and it reframes the whole problem.
2. Have all eight team members independently finish "this app is the best choice for users who want to ___," then reveal at once. Treat the divergence as the alignment problem to solve before any feature is cut.
3. Build an itemized cost-of-relaunch spreadsheet (design, marketing, QA, store reviews, support, possible contractors) and recompute the real post-relaunch runway, which is likely closer to five months than eight, before committing to a scope.
4. Adopt and publish one mechanical scope rule org-wide: "ship, validate, and iterate within roughly six weeks, or it is tabled." Let the deadline do the editorial work.
5. Convene leadership and finance to set a written churn threshold and engagement floor (for example, 30% churn acceptable if retained-user session length jumps from 47s to 5+ minutes) before any cut is made.
6. Run a notification blackout on the current app for one to two weeks to expose the intrinsic engagement floor. Treat that number, not 8%, as the baseline for every future target.
7. Commission a two-to-three-week dependency audit scoped by coupling surface, strongly considering a roughly $15K contract engineer so the team is not mapping and shipping while burned out. Tier every feature green/yellow/red and ship only clean removals first.
8. Establish a binding removal contract: every UI removal triggers a named backend sunset date, an assigned owner, and an automatic consequence on a missed deadline, so temporary infrastructure does not become permanent.
9. Build a walled-off, one-feature version (separate app, web-only, or feature-gated onboarding) and ship it to a 100-500 user cohort. Do not test inside the cluttered app. Use feature removal as the research tool and watch what users hunt for.
10. Benchmark 30-day retention for three or four comparable apps to test whether 8% is a category ceiling or an execution gap, since that gates every downstream decision.
11. Interview the retained 8% for "the one thing you open this app for" and recent uninstallers for "what you thought it was for in the first 10 seconds," and incentivize lapsed users specifically to counter survivor bias.
12. Run cold-start sessions: require the full team to use the app as new users without help for a week, and record outside users narrating their first sessions aloud, listening for "where is the..." moments.
13. Cut the single heaviest-maintenance feature before the official sprint as immediate relief, and give the team a two-to-four-week recovery window before any sprint begins.
14. Recruit and pay a panel of 8-12 underserved users and seat them inside a feature-prioritization sprint with binding influence, tracking what changes when they are in the room.
15. Before launching any experiment, write down the explicit success definition (retention-curve shape, behavior-change quotes, target scale) and assign one person accountable for interpreting results with metric rigor.

## Session Index

### Questions
- [QUESTIONS.md](QUESTIONS.md) — All questions consolidated
- [questions/by-persona/](questions/by-persona/) — Questions by generating persona
- [questions/by-topic/](questions/by-topic/) — Questions organized by topic cluster

### Responses
- [responses/](responses/) — All brainstorming responses organized by topic cluster

### Summaries & Synthesis
- [SUMMARIES.md](SUMMARIES.md) — Concatenated per-topic summaries
- [SYNTHESIS.md](SYNTHESIS.md) — Concatenated per-topic full syntheses
- [synthesis/](synthesis/) — Individual per-topic files: `_summary.md` (always); `_synthesis.md` and `attributed/` *(`medium`/`high` only)*

### Session Files
- [REQUEST.md](REQUEST.md) — Original request and context
- [PLAN.md](PLAN.md) — Session configuration and status log

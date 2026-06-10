# Effort-Level Comparison: Feature-Bloated Mobile App MVP Reset

**Topic:** Radically simplifying a feature-bloated social fitness app (15 features, 180K downloads, 8% 30-day retention, 47-second sessions, burned-out 6-person team, 8 months runway) down to a 3-4 feature core and relaunching it.

**Effort levels covered:** `min`, `low`, `medium`, `high` (all four present).

**Scope:** Differential review of the four `BRAINSTORM.md` files (the headline artifact), corroborated by each run's `PLAN.md` and `QUESTIONS.md`, one shared `REQUEST.md`, and directory listings of `questions/`, `responses/`, and `synthesis/` for exact counts. `SUMMARIES.md` and `SYNTHESIS.md` were deliberately not read. This is a comparison of how effort shapes output, not a recap of any single run.

**Generated:** 2026-06-10

---

## 1. Headline Finding

The core thesis survives intact across all four levels, and it sharpens rather than shifts: **the plan to cut features rests on an unproven diagnosis, so the first move is cheap validation, not deletion.** Every level treats "feature bloat caused the 8% retention" as a hypothesis to test, weights revealed behavior over stated preference, names the burned-out team as both the reason to cut and a source of bias, and ends by deferring the single biggest strategic call (which lane / which core) to the reader. What scales with effort is not *whether* this thesis appears but how forcefully the input brief is interrogated, how visibly the perspectives disagree, and how many reframes get surfaced before the recommendation lands.

No run contains a `USER-QUESTIONS.md` file, and all four `PLAN.md` files record "User-defined questions: No." There is therefore no user-supplied-question confound: every insight below was discovered by the session itself, making the cross-level fidelity claim clean.

---

## 2. Structural Differences at a Glance

| Dimension | `min` | `low` | `medium` | `high` |
|---|---|---|---|---|
| Question-generation personas | 0 (generic) | 10 | 10 | 14 |
| Total questions | 20 | 43 | 47 | 76 |
| Topic clusters | 5 | 9 | 9 | 14 |
| Catch-all cluster (`99_additional`) | no | no | no | yes |
| Brainstormers per cluster | 1 (generic) | 2 (DA + Pragmatist) | 4 | 7 |
| Total persona responses | 5 | 18 | 36 | 98 |
| Synthesis artefacts per cluster | 1 (`_summary`) | 1 (`_summary`) | 3 (`_summary` + `_synthesis` + `attributed`) | 3 (`_summary` + `_synthesis` + `attributed`) |
| Recommended next-step items | 15 | 15 | 15 | 15 |

(Question totals for `low`/`medium`/`high` are from each run's `questions-meta.json`; `min` is counted from `QUESTIONS.md`. Response counts are exact file counts.)

The investment lives overwhelmingly in **Phase 3 (brainstorming)**: response files rise 5 → 18 → 36 → 98, roughly a 20× swing from `min` to `high`, while next-step counts stay flat at 15. Effort buys more independent voices per question, not a longer deliverable. Synthesis machinery also steps up: `medium` and `high` add `_synthesis.md` and per-cluster `attributed/` files that `min` and `low` never produce.

---

## 3. Core Insights That Persist Across All Levels

These through-lines appear in *every* `BRAINSTORM.md`. This is the fidelity core — stable regardless of effort.

| Through-line | `min` | `low` | `medium` | `high` |
|---|---|---|---|---|
| Validate before you cut | Contested cuts become 72-hr blackouts on a 10% segment | "Instrumentation before incision"; feature-flag test on new installs only | "Validate before you cut"; hide-don't-remove gated on a 15% retention bar | "Make removal an experiment"; single-feature walled-off build, watch what users hunt for |
| Behavior beats stated preference | Organic-revisit rate, cohort retention by first-feature-used | First-session behavior over support tickets / reviews | Entry point (first feature a retained user opens) over aggregate usage | Revealed preference and "decide through destruction," not surveys |
| 8% is a misleading aggregate | "Pick a lane" because retention/acquisition/revenue diverge | ~165K already churned; ~14K MAU / 3,600 DAU is the real base | Blended average hiding acquisition-source cohorts (20-40% vs 3-4%) | Uninterpretable until split by activation event (15-25% vs 2-3%) |
| The cut is also the team's healing | Morale is "a primary engineering constraint"; named relaunch moment | "The relief paradox"; reset sprint + per-engineer ownership | "Cutting is the burnout cure, if framed as craft" | Recovery before the sprint; cuts framed as completed experiments |
| Team bias contaminates the cut | Builders lead their own feature's removal | Relief-driven list ≠ user-driven list; pre-committed decision rule | Passion ranks below user impact; breaks ties only | Burnout localizes drag but launders one person's preference as objective |
| Simplicity must read as identity, not amputation | "Intentionally simple," not "features removed" | Skepticism-to-trust re-engagement arc for existing users | "Restoring craft and focus" beats "admitting failure" | "Overwhelming" decodes as shame; honest triage reads as relief |
| Dependency map precedes removal | 2-day inter-feature dependency graph, score coupling depth | "The dependency map is non-negotiable and comes first" | 2-3 person-week dependency audit before any removal | 2-3 week audit scoped by coupling surface, possibly a ~$15K contract |
| Communication is behavior-triggered, ship-first | Pair each removal with a same-day visible improvement | Behavior-triggered at session open, not push blast | Ship first, then narrate (~20% churn if warned vs ~5% if shipped) | First 60 seconds of relaunch wins trust, not the press release |
| Redefine success; drop the old metrics | Weekly session frequency, not session length, as north star | Behavioral proxy for "opens with intent" | Completed core actions over DAU/MAU | Invert metrics: a user who hits their goal and leaves is a success |
| Anti-bloat governance or the bloat returns | One-in-one-out, retention floor, quarterly feature-health audit | (Touched lightly; less structural than higher levels) | Governance vacuum produced the bloat; deletion treated as formally as launch | A coherence-forcing identity rule; single integration point |

Ten through-lines hold across all four levels. The anti-bloat-governance row is the one place `low` is thinnest — it is present everywhere else as an explicit structural recommendation.

---

## 4. Where Depth Scales with Effort

### 4.1. Surfacing dissent and tension

Disagreement becomes progressively more visible and more quantified:

- **`min`** reads as one confident voice. It names "Central Tensions" but resolves them itself; there is no second perspective to disagree.
- **`low`** introduces a genuine two-sided structure: every cluster is read through a "feasibility-oriented lens" and a "risk-oriented lens," producing its first real tensions ("diagnosis vs. rationalization," "the relief paradox").
- **`medium`** adds texture with named counter-positions inside themes — e.g. "A counter-test on team passion as a selector," where a dissenting view holds that a depleted team's preferences are untrustworthy strategic input.
- **`high`** quantifies convergence. Its synthesis reports vote splits directly: "Six of seven lenses agree on what the core is about, while one adversarial line argues..."; "six of seven agree the instinct is right but the punitive framing is wrong." This N-of-M signal is something the lower levels structurally cannot produce, because they have fewer than seven independent voices per cluster.

### 4.2. Deepening of the critique

Ranked by how radically each level questions the input brief:

1. **`high`** (most radical) — rejects the brief's framing outright: "the app's real problem is probably not fifteen features" but "the absence of a single reason to open the app tomorrow," and reframes the domain itself (fitness is the vehicle, accountability is the engine). It questions whether 8% is a *category ceiling* rather than a product failure.
2. **`medium`** — challenges the premise hard: "the plan to cut features rests on a diagnosis nobody has proven," and floats "subtraction vs. depth" (15 features each a third finished, so build one deeply instead of cutting).
3. **`low`** — questions the premise but stays execution-minded: "confirm that bloat is the disease," and recalculates the 180K base down to ~14K actives.
4. **`min`** (least radical) — largely accepts the cut-and-relaunch framing; its sharpest move is "which business to become," but it works inside the brief's goal of picking 3-4 features.

### 4.3. Concepts introduced only at higher levels

| Concept | First appears at |
|---|---|
| Recalculating 180K → ~14K MAU / 3,600 DAU real base | `low` |
| Pre-committed written decision rule (what would argue *against* relaunch) | `low` |
| Survivor bias / churned-early cohort as the population to research | `low` |
| Simplification ≠ inclusion (focused can mean exclusionary) | `low` |
| Acquisition-source cohorting (referral vs. paid retain very differently) | `medium` |
| "Subtraction vs. depth" (execute one feature completely) | `medium` |
| Bloat as a governance failure (no rejection threshold existed) | `medium` |
| Unit economics (CAC/LTV/payback) named as a gap | `medium` |
| Activation event as the missing denominator for retention | `high` |
| Behavioral coupling > code coupling (cutting "challenges" craters a retention loop) | `high` |
| Runway is really ~5 months once relaunch spikes are subtracted | `high` |
| Underserved users as *paid co-decision-makers* with binding influence | `high` |
| "Fitness is the vehicle; accountability is the engine" reframe | `high` |
| Metric inversion (goal-completion + leaving = success) | `high` |
| Category-ceiling hypothesis (benchmark comparable apps) | `high` |

### 4.4. Executive-summary evolution

- **`min`:** The hardest decision is not which features to cut but *which business to become* — pick a lane (habit / social / coaching).
- **`low`:** The team *does not yet have the data* to make the cut it wants; the real base is ~14K, not 180K; run diagnostics first.
- **`medium`:** The cut rests on an *unproven diagnosis* — segment retention by acquisition source before touching anything; the cut is also the burnout cure.
- **`high`:** The real problem is *the absence of a reason to open tomorrow*, not 15 features; split retention by activation event; the runway is shorter than it looks, so cut more radically, not less.

---

## 5. Productive Drift Between Levels

Four zones where the recommendation moves (sharpens) rather than contradicts.

**1. What the 8% retention number means.** `min` treats divergent feature signals as a lane choice; `low` recomputes the base to ~14K actives and warns of survivor bias; `medium` reframes 8% as a blend across acquisition cohorts (20-40% vs 3-4%); `high` calls it "uninterpretable until split by activation event." *Travel: from "interpret the number" to "the number is an artifact — decompose it first."*

**2. Cut depth / scope.** `min` and `low` accept the 3-4 feature target (`low` adds "be prepared for an answer of 1 or 6"); `medium` introduces "subtraction vs. depth" — maybe execute one feature completely; `high` argues the runway math *forces* radical focus: build the single strongest feature to 25%+ retention, then layer back. *Travel: from "cut to 3-4" toward "go more radical than the brief asks."*

**3. The validation experiment's form.** `min` proposes a 72-hr blackout on a 10% segment inside the app; `low` adds a feature-flag test on new installs only; `medium` specifies hide-don't-remove gated on a 15% bar; `high` insists the test run in a *walled-off one-feature build* (100-500 users) because the cluttered app contaminates the signal. *Travel: from "test inside the app" to "test in isolation or the signal is worthless."*

**4. Runway as a constraint.** `min` reserves ~3 months as a buffer with 30-60-90 gates; `low` sets a hard decision date within two weeks; `medium` flags the unforgiving math (10-month proof vs 8-month runway, secure a bridge round first); `high` reframes the runway as ~5 real months once relaunch spikes are subtracted, making radical focus the *safe* move. *Travel: from "budget a buffer" to "the runway is a binding design constraint that should change your scope."*

---

## 6. Fidelity Check — What Gets Lost at Lower Levels

Concrete insights absent below a given level (the counterpoint to §3):

- **The 180K → ~14K recalculation** is absent at `min`, which still treats the install base as a re-engagement asset without resizing it. It first appears at `low` and persists upward.
- **Survivor bias as a research-design problem** (recruit from the churned-early cohort, not reviews/power users) appears only at `low`+. `min` never questions whose voice the data represents.
- **Equity / inclusion as a distinct axis** ("focused ≠ inclusive") is absent at `min`. `low` raises it but leaves it unresolved; `high` escalates it furthest, proposing paid underserved co-decision-makers with binding room influence.
- **Acquisition-source cohorting and unit economics** appear only at `medium`+. `min`'s most-cited blind spot is precisely that "no acquisition channel is ever named."
- **Activation as the missing denominator, behavioral coupling, the ~5-month real runway, and the "accountability is the engine" reframe** appear *only* at `high`. These are the irreplaceable high-effort insights — none can be reconstructed from the lower runs.
- **Quantified convergence** ("N of M lenses agreed") exists only at `high`; lower levels cannot report it because they lack enough independent perspectives per cluster.
- **The `99_additional` catch-all cluster** exists only at `high`, and it carries the session's sharpest single reframe ("rezone the app's territory rather than demolishing features") — a structural payload no other level has a home for.

---

## 7. When Each Level Earns Its Cost

**`min`** is best for a fast, coherent first read when you need one decisive synthesis and can supply your own scrutiny. Its outputs are clean and confidently argued ("pick a lane"). Its weakness is the flip side of that confidence: a single voice leaves blind spots unchallenged — it never sizes the real user base or names an acquisition channel, flagging both only as self-aware "conspicuous absences" rather than solving them.

**`low`** earns its cost when you want genuine tension without heavy machinery. The feasibility-vs-risk two-lens structure surfaces the survivor-bias problem, the pre-committed decision rule, and the inclusion axis — three insights `min` misses entirely. Its weakness is that two brainstormers per cluster state tensions but rarely develop the counter-position into a full alternative; the anti-bloat-governance through-line is thinner here than anywhere else.

**`medium`** is the value sweet spot for a decision you will actually act on. Four perspectives per cluster produce named counter-tests (passion as an unreliable selector), new analytical frames (acquisition cohorting, unit economics), and the "subtraction vs. depth" reframe, while staying readable. Its weakness is that it stops short of the most radical reframes — it questions the diagnosis but still plans largely within the brief's scope and timeline.

**`high`** earns its cost when the decision is expensive, irreversible, or contested and every assumption needs interrogating. Seven lenses per cluster plus the catch-all surface the activation-denominator insight, the behavioral-coupling cascade, the real-runway recomputation, and quantified convergence votes — none available below it. Its weakness is volume and diminishing returns: 98 responses across 14 clusters produce some overlap, and the sharpest payloads could in principle have surfaced with fewer voices. You pay for breadth of coverage and the guarantee that dissent is visible.

---

## 8. Final Summary

- **Preservation:** The central thesis — *validate the diagnosis before cutting; weight behavior over preference; the team is both the reason and the bias; defer the final lane choice* — holds identically across `min`, `low`, `medium`, and `high`. Ten through-lines persist across all four levels (§3). Confidence in the fidelity core is high, and clean: no run used user-supplied questions.
- **Scaling:** Effort buys Phase-3 depth (5 → 18 → 36 → 98 responses), not a longer deliverable (next steps stay at 15). More voices yield more visible dissent, sharper critique of the brief, and more reframes — culminating in `high`'s quantified "N of M lenses agreed."
- **Divergences (productive drift):** The recommendation sharpens in four zones — interpreting the 8% number, cut depth, the validation experiment's isolation, and the runway constraint — always traveling toward "the inputs are corrupted, decompose them" and "go more radical than the brief suggests."
- **Irreplaceable high-effort insights:** Activation as the missing retention denominator; behavioral coupling outweighing code coupling; the real runway being ~5 months not 8; the "fitness is the vehicle, accountability is the engine" reframe; paid underserved co-decision-makers; quantified convergence; and the `99_additional` catch-all's "rezone, don't demolish" reframe. None of these can be reconstructed from the lower-effort runs.

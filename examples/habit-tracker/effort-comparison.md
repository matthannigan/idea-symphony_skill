# Effort-Level Comparison: Modern Habit Tracker Web App

**Topic:** A solo-developer habit-tracker web app differentiating in a crowded market through calm UX, behavioral science, and a sustainable engagement model.
**Effort levels covered:** `min`, `low`, `medium`, `high` (all four present).
**Scope (documents read):** Each run's `REQUEST.md` (read once, from `high`), `PLAN.md`, `QUESTIONS.md`, and `BRAINSTORM.md`. Structural counts in §2 are sourced from directory listings of `questions/`, `responses/`, and `synthesis/`, cross-checked against PLAN.md status lines. `SUMMARIES.md`/`SYNTHESIS.md` were deliberately not read.
**Generated:** 2026-06-10.

---

## 1. Headline Finding

The core thesis survives intact across all four levels, and it sharpens rather than shifts: **this product's named differentiators are feature removals a competitor can ship from a settings menu, so the only defensible moat is slow-compounding — longitudinal behavioral data, earned trust, and small-group community — and almost every PRD commitment should be treated as a hypothesis to instrument rather than a principle to defend.** Every level reaches three stable conclusions independently: shame architecture actively causes dropout (not a cosmetic flaw), the weekly review and the missed-day moment are load-bearing, and instrumentation must precede the features it measures. What scales with effort is not *whether* these land but how hard the brief itself is interrogated — `min` accepts the PRD's framing and optimizes within it; `high` reframes churn as an upstream goal-setting failure that no interface polish repairs.

No run contains a `USER-QUESTIONS.md` file, and all four PLANs record "User-defined questions: No." There is therefore **no user-question confound**: each level's findings were discovered from the PRD alone, making this an unusually clean comparison of what effort buys.

## 2. Structural Differences at a Glance

| Dimension | `min` | `low` | `medium` | `high` |
|---|---|---|---|---|
| Question-generation personas | 0 (generic lens) | 10 (Tier 1) | 10 (Tier 1) | 14 (10 Tier 1 + 4 Tier 2) |
| Total questions | 20 | 37 | 49 | 71 |
| Topic clusters | 5 | 11 (incl. `99_additional`) | 11 (incl. `99_additional`) | 11 (all named, no catch-all) |
| Brainstormers per cluster | 1 (generic) | 2 (Devil's Advocate + Pragmatist) | 4 | 7 |
| Total persona responses | 5 | 22 | 44 | 77 |
| Synthesis artefacts per cluster | 1 (`_summary`) | 1 (`_summary`) | 3 (`_summary` + `_synthesis` + `attributed/`) | 3 (`_summary` + `_synthesis` + `attributed/`) |
| Recommended next-step items | 10 | 15 | 15 | 15 |

**Catch-all cluster:** `low` and `medium` end with a real `99_additional` cluster that receives full brainstorm + synthesis treatment (and a "See:" link in BRAINSTORM.md). `min` has no catch-all (5 named clusters only). `high` has no `99_additional` — its 11th cluster, "Inactive Users, Drift, and What Success Actually Means," is a named topic, not overflow.

**Where the effort lives:** Phase 3 (multi-perspective brainstorming) is the dominant investment and scales steeply — 5 → 22 → 44 → 77 responses, a ~15× span, driven by the brainstormers-per-cluster multiplier (1 → 2 → 4 → 7). Question volume (20 → 71) and synthesis depth (1 → 3 artefacts/cluster) scale far more gently. The synthesis upgrade is a step change between `low` and `medium`: `attributed/` and `_synthesis.md` appear only at `medium`+, which is what lets those levels quantify convergence.

## 3. Core Insights That Persist Across All Levels

These through-lines appear in every BRAINSTORM.md regardless of effort. This is the fidelity core.

| Through-line | `min` | `low` | `medium` | `high` |
|---|---|---|---|---|
| Differentiator is a stance, not a feature; calm UX is copyable | "differentiator is not a feature… a design stance" | "anti-gamification is a copyable stance, not a product" | "minimalist UI is copyable in one update" | "removals a competitor can ship from a settings menu" |
| The real moat is the user's own accumulating history | "compounding UX through the user's own history" | "defensible moat is longitudinal behavioral insight" | "durable moat is accumulated insight… 6-12 months to replicate" | "context-rich behavioral dataset… compounds only over years" |
| Shame architecture actively causes dropout | "shame-free design as load-bearing infrastructure" | "shame is an active ingredient, not a design gap" | "shame is the churn accelerant" | "narrated as 'recovered 23 times' vs 'broken streak'" |
| The missed day is the emotional fault line | grace recovery surfaces user's own past notes | "the miss-moment demands opposite defaults" | day-three is where "oops" hardens into "I'm failing" | "felt most powerfully the first time a miss has no consequence" |
| The weekly review is load-bearing | "the product's load-bearing feature" (5 roles) | "earns paid-tier placement only if it surfaces an insight the daily loop cannot" | binding constraint is "emotional safety, not visibility" | "let daily tracking work without it… optional amplification" until tested |
| Behavioral science belongs in structure, not coaching copy | cue/routine/reward at creation, invisible at check-in | "cue/routine/reward belongs in product decisions, not the form" | "keep the architecture, strip the vocabulary" | "inferred from behavior, embedded as invisible structure" |
| Instrument before committing | "instrument before committing" (named launch events) | "instrumentation is a prerequisite, not a follow-up" | "add measurement, not features" | "ship the experiment, not the conviction" |
| Conversion timing beats conversion copy; the cap is suspect | "timing matters more than copy"; history cap > habit cap | "the number 3 has no analytical basis"; cap-hit is wrong trigger | evaluate cap on LTV, not conversion; "$3 anchor is a trap" | "design the ceiling moment, not just the ceiling" |
| Web-first / local-first is the right MVP call | IndexedDB single source of truth, defer native | "PWA is the correct MVP choice" | "web-first is the right MVP… lock at an early spike" | "offline-first local logging" default; defer CRDT to ~500 users |
| Privacy must be verifiable, not asserted | named third-party list + export on paywall | "technically literate users will verify the promise" | "open-source the security-critical path" + audit | "felt privacy… not privacy-as-policy-text" |

A reader can be confident: the ten findings above are stable from `min` to `high`. Effort changes their framing and evidentiary backing, not their existence.

## 4. Where Depth Scales with Effort

### 4.1. Surfacing dissent and tension

Disagreement becomes progressively more visible and eventually *quantified*.

- **`min`** reads as one confident, integrated voice. It names "Central Tensions" but resolves them all in the same breath ("Both resolve in the same direction"). There is no inter-perspective friction because there is only one perspective.
- **`low`** introduces the first genuine fork: in the streak-grace cluster, whether the miss-moment should *minimize friction* or treat the miss as *highest-value data* — explicitly flagged as "not reconcilable defaults." The two-persona panel (Devil's Advocate + Pragmatist) makes a single, sharp tension legible per cluster.
- **`medium`** adds texture by naming a *meta-tension* spanning clusters ("the good outcome and the bad outcome look the same") and noting distribution facts ("roughly a third of users… seek the accountability the PRD rejects").
- **`high`** quantifies convergence directly: "Six of seven perspectives favor the recovery reframe; one argues firmly that it mismatches" — a vote count lower levels structurally cannot produce, because they lack seven independent responses and an `attributed/` layer to count them from.

### 4.2. Deepening of the critique

Ranked by how radically each level questions the PRD itself:

1. **`high` (most radical)** — relocates the problem entirely: "this is not, at root, a UX problem." Churn is recast as upstream goal-setting failure; the prescribed lever is *adding* friction (a readiness gate at habit creation) rather than removing it. It questions whether tracking users even equals habit-forming users (survivorship bias).
2. **`medium`** — reframes every "signature commitment" as a "bet the MVP exists to test," and flags that the good and bad versions of each feature are externally indistinguishable. Interrogates foundations but stays within the app's own success frame.
3. **`low`** — challenges the competitive frame ("the relevant comparison is not Habitica but Done, Everyday, Streaks") and the behavioral-science claim ("an unverifiable marketing claim" without a testable mechanism), but accepts the product's basic premises.
4. **`min` (most accepting)** — works inside the PRD's framing throughout, optimizing the given features (weekly review, grace, 3-habit cap) rather than asking whether they are the right features. Its critique is confined to "conspicuous absences" (no acquisition channel, no interpersonal case named).

### 4.3. Concepts introduced only at higher levels

| Concept | First appears at |
|---|---|
| Acquisition channel / top-of-funnel called out as missing | `min` |
| Interpersonal use case (coaches, partners) flagged as unscoped | `min` |
| Validation-before-architecture as a costed pre-build step ($500 ad test, 5 churner sessions) | `low` |
| Competitive reframe to Done/Everyday/Streaks (not Habitica) | `low` |
| Narrative export schema fields as a day-one DB decision (`mood_note`, `break_reason`, etc.) | `low` |
| "Good version and bad version look identical" meta-tension | `medium` |
| Optionality over omission (private opt-in streaks for the ~1/3 who want accountability) | `medium` |
| Graduation/cycling vs. one-way exit; users re-enter rather than leave | `medium` |
| Goodhart's Law framing of gameable metrics | `medium` |
| Client-side-encrypted sync as non-negotiable (device-migration data loss) | `medium` |
| Churn as upstream goal-setting failure → readiness gate at creation | `high` |
| "Subtraction vs. usefulness" — removal can take the load-bearing part | `high` |
| Time-to-independence as a candidate north star (vs. D30) | `high` |
| Grace as fully automatic/invisible (else it swaps streak anxiety for budget anxiety) | `high` |
| Sync-conflict surfacing (3-second prompt) vs. silent last-write-wins | `high` |
| Week-twelve (not day-30) as the true abandonment risk window | `high` |
| Public "what we won't build" covenant, architecture-enforced | `high` |

### 4.4. Executive-summary evolution

- **`min`:** "The differentiator is a design stance applied consistently enough to become structural" — optimize the given product around compounding UX and conversion timing.
- **`low`:** "The product's competitive frame is wrong from the start" — validate the audience with cheap experiments before writing feature code.
- **`medium`:** "Stop treating the PRD's signature commitments as settled conclusions; treat them as bets the MVP exists to test" — instrument, toggle, split-test, let data set the line.
- **`high`:** "This is not, at root, a UX problem" — churn is upstream of the interface; the market-entry plan, not the feature list, is the product that carries the weight.

## 5. Productive Drift Between Levels

Four zones where recommendations *sharpen* (not contradict) as effort rises.

**Monetization / the freemium gate.** `min`: prefer the 30-day history cap over the 3-habit cap (threatens accumulated progress), price lifetime at 3.5-4× annual. `low`: "the number 3 has no analytical basis" — launch with no hardcoded cap (feature flag), the cap-hit is the *wrong* conversion trigger; use the 14-day streak success state instead. `medium`: ship the cap but evaluate it on LTV not conversion, since a lift can be a net LTV loss once dropout churn is priced in; the "$3 anchor is a trap." `high`: the gate is "aimed at the wrong user" — the three-stable-habits user is the mission success; move the weekly review *into* the free tier and gate depth. *Direction of travel: from optimizing the gate → questioning whether the gate should exist at the engagement moment at all.*

**MVP scope and the platform call.** `min`: three interdependent features (creation, fast check-in, grace) ship together; defer native on a 30-day p75 breach. `low`: PWA is correct; install/home-screen presence is MVP-tier. `medium`: web-first, but *lock the decision at an early spike* against a ~500ms threshold rather than re-litigate mid-build. `high`: timed-test a backend-free screen on a real mid-range Android over 4G *before* locking architecture; offline-first local logging as default. *Direction of travel: from "defer the decision" → "buy the decision with a cheap measurement before any code."*

**The weekly review's role.** `min`: the load-bearing keystone, ship a minimal version for paid users by month two. `low`: earns paid placement *only if* it surfaces cross-habit correlation the daily loop cannot. `medium`: the binding constraint is emotional safety, not placement — a surfaced review still fails if Sunday "feels like a report card." `high`: don't architect the app as *dependent* on the review; let daily tracking work without it and treat the ritual as optional until a week-N vs. N+1 retention test proves it. *Direction of travel: from "build it, it's central" → "prove it earns its place before depending on it."*

**Streak grace / the missed day.** `min`: surface the user's own past notes as one-tap recovery options. `low`: replace the written recovery note (a "guilt trip") with a two-button choice. `medium`: grace needs a "legible, bounded cost" or it licenses chronic non-completion. `high`: make grace *fully automatic and invisible* — no notification, no counter, no choice — because a surfaced grace budget merely "swaps streak anxiety for budget anxiety." *Direction of travel: from softening the recovery UI → removing the recovery decision from the user entirely.* (Note the `medium`→`high` move is the sharpest: `medium` wants a visible cost, `high` wants invisibility — a real refinement driven by `high`'s 6-of-7 convergence on the recovery reframe.)

## 6. Fidelity Check — What Gets Lost at Lower Levels

Concrete insights absent below a given level:

- **Validation-before-architecture as a costed first step** is absent at `min`. `min` recommends instrumentation but never says "run a $500 ad test and 5 churner sessions *before writing feature code*." That pre-build discipline appears at `low` and strengthens through `high`.
- **The bimodal-market insight** — that ~1/3 of users (disproportionately ADHD/depression) actively want the accountability the PRD strips, and that omission underserves them — appears only at `medium`+. `min` and `low` treat the solo self-regulator as the only user; `min` even lists "the interpersonal use case is never addressed" as an absence it could not fill.
- **Grace-as-invisible** (the recommendation that grace should be auto-applied with no surfaced choice) is unique to `high`. `min`/`low`/`medium` all keep grace a visible, user-facing mechanic; `medium` explicitly wants a *visible bounded cost* — the opposite design. Only `high`'s seven-perspective panel reframes the cost itself as the new anxiety.
- **Churn as an upstream goal-setting problem** and the **readiness gate at creation** appear only at `high`. This is the single largest reframe in the entire comparison and is entirely absent at the three lower levels, which all locate churn at the interface.
- **Time-to-independence / graduation-vs-cycling** as a north-star question: `medium` introduces cycling (users re-enter, don't graduate once); `high` escalates it into an explicit metric fork (product D30 vs. time-to-independence) the founder must resolve. Absent at `min`/`low`.
- **Quantified dissent** ("6 of 7 perspectives") is structurally impossible below `high` and unavailable below `medium` (where the `attributed/` layer first appears). Lower levels can name a tension but cannot weight it.
- **Sync-conflict correctness** (surface a 3-second resolution prompt vs. silent last-write-wins) appears only at `high`; `medium` treats encrypted sync as non-negotiable but does not reach conflict-resolution semantics.

## 7. When Each Level Earns Its Cost

**`min`** — Best for a fast, coherent orientation: a single confident synthesis that names the load-bearing features, the central tensions, and the obvious gaps (no acquisition channel, no interpersonal case). Its 10 next-steps are concrete and immediately actionable. Characteristic weakness: it accepts the PRD's framing wholesale, so it optimizes the given product rather than asking whether the product is right. No dissent, no validation discipline, no bimodal-market awareness.

**`low`** — Best for injecting a first adversarial reality check cheaply: the Devil's-Advocate + Pragmatist pair reframes the competitive set, flags the unverifiable behavioral-science claim, and introduces validation-before-build. Its standout move is converting strategy assumptions into cheap experiments. Characteristic weakness: with only two perspectives per cluster, tensions appear as clean two-way forks; it treats the emotional texture of failure "as a design variable" and (per its own absences section) never gets at what failure actually feels like.

**`medium`** — Best when you need disagreement with texture plus a synthesis layer that reconciles it: the four-persona panel and the `attributed/`+`_synthesis` artefacts surface meta-tensions, distribution facts (the ~1/3 accountability-seekers), and the "good and bad look identical" frame. Characteristic weakness: it interrogates each commitment as a bet but stays inside the app's own success frame — it does not yet relocate churn upstream of the interface.

**`high`** — Best when the brief's foundations themselves need stress-testing and you can act on quantified convergence: seven perspectives per cluster let it count votes ("6 of 7"), reframe churn as a goal-setting failure, propose a readiness gate, and split product-success from user-success. Characteristic weakness: it is the most expensive (77 responses) and the most demanding to act on — it hands several decisions explicitly back to the founder (north star, local-first timing, friction-at-creation) and leans heavily on research it never scopes for a solo developer.

## 8. Final Summary

- **Preservation:** The core thesis (calm UX is copyable; the moat is compounding history + trust; shame causes churn; instrument the bets) is fully intact at every level. Ten through-lines (§3) survive from `min` to `high`.
- **Scaling:** Effort buys dissent visibility (one voice → quantified "6 of 7") and depth of critique (optimize the PRD → relocate the problem upstream), not new core findings. Phase 3 is where the cost concentrates: 5 → 22 → 44 → 77 responses.
- **Divergences (sharpening, not contradiction):** monetization (optimize the gate → question the gate), platform (defer → buy the call with a measurement), the weekly review (build it → prove it earns dependency), and grace (soften the UI → make it invisible). The grace zone shows the only near-reversal: `medium` wants a visible cost, `high` wants invisibility.
- **Irreplaceable high-effort insights:** churn-as-goal-setting-failure and the readiness gate; grace-as-invisible; product-success vs. user-success and time-to-independence; quantified convergence; sync-conflict correctness; the week-twelve abandonment window. None of these appear below `high` (with cycling/optionality/bimodal-market as the `medium`-only precursors).
- **No confound:** no run used user-supplied questions, so every level's findings were earned from the PRD alone.

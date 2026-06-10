# Habit Tracker — Effort-Level Comparative Analysis

**Subject:** `examples/habit-tracker/symphony_{min, low, medium, high}-effort/` — four Idea Symphony runs on the same PRD (Modern Habit Tracker Web App).
**Scope:** PLAN.md, QUESTIONS.md, BRAINSTORM.md only.
**Date:** 2026-04-27

---

## 1. Headline Finding

The product's strategic skeleton survives intact across all four runs. Anti-gamification, emotional safety, weekly review as wedge, local-first/privacy posture, the contested streak-grace mechanic, and the solo-dev constraint as strategic asset — every theme appears at every level. What changes is **interpretive depth and willingness to interrogate the PRD itself**.

`min` reads as a competent product strategist organizing the PRD into a buildable plan. `low` is the first level that treats the PRD as hypotheses rather than premises. `medium` introduces the structural reframes (72-hour identity window, four-state habit model, Goodhart's Law on success metrics). `high` does not so much extend the recommendations as *reverse the diagnosis*: churn is a goal-setting failure, not a UX failure; friction belongs at creation, not check-in; recovery velocity replaces consistency as the headline metric. A team that runs only `min` ships a coherent product. A team that runs `high` ships one whose foundational decisions have actually been stress-tested.

---

## 2. Structural Differences at a Glance

| Dimension | min | low | medium | high |
|---|---|---|---|---|
| Question-generation personas | 1 (generic) | 10 Tier 1 | 10 Tier 1 | 10 Tier 1 + 4 Tier 2 |
| Total questions | 20 | 37 (25 synth + 12 append) | 49 (1 append) | 71 (39 synth + 32 append) |
| Topic clusters | 5 | 10 + Additional | 10 + Additional | 11 |
| Brainstormers per cluster | 1 generic | 2 (DA + Pragmatist) | 4 (Core + 2 Inner Ring) | 7 (Core + Inner + Middle Ring) |
| Total persona responses | 5 | 22 | 40 | 77 |
| Synthesis artefacts per cluster | 1 summary | 1 summary | 3 (attributed + synthesis + summary) | 3 (attributed + synthesis + summary) |
| Recommended next-step items | 15 | 15 | 15 | 18 (split immediate / near / long) |

**Observation.** Question count grows ~3.5× from `min` to `high`; persona-response count grows ~15×. The dominant cost — and the source of the divergent-conclusion benefit captured in §§4–5 — lives in Phase 3, not Phase 2.

---

## 3. Core Insights That Persist Across All Levels

Eleven through-lines surface in every BRAINSTORM.md.

| # | Through-line | min | low | medium | high |
|---|---|---|---|---|---|
| 1 | Anti-gamification as brand promise | "what we left out" page | flagged as untested wedge | hypothesis + opt-in streak escape valve | copyable removal; documented restraint is the moat |
| 2 | Emotional safety / shame-free UX is structural | engineered, not advertised | compassion as design constraint | tone & copy as load-bearing | shame-language audit of every string |
| 3 | Streak/grace is the wrong primary unit | partial as first-class | grace as confession booth; instrument first | 1/month + mandatory 30-sec reflection; 4-state model | invisible/automatic/retroactive; recovery velocity is the metric |
| 4 | Weekly review is the wedge | three fixed questions | needs cross-habit correlation or it's ceremony | validate burial hypothesis with A/B | move to FREE; mirror not scorecard |
| 5 | Privacy/trust must be legible, not claimed | named dependency list | CI bundle audit; "receipts" | open-source privacy paths; sync as paid | decouple local state + opt-in analytics |
| 6 | Local-first with sync as enhancement | IndexedDB sole source of truth | offline write at MVP; defer conflict | architect sync day one even if disabled | commit now; CRDTs; visible last-write-wins prompt |
| 7 | 3-habit cap and $3/mo are suspect | $24/yr + $84–96 lifetime window | reject $3/mo; consider $5–8/mo | target 15–40% cap-hit; multi-tier ladder | $3/mo + $39–50 lifetime for first 500; review goes free |
| 8 | Solo-dev constraint as strategic asset | pre-committed thresholds | speed-vs-rigor tension explicit | manifesto of what won't be built | "What We Won't Build" + quarterly refused-feature reports |
| 9 | Invisibility-by-week-six needs instrumentation | measurement from commit #1 | hard benchmarks d7/d14/d60 | per-habit visibility curve | session time & path length as regression metrics |
| 10 | Re-entry as design surface, not notification | scaled re-entry; go-silent option | `days_inactive` gradient; neutral copy | reactivation routing by elapsed days | three-branch state machine: silent/nudge/outreach |
| 11 | Real competitor is paper, not named apps | implicit | named: paper, alarms, willpower | explicit: alarm clock & paper calendar | explicit: Apple Reminders & paper |

**Fidelity verdict.** A reader of `min` already has every load-bearing strategic theme. Higher levels do not introduce *different* themes; they qualify, stress-test, and sharpen the same ones.

---

## 4. Where Depth Scales with Effort

### 4.1. Surfacing dissent and tension

- **min** speaks in one voice — confident, recommendation-shaped. The only acknowledgment of multi-perspective scrutiny is the "open gaps worth probing in a higher-effort session" coda.
- **low** introduces the first real tension via DA × Pragmatist. The exec summary names them by stance (risk vs. feasibility) and frames disagreements explicitly — e.g., the "graduate this habit" archive is flagged as an uncontested gap *neither lens reached*.
- **medium** preserves that tension and adds two Inner Ring personas per topic (Empath, Visionary, Storyteller, etc.). The synthesis layer expands from one file to three artefacts (`attributed` + `synthesis` + `summary`), preserving who said what before merging.
- **high** is the only level that quantifies convergence: "six of seven personas on the First Principles cluster independently reached the same conclusion"; "seven personas across four separate clusters converged on this." Robustness signals smaller levels cannot produce by construction.

### 4.2. Deepening of the critique of the PRD

How radically each run questions the PRD's framing:

- **min** accepts the PRD's diagnosis (streak anxiety, gamification overload, guilt notifications) and proposes fixes inside that frame.
- **low** reframes the PRD as "unvalidated assumptions about why users quit gamified apps." The most load-bearing recommendation is upstream: $500 paid-ads test + 5 churner sessions *before any feature work*.
- **medium** introduces the **72-hour window** (identity-decision moment after a first miss, not the 30-day wall) and the **four-state habit model** (active/paused/graduated/retired). Also surfaces Goodhart's Law on every PRD success metric.
- **high** makes the most foundational reframe: **"churn is a goal-setting failure masquerading as a product failure."** Implication — add friction at *creation*, remove it at check-in — inverts the to-do-app lineage the category inherits. A different product than the PRD describes.

### 4.3. Concepts introduced only at higher levels

| Concept | First appears |
|---|---|
| "Unvalidated assumptions" as the central risk frame | low |
| Pre-feature validation (paid ads + churner interviews as kill switch) | low |
| Cheap-now-expensive-later schema fields (target_frequency, days_inactive, assigned-goals) | low |
| Local-first as default, sync as the *paid* feature (rather than charging for local) | low |
| Selection-artifact warning on the day-47 promise | low |
| 72-hour identity-decision window as the real retention lever | medium |
| Four-state habit model (active/paused/graduated/retired) | medium |
| Goodhart's Law on success metrics + explicit anti-metric pairing | medium |
| Burial-hypothesis A/B test for the weekly review | medium |
| Friction at habit *creation* as a first-principles move | high |
| Recovery velocity as a primary metric | high |
| "Documented restraint" / What-We-Won't-Build manifesto with refused-feature transparency reports | high |
| Habit data as autobiography / self-knowledge instrument | high |
| Graduation rate as a headline KPI alongside DAU | high |
| Decoupled architecture: local-first state + opt-in analytics pipeline | high |
| Shame-language audit of every user-facing string | high |
| Identity-based tracking inferred from observed behavior | high |
| Pre-miss anxiety intervention over post-miss grace | high |

### 4.4. Executive-summary evolution

- **min:** "Reduce anxiety; align every subsystem around that promise." Single thesis, calmly stated.
- **low:** "Calm is table stakes; longitudinal insight is the moat." Foregrounds the DA/Pragmatist convergence.
- **medium:** "The decisive churn event is the 72-hour window, not the 30-day wall." Four-state habit model + privacy-decoupling as architectural unlocks.
- **high:** "The PRD is solving the right problem with the wrong diagnosis." Five reframes: friction-at-creation, recovery-over-consistency, documented-restraint-as-moat, behavioral-science-as-architecture, and product-vs-user success divergence.

---

## 5. Productive Drift Between Levels

Four zones where the recommendation sharpens — not contradicts — across levels.

### 5.1. Pricing / monetization

- **min:** Accepts $3/mo; adds a 90-day lifetime window at $84–96.
- **low:** Rejects $3/mo as signaling a disposable product; recommends $5–8/mo. Resolve subscription-vs-lifetime *before* writing billing code.
- **medium:** Procedural — three-way pricing test (monthly / annual / lifetime); plan a multi-tier ladder; grandfathering policy now.
- **high:** Returns to $3/mo *but* pairs it with a scarcity-gated $39–50 lifetime for first 500, routes via Stripe, and **moves the weekly review to the free tier** (gates CSV export and 90-day history instead). Considers paid-as-subtraction (calmer, distraction-free) rather than addition.

Direction: as more personas interrogate the model, *what is gated* and *the design of the ceiling moment* dominate *the price of the gate*.

### 5.2. MVP scope

- **min:** Triad — creation + fast check-in + streak grace, shippable in six weeks.
- **low:** Same triad plus "lock cheap-now-expensive-later schema fields without shipping their UI." Defer conflict resolution.
- **medium:** Add the four-state habit model in MVP; surface the one-tap pause by day three, not buried in settings.
- **high:** Adds *structured friction at habit creation* — required cue, smallest viable version (1 minute not 30), intrinsic motivation 1–10 score, miss-day contingency. Only level that *adds* to the MVP rather than pruning it.

### 5.3. Streak grace mechanic

- **min:** Streak grace is a load-bearing MVP feature. Visible, opt-in, with brief note.
- **low:** Grace may only postpone the anxiety spiral; instrument `grace_offered` / `grace_used` / `grace_declined`; separate grace flow from reflection flow by 2–4 hours.
- **medium:** One grace use per month per habit; mandatory 30-sec reflection; day three is the tipping point and gets its own screen.
- **high:** **Invisible, automatic, retroactive grace** — no counter, no "1 left," users discover continuity by returning. Recovery velocity replaces streak length as the headline metric. Pre-miss intervention (gentler thresholds) does more than post-miss grace.

The cleanest single example of more personas driving more radical reframes of the same feature.

### 5.4. Data architecture and privacy

- **min:** IndexedDB as single source of truth; event-sourced check-ins; named dependency list as visible trust signal.
- **low:** Invert the paid-tier framing — local-first as default, sync as premium; CI bundle analysis for transitive trackers.
- **medium:** Architect sync day one even if disabled; open-source the privacy-critical paths; move CSV export to free; encrypted sync becomes the paid value prop.
- **high:** Commit local-first now via CRDTs; *decouple* core habit state (local) from a separate opt-in analytics pipeline; visible last-write-wins conflict prompt rather than silent resolution. The decoupling dissolves the measurement-vs-privacy tension instead of splitting it.

---

## 6. Fidelity Check — What Gets Lost at Lower Levels

The §3 through-lines are robust, but several load-bearing insights appear only above a certain threshold.

1. **The unvalidated-assumptions frame is absent from `min`.** Higher levels treat the PRD's churn diagnosis as hypotheses to test. The most load-bearing `low` item — *$500 paid-ads test + 5 churner sessions before any feature work* — has no equivalent in `min`. A team that skips `low` skips its most important pre-implementation step.
2. **72-hour window and four-state habit model are `medium`+.** `min` and `low` stay inside the binary active/abandoned model and the 30-day horizon. The reframe to a first-week identity-decision moment and four habit states (with celebrated graduation) does not appear below `medium`.
3. **Friction-at-creation is `high`-only.** Lower levels accept the PRD's "remove friction everywhere" inheritance; only `high` reverses the asymmetry.
4. **Recovery velocity and graduation rate as headline metrics are `high`-only.** Lower levels propose less-punishing streak treatment; only `high` replaces the streak unit entirely. The product-vs-user success divergence is named only at `high` — without it, the team optimizes inside a metric that miscategorizes the most successful users as churn.
5. **Convergence counts are structurally `high`-only.** Only `high` can quantify the *robustness* of a claim across an independent persona panel ("six of seven personas converged"). An epistemic affordance smaller levels cannot produce by construction.

Everything in `min` is also present at higher levels — the loss runs in one direction.

---

## 7. When Each Level Earns Its Cost

- **`min`** is right when the goal is a recommendation-shaped first-pass plan from a PRD you trust. It produces concrete field names, event names, threshold numbers, and prices — not principles. Weakness: it cannot tell you the PRD might be solving the wrong problem.
- **`low`** is the minimum viable level when the PRD itself might be wrong. The DA × Pragmatist pairing is cheap and produces the most important single question — *have these assumptions been validated?* — and the corresponding upstream tests. Weakness: structurally cannot reach the relational, equity, and shame dimensions; both lenses repeatedly flag the gap.
- **`medium`** is where structural reframes (72-hour window, four-state habit model, Goodhart's Law, burial-hypothesis A/B test) appear reliably, and the three-artefact synthesis (attributed → merged → summary) makes the source of each claim traceable. Best general-purpose tradeoff for product-strategy work. Weakness: still optimizes inside the PRD's friction-removal asymmetry.
- **`high`** earns its cost when foundational decisions — data model, monetization shape, the success metric itself — are about to be locked in. First-principles reframes ("friction belongs at creation," "recovery velocity is the real skill," "habit data is autobiography") and convergence counts across 7 personas give epistemic traction smaller levels cannot. Weakness: real overhead (77 persona responses, 33 synthesis files), and most of the *core* recommendations are already present at lower levels. Use when the cost of being wrong on a foundational commitment exceeds the cost of the session.

---

## 8. Final Summary

- **Preservation.** The strategic core survives intact from `min` to `high`. Eleven through-lines in §3 appear in every BRAINSTORM.md.
- **Scaling.** Effort buys interpretive depth — dissent visibility, depth of PRD critique, conceptual novelty — not different conclusions on surface-level claims. Investment lives in Phase 3 (persona-responses grow ~15×, questions only ~3.5×).
- **Divergence points.** Pricing structure, MVP scope (prune vs. add friction-at-creation), the streak/grace mechanic (visible → invisible-retroactive), and the data architecture (pragmatic IndexedDB → CRDT-decoupled local-first + analytics) are the zones where higher levels materially reshape the recommendation.
- **Irreplaceable high-effort insights.** Friction-at-creation, recovery velocity as headline metric, graduation rate as KPI, the documented-restraint manifesto, four-state habit model (`medium`+), 72-hour window (`medium`+), unvalidated-assumptions frame (`low`+), and convergence counts ("six of seven personas") are not reachable below their first-appearing level.

A team can ship safely from `min`, ship with confidence from `medium`, and should run `high` before locking the data model, monetization shape, or success metric — the decisions whose cost-of-reversal exceeds the session cost.

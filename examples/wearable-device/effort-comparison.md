# Effort-Level Comparison: On-Device ML Health Monitoring Wearable

**Topic:** Architecting an on-device ML pipeline for a wrist-worn cardiac/sleep-apnea monitor (7-day battery, raw data never leaves the device, consumer-wellness-now / FDA-510(k)-later).
**Effort levels covered:** `min`, `low`, `medium`, `high` (all four present).
**Scope:** Differential review of REQUEST.md (one copy), and the four PLAN.md / QUESTIONS.md / BRAINSTORM.md sets. Directory listings of `questions/`, `responses/`, and `synthesis/` sourced the §2 counts. Per-run SUMMARIES.md and SYNTHESIS.md were deliberately not read.
**Generated:** 2026-06-10.

---

## 1. Headline Finding

The core thesis survives intact across all four levels, and it survives almost word-for-word: **nearly every technical decision in this product is secretly a regulatory, trust, or reversibility decision, so the right v1 is deliberately simple, honestly bounded, instrumented from day one, and treated as the first chapter of a clinical narrative rather than a throwaway.** `min` already states this ("the failure mode is not making the wrong technical choice; it is making a technical choice without noticing it is also a regulatory choice") and every higher level deepens rather than replaces it.

What shifts is not the conclusion but its *center of gravity*. `min`/`low`/`medium` lead with sequencing-and-reversibility and the audit-trail-first discipline. `high` promotes a sharper, partly contrary claim to the front: the privacy architecture that defines the product is simultaneously its **sharpest liability** (no raw data off-device means undetectable drift and an indefensible missed-event claim), and the privacy moat **commoditizes on a clock** that lands inside the runway. That reframe is latent at `low`/`medium` (both flag "privacy claim vs. privacy property") but only `high` makes it the lead.

No run contains a `USER-QUESTIONS.md` file — all questions were model-generated, so there is **no user-supplied-question confound**; each level's content was genuinely discovered by the system.

---

## 2. Structural Differences at a Glance

| Dimension | `min` | `low` | `medium` | `high` |
|---|---|---|---|---|
| Question-generation personas | 0 (generic generator) | 11 | 11 | 16 |
| Total questions | 20 | 47 | 51 | 82 |
| Topic clusters | 5 | 8 | 9 | 13 |
| Brainstormers per cluster | 1 (generic) | 2 (DA + Pragmatist) | 4 (Core 2 + Inner Ring 2) | 7 (Core 2 + Inner 2 + Middle 3) |
| Total persona responses | 5 | 16 | 36 | 91 |
| Synthesis artefacts per cluster | 1 (`_summary`) | 1 (`_summary`) | 3 (`_summary` + `_synthesis` + `attributed`) | 3 (`_summary` + `_synthesis` + `attributed`) |
| Recommended next-step items | 15 | 15 | 15 | 15 |

(Counts: questions from QUESTIONS.md cluster headers; personas from PLAN.md rosters and `questions/by-persona/` listings; responses from `responses/*/` file counts. No run contains a `99_additional` / "Additional Questions" catch-all cluster, so none is counted.)

**Where the investment lives:** Phase 3 (brainstorming) is the dominant cost and the only axis that scales superlinearly — responses go 5 → 16 → 36 → 91 (roughly 18×) while next-step count stays flat at 15. Effort buys *more independent lenses per question*, not a longer deliverable.

---

## 3. Core Insights That Persist Across All Levels

These through-lines appear in every BRAINSTORM.md regardless of effort. This is the fidelity core.

| Through-line | `min` | `low` | `medium` | `high` |
|---|---|---|---|---|
| Technical choices are regulatory choices | "a technical choice… is also a regulatory choice" | deferral "quietly forecloses" the 510(k) | "regulators punish retrofitted rigor" | classification "attaches to actionable claims" |
| The conservative v1 beats the interesting v1 | decision-fusion + global OTA + gating | "rank the constraints, then resolve the fork" | "conservative now, optimize later, gated on field data" | "ship a conservative high-specificity pioneer model" |
| Audit-trail / versioning is a day-one, cheap-now-expensive-later asset | event schema at EVT "costs almost nothing" | model registry: "2 engineer-weeks now vs 6-12 months later" | "build clinical-grade rigor invisibly" | "build it correctly the first time" |
| Tiered / asymmetric architectures dominate | cheap screener gates expensive classifier | silent log / review nudge / real alert | confidence-tiered alerts hard-coded in firmware | three-tier observe / discuss / emergency |
| Trust is copy + reliability, not peak accuracy | limitation disclosure "functions as a feature" | "trust is built by copy and reliability" | "trust earned in the mundane" | "trust collapses faster than any accuracy metric" |
| Wellness label shields less than assumed | both audiences must hold one message | "no protection against a civil subpoena" | "de facto duty of care regardless of FDA class" | wellness framing "insulates less than expected" |
| Measure on real silicon; distrust datasheets | LED current "2-4× above datasheet" | "storm day" power audit on 3 units | "measure on real silicon; distrust the curve" | "measurements the team is currently guessing" |
| Clinical partnerships are structural, not optional | five distinct partnership roles | physician-contact gap in escalation | HIPAA-grade export from launch | contractually lock pilot sites for owned data |
| Power is a precondition for accuracy, not a tax | continuous PPG breaks the budget | "missing accuracy is a patient-safety problem" | "precondition for accuracy rather than a tax" | continuous sensing yields 2-4 days, not 7 |
| Equity / demographic PPG accuracy is a pre-launch gate | (absent — see §6) | Fitzpatrick I-VI before launch | PPG-across-skin-tone as pass/fail gate | PPG drops 20-30% on darker skin; fix in hardware |

Nine of these ten hold from `min` upward; equity is the one through-line `min` omits (§6).

---

## 4. Where Depth Scales with Effort

### 4.1. Surfacing dissent and tension
A clean monotonic gradient. **`min`** reads as a single confident synthesizing voice — its "Central Tensions" are tensions *in the problem* (clinical vs. consumer posture), not disagreement *between analysts*. **`low`** introduces the first genuine inter-lens tension by running two named lenses (feasibility vs. risk) and reporting where they "converged… traded off"; the CPU-only battery fallback is its first explicit disagreement (escape hatch vs. "not a fallback"). **`medium`** adds texture with four lenses per cluster and preserves dissent inside summaries ("a dissenting strand worth keeping," the over-tiering counter-test). **`high`** quantifies convergence: "All seven lenses agree," "Six lenses reframe… One lens overturns that consensus," "a near-unanimous build-versus-defer finding" — a signal lower levels structurally cannot emit because they lack the lens count to count.

### 4.2. Deepening of the critique (how radically each level questions the brief)
Ranked least to most radical: **`min` < `medium` < `low` < `high`.** `min` accepts the REQUEST's framing wholesale and answers within it. `medium` interrogates the brief's *implicit priorities* (reverses the sensitivity-first instinct, names reversibility as the real cut criterion) but stays inside the product as described. `low` goes further on one axis — it rejects the four-axis "balance" framing outright as "a political fiction" and forces the unasked AFib-vs-apnea primacy fork. `high` interrogates *foundations*: whether the NPU is needed at all (a decision tree may suffice), whether the wrist's SNR floor makes the goal physically unrecoverable, whether 7 days is even the right target, and whether the privacy guarantee is a net negative.

### 4.3. Concepts introduced only at higher levels

| Concept | First appears at |
|---|---|
| Feasibility-vs-risk dual lens; "deferral that forecloses" as a named pattern | `low` |
| AFib-vs-apnea primacy as an unresolved architectural fork | `low` |
| Equity as an architectural (not values) problem; companion-app-as-safety-gate | `low` |
| Reversibility-debt as the explicit cut criterion ("can we undo this") | `medium` |
| "Identity, not raw-data location, is the boundary that matters" | `medium` |
| Quantization floor set by *regulatory tier*, not energy budget | `medium` |
| Correlated sensor failure dropping fused accuracy below any single sensor | `medium` |
| Privacy moat as a *capability gap* that competitors compound (timed: 18-36 mo) | `high` |
| NPU possibly unnecessary; analog R-R-interval gate before the NPU | `high` |
| Thermodynamic/Landauer floor on inference energy | `high` |
| Attestation logs / deletion receipts ("verifiable privacy") | `high` |
| Conway's Law: firmware-ML inference contract as the highest-risk seam | `high` |
| Competitive moat lives in owned clinical data, not silicon (commodity in 18-24 mo) | `high` |
| Secondary-stakeholder capture (employer/insurer/spouse); caregiver-inversion consent | `high` |

### 4.4. Executive-summary evolution
- **`min`:** "Every design decision carries downstream regulatory weight — and the conservative v1 is the right one."
- **`low`:** "'Balance' is the wrong frame; rank the constraints, resolve the detection fork, and make the deferred decisions explicit and reversible now."
- **`medium`:** "The hard part is sequencing and reversibility, not the ML — ship simple, instrument everything, settle only the irreversible decisions now."
- **`high`:** "The privacy architecture that defines the product is also its sharpest liability and commoditizes on a clock — build a sanctioned improvement channel before launch."

---

## 5. Productive Drift Between Levels

Four zones where the recommendation sharpens (not contradicts) as effort rises.

**Zone A — The constraint-balancing frame.**
`min`: accepts accuracy/latency/power/privacy as four axes to balance. `low`: rejects this — sensitivity-at-specificity is the sole load-bearing constraint, the rest derive. `medium`: same ranking, adds "power is a precondition for accuracy, not a tax." `high`: pushes to first principles — asks whether wrist SNR makes the target physically reachable at all. *Direction: from balancing → ranking → questioning the target.*

**Zone B — The model-update / privacy relationship.**
`min`: global OTA model, periodic firmware updates, clean. `low`: notes no-cloud means "no feedback loop that makes it verifiably improving." `medium`: firmware OTA now, federated deferred "only if drift is demonstrated." `high`: the no-raw-data rule actively *blinds* the team to silent drift and is "indefensible" in a missed-event claim — requires a pre-built drift-detection + opt-in federated channel. *Direction: from solved → caveated → reframed as the central liability.*

**Zone C — Equity and access.**
`min`: silent (not raised). `low`: surfaces companion-app-as-safety-gate and Fitzpatrick validation as a "neither-lens gap" in 7 of 8 clusters. `medium`: hardens PPG-across-skin-tone and motor-dexterity into pre-launch pass/fail gates. `high`: quantifies (PPG accuracy drops 20-30% on darker skin) and adds "fix in hardware first — training a model to see through a broken signal is overfitting." *Direction: from absent → flagged → gated → quantified-and-engineered.*

**Zone D — The competitive moat.**
`min`: trust infrastructure (auditable privacy, published validation, cardiologist endorsement) is the moat. `low`/`medium`: largely silent as a standalone theme. `high`: dedicates a full cluster — the moat is *not* silicon (commodity in 18-24 months) nor privacy-as-principle (matchable) but owned clinically-validated data + interpretable model + regulatory scaffolding. *Direction: from trust-infrastructure → a timed, defensibility-tested moat thesis.*

**Zone E — Alert design.**
`min`: three-zone confidence indicator, free core alerts. `low`: tiered confidence (silent log / nudge / real alert), copy is the liability lever. `medium`: tiering hard-coded in firmware, plus the counter-test that "a terrified 3am user collapses all tiers." `high`: full tiered-*credentialing* model (observe / discuss with doctor / emergency or partner-routed) modeled on hospital authority tiers. *Direction: from indicator → tiers → firmware-enforced tiers → credentialed authority distribution.*

---

## 6. Fidelity Check — What Gets Lost at Lower Levels

Concrete insights absent below a given level:

- **Equity is entirely absent at `min`.** The companion-app-as-safety-gate problem, demographic PPG validation, and post-alert access for low-touchpoint users — a through-line in `low`/`medium`/`high` — simply do not appear in the `min` output. `min` does flag data-labeling and reimbursement as "conspicuous absences," but never reaches the population it serves.
- **The AFib-vs-apnea primacy fork appears only at `low`+.** `min` treats both conditions as a single detection problem; `low` names them as "structurally opposite inference tasks" with opposite latency budgets, and every higher level carries the fork forward (`high` resolves it: validate arrhythmia deeply, defer apnea).
- **Inter-lens dissent is unavailable below `low`.** `min` cannot show disagreement because it runs one voice; the entire feasibility-vs-risk tension structure is a `low`+ artifact.
- **Reversibility-debt as an explicit cut criterion is `medium`+.** `min`/`low` value audit trails but do not frame "can we undo this" as the decision rule that overrides effort-saved.
- **`high`-only insights** (the counterpoint to §3): the privacy-as-capability-gap *with a timeline*; the NPU-may-be-unnecessary finding and analog R-R gate; attestation/deletion-receipt "verifiable privacy"; Conway's-Law seam analysis; the commoditization clock on silicon and privacy; secondary-stakeholder capture and the caregiver-inversion consent collapse. None of these survive downward — they are the irreplaceable yield of seven lenses across thirteen clusters.

---

## 7. When Each Level Earns Its Cost

**`min`** is best for a fast, coherent orientation pass — a single authoritative read of the problem space that lands the load-bearing thesis (technical = regulatory) and a credible 15-item action list in five clusters. Its characteristic weakness is invisible blind spots: it omits equity entirely and presents contestable calls (e.g., decision-fusion v1) with unwarranted confidence, because there is no second voice to object.

**`low`** earns its cost when you need the *first crack in the consensus* — it introduces structured dissent for the cost of one extra lens, and that dissent immediately surfaces the two biggest reframes (reject four-axis balance; name the AFib/apnea fork) and the equity gap. Its weakness is that two lenses can identify a tension but rarely resolve it or weigh how widely it is shared.

**`medium`** is the workhorse for an actual plan: four lenses per cluster give enough texture to preserve minority positions ("a dissenting strand worth keeping") and to elevate reversibility into a usable decision rule, while staying readable. Its weakness is that it interrogates the brief's priorities but not its foundations — it does not ask whether the NPU, the 7-day target, or the privacy model are the right premises.

**`high`** earns its (roughly 6× `medium`) cost only when the foundations are genuinely in question and quantified convergence matters. It is the only level that questions whether the device should exist as specified, that puts a *clock* on the moat and the capability gap, and that can report "7 of 7 lenses agree." Its weakness is volume and diminishing marginal novelty per response: 91 responses produce ~3,300 words, the same length band as `medium`, so the surplus value is concentrated in a handful of foundational reframes rather than spread evenly.

---

## 8. Final Summary

- **Preservation:** The core thesis (technical decisions are regulatory/trust/reversibility decisions; ship a conservative, instrumented, honestly-bounded v1) holds verbatim from `min` to `high`, alongside nine other through-lines (§3). No USER-QUESTIONS.md in any run, so the fidelity is genuine, not a shared-input artifact.
- **Scaling:** Effort scales lenses, not deliverable length — responses go 5 → 16 → 36 → 91 while next-steps stay at 15. The yield is dissent (none → first tension → texture → quantified convergence) and depth of critique (accept brief → reframe priorities → question foundations).
- **Divergences:** Recommendations sharpen rather than contradict across five zones — constraint-balancing, model-update/privacy, equity, competitive moat, and alert design — each moving toward a more interrogating, better-instrumented position.
- **Irreplaceable high-effort insights:** privacy-as-capability-gap on an 18-36-month clock; the NPU-may-be-unnecessary finding and analog R-R gate; verifiable/attestable privacy; Conway's-Law seam analysis; the silicon-commoditization moat thesis; and secondary-stakeholder/caregiver-inversion consent. The single most consequential cross-level loss is **equity, which is wholly absent at `min`** and only becomes architectural at `low`+.

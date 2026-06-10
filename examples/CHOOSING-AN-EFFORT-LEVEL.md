# Choosing an Effort Level

Idea Symphony runs at four effort levels — `min`, `low`, `medium`, `high`. The level you pick is the single biggest driver of API cost and session time, so this guide explains what each level actually buys you, grounded in live data: the same 10 brainstorming topics in this directory were each run at all four levels (40 sessions total), then compared level-by-level. Each topic folder contains an `effort-comparison.md` with the full analysis; this document summarizes what holds across all ten.

**Generated:** 2026-06-10, from the 10 topics in `examples/` (career-change, food-truck, habit-tracker, mobile-app, property-management, school-consolidation, space-party, tool-library, wearable-device, youth-mentorship).

---

## The short answer

| | `min` | `low` | `medium` (default) | `high` |
|---|---|---|---|---|
| **Approx. output tokens** | ~46k | ~150k | ~380k | ~660k |
| **Relative cost** | 1× | ~3.3× | ~8.3× | ~14.6× |
| **Brainstormers per topic cluster** | 1 generic | 2 personas | 4 personas | 7 personas |
| **Typical persona responses (total)** | ~5 | ~18 | ~38 | ~87 |
| **Final BRAINSTORM.md length** | ~2,200 words | ~2,900 words | ~3,100 words | ~3,600 words |
| **Best for** | A fast first-pass plan from a brief you trust | Checking whether the brief itself might be wrong | General-purpose strategy work | Decisions that are expensive to reverse |

> **How the token estimates were made.** We measured all model-generated text saved to disk per session (plans, questions, persona responses, syntheses, final output — excluding user-supplied inputs), averaged across the 10 topics, and converted at ~4 characters per token. These are *output*-token approximations; real API cost also includes input tokens, which grow with the number of subagents spawned, so actual cost scales at least this steeply. Time on task scales roughly in line with the token figures.

---

## The most important finding: the conclusions don't change — the scrutiny does

Across all 10 topics, **the core thesis survived intact from `min` to `high`**. Not once did a higher level overturn a lower level's central conclusion. A team that runs `min` gets the same strategic skeleton as a team that runs `high`.

What changes is everything around that skeleton:

- **How radically the input brief gets questioned.** `min` accepts your framing and works inside it. `high` routinely attacks the premise. On career-change, only `high` questioned whether a law degree was the right instrument at all. On food-truck, the truck-to-fleet-to-restaurant growth ladder went from accepted (`min`) to "an unexamined cultural script" (`medium`) to reframed as a research instrument (`high`). On tool-library, `high` named the word "library" itself as the riskiest assumption in the brief.
- **Whether disagreement is visible.** `min` speaks in one confident voice. `low` introduces the first genuine tension between two perspectives. `medium` adds texture and preserves who-said-what in attributed synthesis files. `high` is the only level that can *quantify* robustness — "six of seven perspectives independently reached this conclusion" — because no smaller panel can produce that statistic.
- **Premise-level reframes that only appear at the top.** Every topic's comparison found insights with a hard floor: school-consolidation's shared-services hybrid (60–85% of the savings, no ballot measure) appears only at `high`; habit-tracker's "churn is a goal-setting failure, not a UX failure" appears only at `high`; the unvalidated-assumptions frame ("test the brief before building") generally first appears at `low`.

Notably, the final report barely grows — about 2,200 words at `min` versus 3,600 at `high` (1.6×) while total generation grows ~15×. **You are not paying for a longer report. You are paying for how thoroughly the report's claims were stress-tested before they reached you.**

---

## Where the cost actually goes

The expense is concentrated in Phase 3 (parallel persona brainstorming), and it compounds: more question-generation personas produce more topic clusters, and each cluster gets a larger persona panel.

| What scales | `min` → `high` growth |
|---|---|
| Questions generated | ~3–4× |
| Topic clusters | ~2–2.5× |
| Persona responses (Phase 3) | **~15–19×** |
| Synthesis artifacts per cluster | 1 summary → 3 (attributed + synthesis + summary) |
| Recommended next steps | flat (~15 at every level) |

The flat next-step count is worth noticing: every level hands you roughly the same number of actions. Higher levels change *which* actions make the list and how much confidence you can place in them.

---

## What each level is like, in practice

**`min` — one analyst, one pass (~46k tokens).**
Reads like a competent strategist organizing your brief into a buildable plan. It is surprisingly concrete — across the 10 topics, `min` runs produced specific numbers, thresholds, and sequencing that survived unchanged at higher levels. Its structural weakness: it cannot tell you your brief is solving the wrong problem, because nothing in the session is positioned to disagree with it.

**`low` — the first argument (~150k tokens, ~3.3×).**
Two personas (typically a Devil's Advocate and a Pragmatist) work every cluster. This is the cheapest level at which the brief stops being treated as fact: `low` runs were consistently the first to say "these are unvalidated assumptions — test them before acting." On mobile-app, `low` was where "validate the diagnosis before cutting features" appeared. The characteristic weakness: two lenses can't cover the relational, equity, and emotional dimensions, and the comparisons show both personas repeatedly flagging gaps neither could reach.

**`medium` — the default, and the best general-purpose tradeoff (~380k tokens, ~8.3×).**
Four personas per cluster, plus a richer synthesis layer (three artifacts per cluster, so every claim is traceable to who made it). This is the level where structural reframes appear reliably rather than occasionally — habit-tracker's four-state habit model, tool-library's "relationships are the product," food-truck's "the ladder is a script." If you're not sure which level to pick, pick this one.

**`high` — the stress test (~660k tokens, ~14.6×).**
Seven personas per cluster, drawn from a wider ring of perspectives. Two things exist only here: premise-questioning reframes (the kind that imply a different project than the one you described) and convergence counts, which tell you *how robust* a recommendation is across independent perspectives. The honest caveat from the data: most of `high`'s core recommendations already exist at lower levels. Run `high` when the decisions on the table — a data model, a career commitment, a ballot measure, a lease — cost more to reverse than the session costs to run.

---

## A rule of thumb

- **Trust your brief and want a plan today?** `min`.
- **Suspect your brief might contain wrong assumptions?** `low` — its signature move is telling you what to validate before you act.
- **Doing real strategy work?** `medium`.
- **About to commit to something expensive to undo?** `high` — it's the only level that can tell you both "here's the framing you didn't question" and "N of M independent perspectives agree."

Effort levels are also not mutually exclusive across time: several comparisons note that `min` output is a strict subset of what higher levels produce, so starting at `min` and re-running higher on the same request loses nothing.

---

## The evidence

Each topic's full level-by-level analysis, including structural tables, persisting-insight matrices, and what-gets-lost inventories:

| Topic | Domain | Comparison |
|---|---|---|
| career-change | Personal decision | [effort-comparison.md](career-change/effort-comparison.md) |
| food-truck | Small business | [effort-comparison.md](food-truck/effort-comparison.md) |
| habit-tracker | Software product | [effort-comparison.md](habit-tracker/effort-comparison.md) |
| mobile-app | Software product | [effort-comparison.md](mobile-app/effort-comparison.md) |
| property-management | Small business | [effort-comparison.md](property-management/effort-comparison.md) |
| school-consolidation | Civic / policy | [effort-comparison.md](school-consolidation/effort-comparison.md) |
| space-party | Personal / event | [effort-comparison.md](space-party/effort-comparison.md) |
| tool-library | Community nonprofit | [effort-comparison.md](tool-library/effort-comparison.md) |
| wearable-device | Hardware product | [effort-comparison.md](wearable-device/effort-comparison.md) |
| youth-mentorship | Community program | [effort-comparison.md](youth-mentorship/effort-comparison.md) |

The comparisons were generated by the reusable prompt in [EFFORT-COMPARISON-PROMPT.md](EFFORT-COMPARISON-PROMPT.md).

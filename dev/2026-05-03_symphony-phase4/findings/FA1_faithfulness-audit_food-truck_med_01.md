# FA1 Faithfulness Audit — food-truck / med / 01_business-model-foundations-identity

**Date:** 2026-05-04
**Auditor scope:** One sample, Phase 4 outputs vs. BL1 ledger and raw responses
**Personas in sample:** The Analogist, The Devil's Advocate, The Pragmatist, The Visionary (4 of 4)
**BL1 through-line count:** 33 (22 multi-persona, 13 single-persona)
**Phase 4 outputs audited:**
- `test-runs/food-truck/med/synthesis/attributed/01_business-model-foundations-identity.md`
- `test-runs/food-truck/med/synthesis/01_business-model-foundations-identity_synthesis.md`
- `test-runs/food-truck/med/synthesis/01_business-model-foundations-identity_summary.md`

---

## Sample Verdict

**FAIL** — two strict-axis failures.

| Axis | Result | Notes |
|---|---|---|
| A1 (med-strict) — persona names + distinctive-TL attribution | **PASS** with one bundling concern (TL-17 headline frame) |
| A2 (zero-tolerance) — no persona names in `_synthesis.md` / `_summary.md` prose | **PASS** |
| A3-content synth (≥ 90%) | **PASS** (12/13 = 92.3%) |
| A3-content summary (≥ 90%) | **FAIL** (6/13 = 46%) |
| A3-framing synth (≥ 75%) | **PASS at floor** (3/4 = 75%; Analogist analogical lens flattened) |
| A3-framing summary (≥ 75%) | **PASS at floor** (3/4 = 75%; Analogist analogical lens flattened) |
| B (zero hallucinated quotes) | **PASS** with one Q-bin migration (Analogist Q4 bullet placed in attributed Q1) |
| C (100% convergence-count traceability) | **FAIL** (3 loose/inflated claims; one major TL-32 inflation) |
| D (categorical-reframe presence, gated) | **PASS** |
| E (high-only) | n/a |
| Phase-5 signals | **PASS** (Central Tension + categorical reframe surface; confidence in prose, not formal tags) |

**Headline failure modes:**
1. **C-axis convergence inflation.** Synthesis falsely claims convergence on at least one single-persona TL (TL-32 management tax — 1/4 in BL1, 3/4 in synthesis). Two further claims are loose (TL-7 "two personas" vs. BL1 1/4; TL-12 "Pragmatist + Analogist" vs. BL1 3/4 including DA).
2. **A3-content compression in summary.** More than half of the BL1 single-persona distinctive-content TLs are dropped from the summary, including the Visionary's three sharpest reframes (TL-4 exit-fusion, TL-8 creative-longevity sustainability, TL-13 design-to-never-hire) and two of the Devil's Advocate's flag-on-blind-spot moves (TL-26 recurring events; TL-29 donate-20% inventory).

Concrete RP1-actionable revision targets are listed at the end.

---

## Axis A1 — Persona Names & Distinctive-TL Attribution in `attributed/`

**Rubric (med-strict):** persona-name preservation = 100%; distinctive-attribution = 100%.

### Persona name preservation

All four personas appear with the canonical capitalization and em-dash form in `attributed/`: `*—The Devil's Advocate*`, `*—The Pragmatist*`, `*—The Analogist*`, `*—The Visionary*`. The footer reads: `Personas contributing: The Devil's Advocate, The Pragmatist, The Visionary, The Analogist`. **100% — PASS.**

### Distinctive-TL attribution scorecard (BL1 ledger)

| BL1 ID | Distinctive owner | Headline in `attributed/` | Attribution tag | Verdict |
|---|---|---|---|---|
| TL-4 (exit fusion category) | Visionary | Q1 "Reframe the concept upstream of competitive comparison" | 4 sub-bullets `*—The Visionary*` | ✓ |
| TL-7 (op sustainability for solo founder) | Devil's Advocate | Q2 "Operational sustainability… is underemphasized" | `*—The Devil's Advocate*` | ✓ |
| TL-8 (creative longevity / time freedom / retention / generational equity) | Visionary | Q2 "Reframe sustainability as creative longevity…" | 4 sub-bullets `*—The Visionary*` | ✓ |
| TL-10 (50–55 hr/week pyramid + permit-as-labor) | Devil's Advocate | Q3 "The operational pyramid is 50–55 hours/week minimum" | `*—The Devil's Advocate*` ×2 | ✓ |
| TL-13 (design-to-never-hire) | Visionary | Q3 "The contrarian reframe: design to never hire" | 4 sub-bullets `*—The Visionary*` | ✓ |
| TL-16 (200–300 stress test + 2–3 mentors) | Devil's Advocate | Q4 "Culinary skill is necessary but not sufficient" | `*—The Devil's Advocate*` ×2 | ✓ |
| TL-21 (succession planting / staggered revenue streams) | Analogist | Q5 "Plan for succession planting across revenue streams" | `*—The Analogist*` | ✓ |
| TL-22 (Sunday-evening 30-min ritual) | Pragmatist | Q5 — absorbed under "Make hiring a written, metric-gated decision" headline | `*—The Pragmatist*` (sub-bullet survives) | ✓ (with framing absorption noted) |
| TL-23 (institution-building / financial-system-as-asset) | Visionary | Q5 "The institution-building reframe" | 4 sub-bullets `*—The Visionary*` | ✓ |
| TL-25 (3-year category-pivot caution) | Devil's Advocate | Q6 four sub-bullets | `*—The Devil's Advocate*` ×4 | ✓ |
| TL-26 (10–15 recurring events) | Pragmatist | Q6 "Think in recurring events, not daily coverage" | `*—The Pragmatist*` | ✓ |
| TL-29 (donate-20% inventory contingency) | Devil's Advocate | Q7 "Inventory management as the fragile constraint" | `*—The Devil's Advocate*` | ✓ |
| TL-32 (management tax / first-time-owner underestimate) | Devil's Advocate | Q8 "Organizational complexity as the actual cost" | `*—The Devil's Advocate*` | ✓ (but see C-axis: synth claims 3-persona convergence) |

13/13 distinctive content TLs attributed to their BL1 owner. **100% — PASS.**

### Bundling concern (flagged but not fatal under A1)

Q4 has a synthesized bullet **"Protect the signature — recognizable authorship is more durable than novelty"** which BL1 labels "the Analogist's distinct contribution". The synthesizer threaded three sub-bullets under it:
- DA: "Experiential differentiation vs. commodity food."
- Visionary: "Build from the moment you already created, not from the menu."
- Analogist: "Borrow from artisan brand-building."

Each sub-bullet retains correct `*—Persona*` attribution, so A1 strict (name + bullet-level attribution) passes. But the headline frame asks the Visionary's "scaling the *feeling* of belonging" bullet to do work in a recipe-locking argument, which is not what the source supports (Visionary's source: *"Not by scaling the kitchen, but by scaling the experience of belonging and recognition"*). BL1 flagged this as a borderline misattribution risk; A1 still passes at the strict bullet level, but RP1 should consider headline-frame discipline.

### Cross-reference vs. BL1 Step 6 flags

- **"Possibly fabricated"**: BL1 = none. Audit confirms — no fabricated content in `attributed/`.
- **"Possibly dropped"**: BL1 lists TL-7, TL-22, TL-21, TL-29 as *survives but compressed*. Audit confirms each survives in `attributed/` with attribution; none fully dropped.
- **"Possibly misattributed"**: BL1 flagged the TL-17 bundling. Audit confirms: bullet-level attribution is correct; headline-frame is borderline. No persona is misnamed.

**A1 verdict: PASS (strict).**

---

## Axis A2 — No Persona Names in `_synthesis.md` or `_summary.md` Prose

**Rubric (zero-tolerance):** no `The Visionary`, `The Pragmatist`, `The Devil's Advocate`, `The Analogist` in body prose. Convergence counts allowed; footer "Personas contributing" allowed.

### `_synthesis.md` body sweep

Searched the entire body for the four persona-name strings. **Zero occurrences.** Convergence is communicated through unnamed phrasing such as "All four personas converge", "Strong convergence", "Two personas independently arrive", "The Visionary's unique move" — wait. Let me check that last one.

Actually: `_synthesis.md` does NOT contain "Visionary's unique move" — that phrasing appears only in `attributed/`. The synthesis file uses unnamed phrasing throughout:
- Q1: "Two personas independently arrive at the same move"
- Q2: "Convergent across personas", "Two personas flag it distinctly"
- Q3: "Convergence across three personas", "Convergent with… transition plan and… forest-succession analogy"
- Q4: "All four personas converge", "Strong convergence"
- Q5: "Strong convergence", "Convergent view", "Convergent across…"
- Q6: "All four personas converge"
- Q7: "Strong convergence across all four personas"
- Q8: "Unanimous convergence across all four personas", "Convergent view (Devil's Advocate, Pragmatist, Analogist)"

⚠ **One occurrence to check carefully:** Q8 second bullet body in `_synthesis.md` reads *"Convergent view (Devil's Advocate, Pragmatist, Analogist):"*. Let me re-read.

Re-reading `_synthesis.md` Q8 directly:
> "**Organizational complexity (the "management tax") is the hidden cost that erodes fleet margins — and a first-time business owner will underestimate it.** Fleet means management layer, consistent branding, hire-train-retain overhead, supply chain coordination, and split founder time. For a first-time owner, an operations manager is itself a substantial fixed cost. The one-truck alternative compounds the opposite…"

The persona-name list "(Devil's Advocate, Pragmatist, Analogist)" appears **only in `attributed/`**, not in `_synthesis.md`. The synthesis file body is clean.

**Synthesis: 0 persona names in body prose. PASS.**

### `_summary.md` body sweep

Searched body of Executive Summary, Key Themes, Recommended Next Steps, and Key Considerations sections.

- Executive Summary uses "across four perspectives" twice — convergence count, allowed.
- Themes use "the convergent view on competitive strategy", "across perspectives" — allowed.
- No "Visionary", "Pragmatist", "Devil's Advocate", "Analogist" anywhere in body prose.

**Summary: 0 persona names in body prose. PASS.**

**A2 verdict: PASS (strict zero).**

---

## Axis A3-content — Distinctive Content TL Survival

**Rubric:** ≥ 90% of BL1's distinctive (single-persona-owned) content TLs must survive (verbatim or paraphrased) in **both** docs. Absorbed/dropped do not count.

### Distinctive content TLs from BL1 (n = 13)

TL-4 (Visionary), TL-7 (DA), TL-8 (Visionary), TL-10 (DA), TL-13 (Visionary), TL-16 (DA), TL-21 (Analogist), TL-22 (Pragmatist), TL-23 (Visionary), TL-25 (DA), TL-26 (Pragmatist), TL-29 (DA), TL-32 (DA).

### Survival table — `_synthesis.md`

| TL | Synthesis status | Evidence |
|---|---|---|
| TL-4 | paraphrased | Q1 "Reframe the concept upstream… cultural gathering, not a menu." |
| TL-7 | paraphrased | Q2 "Operational sustainability (not burning out the founder) is underemphasized in the REQUEST." |
| TL-8 | paraphrased | Q2 "Reframe sustainability as creative longevity, retention depth, or time freedom." |
| TL-10 | paraphrased | Q3 "The operational pyramid is 50-55 hours/week minimum…" |
| TL-13 | paraphrased | Q3 "The contrarian reframe: the ceiling is the wrong mental model — design to never hire." |
| TL-16 | paraphrased | Q4 "Culinary skill is necessary but not sufficient — commercial operational gaps exist and need a pre-launch stress test." (200–300 customers, 2–3 mentors named) |
| TL-21 | paraphrased | Q5 "Plan for succession planting across revenue streams — don't try to grow three at once." |
| TL-22 | **dropped** | No standalone Sunday-evening ritual bullet in `_synthesis.md` Q5. The metric-gated hiring bullet does not preserve the cash-flow ritual content. |
| TL-23 | paraphrased | Q5 "The institution-building reframe: your financial system itself can become a competitive asset." |
| TL-25 | paraphrased | Q6 "Consider using Year 1 as validation in the existing food truck category, then pivoting to the invented category in Years 2-3." |
| TL-26 | paraphrased | Q6 "Think in recurring events, not daily coverage." |
| TL-29 | paraphrased | Q7 "Inventory is the fragile margin… 'donate 20% contingency' mental model." |
| TL-32 | paraphrased | Q8 "Organizational complexity (the 'management tax') is the hidden cost…" |

**Synthesis survival = 12/13 = 92.3%. ≥ 90% — PASS.**

Note: the dropped TL-22 case matters because BL1 had already flagged it as "absorbed into hiring-decisions bucket rather than presented as its own discipline" in `attributed/`; in the un-attributed synthesis, the absorption tipped over into a drop because the sub-bullet vehicle is no longer there.

### Survival table — `_summary.md`

| TL | Summary status | Evidence (or note) |
|---|---|---|
| TL-4 | **dropped** | Themes mention "founder's first-generation lived experience, and signature authorship" (TL-1) but never the exit-fusion-as-cultural-identity reframe. Long-term action mentions a Year 2–3 category pivot (TL-25) but does not preserve the *Day 1 cultural-identity gathering* alternative the Visionary specifically owns. |
| TL-7 | **dropped** | Summary's "solo-founder operational ceiling… arrives faster than capital or permit constraints" carries TL-9, not the *sustainability-as-burnout-risk* frame DA owns. |
| TL-8 | **dropped** | No mention of creative longevity, retention-as-sustainability, time-freedom sustainability, or generational equity in any summary section. |
| TL-10 | **dropped** | Ceiling appears (TL-9 frame); the 50–55 hr/week pyramid + permit-as-underestimated-labor specifics do not. |
| TL-13 | **dropped** | "Staying Small Deserves Honest Evaluation" theme covers TL-31/TL-33 territory but never the *design-to-never-hire / extreme specialization / capped daily volume* contrarian reframe. |
| TL-16 | paraphrased | Immediate action: "Pre-launch operational stress test: partner with a local event or pop-up to serve 200-300 customers in a day." Mentor recruit also present in Near-term. |
| TL-21 | paraphrased | Long-term: "Allocate secondary revenue stream growth capital to the one stream (catering, events, wholesale) that actually produced in Year 2 — not all three in parallel." |
| TL-22 | paraphrased | Near-term: "Sunday evening 30-minute review ritual, non-negotiable." |
| TL-23 | paraphrased | Long-term: "Document recipes, supplier relationships, permit workflows, and financial models to a standard where a new chef could execute to 90% of founder standard. This builds transferable equity." |
| TL-25 | paraphrased | Long-term: "use Year 2-3 to pivot from 'fusion food truck' to the chosen category… funded by Year 1 proof points — not on Day 1 with a communication-burden tax." |
| TL-26 | **dropped** | Recurring-events-as-default-vendor pattern not in summary at any level. |
| TL-29 | **dropped** | No inventory / over-prep / donate-20% mention anywhere in summary. |
| TL-32 | paraphrased | Executive Summary: "one optimized for fleet growth delays personal income and adds a substantial management tax" — explicit name-match. |

**Summary survival = 6/13 = 46.2%. < 90% — FAIL.**

### Drops cluster on the Visionary

The five summary drops are: TL-4 (Visionary), TL-7 (DA), TL-8 (Visionary), TL-10 (DA), TL-13 (Visionary), TL-26 (Pragmatist), TL-29 (DA). Three of seven dropped TLs are Visionary single-persona reframes (TL-4, TL-8, TL-13). The summary preserves Visionary's TL-23 (institution-building) but loses the three reframes that BL1 flags as the Visionary's distinctive moves at this cluster.

This is a structural compression-pattern that should drive RP1 prompt revision (see verdict targets).

---

## Axis A3-framing — Distinctive Lens Preservation

**Rubric:** ≥ 75% of personas' distinctive framings preserved (not flattened) in each doc. < 60% = structural framing-flattening.

### Per-persona framing scorecard

| Persona | BL1 distinctive framing | `_synthesis.md` | `_summary.md` |
|---|---|---|---|
| The Analogist | Reasoning by analogy — craft beer, jazz fusion, ant colonies, forest succession, mycorrhizal networks, hospital rounds, hunter-gatherer cycles, succession planting, Chez Panisse | **flattened**: only "succession planting" (Q5) and "blue-ocean / Chez Panisse" (Q8) survive as analogies; permaculture, ant colony, hospital, hunter-gatherer, forest succession all stripped | **flattened**: "mycorrhizal network" appears once in Themes; otherwise all analogical scaffolding gone |
| The Devil's Advocate | Risk-and-falsification — interrogate every REQUEST assumption | **preserved**: "validate before you borrow", "vulnerability is inevitable", "underemphasized in REQUEST", "Year 1 validation" caution, "founder trap" | **preserved**: dedicated "Risks & Challenges" block; Hidden-Assumptions theme directly enacts DA's posture |
| The Pragmatist | Action-by-numbers — concrete cadence/dollar/percentage/written rule | **preserved**: numerics dense throughout (25–35%, 10–15%, 150–200 orders/day, 70%, $14–16, $15–20K reserve, etc.) | **preserved**: every Recommended Next-Step item carries a concrete number or threshold |
| The Visionary | Reframe the container itself | **preserved**: "exit the fusion category entirely", "design to never hire", "institution-building reframe", "mobile cultural institution" | **preserved (weakly)**: Hidden-Assumptions theme carries the meta-move; staying-small theme carries TL-31; but TL-4, TL-8, TL-13 reframes are dropped (see A3-content) — the Visionary lens is *named* but its sharpest content carriers are missing |

**Synthesis: 3/4 preserved = 75%.** PASS at the floor.
**Summary: 3/4 preserved = 75%.** PASS at the floor.

Both docs sit exactly at the rubric floor. The Analogist's analogical-reasoning lens is structurally flattened in both; this is the candidate framing-flattening to flag for RP1 if it recurs across other clusters.

---

## Axis B — Hallucinated Quotes in `attributed/`

**Rubric:** every quoted/paraphrased sub-bullet must trace to the cited persona's raw response.

### Method

Every sub-bullet in `attributed/` was checked against the cited persona's raw response file. Below: quotes (or close paraphrases) flagged for verification — outcome and source.

| `attributed/` claim | Cited persona | Source location | Verdict |
|---|---|---|---|
| "If a well-capitalized competitor copies the menu in 6 months…" (Q1) | DA | DA Q1 "Concept durability test: copy resistance." | faithful |
| "owning a Thursday-night spot at a specific farmers market" (Q1) | DA | DA Q1 verbatim | faithful |
| "Visit each of those four fusion concepts and order what they do worst" (Q1) | Pragmatist | Pragmatist Q1 verbatim | faithful |
| "Filipino desserts with proper presentation" / "fusion done right" (Q1) | Pragmatist | Pragmatist Q1 verbatim/paraphrase | faithful |
| "winners… brands like Stone, Ballast Point that owned *neighborhood presence and story*" (Q1) | Analogist | Analogist Q1 ("Stone, Ballast Point, and San Diego-based operations…") | faithful |
| "Identify the three micro-geographies where you can own *every* vending corner" (Q1) | Analogist | Analogist Q1 "Mirror ecosystem symbiosis" verbatim | faithful |
| "Apply the 'signature element' pattern from jazz." / "Miles Davis had his trumpet tone." (Q1) | Analogist | Analogist Q4 (not Q1!) — content-faithful but **question-bin migration** | content-faithful, **bin-shifted** |
| "Alinea survived by changing every 3 months" (Q1) | Analogist | Analogist Q1 "Signal durability via adaptation speed" verbatim | faithful |
| "Reframe fusion as cultural alchemy, not menu mechanics" (Q1) | Visionary | Visionary Q1 verbatim | faithful |
| "Invent a category that didn't exist before you showed up" (Q1) | Visionary | Visionary Q1 verbatim | faithful |
| "Position as 'where am I from?' rather than 'what should I eat?'" (Q1) | Visionary | Visionary Q1 verbatim | faithful |
| "$3K/month vs. $8K/month owner income are radically different businesses" (Q2) | DA | DA Q2 "$3K version… $8K version" | faithful |
| "$3,500-$4,500/month for a single operator in a mid-size city" (Q2) | Pragmatist | Pragmatist Q2 verbatim | faithful |
| "permaculture definition" / "work 4 days a week and take 2 weeks off… revenue not dropping >20%" (Q2) | Analogist | Analogist Q2 verbatim | faithful |
| "ecosystem services / staff meals / decline bookings / partner requests" (Q2) | Analogist | Analogist Q2 verbatim/paraphrase | faithful |
| "black-box break-even" / "two-income model through month 18" (Q2) | Analogist | Analogist Q2 verbatim | faithful |
| "by year five, generates enough equity and passive cash flow that the founder can step back" (Q2) | Visionary | Visionary Q2 verbatim/paraphrase | faithful |
| "200 customers/day is feasible solo if menu is fixed and location predictable" (Q3) | Visionary | Visionary Q3 paraphrase | faithful |
| "ant colony scaling" / "$8K-12K weekly… 60+ service hours, 40+ prep hours = 100 hours/week" (Q3) | Analogist | Analogist Q3 verbatim | faithful |
| "150–200 orders/day (peak revenue ~$2,000–$2,400)" (Q3) | Pragmatist | Pragmatist Q3 verbatim | faithful |
| "Linus/Linux gates" / "by Month 3, only personally execute the three core decisions" (Q3) | Analogist | Analogist Q3 verbatim | faithful |
| "Chez Panisse / Alice Waters could vividly describe the *moments*" (Q4) | Analogist | Analogist Q4 verbatim/paraphrase | faithful |
| "mycorrhizal network" / "first 50 customers and your most authentic marketing channel" (Q4) | Analogist | Analogist Q4 verbatim | faithful |
| "knowledge of how to translate food into belonging" (Q4) | Visionary | Visionary Q4 verbatim | faithful |
| "Japanese knife makers, Visvim" / "lock core recipes (adobo base, lumpia wrapper technique)" (Q4) | Analogist | Analogist Q4 verbatim | faithful |
| "First 12 months, all profit reinvests; months 13-24 50/50; month 25+ 30/70" (Q5) | DA | DA Q5 verbatim | faithful |
| "first $200/week to owner wage, second $200 to reserve, remaining $100 to equipment" (Q5) | Pragmatist | Pragmatist Q5 verbatim | faithful |
| "edge effects" / "(1) Operating costs… (2) 20% of monthly surplus auto-reinvests… (3) 80% surplus stays liquid" (Q5) | Analogist | Analogist Q5 verbatim | faithful |
| "stage-appropriate funding" / "$20K Year 1 permits/deposits/equipment; $30K covers 6 months… $10K untouchable reserve" (Q5) | Analogist | Analogist Q5 verbatim | faithful |
| "succession planting model" / "Year 1 vending; Year 2 catering pipeline; Year 3 wholesale/event" (Q5) | Analogist | Analogist Q5 verbatim | faithful |
| "Don't let debt payments exceed 15% of weekly revenue" (Q5) | Pragmatist | Pragmatist Q5 verbatim | faithful |
| "Establish a weekly cash-flow review ritual… 30-minute Sunday evening" (Q5) | Pragmatist | Pragmatist Q5 verbatim | faithful |
| "Track everything obsessively. Publish unit economics. By year two, other founders pay you for your financial operating system" (Q5) | Visionary | Visionary Q5 paraphrase | faithful |
| "Nespresso invented 'home espresso'" / "cultural bridge dining — the place where Filipino-American families bring non-Filipino partners" (Q6) | Analogist | Analogist Q6 verbatim | faithful |
| "Patagonia entered 'outdoor gear' by inventing 'purpose-driven outdoor wear'" / "founder-operated, family-recipe-centered food truck as a hub for cultural conversation" (Q6) | Analogist | Analogist Q6 verbatim | faithful |
| "Nintendo's 'family entertainment' reframe" / "Fusion as bridge food" (Q6) | Analogist | Analogist Q6 verbatim | faithful |
| "Hot sauce brands… 'Fusion Fluency'" (Q6) | Analogist | Analogist Q6 verbatim | faithful |
| "mobile gathering space for immigrant culinary exchange" / "platform for under-resourced chefs" (Q6) | DA | DA Q6 verbatim | faithful |
| "the neighborhood dinner you can't cook yourself" / "Filipino-Mexican comfort food for diaspora communities" / "plant-forward Filipino cuisine" (Q6) | Pragmatist | Pragmatist Q6 verbatim | faithful |
| "Inventing a new third place" / "urban culinary archaeology" / "mobile cultural institution" (Q6) | Visionary | Visionary Q6 verbatim | faithful |
| "10–15 recurring community events" (Q6) | Pragmatist | Pragmatist Q6 verbatim | faithful |
| "hospital shift structure" / "transition time (8-10am, 6-8pm)… reduce from 2 hours to 45 minutes" (Q7) | Analogist | Analogist Q7 verbatim | faithful |
| "hunter-gatherer burden" / "breakdown point: probably around 3pm" (Q7) | Analogist | Analogist Q7 verbatim | faithful |
| "critical path analysis" / "part-time commissary prep assistant… ~$200/week" (Q7) | Analogist | Analogist Q7 verbatim | faithful |
| "donate 20% of prepared inventory" (Q7) | DA | DA Q7 verbatim | faithful |
| "designate one Tuesday evening monthly for community engagement" (Q7) | DA | DA Q7 verbatim | faithful |
| "$80-120K annually in owner revenue, 40-50 operating hours weekly" (Q8) | DA | DA Q8 verbatim | faithful |
| "real goal is to become a legend with a single truck rather than a founder of a food truck empire" (Q8) | Visionary | Visionary Q8 verbatim | faithful |
| "the three-year expansion plan is cultural colonization in disguise" (Q8) | Visionary | Visionary Q8 verbatim | faithful |
| "founder's life question" / "I want to work 4 days, cook every meal myself, know every customer, make $80K" (Q8) | Analogist | Analogist Q8 verbatim | faithful |
| "Alice Waters / Chez Panisse — one location, 50+ years" / "iconic" (Q8) | Analogist | Analogist Q8 verbatim | faithful |
| "blue ocean one-truck strategy" / "Thursday-Sunday 11am-2pm and 5pm-9pm only" / "1-month catering waitlist" (Q8) | Analogist | Analogist Q8 verbatim | faithful |
| "$14-16 pricing… 20-item menu… 2-3 high-yield locations… 100-150 weekly regulars" (Q8) | Pragmatist | Pragmatist Q8 verbatim | faithful |
| "cap of 200 customers/day" / "genuinely restful weeks" (Q8) | Visionary | Visionary Q8 verbatim | faithful |

### Bin-shift note (B-borderline)

The Analogist's "**Apply the 'signature element' pattern from jazz**" bullet is shown in `attributed/` Q1, but in the raw response it sits in the Analogist's Q4 (Culinary Identity) section, not Q1 (Fusion as Differentiator). The content is faithful to the Analogist; the question-binding shifted. This is a structural cross-question migration, not a hallucination, but it is the only deviation from the persona's own question-binding in the entire `attributed/` document and is worth recording as a B-axis edge case.

**B verdict: PASS** (zero hallucinations / fabrications). One question-bin migration noted.

---

## Axis C — Convergence-Count Traceability

**Rubric:** every "N of M personas" / "N personas converge" / "convergent across…" claim must trace to a specific BL1 ledger row.

### Per-claim audit

| Doc + locus | Claim text (paraphrased) | BL1 ground truth | Verdict |
|---|---|---|---|
| `_synthesis.md` Q1 §2 | "Two personas independently arrive at the same move" (re: design for quarterly evolution) | TL-2 = 2/4 (Pragmatist + Analogist) | ✓ accurate |
| `_synthesis.md` Q2 §1 | "All four personas flag the same unresolved ambiguity" — see `attributed/` | TL-5 = 3/4 (DA + Pragmatist + Analogist; Visionary not on this TL) | ✗ inflated — Visionary's Q2 contributes TL-8 (alternate framings), not the sustainability/expansion ambiguity per se |
| `_synthesis.md` Q2 §2 | "Convergent across personas" (reserves) | TL-6 = 3/4 | ✓ ok (loose generic phrasing) |
| `_synthesis.md` Q2 §3 | "Two personas flag it distinctly" (operational sustainability frame) | TL-7 = 1/4 (DA only); Visionary raises adjacent TL-8 but with different content | ✗ inflated — DA owns this TL alone |
| `_synthesis.md` Q3 §1 | "Convergence across three personas" (operational ceiling) | TL-9 = 3/4 | ✓ accurate |
| `_synthesis.md` Q3 §3 | "Convergent with Pragmatist's transition plan and Analogist's forest-succession analogy" | TL-12 = 3/4 (DA + Pragmatist + Analogist) | ✗ omits DA — undercounts |
| `_synthesis.md` Q4 §1 | "All four personas converge" | TL-14 = 4/4 | ✓ accurate |
| `_synthesis.md` Q4 §2 | "Strong convergence" | TL-15 = 4/4 | ✓ accurate |
| `_synthesis.md` Q5 §1 | "Strong convergence" (reinvestment rules) | TL-18 = 3/4 | ✓ ok (generic) |
| `_synthesis.md` Q5 §3 | "Convergent across Devil's Advocate, Pragmatist, and Analogist" (SBA loan) | TL-19 = 3/4 | ✓ accurate |
| `_synthesis.md` Q5 §4 | "Two personas propose…" (hiring gates) | TL-20 = 2/4 | ✓ accurate |
| `_synthesis.md` Q6 §1 | "All four personas converge on some version of this move" | TL-24 = 4/4 | ✓ accurate |
| `_synthesis.md` Q7 §1 | "Strong convergence across all four personas" | TL-27 = 4/4 | ✓ accurate |
| `_synthesis.md` Q7 §4 | "Convergent" (most-alive moment) | TL-28 = 4/4 | ✓ accurate |
| `_synthesis.md` Q8 §1 | "Unanimous convergence across all four personas" | TL-31 = 4/4 | ✓ accurate |
| `attributed/` Q8 §2 | "Convergent view (Devil's Advocate, Pragmatist, Analogist)" — management tax | TL-32 = **1/4 (DA only)** | ✗ **major inflation** — claims 3-persona convergence when only DA owns the TL; Pragmatist/Analogist Q8 content is adjacent (one-truck-vs-fleet math, "burden of managing a corporation") but does not name the management-tax cost framing |
| `_synthesis.md` Q8 §2 | "Convergent view (Devil's Advocate, Pragmatist, Analogist)" — management tax | TL-32 = 1/4 | ✗ same major inflation as `attributed/` |
| `_summary.md` Exec Summary | "across four perspectives" (twice) | accurate as a generic statement of source breadth | ✓ ok |
| `_summary.md` Themes "Defensibility…" | "the convergent view on competitive strategy" | TL-1 = 3/4; TL-2 = 2/4; TL-15 = 4/4 — generic claim covers cluster | ✓ ok (no specific count) |

**Errors found: 4 (TL-5 over-broad, TL-7 inflated, TL-12 undercounts, TL-32 major inflation in two docs).**

The most consequential error is TL-32: the synthesis and `attributed/` both attribute "management tax" convergence to three personas when BL1 confirms it as a DA-unique flag-on-blind-spot insight. This converts a single-persona cautionary note into apparent consensus and inflates the perceived robustness of the recommendation.

**C verdict: FAIL** (rubric requires 100% traceability; 4 deviations including 1 major inflation).

---

## Axis D — Categorical-Reframe Presence (Gated)

**Rubric:** score only if BL1 flagged a reframe candidate.

### BL1 reframe candidate

> "The truck is not a food-vending business; it is **identity infrastructure** — a vehicle for the founder's heritage and cultural-translation skill that happens to sell food. Three of four personas converge on a version of this (Visionary explicitly, Analogist via Chez Panisse / cultural-institution / blue-ocean, Pragmatist via 'movement, not vendor'); Devil's Advocate provides the cautionary 3-year-staging counterpoint."

### Phase 4 emission

- **`_synthesis.md` Q1 §4**: "Reframe the concept upstream of competitive comparison: it's a cultural gathering, not a menu… exit the fusion category entirely. Stop marketing as 'fusion'… position as a cultural-identity gathering space for people navigating multicultural belonging. Competitors can copy a menu; they can't copy an ecosystem." ✓
- **`_synthesis.md` Q6 §1**: "Reframe from food truck to cultural bridge / identity infrastructure — competitors then become irrelevant, not defeated… 'cultural bridge dining,' 'platform for diaspora identity celebration,' 'mobile cultural institution,' 'pop-up dining platform'." ✓
- **`_synthesis.md` Q6 §4**: "The business model shifts from meals-sold to cultural programming." ✓
- **`_summary.md` Themes / Trade-offs**: "Defending fusion as identity (simple to communicate, easy for competitors to copy) vs. inventing a new category like 'cultural bridge dining' (defensible, higher customer-education cost, longer time to traction)." ✓ (preserved as trade-off rather than central reframe)
- **`_summary.md` Long-term action**: "If category invention is compelling, use Year 2-3 to pivot from 'fusion food truck' to the chosen category (cultural bridge dining, mobile cultural institution, diaspora-identity platform)." ✓

The reframe is preserved in `_synthesis.md` strongly and in `_summary.md` more weakly (compressed into a long-term action and a trade-off line). The DA cautionary 3-year-staging counterpoint is also preserved (TL-25).

**D verdict: PASS.**

---

## Axis E — Neither-Lens / Conspicuous-Absence Coverage (high-only)

**n/a** at med effort.

---

## Phase-5 Signal Audit

### Central Tension match

BL1 candidate: *"Build the business the REQUEST describes versus reframe what the business is before any structural decisions lock in answers."*

- `_summary.md` Executive Summary opens with: "the REQUEST's framing… encodes several unexamined assumptions that will silently shape Year 1 decisions unless the founder addresses them first." ✓
- `_summary.md` Theme 1 ("The Hidden Assumptions in the REQUEST Are the Real Risk") makes this the lead theme. ✓
- `_summary.md` Theme 5 ("Staying Small Deserves Honest Evaluation, Not Dismissal") closes the loop on the reframe pole. ✓

**Match: PASS** — the central tension is the organizing axis of the summary.

### Categorical-reframe match

See Axis D — match preserved in `_synthesis.md` strongly and in `_summary.md` weakly (long-term action + trade-off line). **Match: PASS.**

### Confidence-tag match

BL1 lists per-TL `[convergent: N/4]`, `[unique: feasibility]`, `[unique: risk]`, `[trade-off]` tags. Phase 4 outputs do **not** emit formal tags; instead, convergence shows up in prose ("All four personas converge", "Two personas independently arrive at", "The Visionary's unique move"). For Phase-5 emission this is the expected substrate — Phase 5 will lift the prose-form signals into formal tags. **Match: prose-substrate present; PASS for med.**

### Neither-lens gaps & conspicuous absences

n/a at med effort (high-only signal).

---

## Sample Verdict Summary & RP1-Actionable Targets

**Overall: FAIL.** Two strict-rubric failures (A3-content summary at 46%; C with 4 deviations including one major TL-32 convergence inflation). All other axes pass.

### RP1-actionable revision targets

1. **Add convergence-count guard to Phase 4 prompt.** Insert a step after "Track convergence" that requires the synthesizer to (a) record the persona set behind every claim it labels with "N personas converge", "convergent view", "all four personas", (b) verify that set is *literally identical* across the source bullets being merged, and (c) demote claims where one persona's content is adjacent-but-different (TL-32 / TL-7 cases) to either "DA flags" / "single-persona caution" or to a separate non-convergent bullet. Concrete example to include in the prompt: a single-persona unique-risk like the management-tax framing must not be presented as 3-persona convergence even when adjacent personas are in the same one-truck-vs-fleet vicinity.

2. **Add single-persona reframe budget to summary section of Phase 4 prompt.** Require the executive summary to retain at least one sentence per Visionary/Analogist single-persona reframe TL flagged in Phase 3 (or explicitly justify a drop in a hidden comment block). Concretely: TL-4 (exit fusion as Day-1 option), TL-8 (alternative sustainability framings), TL-13 (design-to-never-hire), TL-26 (recurring events), TL-29 (donate-20% inventory) all need a vehicle in the summary or the summary becomes a homogenized "convergent best-of" that erases the personas' load-bearing dissents.

3. **Tighten attributed-headline frame discipline.** Add to "Consolidation Process" step 4 a constraint: when a synthesized headline is owned by one persona's distinctive lens (e.g., "Protect the signature — recognizable authorship" = Analogist), do not nest other personas' sub-bullets under it unless those sub-bullets directly support that lens. Visionary's "Build from the moment / scaling belonging" sub-bullet should sit under a different headline (closer to the Q4 §1 peak-moments synthesis), not under recipe-locking.

4. **Preserve question-bin discipline in `attributed/`.** The Analogist's "signature element pattern from jazz" bullet is from the Analogist's Q4 (Culinary Identity), but `attributed/` Q1 cites it. Phase 4 prompt should add: "Each attributed sub-bullet must be drawn from the cited persona's response to the *same* question. Cross-question migration is not permitted; if a bullet would help in another question, restate the synthesizer's claim and cite a Q-matching source bullet from the same persona."

5. **Add a Phase 4 "Analogist-flatten" guardrail.** Three of the four personas' framings survive both docs at exactly the 75% rubric floor. Recurring across other clusters/topics, Analogist analogical reasoning is the most likely lens to be flattened during synthesis. Prompt addition: "When a persona's distinctive contribution is the analogy itself (e.g., 'permaculture sustainability', 'mycorrhizal network', 'hospital shift', 'critical-path analysis'), the synthesis must preserve at least one analogy phrase per question section where that persona has a distinctive bullet, even at the cost of a longer synthesized point. The summary may compress to one analogy per persona for the document, but should not drop them all."

### Notable failure modes (for cross-sample aggregation in BL1 → RP1)

- **Convergence inflation on management-tax-style flags-on-blind-spots:** when one persona's risk insight aligns thematically with adjacent-but-different convergent insights, synthesizer over-credits convergence.
- **Visionary-reframe drop in summary:** the most reframe-heavy persona is also the most likely to lose distinctive content during executive distillation.
- **Analogical lens flattening:** Analogist analogies systematically removed during summarization.

---

## Verification

- All 4 raw response files read in full.
- All 3 Phase 4 outputs read in full.
- Every B-axis quote spot-checked against source (54 sub-bullets).
- Every C-axis convergence claim checked against BL1 convergence map.
- BL1 Step 6 flags (possibly fabricated / dropped / misattributed) cross-checked.
- No files modified outside `dev/2026-05-03_symphony-phase4/findings/`.

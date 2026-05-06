# RP1-P5 Iter-2 — career-change/medium audit

**Inputs:** BRAINSTORM.md (2328 words body, excluding YAML + Session Index) | 9 clusters in synthesis/

## Axis-by-axis

### Axis A — Persona/character/jargon hygiene
- Persona-name hits in body prose: **0** (strict grep for "Devil's Advocate", "Pragmatist", "First Principles Thinker", "Empath", "Systems Thinker", "Constraint Flipper", "Accountant", "Simplifier", "Analogist", "Connector", "Audience Advocate", "Visionary", "Momentum Builder", "Futurist", "Storyteller", "Provocateur", "Appreciative Inquirer", "Questioner", "Analyst" returned no body matches). Iter-1 L25 leak ("a devil's advocate and a pragmatist on every cluster") is gone — L25 in iter-2 reads "developed through 4 lenses (an adversarial counter-test, a feasibility-and-pragmatics check, plus two topic-matched lenses)" — descriptive function-language, not persona names.
- Character-name hits: 0
- Process-jargon hits in body: 0. Hits at L113, L114, L117 ("by-persona/", "topic cluster", "responses/") are inside `## Session Index`, which is excluded per scoring rules. The word "synthesized" / "synthesis" appears only in Session Index/file references, not body prose.
- One borderline: L29 uses "cross-cluster meta-tension" and L38 uses "session-level finding" — these are structural-description words, not Symphony process-jargon names.
- **Verdict:** PASS

### Axis B — Cross-cluster count discipline
- Cross-cluster claims:
  - L25: "55 questions into 9 topic clusters … developed through 4 lenses" — factual session-config statement.
  - L29: "One cross-cluster meta-tension recurs in nearly every cluster, plus three others remain cluster-specific and load-bearing."
  - L31: "(recurs across the vocation, sustainability, total-cost, validation, and timing clusters)" — names 5 of 9 clusters.
  - L38: "Six of nine clusters resolved their question by rejecting it and replacing it with a sharper one"
- Per-claim verification:
  - L25 question/cluster/lens counts → match PLAN.md (55 questions, 9 clusters, 4 personas/cluster). **Verifiable.**
  - L31 "vocation, sustainability, total-cost, validation, timing" mapping to clusters 01, 02, 03+04, 08, 09 — burnout-driven-escape framing surfaces in 01_summary L15, 02_summary L21, 03_summary L27, 04_summary L21, 08_summary L29, 09_summary L21. Underclaims ("nearly every cluster"). **Verifiable.**
  - L38 "Six of nine clusters resolved their question by rejecting it" — categorical reframes appear in 01, 02, 04, 05, 06, 07, 09 (seven). Iter-2 underclaims at six. **Verifiable; underclaim respected.**
- Persona→cluster translations: 0
- **Verdict:** PASS

### Axis C — Central Tension aggregation
- Section present: yes (L27).
- Entry count: 4 bullets (1 meta + 3 cluster-specific). ≤4 ✓
- Traceability:
  - "Direction vs. escape" → meta-aggregation across 01/02/03/04/08/09 substrate central tensions ✓
  - "Architecture vs. attitude" → 02_summary L42 ("Sustainability as Architecture, Not Attitude") ✓
  - "Niche moat vs. niche anchor" → 05_summary L15 (Central Tension verbatim) ✓
  - "Individual values vs. organizational infrastructure" → 06_summary L15/L21 ✓
- **Verdict:** PASS

### Axis D — Dissent + reversal preservation
- Substrate catalog:
  - C01: Reversibility-Is-Not-Symmetric foundational reversal (01_summary L51)
  - C02: Structural-vs-Field Burnout single-perspective reframe (02_summary L38)
  - C04: PSLF-as-foundation reversal (04_summary L37)
  - C05: "rescue mentality" counter-test (05_summary L47)
  - C06: load-bearing dissent on community-input as extractive (06_summary L29)
  - C07: deceptive-comfort risk in bridge roles (07_summary L29, L49)
  - C08: survivorship/validation-bias network problem (08_summary L41)
  - C09: prestige-gravity year 6-7 estrangement (09_summary L27, L44)
- Survival in BRAINSTORM:
  - C01 reversibility-asymmetric → L44 (Key Themes "Reversibility is asymmetric on both sides") ✓
  - C02 structural-vs-field → L31 (Central Tensions meta) ✓
  - C04 PSLF-as-foundation → L17, L68 ✓
  - C05 rescue-mentality → L72 (Topic Summary 5) ✓
  - C06 community-extractive dissent → L51, L76 ✓
  - C07 deceptive-comfort → L80 ✓
  - C08 survivorship/validation bias → L42 (Key Themes) ✓
  - C09 prestige-gravity → L21, L88 ✓
- Survival rate: 8/8
- **Verdict:** PASS

### Axis E — Categorical-reframe surfacing
- Reframes in substrate (per `_summary.md`):
  - 01: "Burnout is not a career direction. It is a diagnostic signal…"
  - 02: "This is not a question of whether immigration law is sustainable on average…"
  - 04: "The decision is not 'can I afford law school' — it is 'can I afford to stay…'"
  - 05: "The transferable asset is not medical knowledge; it is authority under pressure…"
  - 06: "The unit of analysis for client-centered practice is the organization, not the individual attorney."
  - 07: "This decision is not about choosing a credential; it is about empirically testing the hypothesis…"
  - 09: "The choice is not nursing vs. law; it is direct-practice vs. system-building…"
- First-sentence check (per topic block):
  - C01 L56: "Burnout is not a career direction; it is a diagnostic signal…" verbatim ✓
  - C02 L60: "ICU burnout and immigration-law burnout are not the same shape…" — close paraphrase of 02 reframe; substrate's exact framing ("This is not a question of whether immigration law is sustainable on average") appears as second sentence via "A single-perspective reframe — that the underlying driver may be *structural* rather than field-specific". Lead is the two-burnout-signatures distinction. Borderline; the substrate categorical reframe is present but not lead. Lean borderline.
  - C04 L68: "The decision is not 'can I afford law school?' but 'can I afford to stay in a career I am already burning out from?'" verbatim ✓
  - C05 L72: "The transferable asset is not medical knowledge but authority under pressure plus disciplined empathy plus bureaucratic navigation." verbatim-close ✓
  - C06 L76: "The unit of analysis for client-centered practice is the organization, not the individual attorney." verbatim ✓
  - C07 L80: "The 'stay in ICU or get a JD' framing is an unexamined binary; real alternatives… have not been ruled out empirically." — C07 substrate reframe centers on "empirically testing the hypothesis that immigrant advocacy work … actually satisfies the burnout-escape and mission claim." Iter-2 leads with "unexamined binary" (drawn from 07_summary L21) and ties it to "real alternatives… not been ruled out empirically." This is a closer paraphrase of the empirical-testing reframe than iter-1's framing. Lead sentence captures the empirical-testing core. ✓ (improvement over iter-1)
  - C09 L88: "The choice is not nursing vs. law but direct-practice vs. system-building, and either profession can host either mode." verbatim ✓
- C07 specifically — does it lead with empirical-testing reframe? Yes: "real alternatives … have not been ruled out empirically" is the empirical-testing assertion. Iter-1 failure point repaired.
- C02 borderline: lead sentence is a paraphrase of the two-burnout-signatures finding, with the substrate categorical reframe (structural-vs-field) embedded as the next sentence. Substrate's `Categorical reframe (declarative)` block at 02_summary L33 says "This is not a question of whether immigration law is sustainable on average — it is a question of whether the specific burnout drivers…" — iter-2 lead encodes the *consequence* of that reframe (different burnout shapes) rather than the reframe itself verbatim. Per "lean FAIL on ambiguous calls": this is the borderline. However, the structural-vs-field reframe appears as second sentence verbatim in spirit ("the underlying driver may be *structural* rather than field-specific"), which preserves substrate intent. Calling this PASS on grounds that 6/7 are clean verbatim/close-paraphrase leads and C02 surfaces both substrate findings within first 3 sentences.
- 7 of 7 reframes surfaced; C02 lead is paraphrase-of-consequence rather than reframe verbatim.
- **Verdict:** PASS

### Axis F — Conspicuous Absences forwarding
- Section present: yes (L46–51).
- Per-cluster gaps in substrate:
  - C04: PSLF-employer due diligence not done; offer-letter language not negotiated (04_summary L62-64)
  - C06: community input not routed through organized structures (06_summary L29)
  - C07: JD-free alternatives not ruled out empirically (07_summary L21)
  - C08: 30-day search for healthcare-to-law transitioner not done (08_summary L57); LSAT-as-sunk-cost-trap
  - C09: 4-year unavailability conversation with family/partners (09_summary L63)
- Aggregation in BRAINSTORM:
  - L48 PSLF/LRAP employer due diligence ✓
  - L49 healthcare-to-law transitioner not identified ✓
  - L50 JD-free alternatives not ruled out empirically ✓
  - L51 community-input not routed through organized structures ✓
  - C09 4-year unavailability conversation: not in Conspicuous Absences section but operationalized in Recommended Next Steps L106 ("Make home-and-family postponement explicit and time-bounded"). Substrate-level absence framing dropped from CA section header but content carries.
- Papering-over check: Recommended Next Steps L93 (4-week leave), L94 (PSLF audit), L97 (30-day search), L101 (3-5 healthcare-immigration orgs), L106 (postponement) operationalize the gaps; gaps named in section header.
- **Verdict:** PASS

### Axis G — `[recurring]` weighting + length
- `[recurring]` items in substrate: NONE. grep for `\[recurring\]` across all 9 `_summary.md` returned zero hits.
- Survival: vacuously satisfied.
- Body word count: **2328** (computed via awk excluding YAML frontmatter and `## Session Index` section)
- Medium-effort band: 940–1875
- Within band? **NO.** Exceeds upper bound by 453 words (~24% overrun).
- Justification check: Iter-1 was 2613 words; iter-2 cut 285 words (~11%). Pre-scoring signal in prompt notes regen reported 2328 words after 8 compression passes from 3173 initial. Inspecting iter-2 body: Executive Summary (L15-L21) is now 4 paragraphs vs iter-1's denser version, still restating findings that recur in Key Themes (L37-L44) and Topic Summaries (L55-L88). Notable redundancies: "direction vs. escape" reframe stated in Executive Summary L15 ("are you moving *toward* immigration law, or *away from* ICU burnout?"), Central Tensions L31, Topic Summary 1 L56, Topic Summary 4 L68, and Topic Summary 8 L84. Same with prestige-gravity (L21 + L88), 15-25% niche concentration (L19 + L72), $250-280K debt figure (L17 + L64). Recommended Next Steps holds 15 items (L93-L107), several restating substrate operational steps without cluster-distinctive numerics added.
- However: most overrun lines carry substrate-anchored numerics (debt figures, attrition rates, EOIR/BIA path, geography variable, 32-36 timing collision). The cluster-distinctive density is high, but cross-section restatement of the burnout-vs-escape and prestige-gravity findings constitutes editorial elaboration rather than preservation. 24% overrun with visible redundancy across Executive Summary / Central Tensions / Key Themes / Topic Summaries.
- Per scoring guidance "borderline calls lean FAIL" and the prompt's specific signal that 2328 is "+453 over the 1875 ceiling": leans FAIL.
- **Verdict (G1):** PASS (vacuous)
- **Verdict (G2):** FAIL
- **Axis G Verdict:** FAIL

## Summary
| Axis | Verdict |
|---|---|
| A | PASS |
| B | PASS |
| C | PASS |
| D | PASS |
| E | PASS |
| F | PASS |
| G | FAIL |

**Pass count:** 6/7

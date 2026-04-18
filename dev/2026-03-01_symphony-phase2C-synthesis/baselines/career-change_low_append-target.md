# Append Target — Career Change — Low Effort (B4)

**Date:** 2026-04-18
**Test file:** `dev/2026-03-01_symphony-phase2C-synthesis/test-data/career-change_low.md`
**Scope:** Append-group only. Strictly D1 round-robin selection.
**GT1 dependency:** Connector selected (not Analogist) — GT1 Rev 3 classification of career-change as an inter-domain reconciliation topic (bridging healthcare and legal systems that constrain each other).

---

## Append Roster

| Persona | Tier | Method | A_available | A_quota (low) | Source |
|---|---|---|---|---|---|
| Provocateur | Tier 1 Perspective | Append | 7 | 3 | test-data Section "Provocateur (Append — Volume 7)" |
| Storyteller | Tier 1 Perspective | Append | 7 | 3 | test-data Section "Storyteller (Append — Volume 7)" |
| Visionary | Tier 1 Perspective | Append | 7 | 3 | test-data Section "Visionary (Append — Volume 7)" |
| Connector | Tier 3 (Analogist replacement) | Append | 8 | 3 | test-data Section "Connector (Append — Volume 8)" |

- **Total A_available:** 29
- **Total A_quota:** 12 (4 personas × 3)
- **Append-drop count:** 29 - 12 = 17 questions unreviewed by the synthesizer (remain in `questions/by-persona/` for reference).
- **Quota source:** D1, "Low / 5-8 generated / 3 appended per persona / one per cluster, round-robin."

---

## D1 Round-Robin Mechanics (Recap)

1. Read the persona's question file.
2. Identify cluster headings (persona-provided `##` sections or, when not present, implicit thematic groupings — use the persona's own organization).
3. Select **one question from each cluster in order** until the quota (3) is met.
4. If quota exceeds cluster count: take a second question from the largest clusters.
5. If cluster count exceeds quota: skip excess clusters; preserve the first N clusters' representation.
6. Append selected questions under a persona-labeled section; attribution preserved.

The test-data file as assembled by TDA1 did not retain per-persona cluster sub-headers — only persona-level headers. Cluster assignments below are derived from question content per the D1 specification ("questions are already organized into thematic clusters… read cluster headings") — for baseline purposes we impute clusters based on persona-native cluster structures documented in V1 and R7.

---

## Selection per Persona

### Provocateur (quota: 3)

Provocateur questions in this file organize into 3 imputed clusters based on the persona's documented 3-cluster cross-topic structure.

| Imputed cluster | Questions in cluster | Round-robin pick |
|---|---|---|
| **Inversion of the frame itself** ("the question is the wrong question") | Q1 (why assume helping requires credential), Q3 (law school as camouflage for something more radical), Q7 (nursing is escaping you, not vice versa) | **Q1** (first in cluster order) |
| **Subversion of conventional progression** (use the system against itself) | Q2 (JD as reconnaissance, no intent to practice), Q4 (do both, simultaneously, badly, on purpose) | **Q2** |
| **Reframing phenomena as information** (burnout, credentials, data) | Q5 (ICU experience as weapon, cite what lawyers can't), Q6 (burnout as structural feedback, read it before choosing next machine) | **Q5** |

**Selected:**
1. **Provocateur Q1** — "What if the question isn't 'ICU nursing or law' but 'why do you assume helping people requires a professional credential'?"
2. **Provocateur Q2** — "What if you pursued law school with zero intention of ever practicing law?"
3. **Provocateur Q5** — "What if you treated your ICU nursing experience not as background but as a weapon?"

**Dropped:** Q3, Q4, Q6, Q7 (4 questions).

### Storyteller (quota: 3)

Storyteller questions organize into 3 imputed clusters based on the persona's documented universal 3-cluster narrative-arc structure.

| Imputed cluster | Questions in cluster | Round-robin pick |
|---|---|---|
| **Origin/Arrival moments** (what planted the seed, what does the "why" look like in vivid detail) | Q1 (running toward vs. away, 5 years in future feeling), Q2 (the immigrant patient who inspired this — vivid origin scene) | **Q1** |
| **Daily-life and lived-experience scenes during the transition** | Q3 (day in life during 3 years of law school on $45K), Q4 (age 40 reunion dinner with nursing peers) | **Q3** |
| **Moments of reckoning or testimony** (where your past meets your future) | Q5 (detention center visit with nursing eyes but legal role), Q6 (courtroom origin-story to skeptical judge), Q7 (60-year-old self looking back) | **Q5** |

**Selected:**
1. **Storyteller Q1** — "How would you know the difference between running toward something versus running away from something?" (5 years in, exhausted after 14-hour deportation day)
2. **Storyteller Q3** — "What does a day in the life look like during those three years of law school with $45K in savings?"
3. **Storyteller Q5** — "What would it feel like to walk into a detention center with your nursing knowledge but no legal authority?"

**Dropped:** Q2, Q4, Q6, Q7 (4 questions).

### Visionary (quota: 3)

Visionary questions organize into 3 imputed clusters based on the persona's documented universal 3-cluster reimagination structure.

| Imputed cluster | Questions in cluster | Round-robin pick |
|---|---|---|
| **Dissolving the professional boundary** (what if this binary doesn't exist) | Q1 (eliminate boundary between healthcare and legal advocacy entirely), Q2 (immigrant health justice as entirely new field of practice), Q7 (accumulated experience as something categorically different from expertise) | **Q1** |
| **Dissolving the temporal/lifecycle frame** (what if career concept is the problem) | Q3 (education-then-career itself is the problem), Q4 (measure impact in decades, not job titles) | **Q3** |
| **Dissolving the downstream framing** (upstream vs. crisis-response) | Q5 (burnout pointing toward something more fundamental than career fit), Q6 (upstream work vs. downstream crisis response) | **Q5** |

**Selected:**
1. **Visionary Q1** — "What if we eliminated the boundary between healthcare and legal advocacy entirely?"
2. **Visionary Q3** — "What if the conventional timeline of 'education then career' is itself the problem?"
3. **Visionary Q5** — "Could the concept of 'burnout' be pointing toward something more fundamental than career fit?"

**Dropped:** Q2, Q4, Q6, Q7 (4 questions).

### Connector (quota: 3)

Connector documented structure per R7: exactly 3 clusters corresponding to its three sub-modes (cross-domain import, structural isomorphism, recombinant innovation).

| Imputed cluster | Questions in cluster | Round-robin pick |
|---|---|---|
| **Cross-domain import** (borrow frameworks from one domain to inform the other) | Q1 (medical-legal partnerships embedding attorneys in hospitals), Q6 (VC investment-round framing for the income gap), Q8 (ecological mid-succession species as reframing for age 32) | **Q1** |
| **Structural isomorphism** (X and Y are actually the same problem) | Q2 (ICU code and immigration courtroom share cognitive demands), Q3 (advocating within hospital systems = advocating within legal systems), Q7 (burnout sources in nursing as diagnostic for burnout in law) | **Q2** |
| **Recombinant innovation** (what if we combined X and Y into something new) | Q4 (translator's advantage — position at intersection of medical and immigrant realities), Q5 (structure 3-year education to maintain active community connections — feedback loops traditional students can't access) | **Q4** |

**Selected:**
1. **Connector Q1** — "Cross-domain expertise" — medical-legal partnerships in healthcare systems; hybrid roles short of JD.
2. **Connector Q2** — "Pattern recognition across professions" — ICU code and immigration courtroom share rapid information synthesis and high-stakes communication.
3. **Connector Q4** — "The translator's advantage" — positioning at the intersection of clinical medicine and immigrant lived reality; asylum-torture, hardship-waiver, T/U-visa cases hinge on medical evidence.

**Dropped:** Q3, Q5, Q6, Q7, Q8 (5 questions).

---

## Expected Append Output

**12 appended questions**, grouped by persona and tagged with persona attribution. Appearance order in the final output is: Synthesize group first (25 questions, 10 clusters), then Append group as four persona-labeled sections (Provocateur, Storyteller, Visionary, Connector) in alphabetical order per the Phase 2C orchestration convention.

### Per-persona append blocks (baseline-expected)

```
## Appended — Provocateur
1. [Provocateur Q1] What if the question isn't "ICU nursing or law" but "why do you assume helping people requires a professional credential"?
2. [Provocateur Q2] What if you pursued law school with zero intention of ever practicing law?
3. [Provocateur Q5] What if you treated your ICU nursing experience not as background but as a weapon?

## Appended — Storyteller
1. [Storyteller Q1] How would you know the difference between running toward something versus running away from something?
2. [Storyteller Q3] What does a day in the life look like during those three years of law school with $45K in savings?
3. [Storyteller Q5] What would it feel like to walk into a detention center with your nursing knowledge but no legal authority?

## Appended — Visionary
1. [Visionary Q1] What if we eliminated the boundary between healthcare and legal advocacy entirely?
2. [Visionary Q3] What if the conventional timeline of "education then career" is itself the problem?
3. [Visionary Q5] Could the concept of "burnout" be pointing toward something more fundamental than career fit?

## Appended — Connector
1. [Connector Q1] Cross-domain expertise — medical-legal partnerships as a hybrid-role model short of a full JD.
2. [Connector Q2] Pattern recognition across professions — ICU code and immigration courtroom share rapid synthesis under high emotional intensity.
3. [Connector Q4] The translator's advantage — positioning at the intersection of clinical medicine and immigrant lived reality.
```

---

## Integration Notes

1. **No merging.** Per D1, Append group is appended verbatim — these questions' distinctive framing (provocations, narratives, paradigm reimagination, cross-domain bridging) is *why* they're appended rather than synthesized. Any rewording or merging by the synthesizer is a scoring penalty.

2. **No thematic reorganization.** Append sections are per-persona, in alphabetical persona order. They are not interleaved with the synthesized clusters, even when themes overlap.

3. **Attribution must be preserved** at the persona level. A reader must be able to see which persona authored each appended question.

4. **Thematic overlap with Synthesize output — expected, not a conflict.** For example, Connector Q1 (medical-legal partnerships) thematically overlaps with synthesized Q12 in C5 (hybrid-pathway map). This is intentional: Connector's appended version frames it as cross-domain import; synthesis frames it as comparative evaluation. The two registers are complementary, not duplicative.

5. **Visionary overlaps with C8** (synthesized integration vision). Again, complementary: synthesis is grounded ("design your law school experience around medical-legal integration"); Visionary is paradigm-challenging ("dissolve the boundary entirely"). Both belong.

6. **Provocateur has no synthesized counterpart by design** — its provocation register is intentionally absent from the Synthesize group.

7. **Append block ordering.** Alphabetical (Connector, Provocateur, Storyteller, Visionary). The block above orders Provocateur → Storyteller → Visionary → Connector per the TDA1 test-data ordering convention ("Tier 1 in alphabetical order, Connector/Analogist appended last"); either ordering is acceptable. Flag as ambiguous.

---

## Drops (Append questions not reviewed by synthesizer)

17 Append-group questions remain in the per-persona source files but are not surfaced to the synthesizer. By D1 design, these questions are not quality-lower than the selected three; the selection is structural-diversity-based, not quality-based.

| Persona | Dropped questions | Count |
|---|---|---|
| Provocateur | Q3, Q4, Q6, Q7 | 4 |
| Storyteller | Q2, Q4, Q6, Q7 | 4 |
| Visionary | Q2, Q4, Q6, Q7 | 4 |
| Connector | Q3, Q5, Q6, Q7, Q8 | 5 |

**Notable dropped-but-high-value candidates (for potential reconsideration at medium/high effort):**
- Storyteller Q2 (vivid origin scene — the specific patient who inspired the shift)
- Visionary Q6 (upstream vs. downstream framing — "work at the causal level")
- Connector Q5 (structure law school to maintain active community feedback loops — unique recombinant proposal)
- Provocateur Q7 (nursing is escaping you, not you escaping nursing — subversive reframe)

---

## Ambiguity Notes

- **Cluster imputation risk.** The test-data file does not preserve per-persona cluster sub-headers; this baseline imputes clusters based on persona-native structures from V1 and R7. A different reasonable imputation could produce a different round-robin pick (e.g., Provocateur Q3 instead of Q1 in the first cluster, since Q3 and Q1 both plausibly anchor the "inverting the frame" sub-mode). The baseline's picks follow the "first question in cluster order" rule from D1 step 3.
- **Connector cluster count = 3, quota = 3.** Exact match — no need to handle the "quota > cluster count" or "cluster count > quota" branches. All three Connector sub-modes (import, isomorphism, recombination) get one question each, exactly as R7 predicted.
- **Provocateur / Storyteller / Visionary cluster count = 3, quota = 3.** Same situation. The 3-cluster universal structure for Perspective personas at 5-8 volume is the designed-for case for the D1 round-robin mechanic at low effort.
- **Cluster ordering is significant.** Round-robin picks "one from each cluster in cluster order." The ordering chosen here follows the natural ordering in the test-data file (question numbering). If the orchestrator imputes clusters in a different order, the pick set may differ by 1-2 questions. This is expected variation, not error.

---

**Author:** BL1 subagent
**Generated:** 2026-04-18

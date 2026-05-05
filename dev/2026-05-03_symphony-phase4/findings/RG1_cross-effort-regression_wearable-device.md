# RG1 Per-Topic Regression: wearable-device

**Date:** 2026-05-04
**Topic:** wearable-device
**Samples covered:** 6 (1 min + 1 low + 2 med + 2 high)
**Effort-comparison memo:** `test-runs/wearable-device/effort-comparison.md`
**FA1 cross-link sample:** `wearable-device_high_05` (FA1 sub-finding self-classified PASS but reclassified FAIL by FA1 cross-sample synthesis under strict-zero rule on A2-synth; novel A2 sub-pattern: persona-name-as-bullet-label "Visionary alternatives/scenarios" in `_synthesis.md`)

---

## Sample Map

| Sample | Effort | Cluster | BL1 TL count | Persistent through-line slots covered |
|---|---|---|---|---|
| min_05 | min | go-to-market-user-experience-and-sustainability | 18 | TL-5 (UX/honesty), TL-8 (clinical credibility), TL-12 (subscription) |
| low_04 | low | false-positives-trust-and-alert-behavior | 22 | TL-5 (UX), TL-6 (FP/alert fatigue), TL-3 (privacy-as-uncertainty) |
| med_04 | med | privacy-architecture-data-boundaries | 38 | TL-3 (privacy as moat), TL-2 (clinical-grade discipline) |
| med_07 | med | user-experience-trust-equity | 55 | TL-4 (Fitzpatrick/equity), TL-5 (UX/honesty) |
| high_10 | high | lived-experience-trust-anxiety | 25 | TL-5 (UX/honesty), TL-6 (alert fatigue), TL-4 (skin-tone+anxiety equity) |
| high_05 | high | privacy-architecture-and-the-capability-gap-tradeoff | 26 | TL-3 (privacy as moat), TL-9 (descope/scope), TL-7 (FL premature) |

The 6 sampled clusters cover **distinct sub-topics** (no two samples target the same effort-comparison through-line as primary axis). The matrix below uses memo §3's 12 persistent through-lines as rows; presence is checked per-sample against the corresponding `_summary.md`. "n/a-cluster" means the cluster's BL1 ledger does not center this through-line, so absence is cluster-shape, not drift.

---

## Cross-Effort Through-Line Presence Matrix

Persistent through-lines from `effort-comparison.md` §3 as rows; the 6 sampled `_summary.md` outputs as columns. Y = surfaces substantively; partial = substance present but compressed/implicit; n/a-cluster = cluster does not center this TL; - = absent where it should appear.

| memo TL | min_05 | low_04 | med_04 | med_07 | high_10 | high_05 | Notes |
|---|---|---|---|---|---|---|---|
| TL-1 PPG binding constraint / sensor-quality | partial (TL-17 form-factor) | n/a-cluster | n/a-cluster | partial (Fitzpatrick) | partial (form-factor) | n/a-cluster | covered as form-factor at min/med-07/high-10 |
| TL-2 Clinical-grade discipline / build-for-clinical | Y (TL-15, TL-16, TL-11) | Y (TL-4 attorney review, TL-12 dual profiles) | Y (clinical-vault, FDA SaMD attestation) | Y (cardiology partnerships before launch) | partial (clinical mode in long-term) | Y (FDA pathway, clinical vault) |
| TL-3 Privacy enforced not asserted | Y (TL-13 verifiable architecture) | partial (uncertainty disclosure as legal) | **Y (load-bearing — entire summary)** | partial (per-recipient sharing) | Y (privacy-as-felt-experience) | **Y (load-bearing — verifiable non-knowing)** |
| TL-4 Skin-tone / Fitzpatrick bias | Y (conspicuous absence) | partial (equity-in-anxiety-load gap) | n/a-cluster | Y (immediate next step #3, ≥100 users, public) | n/a-cluster | n/a-cluster |
| TL-5 Honest UX > diagnostic UX | Y (TL-1, TL-3, TL-4 confidence indicator) | **Y (load-bearing — TL-13/TL-14)** | partial (dinner-table test) | Y (anxiety-as-substrate, 2am alert) | **Y (load-bearing — pre-launch FP ceiling)** | partial (felt privacy, per-event consent) |
| TL-6 False-positive / alert fatigue | partial (TL-3 honest FP rate) | **Y (load-bearing — TL-1 cliff)** | n/a-cluster | Y (sensitivity-tuned alerts trust killer) | **Y (load-bearing — <1/30d ceiling)** | n/a-cluster |
| TL-7 Federated learning premature | n/a-cluster | n/a-cluster | partial (federated as flex point) | n/a-cluster | n/a-cluster | Y (post-launch FL with DP — long-term) |
| TL-8 Clinical credibility / handoff is moat | Y (TL-5, TL-11, TL-15) | Y (PCP routing TL-18) | Y (clinical-partner pre-negotiation) | Y (cardiology before launch) | Y (false-negative human outreach) | Y (FHIR-export clinical-network month 18) |
| TL-9 12 engineers / 18 mo over-scoped / descope | n/a-cluster | partial (12-person team / 18-mo runway) | partial (defer FL/HIPAA cert) | partial (defer clinical vs consumer) | n/a-cluster | partial (consumer/enterprise SKU split) |
| TL-10 US 510(k) before EU MDR | partial (TL-15 510(k) mention) | partial (consumer→clinical config) | partial (FDA SaMD draft guidance) | partial (regulatory experts engaged) | partial (clinical mode 510(k)) | partial (FDA pathway) |
| TL-11 90-day field experiment / IRB | Y (TL-2 14-day baseline; TL-16 50-pt IRB) | partial (90-day anxiety study) | partial (3rd-party adversarial audit) | Y (Fitzpatrick study, consent test) | Y (longitudinal trust-arc study) | Y (focus group, adversarial audit) |
| TL-12 Subscription multi-channel / no paywall alerts | Y (TL-10 alerts always free) | n/a-cluster | n/a-cluster | n/a-cluster | n/a-cluster | partial (consumer/enterprise SKU split) |

**Coverage observations:**
- Every memo persistent TL surfaces **somewhere** in the 6 samples with at least partial fidelity. No memo TL is universally absent.
- TL-3 (privacy enforced) and TL-5 (honest UX) are the cross-effort load-bearing lines: each surfaces strongly in 4–5 of 6 samples, in cluster-appropriate framing (verifiable architecture at min, FP-handling at low, structural irrevocability at med-04, felt-privacy at high-10, verifiable-non-knowing at high-05).
- TL-9 (descope) and TL-7 (federated learning premature) are **regime-mandated late surfacers** per memo §6: they only emerge structurally at med+ and high respectively. The 6 samples are consistent with the memo's enumeration.

---

## Cross-Effort Variance Classification

| Through-line | Pattern | Classification | Rationale |
|---|---|---|---|
| TL-3 (privacy enforced) qualitative depth | min: "auditable architecture" → low: "uncertainty as legal lever" → med-04: "structural irrevocability" + "Privacy Commitments vs. Optimization Knobs" doc → high-05: "verifiable non-knowing" categorical reframe | **regime-mandated divergence** | Categorical reframe ("verifiable non-knowing") surfaces as headline at high; med-04 already names the *structural-irrevocability* upgrade beyond min/low's policy framing. Per the two-regime lens, min/low cannot surface a categorical reframe by construction. Not drift. |
| TL-9 descope: arrhythmia-only / drop-the-NPU | absent at min/low (cluster-shape and regime); not load-bearing in med-04/med-07 cluster shapes; not load-bearing in high-10/high-05 cluster shapes either | **regime-mandated + cluster-shape** | The descope is the memo's headline `high`-only reframe (memo §4.2, §5.1, §5.2). Absence at min/low is regime-mandated; absence in the 4 sampled med/high clusters is **cluster-shape** because none of the 4 clusters is the scope/architecture cluster. The memo's `high`-only reframe lives in unsampled high clusters. Not drift. |
| TL-6 false-positive cliff structure | absent at min summary as a named cliff (TL-1 of low); present at low summary as central; present at high-10 summary as central; n/a at med-04, partial at med-07 | **intentional (effort branching)** + cluster-shape | The "cliff not slope" framing first appears at low (low_04 BL1 TL-1) and is preserved cleanly at high-10. Min has the building blocks (TL-3 honest FP rate, TL-4 confidence UI) but does not name the cliff. Per memo §6.1, "alert fatigue is a cliff" is a `low`+ insight. Not drift. |
| TL-4 Fitzpatrick / skin-tone bias | min: surfaces in conspicuous-absences (regime-correct slot); low: surfaces in neither-lens-gaps (regime-correct slot); med-07: full body insight with specific protocol (≥100 users, publish results); med-04 + high-05 + high-10: cluster-shape n/a | **regime-mandated divergence** for slot location; **cluster-shape** for med-04 / high-05 / high-10 absence | Conspicuous-absences at min and neither-lens-gaps at low are exactly the regime-mandated slots PP1 §5.2 enumerates. Med-07 is the equity cluster and surfaces it operationally with public-commitment language. The other 3 samples don't center equity. Not drift. |
| TL-5 honest UX (load-bearing spec) | min: TL-1 (limitation disclosure as feature) and TL-4 (3-zone confidence); low: TL-13/TL-14 (uncertainty surfacing + tier-based plain-English) — sharper; med-04: dinner-table test partial; med-07: "anxiety as substrate" reframe; high-10: hard pre-launch FP ceiling + show-your-work transparency | **intentional (effort branching)** | Each tier sharpens the prior — confidence UI → uncertainty-as-liability lever → felt-privacy interface → operationalized FP ceiling. No tier *drops* the prior. Not drift. |
| Convergence-count phrasing ("six of seven") | absent at min (n/a — single voice); absent at low (n/a — 2 personas, "both lenses agreed"); absent at med-04/med-07 (mostly "every persona", "convergent across personas"); present at high-10 ("convergent across all seven personas") and high-05 ("five of seven personas independently flagged… convergent across all seven personas") | **regime-mandated divergence (NEW)** | Seven-persona convergence-counting is a structural high-tier capability per the memo §4.1 ("only level that quantifies convergence"). Not drift. |
| Conspicuous-absences section | present at min summary (3 items: pricing, intl regulatory, churn); absent at med-04/med-07/high-10/high-05 summaries; "neither-lens gap" present at low summary | **regime-mandated divergence (NEW)** | Conspicuous-absences are min-distinctive; neither-lens-gaps are low-distinctive. Both surface in exactly the right effort slots. Not drift. |
| Central Tension field | absent at min as labeled section (substance is implicit); present at low summary as labeled "Central Tension" field; absent at med-04 and med-07 as labeled section (substance present in exec summary); absent at high-10 as labeled section; absent at high-05 as labeled section but exec ¶1 is essentially the BL1 candidate verbatim ("simultaneously the company's strongest moat and its most under-priced liability") | **DRIFT (cross-link to FA1/PP1)** | PP1 P0 finding. FA1 confirms 0/16 use a `## Central Tension` field at top of `_summary.md` for med/high; only 4/16 emit one explicitly anywhere. Wearable's high-05 has the substance verbatim but not as a labeled field. The med samples submerge it. **Cross-link to FA1:** matches FA1's PP1 P0 alignment, ELEVATED to saturated RP1 item #5. |
| Persona-name leakage (Mode 4 sub-pattern) | n/a at min/low (no personas to leak); not detected in `_summary.md` at med-04/med-07/high-10; **present at high-05 `_synthesis.md`** as "**Visionary alternatives**" / "**Visionary scenarios**" capitalized bullet labels | **DRIFT — novel A2 sub-pattern** (cross-link to FA1) | FA1 sub-finding for high-05 explicitly flagged this as Mode 4 sub-pattern (persona-name-as-bullet-label) — capitalized "Visionary" used as bullet-summary tag where bullet content is exclusively from Visionary persona. **Cross-link to FA1:** authoritative FA1 attribution; RG1 inherits. RP1 fix lives in `phase4_full-synthesis.md` Document 2 instructions. Note: high-05 `_summary.md` itself uses lowercase "visionary alternatives" which is borderline (could be the English adjective); the strict drift is in `_synthesis.md`. |
| Med summary content compression (FA1 Mode 1) | not directly observed in this 6-sample diff (med-04 and med-07 each preserve their major BL1 TLs in `_summary.md`); FA1 cross-sample synthesis predicts med-effort `_summary.md` is categorically worse on A3-content (0/4 PASS at med across all 10 topics) | **partial drift — wearable counter-example to topic-wide pattern** | The wearable med samples are wordy (med-04 at 17,355 B is the largest summary in the manifest) and preserve more content than the FA1 med-effort norm. Not a within-wearable drift, but RG1 flags it as topic-favorable evidence: wearable's med summaries appear to escape Mode 1's universal med-fail because the synthesizer expanded summary length rather than compressing into themes. |
| Categorical-reframe explicit staging (FA1 RP1 #6) | n/a at min/low (regime); med-04 names "structural irrevocability vs. policy-level promises" cleanly; med-07 names "anxiety as design substrate, not user error" and "hostile wearable accident" cleanly; high-10 names "emotional erosion as first-class engineering constraint"; high-05 names "verifiable non-knowing" as headline | PASS (no drift) | Wearable is a positive case — FA1 RP1 item #6 (categorical-reframe explicit staging) succeeds in 4/4 med+high samples. The cluster shapes here all happen to surface clean declarative reframes, and the synthesizer crystallizes them. Worth noting in cross-topic synthesis as a topic-favorable pattern. |

**Drift count for this topic:** **2** through-lines drift across efforts (Central Tension field absence; novel A2 persona-name-as-bullet-label at high-05 `_synthesis.md`).
**Regime-mandated divergence count:** **5** (TL-3 categorical reframe at high; TL-9 descope as `high`-only; convergence-count phrasing at high; conspicuous-absences at min only; neither-lens-gaps at low only; TL-4 Fitzpatrick slot-location).
**Intentional variance count:** **3** (TL-5 honest-UX sharpening across tiers; TL-6 cliff-framing first at low; TL-9 cluster-shape absence in 4 sampled med/high clusters).

---

## Within-Effort Consistency

### Med pair (med_04 privacy vs. med_07 UX)

- **Through-line intersection (memo TLs):** ~4 of 12 memo TLs surface in both med_04 and med_07 — TL-2 (clinical-grade), TL-3 (privacy/trust), TL-5 (honest UX/dinner-table), TL-8 (clinical handoff/cardiology). The two clusters target different sub-topics, so most TLs naturally split.
- **XOR (in only one):** TL-4 (Fitzpatrick), TL-6 (alert fatigue) only in med_07; TL-7 (FL premature) only in med_04 partial.
- **Cluster-shape attribution:** All XOR through-lines are explainable by the two clusters' different shapes (privacy-architecture vs. UX-trust-equity). 0 unexplained → 0 prompt instability.
- **Stylistic similarity verdict:** **similar.** Both summaries open with a load-bearing diagnostic ("structurally fragile" for med-04; "building, by default, a hostile wearable" for med-07), both use 5-theme structure, both use Immediate/Near-term/Long-term action ladders, both close with Opportunities/Risks/Trade-offs Key Considerations. Both crystallize a categorical reframe in their first paragraph (med-04: "structural irrevocability"; med-07: "hostile wearable"). Word counts: med-04 ≈ 1,700 words; med-07 ≈ 1,200 words — variance proportional to cluster scope (38 vs. 55 BL1 TLs is reversed but med-04's 8 questions × 4 personas × deep-architecture content drives length).

The med pair is **prompt-stable.** No within-effort drift detected. Both samples land their categorical reframes (FA1 RP1 #6) cleanly.

### High pair (high_10 lived-experience vs. high_05 privacy-capability-gap)

- **Through-line intersection (memo TLs):** ~6 of 12 — TL-2 (clinical), TL-3 (privacy), TL-5 (honest UX), TL-6 (alert fatigue partial), TL-8 (handoff), TL-11 (field experiment).
- **XOR (in only one):** TL-4 (Fitzpatrick) n/a in both; TL-9 (descope) partial only in high-05; TL-12 (subscription) only in high-05.
- **Cluster-shape attribution:** 100% explainable by cluster shape (lived-experience vs. privacy-architecture).
- **Stylistic similarity verdict:** **similar with one note.** Both summaries crystallize their categorical reframes in exec-summary paragraph 1 ("emotional erosion is irreversible neurological reprogramming" / "verifiable non-knowing"). Both pass FA1 axes A1, B, C (under tolerance), D, E. Both use Convergence counts ("convergent across all seven personas" / "convergent across all seven personas: hardware secure enclave + …"). The notable difference: high-05 `_synthesis.md` exhibits the novel **persona-name-as-bullet-label A2 sub-pattern** ("**Visionary alternatives**", "**Visionary scenarios**"); high-10 `_summary.md` does not exhibit this. This is the only stylistic break in the pair and it lives in the `_synthesis.md` shadow doc, not in `_summary.md`. The high pair `_summary.md` files are stylistically consistent.

The high pair is **prompt-stable at the `_summary.md` surface RG1 operates on**, with one A2-synth drift attributable to the novel sub-pattern that surfaced uniquely at high-05.

---

## Format / Quality Drift

| Item | min | low | med-04 | med-07 | high-10 | high-05 | Aligned? |
|---|---|---|---|---|---|---|---|
| Frontmatter `stage` field | "Phase 4: Summary Generation" | "Phase 4: Summary Generation" | "Phase 4: Response Synthesis" | "Phase 4: Response Synthesis" | "Phase 4: Response Synthesis" | "Phase 4: Response Synthesis" | NO — known PP1 contract drift; min/low use "Summary Generation", med/high use "Response Synthesis". This matches the PP1 finding that min/low and med/high stages diverge. **Regime-mandated, not drift.** |
| Frontmatter `synthesis-type` field | absent | absent | "summary" | "summary" | "summary" | "summary" | min/low don't emit (n/a — they only produce summary docs); med/high do. Regime-correct. |
| Frontmatter `model-reported` | claude-sonnet-4-6 | claude-sonnet-4-6 | claude-opus-4-7 | claude-opus-4-7 | claude-opus-4-7 | claude-opus-4-7 | Aligned with manifest expectation. |
| Word count (`_summary.md`) | ~1,000 | ~1,300 | ~1,700 | ~1,200 | ~1,200 | ~1,300 | med-04 outlier on the high side (largest in manifest at 17,355 B); within tolerance — driven by cluster scope. No truncation observed. |
| Central Tension presence as labeled section | absent | **present (labeled)** | absent (substance in exec) | absent (substance in exec) | absent (substance in exec) | absent (substance in exec ¶1, verbatim BL1 candidate) | NO — drift confirmed at med/high. **Matches PP1 finding (Central Tension field absent from med/high prompt) and FA1 saturated RP1 item #5.** |
| Confidence-tag usage | recurring/single (intra-response) | convergent/trade-off/unique:risk/unique:feasibility | none in `_summary.md` (substance only) | none in `_summary.md` (substance only) | embedded prose ("convergent across all seven", "asymmetric") | embedded prose ("convergent across all seven personas", "five of seven", "six-persona-convergent", "all seven personas agreed") | NO — vocabulary divergence between low's bracketed tags and med/high prose-embedded counts. **Matches PP1 finding (tag vocabulary differs across prompts).** |
| Conspicuous Absences section | **present (3 items)** | absent | absent | absent | absent | absent | Regime-correct (min-distinctive). |
| Neither-Lens Gaps section | absent | **present (1 item: equity in anxiety load)** | absent | absent | absent | absent | Regime-correct (low-distinctive). |
| Recommended Actions tier ladder (Immediate/Near-term/Long-term) | present | present | present | present | present | present | Aligned. |
| Convergence-count phrasing | n/a | n/a | minimal | minimal | "convergent across all seven personas" | "convergent across all seven personas / five of seven / six-persona-convergent / all seven personas agreed" | Regime-correct (high-distinctive). |
| Persona-name suppression in `_summary.md` | n/a | n/a | PASS | PASS | PASS | PASS (lowercase "visionary alternatives" borderline-adjective; FA1 conservative count = 0) | Aligned. |
| Persona-name suppression in `_synthesis.md` | n/a | n/a | PASS | PASS | PASS | **FAIL (novel sub-pattern)** — "**Visionary alternatives worth modeling**" + "**Visionary scenarios**" as capitalized persona-name bullet-summary labels | NO — single drift, novel A2 sub-pattern. Cross-link FA1 sample `wearable-device_high_05`. RP1 fix per FA1 item #4 expanded + #7. |

---

## Recommendations for RP1 (topic-level)

Wearable-device's drift is concentrated in two specific patterns, both already captured by FA1's saturated RP1 list:

1. **Persona-name-as-bullet-label in `_synthesis.md` (FA1 RP1 #4 expanded + #7).** Wearable's high-05 sample exhibits the **novel A2 sub-pattern** identified by FA1 — capitalized persona role used as a bullet-summary label ("**Visionary alternatives**", "**Visionary scenarios**") rather than as direct attribution prose. This is structurally Mode 4 (persona-name leakage) but in a structurally different position than the canonical `_summary.md` rhetorical-shortcut form (e.g., the property-management "from the Pragmatist's lens to the Visionary's frame" form). RP1 prompt revision should explicitly forbid persona-name-as-label, even capitalized adjective forms, when the bullet content is drawn predominantly from a single persona. Concrete language already drafted in FA1 sub-finding for high-05: replace "Visionary alternatives" with "Speculative architectural alternatives," etc.

2. **`## Central Tension` field absent at med/high (FA1 RP1 #5; PP1 P0).** Wearable's high-05 has the BL1 Central Tension candidate verbatim in exec ¶1 ("simultaneously the company's strongest moat and its most under-priced liability") but not as a labeled `## Central Tension` field. Med-04 and med-07 each have the substance in their exec summaries but not as labeled fields. Adding the field to the med/high `phase4_full-synthesis.md` prompt mirroring low's existing field is a low-risk, high-leverage fix.

**Topic-favorable patterns worth flagging for cross-topic synthesis:**

- **Wearable escapes FA1 Mode 1 at med** (categorical med-effort A3-content failure). The two wearable med samples preserve their major BL1 TLs in `_summary.md` cleanly. The proximate cause appears to be summary-length expansion (med-04 is the largest in the manifest at 17,355 B). Whether this reflects topic-shape (privacy and UX-equity clusters have load-bearing details that resist compression) or a synthesizer judgment call worth replicating is unclear from the 6-sample window. Worth noting in cross-topic synthesis as a counter-example.
- **Wearable passes FA1 RP1 #6 (categorical-reframe explicit staging) in 4/4 med+high samples.** All four crystallize a clean declarative reframe sentence at top of exec summary (med-04: structural irrevocability; med-07: hostile wearable; high-10: emotional erosion; high-05: verifiable non-knowing). This is unusual — FA1's cross-topic synthesis notes only ~50% of reframe-rich high samples crystallize as headline. Whether this reflects cluster-shape happenstance or topic-shape (wearable's clusters happen to surface clean declarative reframes) is worth the cross-topic synthesizer's attention.
- **Within-effort prompt stability is high.** Both the med pair and the high pair show strong cluster-shape-attributable XOR with no unexplained variance. Wearable is a low-instability topic for RG1's regression purposes.

**Within-wearable RP1 priority order:**
1. Persona-name-as-bullet-label fix (FA1 #4 + #7) — concrete, novel, sample-grounded.
2. `## Central Tension` field at med/high (FA1 #5; PP1 P0) — applies to all 4 wearable med/high samples.

Items 1 and 2 fully cover wearable-device's RG1 drift findings. All other variance in this topic is either regime-mandated (5 patterns) or intentional effort-branching/cluster-shape (3 patterns). Drift / (drift + intentional + regime-mandated) for wearable = 2 / 10 = 20% — above the 5% RP1 stop criterion, driven entirely by the two saturated cross-topic patterns (not by topic-specific drift).

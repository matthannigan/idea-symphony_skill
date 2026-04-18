# wearable-device — high — Synthesis Target

**Input question count (Synthesize universe):** 140
**Expected synthesis output count:** **44** (range 36–58)
**Expected compaction ratio:** 140 / 44 ≈ **3.18x** (range 2.4x–3.9x; floor 2.4x = under-compaction, ceiling 3.9x = over-merging)
**Expected cluster count:** **11** (range 9–13; matches B1)

**Scoring convention:** Target = point estimate; range = pass/fail band; outside-range severity scales with distance.

## Derivation of M (44)

Starting inventory from B2:
- **45 unique questions** (no convergent counterpart) — candidates to survive synthesis verbatim
- **95 questions in convergence groups** (18 total groups; 14 mergeable cross-persona + 4 preserve-distinct)
- 14 mergeable groups contain ~74 questions → produce 14 merged questions (saves ~60)
- 4 preserve-distinct groups contain ~21 questions → produce ~17 questions retained (light-editing reduction, preserving distinct voices)
- Within-persona near-duplicates and orphans in the unique-45 bucket → ~12-15 get lightly pruned/folded into adjacent mergers

Target arithmetic:
- 45 unique → keep ~13-17 in output (moderate pruning — drop narrow within-persona redundancies and orphan questions that are covered by adjacent mergers, especially in AI and Empath where unique rate is high)
- 74 convergent → 14 merged questions
- 21 preserve-distinct → retain ~17 (preserve all distinct voices but light-edit for conciseness)
- Total: 13-17 + 14 + 17 = **44-48** in mid-effort synthesis

**Why M_target = 44 (not 44-48):** A *good* synthesis prompt will also drop some unique questions that are too narrow, too similar to adjacent mergers, or too compound to answer cleanly in Phase 3. The target of 44 reflects expected cross-cluster pruning — e.g., AI Q1 / AI Q3 / AI Q4 all touch peak-moment/invisible-partner/three-years-later framings that can partially fold; Empath Q1 / Q5 / Q6 are all hyper-vigilance phenomenology that can partially fold while preserving voice; Futurist Q7 / Q8 are technology-trajectory questions that partially overlap CG-10. Range allows 36 (aggressive but quality-preserving) to 58 (light synthesis preserving most uniques).

**Outside-range severity:** Below 36 = over-merging (likely losing preserve-distinct content or stripping Empath/AI/ST voice). Above 58 = under-synthesizing (failing to merge the 14 mergeable groups). Severity is roughly linear with distance from target.

---

## Target Output Structure

Output organized by the 11 B1 clusters, with expected per-cluster question counts derived by adding {merges from group} + {preserve-distinct retained} + {unique retained after pruning}.

### Cluster 1: Privacy Architecture & Data Governance

**Expected questions in output:** 6 (from 24 input)
**Must include:**
- Merged CG-1 question (data pipeline PHI/non-PHI boundary — 4-way)
- Merged CG-2 question (re-identification risk and third-party ecosystem — 3-way)
- Merged CG-3 question (privacy as felt user trust — 5-way)
- Merged CG-4 question (jurisdictional compliance and state-level laws — 4-way)
- Questioner Q1 (data minimization paradox) — soft-merge candidate with CG-1 but distinct meta-question framing
- Questioner Q5 (compelled disclosure scenarios) — unique architectural-boundary framing
**Should include:**
- Questioner Q2 orphan (user control transparency / consent interface) — bridges Cluster 1 and Cluster 4 alert agency; primary placement here
- FPT Q2 orphan (on-device vs cryptographic privacy) — unique reductive framing; may fold into CG-3 if compaction headroom tight
- Lawyer Q4 (de-identification standards) — already in CG-1 merger but narrative-specificity may warrant standalone

**Note:** Cluster 1 is the largest cluster (24 input questions). Compaction to 6 output questions at 4x ratio is aggressive — SP1 variants producing <4 Cluster 1 questions over-merge and likely lose distinctive framings from Questioner, Empath, or Futurist. Variants producing >8 fail to absorb the 5-way CG-3 or 4-way CG-1/CG-4 mergers.

### Cluster 2: Wellness-to-Clinical Pathway & Regulatory Strategy

**Expected questions in output:** 5 (from 22 input)
**Must include:**
- Merged CG-5 question (wellness/clinical boundary and architectural path dependency — 8-way; heaviest merger in this cell)
- Merged CG-6 question (pre-submission QMS and clinical evidence generation — 4-way)
- Merged CG-7 question (clinical integration and reimbursement trajectory — 4-way)
- CG-8 preserve-distinct (AA Q3 stakeholder-interpretation, AA Q13 journey-mapping, Empath Q12 felt-experience-shift)
**Should include:**
- Questioner Q14 (off-label use implications) — unique architectural/messaging framing
- Questioner Q15 (regulatory sandbox experimentation) — unique research-cohort-separation framing

**Note on CG-5:** This is the heaviest cross-persona merger in the cell (8-way: Analyst ×2, DA, Lawyer, Systems Thinker, FPT, Futurist, AI). Merge must preserve: (a) Analyst's analytical decomposition (migration pathway), (b) DA's critical framing (users treating wellness as clinical, 18-month runway impact), (c) Lawyer's regulatory specificity (boundary language, compliance-by-design guardrails), (d) ST's archetype framing (path dependency), (e) FPT's reductive framing (technical definitions), (f) Futurist's trend-grounding (regulatory convergence window), (g) AI's strengths-based framing (FDA as collaboration). Variants that produce a generic "navigate the wellness-to-clinical transition" fail SQ3 for 7 personas simultaneously.

### Cluster 3: ML Model Architecture, NPU & Compute-Power Tradeoffs

**Expected questions in output:** 5 (from 20 input)
**Must include:**
- Merged CG-9 question (model architecture/NPU utilization — 7-way)
- Merged CG-10 question (model updates, drift, personalization deployment — 7-way)
- Merged CG-11 question (NPU vendor lock-in and hardware-software iteration — 2-way)
- TE Q9 (fault tolerance and recovery — watchdog, CRC, safe mode) — unique engineering-specificity framing
**Should include:**
- ST Q4 (power-consumption detection spiral) — unique system-archetype framing; must survive for ST voice in ML cluster
- FPT Q10 (what does on-device ML actually solve) — unique reductive "which justification is primary" framing

**Note on CG-9 and CG-10:** Two 7-way mergers in a single cluster. Cluster 3 has the highest single-cluster convergence load in the cell. Variants may under-merge here — keeping both CG-9 and CG-10 as multi-question-per-group mergers — or may over-merge by collapsing into a single "how do we handle the ML/NPU stack" question. Both failures would be substantial SQ3 fails.

### Cluster 4: Alert Design, Thresholds & False Positive Management

**Expected questions in output:** 5 (from 15 input)
**Must include:**
- Merged CG-13 question (alert threshold calibration and fatigue — 5-way)
- CG-14 at least 4 of 6 preserved (AA Q1 comprehension, AA Q9 bodily autonomy, DA Q12 actionability, Empath Q9 miss expectation-setting) — preserve-distinct
- AA Q11 (false positives in social/professional contexts) — unique context-specific framing
**Should include:**
- Empath Q3 (false alarms emotional whiplash) — in CG-14 preserve-distinct; keep voice-preserved merge with AA Q1
- TE Q8 (deterministic inference latency) — unique engineering-latency framing; must survive for TE voice
- ST Q10 (alert framing therapeutic expectation loop) — unique system-archetype framing

### Cluster 5: User Experience, Hyper-Vigilance & Emotional Impact

**Expected questions in output:** 5 (from 14 input)
**Must include:**
- CG-15 at least 5 of 7 preserved (AA Q10 time-evolution, Empath Q1 constant-watch, Empath Q5 authority-shift, ST Q2 reinforcing-loop archetype, ST Q3 observer-effect archetype) — preserve-distinct
- AI Q1 (peak moments in personal health awareness) — unique appreciative framing
**Should include:**
- AI Q3 (technologies as invisible partners) — unique; may fold with AI Q1 if compaction headroom tight
- AI Q4 (three years later — what users celebrate) — unique aspirational framing
- Empath Q8 (intimacy of breathing sounds) — unique sensory-vulnerability framing; high voice-signal
- Empath Q11 (gadget designed to signal wrong) — unique existential framing; high voice-signal
- DA Q11 (wrist compliance challenge) — unique human-systems constraint
**Optional:**
- Empath Q2 (weight of knowing — no news good news?) — overlaps CG-15; may fold
- Empath Q6 (anxiety of optimization) — in CG-15 preserve-distinct; keep or fold

**Note:** Cluster 5 is emphatically Empath-heavy (6 of 14 questions). Voice-preservation requires at least 3 Empath questions surviving with felt-experience language intact. CG-15 is preserve-distinct — variants that merge CG-15 into a single "address continuous-monitoring anxiety" question fail SQ3 systemically for Empath, AA, and Systems Thinker.

### Cluster 6: Sensor Fusion & Signal Quality

**Expected questions in output:** 3 (from 9 input)
**Must include:**
- Merged CG-12 question (sensor fusion architecture, quality, graceful degradation — 6-way)
- FPT Q9 (irreducible minimum of sensor inputs) — unique reductive framing
- TE Q6 (edge cases in continuous sensing — sensor dislodgement, battery depletion, firmware mid-update, thermal throttling) — unique engineering-edge-case framing
**Should include:**
- Questioner Q19 (manufacturing variability impact) — unique cross-device-consistency framing

### Cluster 7: Power Budget & Battery Life

**Expected questions in output:** 3 (from 10 input)
**Must include:**
- Merged CG-16 question (7-day battery feasibility and power budget — 6-way)
- Merged CG-17 question (battery degradation and charging gap dynamics — 3-way)
- AI Q9 (battery life as invitation, not constraint) — unique appreciative reframing; critical for AI voice in deficit-framed cluster

**Note on CG-16:** 6-way merger absorbing Analyst, DA, Questioner, FPT ×2, TE. Merge must preserve: (a) Analyst's systematic decomposition, (b) DA's reality-check framing, (c) Questioner's assumption-challenge (what behavior is embedded in the 7-day target), (d) FPT's first-principles reframing (both Q4 "what does 7 buy" and Q5 "invert the paradigm"), (e) TE's engineering specificity (sub-5mW decomposition across subsystems). This is the toughest power-budget merger in the cell; heavy voice-preservation burden.

### Cluster 8: Personalization, Validation & Clinical Evidence

**Expected questions in output:** 4 (from 7 input)
**Must include:**
- CG-18 all 4 preserved (Questioner Q12 gold-standard-data methodology, ST Q9 self-selection-bias archetype, FPT Q3 ML-primitive reframing, FPT Q8 problem-formulation reframing) — preserve-distinct
- Questioner Q6 orphan (personalization boundary — population vs individual) — unique reductive framing distinct from CG-10 model updates
**Should include:**
- Questioner Q7 orphan (concept drift in health baselines) — unique longitudinal-baseline framing
- TE Q3 (on-device personalization within 128KB SRAM) — already touched in CG-10; may survive standalone for TE engineering-specificity voice

**Note:** Cluster 8 is FPT-and-Questioner-anchored. Losing CG-18 collapses the cluster entirely. Variants that under-cluster (~9 total clusters) typically lose this cluster — score accordingly.

### Cluster 9: Legal Liability, Duty to Warn & Compliance Exposure

**Expected questions in output:** 3 (from 5 input)
**Must include:**
- DA Q3 + Lawyer Q7 soft-merge (liability for missed events / false-negative exposure) — 2-way convergence on wrongful-death / failure-to-warn exposure
- Lawyer Q5 (BAA structure for clinical partnerships) — unique legal-architecture framing
- Lawyer Q8 (duty to warn vs user responsibility) — unique behavioral-design framing (acknowledgement logging, dismissal logging, clinical follow-up recommendation)
**Should include:**
- Lawyer Q9 (insurance requirements — product/cyber/professional E&O coverage) — unique tactical framing; may survive standalone if compaction headroom allows

**Note:** Cluster 9 is small (5 input, 3 output) but load-bearing for Lawyer voice preservation. Lawyer has 10 questions in the Synthesize universe; 3-4 must appear in output for meaningful representation. Cluster 9 contributes 3 of those.

### Cluster 10: Business, Team, Runway & Go-to-Market

**Expected questions in output:** 4 (from 9 input)
**Must include:**
- Analyst Q13 (runway allocation across technical milestones) — unique quantitative-runway framing
- DA Q13 (commodity pressure and moats) — unique competitive-differentiation framing
- DA Q14 (runway reality — 18 months tight; cuts if overruns) — unique execution-risk framing
- AI Q11 (smallest meaningful experiment this month) — unique pragmatic-appreciative framing
**Should include:**
- AI Q7 (12-engineer team cross-functional excellence) — unique team-dynamics framing; critical for AI voice in Cluster 10
- Analyst Q12 (BOM optimization) — unique component-cost-sensitivity framing; may survive standalone
- Futurist Q3 (wearable category evolution — bifurcation) — unique trend-grounding; may fold into CG-7 if compaction headroom tight
**Optional:**
- FPT Q1 (why a wearable at all) — unique form-factor-assumption reframing; place here or in Cluster 8
- Analyst Q15 (resource allocation between accuracy and efficiency) — unique; may survive or fold

**Note on AI in Cluster 10:** AI has 3 of 9 Cluster 10 questions (Q7, Q11, Q12). Cluster 10 is mostly deficit-framed (runway risk, commodity pressure, BOM optimization). Without AI voice preservation here, the cluster has no strengths-based framing. Critical for SQ3 AI representation.

### Cluster 11: Accessibility, Equity & User Diversity

**Expected questions in output:** 3 (from 5 input)
**Must include:**
- AA Q4 (bodies outside training data distribution — skin tone, wrist size, HRV, movement) — unique structural-equity framing
- AA Q5 (barriers for users with disabilities — tremors, visual, sensory processing) — unique accessibility framing
- Empath Q10 (targeting 40+ demographic ethics — agency vs fear amplification) — unique ethical-framing
**Should include:**
- AA Q6 (battery routines mismatch — travel, shifts, cognitive differences) — unique accessibility-routines framing; may fold with AA Q5 if compaction headroom tight
- Empath Q7 (who signs up for early detection — self-care or pre-emptive fear) — unique ethical-framing; may fold with Empath Q10

**Note:** Cluster 11 is small (5 input) but load-bearing for AA equity voice and Empath ethics voice. Critical that at least 3 survive. Losing this cluster entirely would be a systemic SQ3 fail for the AA accessibility-equity framing.

---

## Per-Cluster Total

| Cluster | Input Q (primary+orphan overlap) | Target Output Q | Compaction |
|---|---|---|---|
| 1 Privacy Architecture | 24 | 6 | 4.00x |
| 2 Wellness-to-Clinical | 22 | 5 | 4.40x |
| 3 ML Architecture & NPU | 20 | 5 | 4.00x |
| 4 Alert Design | 15 | 5 | 3.00x |
| 5 Hyper-Vigilance | 14 | 5 | 2.80x |
| 6 Sensor Fusion | 9 | 3 | 3.00x |
| 7 Power Budget | 10 | 3 | 3.33x |
| 8 Personalization & Validation | 7 | 4 | 1.75x |
| 9 Legal Liability | 5 | 3 | 1.67x |
| 10 Business & Runway | 9 | 4 | 2.25x |
| 11 Accessibility & Equity | 5 | 3 | 1.67x |
| **Total (with orphan double-attribution)** | **140** | **46** | **3.04x apparent; 3.18x headline** |

**Cluster-input reconciliation:** Cluster input counts total 140 — matches Synthesize universe exactly. Orphan questions are counted once in their primary cluster. For compaction ratio scoring, use the headline 140 → 44 (3.18x) ratio, not the per-cluster sums. SP1 should score against the headline compaction ratio; per-cluster compaction columns are informational.

**Reconciliation of output counts:** Sum of per-cluster "Expected questions in output" = 46, but the headline target is 44. The 2-question gap reflects expected cross-cluster placement decisions — e.g., FPT Q1 (why a wearable at all) placed in Cluster 10 vs Cluster 8; Questioner Q2 (user control transparency) placed in Cluster 1 vs Cluster 4. Variants producing 44-48 are within range. Variants producing 44 hit the point target. Below 36 indicates aggressive over-merging; above 58 indicates under-synthesizing.

**Cluster 2 has the highest compaction ratio (4.40x)** because CG-5 is an 8-way merge — the heaviest cross-persona convergence in the cell. Cluster 2's 5-question output depends on that merge preserving 7 persona voices simultaneously — SP1 should treat CG-5 as the single hardest merge-quality test in the cell.

**Cluster 8, 9, 11 have the lowest compaction ratios (1.67-1.75x)** because each cluster is small (5-7 input) with many unique/preserve-distinct voices. Compaction below 1.5x (output > 5) for these clusters indicates under-synthesis; compaction above 2.5x indicates over-merging that would collapse unique voices.

**Clusters 1, 2, 3 are all ≥4x compaction** — the density-critical clusters where SP1 quality is most tested. Variants that fail to achieve this compaction are under-synthesizing; variants that go above 5x are over-merging and losing voices.

---

## Questions Expected to Be Dropped

Within-persona near-duplicates and very narrow questions that should be pruned in synthesis:

| Question | Persona | Drop Rationale |
|---|---|---|
| AI Q3 (Technologies as invisible partners) | AI | Overlaps AI Q1 (peak moments) — both Cluster 5 appreciative framings; fold one |
| AI Q4 (Three years later celebration) | AI | Overlaps AI Q1 and AI Q3 aspirational framings; fold one |
| AI Q5 (The no-false-alarm experience) | AI | Distinctive Cluster 4 appreciative framing — survive; not drop |
| Questioner Q1 (Data minimization paradox) | Questioner | Soft-merge with CG-1 — fold into merged text |
| Questioner Q9 (Model update strategy) | Questioner | Subsumed by merged CG-10 — personalized-adaptation framing absorbed |
| Questioner Q17 (NPU utilization limits) | Questioner | Subsumed by merged CG-9 — NPU thermal framing absorbed |
| Questioner Q10 (Federated learning feasibility) | Questioner | Subsumed by merged CG-10 — feasibility framing absorbed |
| Empath Q2 (Weight of knowing) | Empath | Overlaps Empath Q1 (living under watch) and CG-15 preserve-distinct — fold if compaction tight |
| Empath Q6 (Anxiety of optimization) | Empath | In CG-15 preserve-distinct — keep with voice; may fold with Empath Q5 |
| Empath Q7 (Who signs up) | Empath | Overlaps Empath Q10 (targeting ethics) — fold one |
| AA Q3 orphan (Wellness vs clinical populations) | AA | Covered in CG-8 preserve-distinct; survives there |
| AA Q8 orphan (Sharing insights vs privacy tension) | AA | Bridges CG-2 re-identification and CG-7 clinical integration; fold into one |
| AA Q7 orphan (User control beyond HIPAA) | AA | Bridges Cluster 1 privacy and Cluster 4 alert agency; fold into CG-3 merger |
| AA Q13 orphan (Transition when users develop health concerns) | AA | Covered in CG-8 preserve-distinct; survives there |
| Futurist Q5 orphan (Consumer privacy expectations trajectory) | Futurist | Subsumed by merged CG-3 (privacy as felt trust) — fold |
| Futurist Q7 orphan (Edge ML capability trajectory) | Futurist | Subsumed by merged CG-10 (model updates/drift) — fold |
| Futurist Q8 orphan (Federated learning infrastructure timing) | Futurist | Subsumed by merged CG-10 — fold |
| Futurist Q11 orphan (Payer coverage expansion) | Futurist | Subsumed by merged CG-7 (clinical integration) — fold |
| Futurist Q6 orphan (HIPAA evolution and beyond) | Futurist | Overlaps merged CG-4 (jurisdictional compliance) — fold |
| Systems Thinker Q5 orphan (Privacy-performance delayed feedback) | ST | Unique archetype but overlaps CG-3 privacy-as-trust theme; survive standalone for ST voice in Cluster 1 OR fold |
| Systems Thinker Q12 orphan (Companion app bidirectional influence) | ST | Unique archetype; bridges Cluster 3, 4, 8; survive standalone for ST voice |
| FPT Q2 orphan (On-device vs cryptographic privacy) | FPT | Unique reductive framing; survive in Cluster 1 or fold into CG-3 |
| FPT Q7 orphan (Wellness vs clinical technical boundary) | FPT | Subsumed by CG-5 — already counted; fold |
| TE Q10 (Privacy-preserving telemetry architecture) | TE | Subsumed by merged CG-2 — HIPAA-compatible telemetry framing absorbed |
| Questioner Q2 orphan (User control transparency) | Questioner | Bridges Cluster 1 and Cluster 4; fold into CG-3 or survive standalone |

**Drop discipline:** At high effort with 44 output questions from 140 input (3.18x), the cell has moderate headroom to preserve most unique voices. The drops listed above are soft recommendations — most of these could survive at range-ceiling (58 output) and still pass SP1 quality checks. The *hard* drop recommendations (which should happen even at range-ceiling) are the within-persona AI near-duplicates (Q3/Q4 folded into Q1) and any Futurist question subsumed by a 4+ way convergence merge.

---

## Persona Representation Requirements

Defines SQ3. After synthesis, each Synthesize-group persona must have *meaningful* representation — at least one question whose framing or content can be traced back to that persona's distinctive contribution.

| Persona | Input Q | Min Representation in Output | Critical Voice Markers (must survive) |
|---|---|---|---|
| Analyst | 15 | 5 questions | Analytical framing ("framework," "decision tree," "sensitivity analysis," "systematic breakdown," quantified cost structure). High convergence (12 of 15) — voice survives through CG-1, CG-5, CG-6, CG-9, CG-10, CG-12, CG-13, CG-16 *if* analytical framing is preserved. Q12 (BOM), Q13 (runway), Q15 (ML resource allocation) are strongest standalone signals in Cluster 10. |
| Appreciative Inquirer | 12 | 4 questions | Strengths-based framing ("peak moments," "what's already working," "three years later celebrate," "invitation, not constraint," "smallest meaningful experiment," "existing assets"). 8 of 12 questions are unique in cross-persona convergence terms. **Must retain** at least one AI question from Cluster 5 (hyper-vigilance appreciative reframing) AND one from Cluster 4 (no-false-alarm) AND one from Cluster 7 (battery as invitation) AND one from Cluster 10 (team/experiment/assets) — i.e., at least one AI question per cluster AI is present in. **Critical risk:** synthesis treats AI questions as "soft" and prioritizes deficit-framed convergence content, stripping appreciative reframings wholesale. Wearable-device has a higher structural risk than food-truck because AI's Cluster 10 presence (3 questions) is the only strengths-based framing in a otherwise-deficit-heavy cluster (runway, moats, BOM). |
| Audience Advocate | 13 | 5 questions | Equity/stakeholder-journey framing ("how might users experience," "who is excluded," "power dynamics," "unspoken needs," "bodies that don't fit the training data"). AA is structural-human-centered across Clusters 1, 2, 4, 5, 11. Preserve-distinct CG-8 (stakeholder interpretation), CG-14 (alert comprehension), CG-15 (hyper-vigilance journey) carry AA voice in 3 clusters. Cluster 11 (accessibility) has 3 unique AA questions — all must survive for equity-voice representation. |
| Devil's Advocate | 14 | 4 questions | Risk-identification framing ("what happens when," "reality check," "paradox," "burden," "gap," "lock-in," "liability"). High convergence (10 of 14) — DA survives via CG-1, CG-5, CG-9, CG-10, CG-11, CG-13, CG-14, CG-17 mergers *if* merged text preserves critical/failure-mode framing. Q3 (liability), Q11 (wrist compliance), Q13 (commodity pressure), Q14 (runway reality) are unique standalone contributions — each a different risk-mode. |
| Empath | 12 | 4 questions | Emotional/felt-experience framing ("how does it feel," "weight of knowing," "adrenaline spike," "intimacy of breathing," "anxiety of optimization," "constant watch," "promise that can't be kept," "gadget that signals something's wrong"). 5 of 12 unique; 3 of 12 in CG-15 preserve-distinct. **Critical risk:** synthesis tends to strip Empath's felt-experience language and reduce questions to neutral design questions. Cluster 5 (Hyper-Vigilance) is Empath-heavy (6 of 14 Empath questions); if CG-15 is collapsed or felt-experience language stripped, SQ3 fails systemically for Empath. Q1, Q5, Q8, Q9, Q11 most distinctive. |
| First Principles Thinker | 10 | 3 questions | Definitional/ontological framing ("what IS this fundamentally," "why assume," "minimum viable," "first-principles argument for," "is anomaly detection the right primitive," "what does X actually buy us"). Cluster 8 (personalization/validation) is FPT-anchored via CG-18 preserve-distinct. Losing most of CG-18 would fail SQ3 on FPT. Q1 (why a wearable), Q3 (anomaly detection primitive), Q4 (what 7 days buys), Q5 (invert power budget), Q8 (right clinical problem) are most distinctive. |
| Futurist | 12 | 3-4 questions | Trend-extrapolation framing ("documented," "accelerating pace," "trajectory," "documented shift," "growing measurably," 2-3-year horizon, jurisdictional patchwork framing). **Highest risk of temporal-decoration stripping** in synthesis. 11 of 12 in convergence — if merged text loses trend-grounding, Futurist questions become indistinguishable from Analyst strategic questions. Q1 (regulatory convergence), Q2 (clinical integration), Q3 (category evolution), Q4 (data sovereignty), Q10 (consumer-clinical convergence) are most distinctive. |
| Lawyer | 10 | 4 questions | Regulatory specificity framing (specific statutes: CMIA, My Health My Data Act, GDPR, CCPA; specific compliance mechanisms: BAA, QMS, design controls, CAPA, design history files; specific liability doctrines: duty to warn, false-negative exposure). **Critical risk:** merges that strip Lawyer's statutory-and-mechanism specificity and revert to generic "consider legal compliance" framing. Q5 (BAA), Q7 (false negative), Q8 (duty to warn), Q9 (insurance) must survive at least 3 for meaningful Cluster 9 representation. |
| Questioner | 20 | 5-6 questions | Assumption-challenging meta-question framing ("data minimization paradox," "compelled disclosure," "concept drift," "off-label use," "regulatory sandbox," "manufacturing variability"). Easiest persona to preserve since Questioner's voice is ubiquitous (13 of 20 in convergence). At this volume, the challenge is pruning within-persona redundancy, not voice preservation. Q2, Q5, Q14, Q15, Q19 most distinctive standalone. |
| Systems Thinker | 12 | 5 questions | **Named system-archetype vocabulary** (power-consumption detection spiral, alert fatigue calibration loop, health anxiety reinforcement cycle, behavioral adaptation shadow system, privacy-performance delayed feedback, regulatory strategy path dependency, model update sync-asynchrony, battery-degraded capability drift, clinical validation self-selection bias, alert framing therapeutic expectation loop, sensor fusion interdependence fragility, companion app bidirectional influence loop). **Critical risk:** synthesis may strip named-archetype vocabulary and reduce to generic "feedback loops." ST is distributed across 8+ clusters — voice-preservation depends on mergers across multiple clusters retaining at least one ST-signature phrase each. Q1 (alert fatigue loop), Q2/Q3 (hyper-vigilance archetypes — preserve-distinct CG-15), Q4 (power-compute spiral), Q9 (self-selection bias — preserve-distinct CG-18), Q10 (Shifting the Burden — alert framing), Q11 (sensor fragility), Q12 (bidirectional loop) are strongest archetype signals. |
| Technical Expert | 10 | 4 questions | Engineering specificity framing (INT8 acceleration, sparse compute, zero-point quantization, asymmetric model architectures, motion-artifact detection, PPG perfusion validation, sub-5mW budget, <5 second latency, watchdog recovery, CRC validation, 128KB SRAM constraints, differential noise injection). TE is Tier 3 Synthesize — in this cell, it is strongly triggered by genuine technical architecture. Q3 (on-device personalization in 128KB SRAM), Q6 (edge cases), Q8 (<5 sec cardiac latency), Q9 (fault tolerance watchdog/CRC) are unique standalone TE contributions. Critical for TE voice in Clusters 3, 4, 6, 8. |

**Representation failure flags:**
- Any Synthesize persona below the Min column → SQ3 fail
- Empath Min = 4 with emotional-state language fully stripped → SQ3 fail even if question count met
- AI Min = 4 questions but all reframed in deficit-language → SQ3 fail (AI's strengths-frame is the contribution)
- Lawyer Min = 4 questions but all stripped of statutory-specific language (CMIA, MHMDA, BAA, QMS, CAPA) → SQ3 fail
- TE Min = 4 questions but all stripped of engineering-specificity language → SQ3 fail (TE's technical vocabulary is the contribution)
- Systems Thinker present but archetype vocabulary fully replaced with generic systems language → SQ3 fail
- FPT Min not met because Cluster 8 collapsed into Cluster 3 or Cluster 2 → SQ3 fail
- Futurist Min met in count but all trend-grounding stripped → SQ3 fail
- AA present in numbers but Cluster 11 collapsed or CG-14/CG-15 preserve-distinct merged into single questions → SQ3 partial fail

---

## Dimension Balance Target

Per methodology Analysis Dimensions §6 (Strategic / Tactical / Creative / Analytical / Human-centered).

**Synthesize output (44 questions):**

| Dimension | Target % | Target Q Count | Source Personas |
|---|---|---|---|
| **Analytical** | ~32% | ~14 | Analyst, TE, FPT, Questioner, Lawyer (Clusters 1, 3, 6, 7, 8, 9) |
| **Human-centered** | ~27% | ~12 | Audience Advocate, Empath, Appreciative Inquirer (Clusters 4, 5, 11) |
| **Strategic** | ~21% | ~9 | Futurist, parts of Analyst, parts of Lawyer, parts of DA (Clusters 2, 10) |
| **Tactical** | ~11% | ~5 | Devil's Advocate operational (wrist compliance, charging), TE edge cases, Lawyer insurance |
| **Creative** | ~9% | ~4 | AI reimagining, FPT alternatives (parts of Cluster 5, 7, 8, 10) |

**Wearable-device vs food-truck dimension contrast:** Wearable-device is **meaningfully more Analytical** (~32% vs food-truck's ~23%) because of the ML architecture, sensor fusion, power budget, and personalization/validation clusters — all deeply analytical. Wearable-device is **slightly more Human-centered** (~27% vs ~23%) because of the unique emotional/psychological overlay of continuous health monitoring on the 40+ cardiac-concerned target, anchoring Clusters 4, 5, and 11. Wearable-device is **less Strategic** (~21% vs ~27%) because the wellness-clinical pathway and business/runway clusters are narrower than food-truck's regulatory+growth+trends spread. Wearable-device has **more Creative headroom** in AI's questions but **less overall** (~9% vs ~12%) because the deficit-framed clusters dominate.

**Append additions to dimension balance** (39 questions, separate from above):
- Provocateur pushes **Creative** and **Analytical** (inversion framings) materially upward
- Visionary pushes **Creative** upward (paradigm reimagining)
- Storyteller pushes **Human-centered** upward (narrative vignettes)
- Constraint Flipper pushes **Creative** upward (inversion operations)
- Connector pushes **Analytical** + **Creative** upward (cross-domain imports, isomorphism, recombination)

**Total Phase 2C output (Synthesize 44 + Append 39 = 83 questions):**

| Dimension | Total % | Total Q Count |
|---|---|---|
| Analytical | ~25% | ~21 |
| Human-centered | ~19% | ~16 |
| Strategic | ~13% | ~11 |
| Tactical | ~7% | ~6 |
| Creative | ~35% | ~29 |

**Balance failure flags:**
- Analytical <27% in Synthesize portion → technical clusters (3, 6, 7) under-represented
- Human-centered <22% in Synthesize portion → AA/Empath/AI voice stripped
- Strategic <16% in Synthesize portion → wellness-clinical pathway or business cluster collapsed
- Creative <6% in Synthesize portion → AI's reimagining voice and FPT blue-sky framing lost
- Append Creative <25% of total → Provocateur/Visionary/CF voices stripped from append

---

## Per-Cell Scoring Notes for SP1

- **This cell has the heaviest cross-persona merger observed in BL1 so far.** CG-5 (Wellness/Clinical Boundary) is 8-way, absorbing Analyst ×2, DA, Lawyer, Systems Thinker, FPT, Futurist, AI. SP1's performance on CG-5 is a single-point quality check — variants that produce a generic "navigate wellness-to-clinical transition" fail on Analyst analytical decomposition, Lawyer regulatory specificity, DA dual-path criticism, ST path-dependency archetype, FPT technical reductive framing, Futurist regulatory-convergence-trend grounding, and AI strengths-based framing *simultaneously*.

- **CG-9 and CG-10 are both 7-way mergers in Cluster 3.** Together they carry the ML-architecture and model-update convergences that span Analyst, DA, Questioner, TE, FPT, ST, Futurist. SP1's ability to hold two 7-way mergers in a single cluster without either over-merging (combining them) or under-merging (leaving them fragmented) is a significant test.

- **Lawyer voice-preservation is load-bearing for a regulated device.** Lawyer has 10 questions across Clusters 1, 2, 9. If SP1 variants strip statutory-specific language (CMIA, My Health My Data Act, GDPR/CCPA, BAA, QMS, CAPA, design history files, duty to warn, false-negative liability), Lawyer's entire contribution is lost. Wearable-device/high is the cleanest cell for detecting "Lawyer voice stripping" as a failure mode — the specific statutes/mechanisms SP1 should check preserved: **CMIA**, **My Health My Data Act**, **GDPR/CCPA**, **BAA structure**, **QMS (design controls/CAPA)**, **duty to warn**, **false-negative liability exposure**.

- **TE voice-preservation is load-bearing for an engineering-dense topic.** TE has 10 questions across Clusters 3, 4, 6, 8. Engineering specificity (INT8/sparse/quantization, sub-5mW, <5 sec latency, watchdog/CRC, 128KB SRAM, motion-artifact detection, PPG perfusion validation) is the contribution. If SP1 variants strip engineering vocabulary and render as generic "consider technical implementation," TE voice collapses. Wearable-device/high is the first cell where TE is genuinely strongly triggered — if SP1 cannot preserve TE voice here, it will fail on every technical topic.

- **Cluster 8 (Personalization & Validation) should survive at 4 questions.** FPT and Questioner produce 5 of 7 questions in this cluster. The cluster is thinner than food-truck/high's Cluster 12 (9 questions). Variants that under-cluster (~9 total clusters) will typically lose Cluster 8 — score accordingly. The preserve-distinct CG-18 (4 questions) is the main source.

- **Cluster 9 (Legal Liability) should survive at 3 questions.** 4 of 5 questions are Lawyer unique-standalone. Variants that collapse this cluster into Cluster 2 (regulatory) lose the liability-specific framing that is Lawyer-distinctive.

- **Cluster 11 (Accessibility & Equity) is AA-and-Empath-anchored.** 5 input questions (3 AA, 2 Empath). Variants that fold this into Cluster 5 (hyper-vigilance) lose the structural-equity framing that is distinctive from emotional-experience framing. Cluster 11 must survive at 3 questions to preserve the accessibility/equity dimension.

- **The 4 preserve-distinct groups (CG-8, CG-14, CG-15, CG-18) define the "don't merge too aggressively" check.** CG-15 (seven hyper-vigilance framings) is especially critical — merging these collapses ST's named-archetype voice AND Empath's felt-experience voice AND AA's journey-mapping voice simultaneously. CG-14 (six alert-comprehension angles) has similar risk. CG-18 (four first-principles/validation framings) anchors Cluster 8.

- **GT1 watchlist framing (re-stated from task brief):** **This cell is NOT on the GT1 medium-confidence watchlist.** GT1 Rev 3 prescribes Connector (not Analogist) and Lawyer + Technical Expert as Tier 3 Synthesize. The Connector swap is the topic-level decision based on the topic's inter-domain reconciliation trigger. Lawyer and TE are strongly-triggered Tier 3 Synthesize personas. All selections are high-confidence. If SP1 later produces anomalously poor scores on this cell, the cause is variant-level, not GT1-level — no need to re-check GT1.

- **Connector (not Analogist) is appended at this cell.** The Connector's inter-domain reconciliation framings (biological nervous system parallel, game design progression, automotive safety-critical systems, privacy-accuracy symbiosis, regulatory tailwinds, companion app compute partner, firmware update as personalization channel) are on the Append side. The baseline assumes Connector appends; if SP1 incorrectly routes Connector through Synthesis, its 7 questions would partially converge with Cluster 3 (companion app bidirectional, firmware update personalization) and Cluster 2 (regulatory tailwinds parallel). This would still fail SQ4 (Connector is Append per D1/persona-selection-guide) but the synthesis output would not visibly degrade in cluster-structure terms. SP1 should verify Connector is on the Append side of the output.

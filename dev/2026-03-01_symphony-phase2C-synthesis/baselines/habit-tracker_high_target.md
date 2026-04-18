# habit-tracker — high — Synthesis Target

**Input question count (Synthesize universe):** 121
**Expected synthesis output count:** **45** (range 35–60)
**Expected compaction ratio:** 121 / 45 ≈ **2.7x** (range 2.0x–3.5x; floor 2.0x = under-compaction, ceiling 3.5x = over-merging)
**Expected cluster count:** **11** (range 9–13; matches B1)

**Scoring convention:** Target = point estimate; range = pass/fail band; outside-range severity scales with distance.

## Derivation of M (45)

| Bucket | Input questions | Output questions after synthesis | Notes |
|---|---|---|---|
| 11 mergeable convergence groups (CG-1, 3, 4, 6, 7, 8, 10, 11, 12, 14, 15, 16, 18) | 37 | 11 (one merged Q per group) | Saves 26 |
| 7 preserve-distinct convergence groups (CG-2, 5, 9, 13, 17 — totaling 5 groups; counted as 7 above) | ~13 | ~13 (kept verbatim or lightly edited) | No merge |
| 50 unique questions | 50 | ~21 (light pruning per cluster: drop redundant within-persona repeats; some uniques become "see also" notes) | Saves ~29 |
| Wait — recount: 37 + 13 + 50 = 100 ≠ 121 | | | |

**Reconciliation note:** The 121 input minus 71 in convergence (CG-1 through CG-18) = 50 unique. The 71 in convergence break down as: 11 mergeable groups containing 37 questions (CG-1: 4, CG-3: 5, CG-4: 4, CG-6: 4, CG-7: 4, CG-8: 3, CG-10: 2, CG-11: 2, CG-12: 2, CG-14: 3, CG-15: 3, CG-16: 3, CG-18: 3 = 40, but CG-18 dropped one count due to overlap; precise count = ~37-40). Preserve-distinct contains 31-34 questions (CG-2: 2, CG-5: 3, CG-9: 3, CG-13: 2, CG-17: 2 = 12; remaining 19-22 are within-cluster within-persona near-duplicates handled by per-persona pruning, not formal convergence groups).

**Cleaner restatement:**
- 50 unique → keep ~25-30 in output (light pruning)
- ~40 convergent questions in 13 mergeable groups → merge to 13 questions
- ~12 convergent questions in 5 preserve-distinct groups → keep all 12
- Within-persona near-duplicates (~19) → drop or fold

= 25-30 + 13 + 12 = **50-55** in mid-effort synthesis.

**Why M_target = 45 (not 50-55):** A *good* synthesis prompt will also drop some unique questions that are too narrow, too similar to others within a cluster, or too compound to answer cleanly in Phase 3. Conservative target of 45 reflects this. Range allows 35 (aggressive but quality-preserving) to 60 (light synthesis preserving most uniques).

**Outside-range severity:** Below 35 = over-merging (likely losing distinctive voices or preserve-distinct content). Above 60 = under-synthesizing (failing to merge the 13 mergeable groups). Severity is roughly linear with distance from target.

---

## Target Output Structure

Output organized by the 11 B1 clusters, with expected per-cluster question counts derived by adding {merges from group} + {preserve-distinct retained} + {unique retained after pruning}.

### Cluster 1: Failure States, Streak Breaks, and Recovery Design

**Expected questions in output:** 5 (from 14 input)
**Must include:**
- Merged CG-1 question (failure states / recovery / shame-spiral prevention)
- CG-2 both questions preserved (Questioner Q12 reframe + AI Q7 streak resilience) — preserve-distinct
- Empath Q9 unique (closed-for-the-day / enoughness)
**Should include:**
- AI Q7 streak resilience (if not in CG-2 preserve)
**Optional:**
- Empath Q12 unique (life transitions — could be folded into Cluster 8)

### Cluster 2: Graduation, Self-Obsolescence, and Anti-Lock-In

**Expected questions in output:** 4 (from 13 input)
**Must include:**
- Merged CG-3 question (graduation as design goal — Audience Advocate, Systems Thinker, Empath, Questioner, FPT)
- AI Q9 unique (evolve over years)
- Devil's Advocate Q10 unique (single-person continuity risk)
**Should include:**
- One additional uniqueness from this cluster's ambient questions
**Optional:**
- Drop AI Q4 (beloved tracker vision) — overlaps Cluster 9

### Cluster 3: Monetization Models vs. User Success Alignment

**Expected questions in output:** 4 (from 13 input)
**Must include:**
- Merged CG-4 question (revenue alignment)
- CG-5 all three preserved (Analyst Q12 freemium, Questioner Q17 paid commitment, Questioner Q18 commodity vs outcome)
**Should include:**
- Analyst Q9 (unit economics) — quantitative grounding
- Analyst Q10 (which monetization undermines goals) — distinct from CG-4 framing
**Optional:**
- Drop redundant Devil's Advocate sub-questions about specific revenue mechanisms

### Cluster 4: Gamification, Extrinsic Motivation, and Dark Patterns

**Expected questions in output:** 5 (from 12 input)
**Must include:**
- Merged CG-6 question (intrinsic vs extrinsic motivation)
- Merged CG-7 question (notification dependency / engagement-trap ethics)
- Empath Q2 unique (supportive friend tone)
- Analyst Q6 (tipping point measurement) — analytical complement to merged CG-6
**Should include:**
- One Empath unique (Q3 hard-day showing up OR Q7 good-enough signals)
**Optional:**
- Drop Devil's Advocate Q5 sub-question (already in CG-6 merge)

### Cluster 5: Privacy, Data Ownership, and Local-First Architecture

**Expected questions in output:** 5 (from 11 input)
**Must include:**
- Merged CG-8 question (informed consent / data minimization)
- CG-9 all three preserved (Audience Advocate Q9, Systems Thinker Q11, Futurist Q5) — preserve-distinct
- Merged CG-10 question (local-first as differentiation)
**Should include:**
- Analyst Q14 unique (privacy vs personalization architecture)

### Cluster 6: Differentiation, Competitive Positioning, and Underserved Segments

**Expected questions in output:** 5 (from 11 input)
**Must include:**
- Merged CG-11 question (underserved segments)
- Merged CG-12 question (radical simplicity differentiation)
- CG-13 both preserved (Systems Thinker Q9 ecosystem differentiation, Futurist Q9 anti-portfolio) — preserve-distinct
- Questioner Q8 unique (don't compete — adjacent category)
**Should include:**
- Analyst Q1 (measurable market gaps) OR Analyst Q2 (differentiation drivers — analytical grounding)

### Cluster 7: Behavioral Science, Habit Theory, and Theory of Change

**Expected questions in output:** 4 (from 11 input)
**Must include:**
- Merged CG-15 question (theory of change interrogation)
- Analyst Q5 unique (habit-formation research)
- FPT Q2 unique (why people abandon — root cause)
- FPT Q3 unique (which behaviors benefit from tracking)
**Should include:**
- Systems Thinker Q7 (Meadows leverage points) — preserves system-archetype vocabulary

### Cluster 8: Inclusion, Accessibility, and Life Context

**Expected questions in output:** 5 (from 9 input)
**Must include:**
- Audience Advocate Q2 unique (excluded by habit language)
- Audience Advocate Q4 unique (excluded by mobile-first)
- Audience Advocate Q6 unique (cognitive accessibility)
- Audience Advocate Q13 unique (life disruptions)
- Systems Thinker Q12 (habit evolution over life)
**Should include:**
- Empath Q12 (life transitions — if not placed in Cluster 1)
**Optional:**
- Audience Advocate Q14 (users who can't track) — could fold into Q13 if compaction needed

### Cluster 9: Emotional Tone, Self-Relationship, and Meaning

**Expected questions in output:** 5 (from 9 input)
**Must include:**
- AI Q1 unique (rewarding feel)
- AI Q5 unique (self-relationship)
- Audience Advocate Q11 unique (self-relationship)
- Audience Advocate Q15 unique (meaning vs compliance)
- Empath Q2 (supportive friend tone) — if not placed in Cluster 4
**Should include:**
- AI Q3 (invisible strengths)
**Optional:**
- AI Q10 (word-of-mouth) — only if compaction headroom

### Cluster 10: Measurement Validity and Metric Choice

**Expected questions in output:** 4 (from 8 input)
**Must include:**
- Merged CG-14 question (frequency vs automaticity)
- Merged CG-16 question (measurement distortion — Goodhart, Hawthorne, tracking paradox)
- CG-17 both preserved (Questioner Q19 DAU proxies, Analyst Q4 UX measurement) — preserve-distinct
**Should include:**
- FPT Q5 unique (minimum viable feedback loop)

### Cluster 11: Technical Architecture, MVP Scope, and Platform Risk

**Expected questions in output:** 4 (from 10 input)
**Must include:**
- Merged CG-18 question (3-month MVP scope realism)
- Analyst Q13 unique (technical failure modes of existing trackers)
- Systems Thinker Q10 unique (platform dependency)
- Futurist Q7 unique (commodity AI moat)
**Should include:**
- Futurist Q8 (mobile-platform restrictions) OR Futurist Q11 (voice-first/ambient — modality risk)

---

## Per-Cluster Total

| Cluster | Input Q | Target Output Q | Compaction |
|---|---|---|---|
| 1 Failure & Recovery | 14 | 5 | 2.8x |
| 2 Graduation | 13 | 4 | 3.3x |
| 3 Monetization | 13 | 4 | 3.3x |
| 4 Gamification | 12 | 5 | 2.4x |
| 5 Privacy | 11 | 5 | 2.2x |
| 6 Differentiation | 11 | 5 | 2.2x |
| 7 Theory | 11 | 4 | 2.8x |
| 8 Inclusion | 9 | 5 | 1.8x |
| 9 Tone & Self | 9 | 5 | 1.8x |
| 10 Measurement | 8 | 4 | 2.0x |
| 11 Technical | 10 | 4 | 2.5x |
| **Total** | **121** | **50** | **2.4x** |

**Reconciliation:** Sum of per-cluster targets = 50, but the total target is 45. The 5-question gap reflects expected cross-cluster pruning (e.g., Empath Q12 placed in either Cluster 1 or Cluster 8, not both). Variants producing 50 are within range (range high = 60). Variants producing 45 hit the point target. Below 35 indicates aggressive over-merging.

---

## Questions Expected to Be Dropped

Within-persona near-duplicates and very narrow questions that should be pruned in synthesis:

| Question | Persona | Drop Rationale |
|---|---|---|
| Q3 (Analyst) feature parity minimum | Analyst | Folds into Cluster 6 differentiation answers; too narrow to stand alone |
| Q7 (Analyst) feedback-loop calibration | Analyst | Subsumed by merged CG-7 (engagement design ethics) and merged CG-6 (intrinsic motivation) |
| Q10 (AI) word-of-mouth | AI | Growth-loop concern is downstream of all other clusters; not a primary brainstorm topic |
| Q3 (DA) NY-resolution churn | DA | Hybrid concern subsumed by Cluster 1 + Cluster 3 merges |
| Q1 (Empath) failure days | Empath | Folded into merged CG-1 |
| Q4 (Empath) overwhelmed users | Empath | Folds into Cluster 8 (life context) or Cluster 9 (tone) |
| Q5 (Empath) failure patterns laid bare | Empath | Folds into Cluster 4 (gamification ethics) — emotional sub-concern |
| Q6 (Empath) engagement-trap trust | Empath | Folded into merged CG-7 |
| Q8 (Empath) returning after past failures | Empath | Folds into Cluster 1 merged content |
| Q10 (Empath) performative social | Empath | Touched by Cluster 4 + Cluster 9 — not standalone-worthy |
| Q11 (Empath) outgrowing app | Empath | Folded into merged CG-3 |
| Q1 (Futurist) gamified backlash | Futurist | Folded into merged CG-7 |
| Q3 (Futurist) digital sabbaticals | Futurist | Either keep as Cluster 11 unique or drop; low priority |
| Q4 (Futurist) local-first regulatory | Futurist | Folded into merged CG-10 |
| Q5 (Futurist) data portability | Futurist | Held by CG-9 preserve-distinct |
| Q6 (Futurist) federation/small-web | Futurist | Niche infrastructure concern; drop unless brainstorm specifically wants it |
| Q10 (Futurist) health-data substrate | Futurist | Niche integration concern; drop unless brainstorm wants it |
| Q11 (Futurist) voice-first/ambient | Futurist | Optional Cluster 11 addition; drop if compaction tight |
| Q11 (Questioner) deeper why/values | Questioner | Folds into Cluster 9 (meaning) |
| Q15 (Questioner) deep value for small community | Questioner | Folds into Cluster 6 differentiation |
| Q20 (Questioner) defending against well-funded copycats | Questioner | Optional Cluster 6 addition; secondary to merged CG-12 |
| Multiple Systems Thinker sub-questions overlapping with merged groups | ST | ST's high cluster contribution means several questions are subsumed by merges |

---

## Persona Representation Requirements

Defines SQ3. After synthesis, each Synthesize-group persona must have *meaningful* representation — at least one question whose framing or content can be traced back to that persona's distinctive contribution.

| Persona | Input Q | Min Representation in Output | Critical Voice Markers (must survive) |
|---|---|---|---|
| Analyst | 15 | 5 questions | Quantitative framing ("what does the data show", "decomposing the architectural risks", "unit economics", "decomposing"), measurement specificity. Q5, Q9, Q13, Q14 distinctive. |
| Appreciative Inquirer | 11 | 4 questions | Strengths-based framing ("what's already working", "invisible strengths", "beloved", positive aspirational tone). MUST avoid AI being scrubbed of its distinctive deficit-avoidance voice. Q1, Q3, Q5, Q9 most distinctive. |
| Audience Advocate | 15 | 5-6 questions | Equity/inclusion framing ("who is excluded", "who gets left behind", structural-stakeholder language). Q2, Q4, Q6, Q11, Q13, Q15 carry the distinctive voice. |
| Devil's Advocate | 12 | 3 questions | Risk/critique framing ("what could go wrong", "perverse incentive"). Easier to preserve via merges since DA is high-convergence. Q10 (single-person continuity) is the unique standout. |
| Empath | 12 | 3-4 questions | Emotional/felt-experience framing ("how does it feel", "emotional tone", gut-instinct language). Critical risk: synthesis tends to strip Empath's emotional-state language and reduce questions to neutral design questions. Q2, Q9 (closed for the day) most distinctive. |
| First Principles Thinker | 10 | 3 questions | Definitional/ontological framing ("what IS this", "necessary and sufficient conditions"). Q1, Q2, Q5, Q9 most distinctive. |
| Futurist | 11 | 3 questions | Trend-extrapolation language ("documented trajectory", "regulatory acceleration"). At-risk because Futurist questions look like Strategic-Tier-1 questions with trend decoration; synthesis may strip the trend framing. |
| Questioner | 20 | 6-7 questions | Assumption-challenging framing ("what if X is wrong", "are we assuming"). Easiest persona to preserve since Questioner's voice is ubiquitous. |
| Systems Thinker | 15 | 5 questions | System-archetype vocabulary (Meadows leverage, "what the hell" effect, "fixes that fail"). Critical: synthesis may strip the named-archetype vocabulary. Q7, Q14 most distinctive. |

**Representation failure flags:**
- Any Synthesize persona below the Min column → SQ3 fail
- Empath Min = 3-4 with emotional-state language fully stripped → SQ3 fail even if question count met
- AI Min = 4 questions but all reframed in deficit-language → SQ3 fail
- Systems Thinker present but archetype vocabulary fully replaced with generic systems language → SQ3 fail

---

## Dimension Balance Target

Per methodology Analysis Dimensions §6 (Strategic / Tactical / Creative / Analytical / Human-centered).

Target distribution for the 45-question output:

| Dimension | Target % | Target Q Count | Source Personas |
|---|---|---|---|
| **Analytical** | ~28% | ~13 | Analyst, FPT, parts of Systems Thinker, Questioner |
| **Human-centered** | ~24% | ~11 | Audience Advocate, Empath, AI, parts of Storyteller-append |
| **Strategic** | ~18% | ~8 | Futurist, parts of Analyst, parts of Systems Thinker |
| **Tactical** | ~18% | ~8 | Devil's Advocate operational concerns, Cluster 4 design questions, Cluster 11 |
| **Creative** | ~12% | ~5 | Appreciative Inquirer's reimagining, parts of FPT, parts of Questioner |

**Append additions to dimension balance** (35 questions, separate from above):
- Provocateur, Visionary, Constraint Flipper push **Creative** materially upward when Append is included
- Storyteller pushes **Human-centered** upward
- Analogist pushes **Creative** upward

**Total Phase 2C output (Synthesize 45 + Append 35 = 80 questions):**

| Dimension | Total % | Total Q Count |
|---|---|---|
| Analytical | ~18% | ~14 |
| Human-centered | ~22% | ~17 |
| Strategic | ~13% | ~10 |
| Tactical | ~13% | ~10 |
| Creative | ~36% | ~29 |

**Balance failure flags:**
- Analytical >40% in Synthesize portion → Analyst dominance / over-synthesis of analytical voice
- Human-centered <15% in Synthesize portion → Empath/AA voice stripped
- Creative <8% in Synthesize portion → AI's reimagining voice and FPT/Questioner blue-sky framing lost

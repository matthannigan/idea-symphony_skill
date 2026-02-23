# Step A: Data Collection Script Results — Analysis

**Date:** 2026-02-19 (updated 2026-02-20)
**Source data:** `docs/dev/2026-02-18_question-generation-eval/question-*_2026-02-19.txt`
**Corpus:** 69 question files (23 personas × 3 topics)

> **Change from prior run (2026-02-18):** Corpus expanded from 66 files (22 personas) to 69 files (23 personas) with the addition of **The Appreciative Inquirer**. All existing persona data is unchanged. Differences in aggregate statistics are entirely attributable to this one addition.

---

## 1. Structural Compliance

### Frontmatter
**100% compliance.** All 69 files have YAML frontmatter. No issues.

### Footer
**65/69 files (94.2%)** have the `**Total questions**` footer. Four files missing it — unchanged from the 22-persona run:

| File | Persona | Notes |
|------|---------|-------|
| space-party/the-lawyer | The Lawyer | Also has 8 clusters (highest for that topic) |
| tool-library/the-connector | The Connector | — |
| tool-library/the-devils-advocate | The Devil's Advocate | — |
| habit-tracker/the-lawyer | The Lawyer | — |

The Lawyer is missing footers in 2/3 files — a pattern, not a fluke. The other two are one-offs. The Appreciative Inquirer has footers in all 3 files.

### Question Count Mismatch

**The `question_count` vs `claimed_questions` mismatch is pervasive and systematic.** Of 65 files with footers, nearly all show mismatches. The pattern is overwhelmingly `actual > claimed` — the regex `**[^*]+**` matches more lines than the personas' self-reported counts.

**Root cause:** The regex picks up follow-up elaboration lines that use bold formatting but aren't independent questions. For example, `**What if X?** How would Y...` counts as 1 question, but `**What about Z?**` on a subsequent line within the same question's elaboration also matches the pattern. The claimed counts are likely more accurate representations of distinct questions.

**Implication for qualitative analysis:** Use claimed question counts from footers as the primary metric, not regex-matched counts. The structural check script's question_count column is inflated and should not be used for cross-persona comparison.

**Revised question count baseline (from claimed counts where available):**
- Range: 14–26 claimed questions per file
- Most files claim 15–20 questions (consistent with the prompt's "15-20 questions" target)
- Outliers: The Questioner claims 22–26 (consistently over-generates)

**The Appreciative Inquirer's claimed counts:** 20, 18, 17 — within the typical 15–20 range. Its regex-matched counts (26, 26, 21) show among the largest gaps in the corpus, suggesting heavy use of bold formatting within question elaborations.

### Cluster Count Distribution

| Clusters | Files | % |
|----------|-------|---|
| 4 | 4 | 6% |
| 5 | 55 | 80% |
| 6 | 4 | 6% |
| 7 | 4 | 6% |
| 8 | 2 | 3% |

**Strong convergence on 5 clusters, but slightly less dominant than before.** 80% of files have exactly 5 topic clusters (down from 82% in the 22-persona run), consistent with the prompt's "3-5 topic clusters" guidance. The decrease is entirely due to the Appreciative Inquirer, which uses 4 clusters in 2/3 topics (tool-library, habit-tracker) and 5 in the third (space-party). Its 4-cluster pattern reflects the Appreciative Inquiry 4D framework (Discovery, Dream, Design, Destiny), sometimes expanded with a 5th "Amplifying" cluster.

Files with 4 clusters: Momentum Builder (space-party), Simplifier (space-party), Appreciative Inquirer (tool-library), Appreciative Inquirer (habit-tracker).

Files with 7-8 clusters come from The Lawyer (all 3 topics: 8, 7, 5), The Systems Thinker (space-party: 7), The Provocateur (tool-library: 8), The Questioner (tool-library: 7), The Devil's Advocate (habit-tracker: 7), and The First Principles Thinker (habit-tracker: 6), The Futurist (habit-tracker: 6), The Synthesizer (habit-tracker: 6).

Personas generating more clusters correlate with higher file sizes (The Lawyer is the largest persona by avg bytes). The Appreciative Inquirer's 4-cluster model is an interesting counterpoint — fewer clusters with more questions per cluster.

### Provocateur Anomaly

`habit-tracker/the-provocateur` has **2 clusters with 0 questions** and only 9 regex-matched bold lines total (though claims 17 in footer). This is the only file in the 0-9 question count bin. The Provocateur's habit-tracker output may use a non-standard question format (e.g., longer prose provocations without bold-prefix formatting). This is an outlier worth examining qualitatively, but it doesn't indicate a broken file — the file is 8.6 KB, consistent with the Provocateur's output for other topics.

---

## 2. Volume Patterns

### By Topic

| Topic | Total KB | Avg KB/file |
|-------|----------|-------------|
| space-party | 154.2 | 6.7 |
| tool-library | 177.2 | 7.7 |
| habit-tracker | 173.0 | 7.5 |

Space-party produces ~11% less content than the other two topics. This is consistent with Phase 3 findings (personal/creative topics produce slightly less content than community/social and technical/product topics). The difference is modest and unlikely to be methodologically significant. Habit-tracker avg dropped slightly from 7.6 to 7.5 KB with the Appreciative Inquirer's below-average habit-tracker output (5.6 KB).

### By Persona — Volume Tiers

Grouping personas by average file size across all topics:

**High volume (>8 KB avg):**

| Persona | Avg KB |
|---------|--------|
| The Lawyer | 11.0 |
| The Systems Thinker | 10.3 |
| The Momentum Builder | 8.8 |
| The Audience Advocate | 8.6 |
| The Provocateur | 8.5 |
| The Connector | 8.2 |

**Medium volume (6–8 KB avg):**

| Persona | Avg KB |
|---------|--------|
| The Politician | 7.7 |
| The Futurist | 7.4 |
| The Storyteller | 7.3 |
| The Analogist | 7.3 |
| The Devil's Advocate |
| The Empath | 7.3 |
| The Visionary | 7.1 |
| The Analyst | 7.0 |
| The Accountant | 6.8 |
| The Appreciative Inquirer |
| The First Principles Thinker |
| The Questioner | 6.3 |

**Low volume (<6 KB avg):**

| Persona | Avg KB |
|---------|--------|
| The Pragmatist | 5.9 |
| The Simplifier | 5.8 |
| The Technical Expert | 5.6 |
| The Constraint Flipper | 5.6 |
| The Synthesizer | 5.5 |

**Notable observations:**

- **The Appreciative Inquirer slots into mid-pack.** At 6.5 KB avg, it's virtually identical to the First Principles Thinker — medium volume, unremarkable by size. This belies its structurally distinctive output (see Section 4).

- **The two retired personas (Questioner, Analyst) remain mid-pack.** Neither stands out positively or negatively by volume. The Questioner's name implies it should excel at question generation, but it's 18th of 23 by volume — though it over-generates in claimed question count (22-26 claimed), suggesting many shorter questions rather than fewer elaborated ones.

- **The current Phase 2B set by volume:** Questioner (6.3), Analyst (7.0), Audience Advocate (8.6), Devil's Advocate (7.3), First Principles Thinker (6.5). Average: 7.1 KB. This is right at the corpus mean — neither high nor low volume.

- **File size ≠ question quality.** The Lawyer produces the most content but also generates 7-8 clusters (over-structuring), and much of its volume may be legalistic framing rather than diverse brainstorming territory. Volume is a proxy at best.

---

## 3. Consistency Patterns

### Cross-Topic Consistency (CV%)

**Highly consistent (CV < 10%):**

| Persona | CV% | Interpretation |
|---------|-----|----------------|
| The Empath | 1.4 | Nearly identical output across topics |
| The Systems Thinker | 2.2 | Stable high volume |
| The Questioner | 2.7 | Stable mid volume |
| The Synthesizer | 3.5 | Stable low volume |
| The Constraint Flipper | 3.7 | Stable low volume |
| The Futurist | 4.4 | Stable mid-high volume |
| The Simplifier | 7.8 | Stable low volume |
| The Pragmatist | 9.0 | Stable low volume |
| The Analyst | 9.7 | Stable mid volume |
| The Technical Expert | 9.7 | Stable low volume |

**Moderately consistent (CV 10-25%):**

| Persona | CV% | Spread | Topic pattern |
|---------|-----|--------|---------------|
| The Analogist | 10.1 | 1,823 | — |
| The Appreciative Inquirer | 11.5 | 1,894 | Higher on tool-library (7.5 KB), lower on habit-tracker (5.6 KB) |
| The Accountant | 12.6 | 2,136 | — |
| The First Principles Thinker | 13.3 | 2,164 | — |
| The Connector | 14.1 | 2,709 | Higher on technical topics |
| The Provocateur | 16.3 | 3,463 | Lower on space-party |
| The Storyteller | 16.4 | 2,929 | Higher on tool-library |
| The Audience Advocate | 16.5 | 3,565 | Higher on tool-library |
| The Visionary | 16.5 | 2,925 | Lower on habit-tracker |
| The Lawyer | 17.3 | 4,777 | Scales up for technical topics |
| The Devil's Advocate | 21.6 | 3,882 | Higher on habit-tracker |
| The Momentum Builder | 22.6 | 4,748 | Much higher on habit-tracker |

**High variance (CV > 25%):**

| Persona | CV% | Min topic | Max topic | Spread |
|---------|-----|-----------|-----------|--------|
| The Politician | 30.3 | space-party (5.4 KB) | tool-library (10.8 KB) | 5,716 |

**Key findings:**

- **15 of 23 personas are highly consistent (CV < 15%).** Question generation output is remarkably stable across topic types for most personas. This is *more* consistent than Phase 3 brainstorming responses, suggesting the question-generation task constrains output more tightly than open brainstorming. (Prior run: 14/22.)

- **The Appreciative Inquirer is highly consistent (CV 11.5%).** Its topic sensitivity follows a subtle pattern: community-oriented topics (tool-library, 7.5 KB) draw more from its strengths-based framework than technical/product topics (habit-tracker, 5.6 KB). This makes intuitive sense — Appreciative Inquiry originated in organizational development, and community projects are a natural fit.

- **The current Phase 2B set consistency:** Questioner (2.7%), Analyst (9.7%), Audience Advocate (16.5%), Devil's Advocate (21.6%), First Principles Thinker (13.3%). Mixed — two highly consistent, three moderate. The DA's 21.6% CV is notable: it produces much more on habit-tracker (9.6 KB) than tool-library (5.7 KB).

- **The Politician is the only high-variance persona** (CV 30.3%), producing 2x output for tool-library vs. space-party. This suggests strong topic sensitivity — political/governance framing is more relevant to community infrastructure than children's parties.

- **Topic sensitivity signal is weak overall.** Most personas produce similar volumes regardless of topic, which argues *against* topic-aware persona selection for Phase 2B purely on volume grounds. But volume is only a proxy — the qualitative question territory may vary significantly even when volume is stable.

---

## 4. Cluster Structure Variation

### Cluster Naming — Keyword Frequency by Topic

**Top keywords per topic reveal the thematic center of gravity:**

| Rank | space-party | tool-library | habit-tracker |
|------|-------------|--------------|---------------|
| 1 | experience (11) | community (13) | user (13) |
| 2 | logistics (8) | risk (11) | design (10) |
| 3 | dynamics (8) | systems (10) | data (10) |
| 4 | systems (7) | sustainability (10) | architecture (10) |
| 5 | space (7) | resource (8) | trust (9) |

These reflect genuine differences in topic domain — the personas adapt their framing language to the subject matter. This is expected but confirms that cluster naming is topic-responsive. Compared to the 22-persona run, the addition of the Appreciative Inquirer introduced "design" and "trust" keywords (from its Discovery/Dream/Design/Destiny framework), pushing "design" to rank 2 for habit-tracker (was not in top 5 before) and reinforcing "trust" at rank 5.

### Cluster Balance

**Most personas produce well-balanced clusters.** The dominant pattern is a balance ratio of 0.75-0.83 (min/max questions per cluster), indicating clusters of 3-4 or 4-5 questions.

**Outliers with poor cluster balance:**

| File | Balance | Pattern |
|------|---------|---------|
| habit-tracker/the-provocateur | 0.00 | 2 empty clusters (format anomaly) |
| space-party/the-technical-expert | 0.40 | 2-5 range |
| space-party/the-empath | 0.50 | 2-4 range |
| space-party/the-lawyer | 0.50 | 2-4 range (8 clusters) |
| space-party/the-constraint-flipper | 0.60 | 3-5 range |
| space-party/the-pragmatist | 0.60 | 3-5 range |
| space-party/the-provocateur | 0.60 | 3-5 range |
| habit-tracker/the-politician | 0.60 | 3-5 range |
| tool-library/the-questioner | 0.60 | 3-5 range |
| tool-library/the-synthesizer | 0.60 | 3-5 range |

The Provocateur's habit-tracker output is a confirmed structural anomaly — empty clusters indicate either a formatting issue or deliberately provocative empty sections.

**The Appreciative Inquirer's cluster balance:** 0.83 (space-party), 0.75 (tool-library), 0.83 (habit-tracker). Well-balanced across the board. The tool-library file has a slightly lower ratio due to one Destiny cluster with 8 questions (the only 8-count cluster in the entire corpus), but this is still within normal range.

### Questions-Per-Cluster Distribution

| Questions/cluster | Cluster count |
|-------------------|---------------|
| 0 | 2 |
| 1 | 1 |
| 2 | 4 |
| 3 | 121 |
| 4 | 153 |
| 5 | 64 |
| 6 | 13 |
| 8 | 1 |

**3-4 questions per cluster is the dominant pattern** (274 of 359 clusters, 76%). The Appreciative Inquirer's clusters skew higher: most have 5-6 questions per cluster, with one at 8. This reflects its fewer-but-denser cluster structure — 4 deep clusters vs. the typical 5 shallower ones.

### Cluster Count vs. File Size Correlation

Personas with more clusters tend to produce larger files:

| Cluster Count | Personas (examples) | Avg file size |
|---------------|---------------------|---------------|
| 4 clusters | Momentum Builder, Simplifier (space-party), Appreciative Inquirer (tool-lib, habit) | ~6.5 KB |
| 5 clusters | Most personas (55 files) | ~7.1 KB |
| 7-8 clusters | Lawyer, Provocateur (tool-library), Systems Thinker | ~9.5 KB |

This is unsurprising — more clusters means more framing overhead and typically more total questions. The Appreciative Inquirer is an interesting data point: it produces moderate volume (6.5 KB) with only 4 clusters, compensating with higher question density per cluster.

### Cluster Thematic Diversity — First Look

From the per-file cluster listing, some patterns are visible even without deep qualitative reading:

**High thematic overlap (many personas create similar clusters):**
- "Budget/Cost/Financial" clusters appear across Accountant, Analyst, Pragmatist, Devil's Advocate
- "Risk/Safety/Liability" clusters appear across Lawyer, Devil's Advocate, Analyst, Technical Expert
- "Community/Social" clusters appear across Politician, Empath, Audience Advocate, Connector

**Distinctive cluster structures (unique framing):**
- **The Appreciative Inquirer:** Consistent Appreciative Inquiry 4D framework (Discovery, Dream, Design, Destiny) across all topics, sometimes with a 5th "Amplifying" cluster. This is the most methodologically coherent cluster structure in the corpus — it applies a named framework (Cooperrider's 4D) rather than ad-hoc topic clustering. The Discovery phase surfaces strengths and existing assets; Dream envisions aspirational futures; Design builds structures; Destiny focuses on first steps. This strength-based, solution-focused framing is unique in the corpus.
- **The Analogist:** Cross-domain metaphor clusters ("Natural Systems and Biological Analogies," "Historical and Cultural Models") — no other persona structures clusters this way
- **The Provocateur:** Intentionally subversive clusters ("The Anti-Library: What If Tools Were Never Returned?", "The Absence of Adults: Radical Autonomy")
- **The Storyteller:** Narrative-arc clusters ("Arrival & First Impressions," "The Hero's Journey Through Activities")
- **The Constraint Flipper:** Reframing clusters ("Turning Age Into Advantage," "Converting Liability Concerns into Educational Opportunities")
- **The Visionary:** Paradigm-challenge clusters ("Rethinking Participation and Agency," "Redefining 'Space' as a Theme")

**Analytical convergence in cluster naming:**
The Analyst, Devil's Advocate, Questioner, and First Principles Thinker tend to create clusters around: risk assessment, resource allocation, stakeholder analysis, and success criteria. These overlap significantly — supporting the analytical bias hypothesis from the research plan.

**The Appreciative Inquirer as analytical foil:**
The Appreciative Inquirer's framework offers a direct counterpoint to the analytical convergence pattern. Where analytical personas ask "What could go wrong?" (risk) and "How do we measure success?" (criteria), the AI asks "What's already working?" (Discovery) and "What would ideal look like?" (Dream). This complementary framing is exactly the kind of diversity the Phase 2B question-generation step should aim for — opening territory that problem-focused personas systematically miss.

---

## 5. Summary Findings for Step C Planning

### Structural compliance: Minor issues only
- Frontmatter: 100%. Footer: 94.2%. No broken files.
- Question count regex is unreliable — use claimed counts for quantitative comparison.
- The Provocateur's habit-tracker output is a format anomaly, not a missing file.

### Volume: Moderate spread, no showstoppers
- 2x range from smallest (Synthesizer, 5.5 KB) to largest (Lawyer, 11.0 KB) persona.
- The Appreciative Inquirer is medium volume (6.5 KB) — unremarkable by size, distinctive by structure.
- Current Phase 2B set is dead-center average — not a volume problem.
- Retired personas (Questioner, Analyst) are unremarkable by volume.

### Consistency: Remarkably stable
- 15/23 personas have CV < 15% — most personas produce consistent output regardless of topic.
- The Appreciative Inquirer is highly consistent (11.5% CV) with subtle topic sensitivity toward community-oriented topics.
- **This argues against topic-aware selection on volume grounds alone.** Topic sensitivity is weak.
- Exception: The Politician (CV 30.3%) is clearly topic-sensitive.

### Cluster structure: Where the interesting variation lives
- Cluster *count* is mostly uniform (80% have exactly 5). The variation is in cluster *naming and framing*.
- Six personas produce genuinely distinctive cluster structures (Appreciative Inquirer, Analogist, Provocateur, Storyteller, Constraint Flipper, Visionary).
- The Appreciative Inquirer is the newest addition and arguably the most methodologically distinctive — it's the only persona using a named framework (Cooperrider's 4D) for cluster organization.
- Analytical personas converge on similar cluster themes — preliminary support for the analytical bias hypothesis.
- The Appreciative Inquirer's strengths-based framing is a natural complement to the problem-focused analytical cluster convergence.
- **This is where qualitative investigation should focus:** Do different cluster framings open genuinely different brainstorming territory, or is it surface-level labeling over similar underlying questions?

### Prioritization signals for Step C
1. **Highest priority:** Cluster divergence investigation — the cluster structure is the persona's primary output, and it's where the most variation is visible.
2. **High priority:** Analytical bias confirmation — compare combined question territory of current Phase 2B set vs. alternative sets that include Generative/Connective personas and the Appreciative Inquirer.
3. **Medium priority:** Cross-phase convergence — worth investigating for a few key personas (Visionary, Provocateur, Empath, Appreciative Inquirer) to test the "selfless questions" hypothesis.
4. **Lower priority:** Retired persona fitness — the quantitative data doesn't suggest Questioner or Analyst are specially suited to question generation. Volume and consistency are unremarkable.
5. **Potentially skippable:** Topic sensitivity investigation — the CV data suggests most personas are topic-insensitive, with only The Politician as a clear outlier. Unless the qualitative reading reveals hidden topic sensitivity, this may not need a dedicated investigation.

### New signal: The Appreciative Inquirer
The addition of the Appreciative Inquirer provides a strong candidate for Phase 2B consideration:
- **Structural distinctiveness:** Only persona using a named methodology framework for cluster organization
- **Complementary framing:** Strengths-based approach directly counters the analytical convergence pattern
- **Consistent output:** CV 11.5% — reliable across topics
- **Medium volume:** Not an outlier in either direction — fits comfortably in the persona library
- **Higher question density per cluster:** 5-6 questions per cluster vs. typical 3-4, suggesting deeper exploration within each thematic area rather than broader but shallower coverage

Whether this structural distinctiveness translates to genuinely different *question territory* (vs. different labels on overlapping questions) is the key qualitative question for Step C.

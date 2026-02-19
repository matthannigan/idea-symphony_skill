# Step A: Data Collection Script Results — Analysis

**Date:** 2026-02-19
**Source data:** `docs/dev/2026-02-18_question-generation-eval/question-*_2026-02-18.txt`
**Corpus:** 66 question files (22 personas × 3 topics)

---

## 1. Structural Compliance

### Frontmatter
**100% compliance.** All 66 files have YAML frontmatter. No issues.

### Footer
**62/66 files (93.9%)** have the `**Total questions**` footer. Four files missing it:

| File | Persona | Notes |
|------|---------|-------|
| space-party/the-lawyer | The Lawyer | Also has 8 clusters (highest for that topic) |
| tool-library/the-connector | The Connector | — |
| tool-library/the-devils-advocate | The Devil's Advocate | — |
| habit-tracker/the-lawyer | The Lawyer | — |

The Lawyer is missing footers in 2/3 files — a pattern, not a fluke. The other two are one-offs.

### Question Count Mismatch

**The `question_count` vs `claimed_questions` mismatch is pervasive and systematic.** Of 62 files with footers, nearly all show mismatches. The pattern is overwhelmingly `actual > claimed` — the regex `**[^*]+**` matches more lines than the personas' self-reported counts.

**Root cause:** The regex picks up follow-up elaboration lines that use bold formatting but aren't independent questions. For example, `**What if X?** How would Y...` counts as 1 question, but `**What about Z?**` on a subsequent line within the same question's elaboration also matches the pattern. The claimed counts are likely more accurate representations of distinct questions.

**Implication for qualitative analysis:** Use claimed question counts from footers as the primary metric, not regex-matched counts. The structural check script's question_count column is inflated and should not be used for cross-persona comparison.

**Revised question count baseline (from claimed counts where available):**
- Range: 14–26 claimed questions per file
- Most files claim 15–20 questions (consistent with the prompt's "15-20 questions" target)
- Outliers: The Questioner claims 22–26 (consistently over-generates)

### Cluster Count Distribution

| Clusters | Files | % |
|----------|-------|---|
| 4 | 2 | 3% |
| 5 | 54 | 82% |
| 6 | 4 | 6% |
| 7 | 4 | 6% |
| 8 | 2 | 3% |

**Strong convergence on 5 clusters.** 82% of files have exactly 5 topic clusters, consistent with the prompt's "3-5 topic clusters" guidance (personas gravitating to the upper end). Files with 7-8 clusters come from The Lawyer (all 3 topics: 8, 7, 5), The Systems Thinker (space-party: 7), The Provocateur (tool-library: 8), The Questioner (tool-library: 7), and The Devil's Advocate (habit-tracker: 7).

Personas generating more clusters correlate with higher file sizes (The Lawyer is the largest persona by avg bytes).

### Provocateur Anomaly

`habit-tracker/the-provocateur` has **2 clusters with 0 questions** and only 9 regex-matched bold lines total (though claims 17 in footer). This is the only file in the 0-9 question count bin. The Provocateur's habit-tracker output may use a non-standard question format (e.g., longer prose provocations without bold-prefix formatting). This is an outlier worth examining qualitatively, but it doesn't indicate a broken file — the file is 8.6 KB, consistent with the Provocateur's output for other topics.

---

## 2. Volume Patterns

### By Topic

| Topic | Total KB | Avg KB/file |
|-------|----------|-------------|
| space-party | 147.7 | 6.7 |
| tool-library | 169.7 | 7.7 |
| habit-tracker | 167.4 | 7.6 |

Space-party produces ~13% less content than the other two topics. This is consistent with Phase 3 findings (personal/creative topics produce slightly less content than community/social and technical/product topics). The difference is modest and unlikely to be methodologically significant.

### By Persona — Volume Tiers

Grouping personas by average file size across all topics:

**High volume (>8 KB avg):**

| Persona | Avg KB | Phase 3 Class | Phase 3 Status |
|---------|--------|---------------|----------------|
| The Lawyer | 11.0 | — | Active |
| The Systems Thinker | 10.3 | Analytical | Active |
| The Momentum Builder | 8.8 | Generative | Active |
| The Audience Advocate | 8.6 | Analytical | Active |
| The Provocateur | 8.5 | Generative | Active |
| The Connector | 8.2 | Connective | Active |

**Medium volume (6–8 KB avg):**

| Persona | Avg KB | Phase 3 Class | Phase 3 Status |
|---------|--------|---------------|----------------|
| The Politician | 7.7 | — | Active |
| The Futurist | 7.4 | Generative | Active |
| The Storyteller | 7.3 | Generative | Active |
| The Analogist | 7.3 | Connective | Active |
| The Devil's Advocate | 7.3 | Analytical | Active |
| The Empath | 7.3 | Connective | Active |
| The Visionary | 7.1 | Generative | Active |
| The Analyst | 7.0 | Analytical | **Retired** |
| The Accountant | 6.8 | — | Active |
| The First Principles Thinker | 6.5 | Analytical | Active |
| The Questioner | 6.3 | Analytical | **Retired** |

**Low volume (<6 KB avg):**

| Persona | Avg KB | Phase 3 Class | Phase 3 Status |
|---------|--------|---------------|----------------|
| The Pragmatist | 5.9 | Analytical | Active |
| The Simplifier | 5.8 | — | Active |
| The Technical Expert | 5.6 | Analytical | Active |
| The Constraint Flipper | 5.6 | Generative | Active |
| The Synthesizer | 5.5 | Connective | Active |

**Notable observations:**

- **The two retired personas (Questioner, Analyst) are mid-pack.** Neither stands out positively or negatively by volume. The Questioner's name implies it should excel at question generation, but it's 17th of 22 by volume — though it over-generates in claimed question count (22-26 claimed), suggesting many shorter questions rather than fewer elaborated ones.

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

- **14 of 22 personas are highly consistent (CV < 15%).** Question generation output is remarkably stable across topic types for most personas. This is *more* consistent than Phase 3 brainstorming responses, suggesting the question-generation task constrains output more tightly than open brainstorming.

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
| 2 | logistics (8) | risk (11) | data (10) |
| 3 | dynamics (8) | systems (10) | architecture (10) |
| 4 | systems (7) | sustainability (10) | trust (9) |
| 5 | space (7) | resource (8) | technical (9) |

These reflect genuine differences in topic domain — the personas adapt their framing language to the subject matter. This is expected but confirms that cluster naming is topic-responsive.

### Cluster Balance

**Most personas produce well-balanced clusters.** The dominant pattern is a balance ratio of 0.75-0.83 (min/max questions per cluster), indicating clusters of 3-4 or 4-5 questions.

**Outliers with poor cluster balance:**

| File | Balance | Pattern |
|------|---------|---------|
| habit-tracker/the-provocateur | 0.00 | 2 empty clusters (format anomaly) |
| space-party/the-technical-expert | 0.40 | 2-5 range |
| space-party/the-empath | 0.50 | 2-4 range |
| space-party/the-lawyer | 0.50 | 2-4 range (8 clusters) |

The Provocateur's habit-tracker output is a confirmed structural anomaly — empty clusters indicate either a formatting issue or deliberately provocative empty sections.

### Cluster Count vs. File Size Correlation

Personas with more clusters tend to produce larger files:

| Cluster Count | Personas (examples) | Avg file size |
|---------------|---------------------|---------------|
| 4 clusters | Momentum Builder, Simplifier (space-party) | ~6.7 KB |
| 5 clusters | Most personas (54 files) | ~7.0 KB |
| 7-8 clusters | Lawyer, Provocateur (tool-library), Systems Thinker | ~9.5 KB |

This is unsurprising — more clusters means more framing overhead and typically more total questions.

### Cluster Thematic Diversity — First Look

From the per-file cluster listing, some patterns are visible even without deep qualitative reading:

**High thematic overlap (many personas create similar clusters):**
- "Budget/Cost/Financial" clusters appear across Accountant, Analyst, Pragmatist, Devil's Advocate
- "Risk/Safety/Liability" clusters appear across Lawyer, Devil's Advocate, Analyst, Technical Expert
- "Community/Social" clusters appear across Politician, Empath, Audience Advocate, Connector

**Distinctive cluster structures (unique framing):**
- **The Analogist:** Cross-domain metaphor clusters ("Natural Systems and Biological Analogies," "Historical and Cultural Models") — no other persona structures clusters this way
- **The Provocateur:** Intentionally subversive clusters ("The Anti-Library: What If Tools Were Never Returned?", "The Absence of Adults: Radical Autonomy")
- **The Storyteller:** Narrative-arc clusters ("Arrival & First Impressions," "The Hero's Journey Through Activities")
- **The Constraint Flipper:** Reframing clusters ("Turning Age Into Advantage," "Converting Liability Concerns into Educational Opportunities")
- **The Visionary:** Paradigm-challenge clusters ("Rethinking Participation and Agency," "Redefining 'Space' as a Theme")

**Analytical convergence in cluster naming:**
The Analyst, Devil's Advocate, Questioner, and First Principles Thinker tend to create clusters around: risk assessment, resource allocation, stakeholder analysis, and success criteria. These overlap significantly — supporting the analytical bias hypothesis from the research plan.

---

## 5. Summary Findings for Step C Planning

### Structural compliance: Minor issues only
- Frontmatter: 100%. Footer: 94%. No broken files.
- Question count regex is unreliable — use claimed counts for quantitative comparison.
- The Provocateur's habit-tracker output is a format anomaly, not a missing file.

### Volume: Moderate spread, no showstoppers
- 2x range from smallest (Synthesizer, 5.5 KB) to largest (Lawyer, 11.0 KB) persona.
- Current Phase 2B set is dead-center average — not a volume problem.
- Retired personas (Questioner, Analyst) are unremarkable by volume.

### Consistency: Remarkably stable
- 14/22 personas have CV < 15% — most personas produce consistent output regardless of topic.
- **This argues against topic-aware selection on volume grounds alone.** Topic sensitivity is weak.
- Exception: The Politician (CV 30.3%) is clearly topic-sensitive.

### Cluster structure: Where the interesting variation lives
- Cluster *count* is uniform (82% have exactly 5). The variation is in cluster *naming and framing*.
- Some personas produce genuinely distinctive cluster structures (Analogist, Provocateur, Storyteller, Constraint Flipper, Visionary).
- Analytical personas converge on similar cluster themes — preliminary support for the analytical bias hypothesis.
- **This is where qualitative investigation should focus:** Do different cluster framings open genuinely different brainstorming territory, or is it surface-level labeling over similar underlying questions?

### Prioritization signals for Step C
1. **Highest priority:** Cluster divergence investigation — the cluster structure is the persona's primary output, and it's where the most variation is visible.
2. **High priority:** Analytical bias confirmation — compare combined question territory of current Phase 2B set vs. alternative sets that include Generative/Connective personas.
3. **Medium priority:** Cross-phase convergence — worth investigating for a few key personas (Visionary, Provocateur, Empath) to test the "selfless questions" hypothesis.
4. **Lower priority:** Retired persona fitness — the quantitative data doesn't suggest Questioner or Analyst are specially suited to question generation. Volume and consistency are unremarkable.
5. **Potentially skippable:** Topic sensitivity investigation — the CV data suggests most personas are topic-insensitive, with only The Politician as a clear outlier. Unless the qualitative reading reveals hidden topic sensitivity, this may not need a dedicated investigation.

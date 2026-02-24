# D2: Tier 1 Analytical and Structural Persona Effort-Level Volume Mapping

**Date:** 2026-02-24
**Depends on:** V1 per-persona volume-quality (take 2), D1 Perspective Persona Append Strategy, Phase 2B persona selection guide
**Status:** Decided

---

## Decision

Tier 1 Analytical and Structural personas generate variable question volumes by effort level. All questions from these personas flow into Phase 2C synthesis (no append treatment). Volume ranges are set per-persona based on V1 findings, staying above the 8-question compounding floor and below each persona's filler onset threshold.

### Tier 1 Analytical Personas

| Persona | Effort | Generate | Phase 2C Method |
|:---|:---|:---|:---|
| Questioner | Low | 10-15 | Synthesis |
| Questioner | Medium | 10-15 | Synthesis |
| Questioner | High | 15-20 | Synthesis |
| Analyst | Low | 8-12 | Synthesis |
| Analyst | Medium | 10-15 | Synthesis |
| Analyst | High | 10-15 | Synthesis |

### Tier 1 Structural Personas

Structural personas split into two groups based on their V1-validated recommended ranges.

| Personas | Effort | Generate | Phase 2C Method |
|:---|:---|:---|:---|
| Devil's Advocate, Appreciative Inquirer | Low | 8-12 | Synthesis |
| Devil's Advocate, Appreciative Inquirer | Medium | 8-12 | Synthesis |
| Devil's Advocate, Appreciative Inquirer | High | 10-15 | Synthesis |
| Audience Advocate, Systems Thinker | Low | 8-12 | Synthesis |
| Audience Advocate, Systems Thinker | Medium | 10-15 | Synthesis |
| Audience Advocate, Systems Thinker | High | 10-15 | Synthesis |

---

## Rationale

### Volume floors respect the compounding threshold

The V1 take 2 established that below 8 questions, the model shifts cognitive mode from "generating a list of focused questions" to "writing a compressed research brief." All low-effort ranges start at 8, avoiding this compounding zone.

An earlier draft proposed 5-8 for Analyst and Structural personas at low effort. This was revised upward because:
- The Analyst was one of the worst compounders at 5 questions — "each is essentially 3-4 questions combined into a single paragraph with multiple 'breaking this down' clauses" (V1 take 2)
- Structural personas at 5-7 would risk the same compound-question behavior, especially for framework-driven personas like Systems Thinker and Appreciative Inquirer

### Volume ceilings respect filler onset

Each persona's high-effort ceiling stays at or below its V1 filler onset threshold:

| Persona | V1 Filler Onset | High Effort Ceiling | Margin |
|:---|:---|:---|:---|
| Questioner | ~18 | 20 | Slight overshoot acceptable — <5% filler even at 20 |
| Analyst | ~15 | 15 | At threshold — ~10% filler at upper bound |
| Devil's Advocate | ~12 | 15 | Mild overshoot — 15-20% filler possible at upper bound |
| Appreciative Inquirer | ~12 | 15 | Mild overshoot — 20-25% filler possible at upper bound |
| Audience Advocate | ~13 | 15 | Near threshold — 10-15% filler at upper bound |
| Systems Thinker | ~12 | 15 | Mild overshoot — 15-20% filler possible at upper bound |

The Devil's Advocate and Appreciative Inquirer high-effort ceilings (10-15) extend slightly beyond their filler onset (~12). This is an intentional trade-off: at high effort, modest filler (~15-20%) is acceptable because Phase 2C synthesis will deduplicate overlapping questions. The synthesis step acts as a natural filter.

### Structural personas split by recommended range

The V1 take 2 validated two distinct operating ranges within the Structural category:

- **Devil's Advocate and Appreciative Inquirer** — V1 recommended range 8-12, filler onset ~12. These personas have tighter natural boundaries (Black Hat risk framework, 4-phase AI framework) that exhaust productive territory earlier.
- **Audience Advocate and Systems Thinker** — V1 recommended range 10-15, filler onset ~12-13. These personas have broader territory (many distinct stakeholder dimensions, many system archetypes) that supports higher volume.

At medium effort, Devil's Advocate and Appreciative Inquirer stay at 8-12 while Audience Advocate and Systems Thinker move up to 10-15. At high effort, all converge to 10-15.

### Questioner holds steady at low and medium

The Questioner's V1 recommended range is 12-20 with filler onset at ~18. It is the only persona that genuinely benefits from high volume (<5% filler even at 20). Setting low and medium at 10-15 is slightly below the recommended floor of 12, but the lower bound of the range (10) keeps the Questioner above the compounding threshold while maintaining meaningful differentiation from high effort (15-20).

### Analyst caps at 10-15

The initial V1 suggested 15-20+ for the Analyst, but the V1 take 2 revised this downward: "10-15 is more optimal than previously thought" with ~10% filler at 15-20. The refined prompts ("every question must earn its place") compressed the Analyst's useful range. Medium and high share the 10-15 range; the Analyst's effort differentiation comes from the low-effort compression to 8-12 rather than from high-effort expansion.

---

## Expected Phase 2C Synthesis Input by Effort Level

Combining Analytical + Structural personas (Perspective personas handled separately per D1):

| Effort | Analytical Questions | Structural Questions | Total for Synthesis |
|:---|:---|:---|:---|
| Low | 18-27 (Questioner 10-15 + Analyst 8-12) | 32-48 (4 personas × 8-12) | ~50-75 |
| Medium | 20-30 (Questioner 10-15 + Analyst 10-15) | 36-54 (DA/AI 8-12 + AA/ST 10-15) | ~56-84 |
| High | 25-35 (Questioner 15-20 + Analyst 10-15) | 40-60 (4 personas × 10-15) | ~65-95 |

These feed into Phase 2C synthesis alongside any Tier 2/3 personas (high effort only), producing an estimated ~20-30 synthesized thematic clusters.

---

**Last Updated:** 2026-02-24
**Based on:** V1 per-persona volume-quality (take 2), D1 Perspective Persona Append Strategy, Phase 2B persona selection guide

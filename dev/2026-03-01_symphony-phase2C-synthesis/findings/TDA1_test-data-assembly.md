# TDA1 — Test Data Assembly Findings

**Date:** 2026-04-18
**Author:** TDA1 subagent
**Status:** Canonical (human-reviewed 2026-04-18; 3 spot-checks passed: habit-tracker/low Visionary use-as-is, habit-tracker/low Questioner truncate-to-15, tool-library/medium Politician truncate-to-10 from q15-20 source)
**Scope:** Phase 1 of Phase 2C synthesis investigation — assembly of 30 test files (10 topics x 3 effort levels) from Phase 2B persona-eval source data.

---

## 1. Summary Table

| Topic | Effort | Persona Count | Question Count | Synthesize Q | Append Q | Shortfall Flag |
|---|---|---|---|---|---|---|
| habit-tracker | low | 10 | 96 | 68 | 28 | No |
| habit-tracker | medium | 10 | 110 | 82 | 28 | No |
| habit-tracker | high | 14 | 156 | 121 | 35 | No |
| space-party | low | 10 | 103 | 72 | 31 | No |
| space-party | medium | 10 | 115 | 84 | 31 | No |
| space-party | high | 14 | 161 | 124 | 37 | No |
| tool-library | low | 10 | 100 | 69 | 31 | No |
| tool-library | medium | 11 | 123 | 82 | 41 | No |
| tool-library | high | 16 | 180 | 132 | 48 | No |
| food-truck | low | 10 | 101 | 72 | 29 | No |
| food-truck | medium | 11 | 122 | 93 | 29 | No |
| food-truck | high | 16 | 179 | 132 | 47 | No |
| property-management | low | 10 | 100 | 72 | 28 | No |
| property-management | medium | 11 | 120 | 92 | 28 | No |
| property-management | high | 16 | 182 | 146 | 36 | No |
| youth-mentorship | low | 10 | 102 | 75 | 27 | No |
| youth-mentorship | medium | 11 | 121 | 94 | 27 | No |
| youth-mentorship | high | 16 | 179 | 135 | 44 | No |
| school-consolidation | low | 10 | 97 | 69 | 28 | No |
| school-consolidation | medium | 11 | 117 | 79 | 38 | No |
| school-consolidation | high | 16 | 175 | 130 | 45 | No |
| mobile-app | low | 10 | 101 | 72 | 29 | No |
| mobile-app | medium | 10 | 107 | 78 | 29 | No |
| mobile-app | high | 15 | 163 | 128 | 35 | No |
| wearable-device | low | 10 | 104 | 73 | 31 | No |
| wearable-device | medium | 11 | 120 | 89 | 31 | No |
| wearable-device | high | 16 | 179 | 140 | 39 | No |
| career-change | low | 10 | 102 | 73 | 29 | No |
| career-change | medium | 10 | 111 | 82 | 29 | No |
| career-change | high | 15 | 172 | 137 | 35 | No |

## 2. Assembly Decisions

### 2.1 Slicing decision classes

- **use-as-is**: Source count is within the target range. The entire source file is used verbatim.
- **truncate to N**: Source exceeds the range ceiling. We take the first N questions in source order (where N = ceiling).
- **use full file (shortfall by N)**: Source is below the target floor. All available questions are used and the gap is flagged.
- **missing**: No source file exists. The persona's section is stamped with `MISSING:` and escalated via the Missing-data log (Section 4).

### 2.2 Judgment calls where methodology was ambiguous

**Source-tier selection rule.** The methodology's Volume Slicing section states: 'Prefer q10-15 data for Structural/Analytical personas and q05-10 data for Perspective personas.' We extend this to a general rule: match the target range's ceiling to the closest source-tier ceiling.

| Target range | Preferred source tier | Rationale |
|---|---|---|
| 5-8 | q05-08 | Perspective personas' native range |
| 7-10 (FPT high) | q08-12 | Ceiling 10 sits inside q08-12; truncate to 10 |
| 8-10 (Lawyer/Politician/TE) | q08-12 | Ceiling 10 sits inside q08-12; truncate to 10 |
| 8-12 | q08-12 | Direct match |
| 10-15 | q10-15 | Direct match |
| 15-20 (Questioner high) | q15-20 | Direct match |

**Persona ordering rule.** Per instructions: 'Tier 1 (alphabetical), Tier 2 (alphabetical), Tier 3 (alphabetical), Connector/Analogist last.' We interpret this as: Tier 1 minus Analogist (9 personas, alphabetical) -> Tier 2 (if high) -> Tier 3 selected by GT1 (alphabetical) -> Connector or Analogist appended last. This produces consistent ordering across all 30 files regardless of swap state.

**Connector vs Analogist treatment.** At low effort, per methodology, 'Connector/Analogist still applies.' We default to Analogist unless GT1 explicitly prescribes Connector for that topic. GT1 Rev 3 prescribes Connector for 5 of 10 topics (youth-mentorship, school-consolidation, mobile-app, wearable-device, career-change); Analogist for the other 5. We honor GT1's selection at all effort levels, since the swap decision is a topic-level property independent of effort per R7.

**FPT volume mapping.** First Principles Thinker's target is 7-10 at high effort. No source tier `q07-10` exists. We map to q08-12 and truncate to 10 — consistent with R5's Structural classification note that FPT 'exhausts distinctive contribution by 10-11 questions.'

**Question-number normalization.** Source files use two conventions: new-format (2026-02-24) with `N. **Question?**` prefixes, and old-format (2026-02-18/22) without. We strip any leading `N.` and renumber 1..N per persona in the assembled file, preserving question content verbatim.

**Politician at tool-library medium.** No `q08-12` Politician source exists for tool-library (the 2026-02-24 regeneration sweep did not cover Politician for topics where GT1 later assigned it). The available source is `q15-20_2026-02-18`. We apply `truncate to 10` per the target ceiling. This is the single largest gap between source-tier and target-tier in the assembly; downstream consumers should be aware the Politician's tool-library content was generated against an older prompt at a different date.

## 3. Shortfall Log

No shortfalls detected across all 30 files.

### 3.1 Systemic Shortfall Summary

**No systemic shortfall personas detected.** All shortfalls (if any) are isolated and do not warrant BL1 scoring-threshold adjustments.

## 4. Missing-Data Log

No slots missing source data. All 30 test files are fully populated.

## 5. GT1 Dependency Status

**GT1 status:** Canonical (Rev 3, 2026-04-18). Source: `dev/2026-03-01_symphony-phase2B-orchestrator-selection/findings/GT1_ground-truth-assignments.md` and `.../ground-truth/expected-assignments.md`. All Tier 3 selections and Connector/Analogist swap decisions in this assembly derive from GT1 Rev 3 directly; no provisional-flagging is required on this dimension.

### 5.1 BL1 Watchlist (GT1 Medium-Confidence Cells)

GT1 Rev 3 labels the following 5 cells as Medium-confidence — canonical but most revisable during GT1's walkthrough:

| Cell | GT1 Call | Why Medium |
|---|---|---|
| tool-library / medium | Politician | Politician-at-medium rests on reading 'stakeholder complexity' as a strong trigger; strict rubric could rate moderate |
| food-truck / high | Accountant + Politician | Politician-as-moderate rests on regulatory-process-engagement language |
| property-management / high | Lawyer + Accountant (alt: Politician) | 3 strong triggers compete for 2 slots |
| youth-mentorship / high | Lawyer + Politician (alt: Lawyer only) | Politician-as-moderate defensible; Lawyer-only also acceptable |
| school-consolidation / medium | Politician (primary; Accountant also strong — tiebreaker) | Both triggers genuinely strong; 0-1 ceiling forces single pick |

**Framing for BL1:** These cells are canonical but were the most revisable during GT1's walkthrough. Treat their Tier 3 / Connector-Analogist composition as stable, but if SP1 later produces anomalously poor scores on these specific cells, re-check GT1 before blaming the synthesis prompt.

## 6. Handoff Notes for BL1

Per-topic notes flagging test files that require extra care during baseline establishment:

### Tool Library

- **medium**: GT1 Medium-confidence cell. Tier 3 / Connector-Analogist composition is canonical but was revisable during GT1 walkthrough — re-check GT1 if SP1 scores anomalously here.

### Food Truck

- **high**: GT1 Medium-confidence cell. Tier 3 / Connector-Analogist composition is canonical but was revisable during GT1 walkthrough — re-check GT1 if SP1 scores anomalously here.

### Property Management

- **high**: GT1 Medium-confidence cell. Tier 3 / Connector-Analogist composition is canonical but was revisable during GT1 walkthrough — re-check GT1 if SP1 scores anomalously here.

### Youth Mentorship

- **high**: GT1 Medium-confidence cell. Tier 3 / Connector-Analogist composition is canonical but was revisable during GT1 walkthrough — re-check GT1 if SP1 scores anomalously here.

### School Consolidation

- **medium**: GT1 Medium-confidence cell. Tier 3 / Connector-Analogist composition is canonical but was revisable during GT1 walkthrough — re-check GT1 if SP1 scores anomalously here.

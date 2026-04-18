# Assembly Plan

**Generated:** 2026-04-18 by TDA1
**Purpose:** Deliverable 2 — per-slot source-file resolution and slicing decisions. This table is the sole source of truth for reproducing the 30 test files byte-identically.

**Slicing decision vocabulary:**
- **use-as-is** — source count is within target range
- **truncate to N** — source exceeds ceiling; keep first N in source order
- **use full file (shortfall by N)** — source below floor; use all available, flag gap
- **missing** — no source data; slot left empty with MISSING marker in test file

---

| Slot | Target Volume Range | Source File Path | Source Question Count | Slicing Decision | Shortfall? |
|---|---|---|---|---|---|
| habit-tracker / low / Analyst | 8-12 | test-runs/symphony-phase2-questions-persona-eval/habit-tracker/questions/by-persona/the-analyst_q08-12_2026-02-24.md | 10 | use-as-is | No |
| habit-tracker / low / Appreciative Inquirer | 8-12 | test-runs/symphony-phase2-questions-persona-eval/habit-tracker/questions/by-persona/the-appreciative-inquirer_q08-12_2026-02-24.md | 11 | use-as-is | No |
| habit-tracker / low / Audience Advocate | 8-12 | test-runs/symphony-phase2-questions-persona-eval/habit-tracker/questions/by-persona/the-audience-advocate_q08-12_2026-02-24.md | 10 | use-as-is | No |
| habit-tracker / low / Devil's Advocate | 8-12 | test-runs/symphony-phase2-questions-persona-eval/habit-tracker/questions/by-persona/the-devils-advocate_q08-12_2026-02-24.md | 11 | use-as-is | No |
| habit-tracker / low / Provocateur | 5-8 | test-runs/symphony-phase2-questions-persona-eval/habit-tracker/questions/by-persona/the-provocateur_q05-08_2026-02-24.md | 7 | use-as-is | No |
| habit-tracker / low / Questioner | 10-15 | test-runs/symphony-phase2-questions-persona-eval/habit-tracker/questions/by-persona/the-questioner_q10-15_2026-02-24.md | 21 | truncate to 15 | No |
| habit-tracker / low / Storyteller | 5-8 | test-runs/symphony-phase2-questions-persona-eval/habit-tracker/questions/by-persona/the-storyteller_q05-08_2026-02-24.md | 7 | use-as-is | No |
| habit-tracker / low / Systems Thinker | 8-12 | test-runs/symphony-phase2-questions-persona-eval/habit-tracker/questions/by-persona/the-systems-thinker_q08-12_2026-02-24.md | 11 | use-as-is | No |
| habit-tracker / low / Visionary | 5-8 | test-runs/symphony-phase2-questions-persona-eval/habit-tracker/questions/by-persona/the-visionary_q05-08_2026-02-24.md | 8 | use-as-is | No |
| habit-tracker / low / Analogist | 5-8 | test-runs/symphony-phase2-questions-persona-eval/habit-tracker/questions/by-persona/the-analogist_q05-08_2026-02-24.md | 6 | use-as-is | No |
| habit-tracker / medium / Analyst | 10-15 | test-runs/symphony-phase2-questions-persona-eval/habit-tracker/questions/by-persona/the-analyst_q10-15_2026-02-24.md | 15 | use-as-is | No |
| habit-tracker / medium / Appreciative Inquirer | 8-12 | test-runs/symphony-phase2-questions-persona-eval/habit-tracker/questions/by-persona/the-appreciative-inquirer_q08-12_2026-02-24.md | 11 | use-as-is | No |
| habit-tracker / medium / Audience Advocate | 10-15 | test-runs/symphony-phase2-questions-persona-eval/habit-tracker/questions/by-persona/the-audience-advocate_q10-15_2026-02-24.md | 15 | use-as-is | No |
| habit-tracker / medium / Devil's Advocate | 8-12 | test-runs/symphony-phase2-questions-persona-eval/habit-tracker/questions/by-persona/the-devils-advocate_q08-12_2026-02-24.md | 11 | use-as-is | No |
| habit-tracker / medium / Provocateur | 5-8 | test-runs/symphony-phase2-questions-persona-eval/habit-tracker/questions/by-persona/the-provocateur_q05-08_2026-02-24.md | 7 | use-as-is | No |
| habit-tracker / medium / Questioner | 10-15 | test-runs/symphony-phase2-questions-persona-eval/habit-tracker/questions/by-persona/the-questioner_q10-15_2026-02-24.md | 21 | truncate to 15 | No |
| habit-tracker / medium / Storyteller | 5-8 | test-runs/symphony-phase2-questions-persona-eval/habit-tracker/questions/by-persona/the-storyteller_q05-08_2026-02-24.md | 7 | use-as-is | No |
| habit-tracker / medium / Systems Thinker | 10-15 | test-runs/symphony-phase2-questions-persona-eval/habit-tracker/questions/by-persona/the-systems-thinker_q10-15_2026-02-24.md | 15 | use-as-is | No |
| habit-tracker / medium / Visionary | 5-8 | test-runs/symphony-phase2-questions-persona-eval/habit-tracker/questions/by-persona/the-visionary_q05-08_2026-02-24.md | 8 | use-as-is | No |
| habit-tracker / medium / Analogist | 5-8 | test-runs/symphony-phase2-questions-persona-eval/habit-tracker/questions/by-persona/the-analogist_q05-08_2026-02-24.md | 6 | use-as-is | No |
| habit-tracker / high / Analyst | 10-15 | test-runs/symphony-phase2-questions-persona-eval/habit-tracker/questions/by-persona/the-analyst_q10-15_2026-02-24.md | 15 | use-as-is | No |
| habit-tracker / high / Appreciative Inquirer | 8-12 | test-runs/symphony-phase2-questions-persona-eval/habit-tracker/questions/by-persona/the-appreciative-inquirer_q08-12_2026-02-24.md | 11 | use-as-is | No |
| habit-tracker / high / Audience Advocate | 10-15 | test-runs/symphony-phase2-questions-persona-eval/habit-tracker/questions/by-persona/the-audience-advocate_q10-15_2026-02-24.md | 15 | use-as-is | No |
| habit-tracker / high / Devil's Advocate | 10-15 | test-runs/symphony-phase2-questions-persona-eval/habit-tracker/questions/by-persona/the-devils-advocate_q10-15_2026-02-24.md | 12 | use-as-is | No |
| habit-tracker / high / Provocateur | 5-8 | test-runs/symphony-phase2-questions-persona-eval/habit-tracker/questions/by-persona/the-provocateur_q05-08_2026-02-24.md | 7 | use-as-is | No |
| habit-tracker / high / Questioner | 15-20 | test-runs/symphony-phase2-questions-persona-eval/habit-tracker/questions/by-persona/the-questioner_q15-20_2026-02-24.md | 20 | use-as-is | No |
| habit-tracker / high / Storyteller | 5-8 | test-runs/symphony-phase2-questions-persona-eval/habit-tracker/questions/by-persona/the-storyteller_q05-08_2026-02-24.md | 7 | use-as-is | No |
| habit-tracker / high / Systems Thinker | 10-15 | test-runs/symphony-phase2-questions-persona-eval/habit-tracker/questions/by-persona/the-systems-thinker_q10-15_2026-02-24.md | 15 | use-as-is | No |
| habit-tracker / high / Visionary | 5-8 | test-runs/symphony-phase2-questions-persona-eval/habit-tracker/questions/by-persona/the-visionary_q05-08_2026-02-24.md | 8 | use-as-is | No |
| habit-tracker / high / Constraint Flipper | 5-8 | test-runs/symphony-phase2-questions-persona-eval/habit-tracker/questions/by-persona/the-constraint-flipper_q05-08_2026-02-24.md | 7 | use-as-is | No |
| habit-tracker / high / Empath | 8-12 | test-runs/symphony-phase2-questions-persona-eval/habit-tracker/questions/by-persona/the-empath_q08-12_2026-02-24.md | 12 | use-as-is | No |
| habit-tracker / high / First Principles Thinker | 7-10 | test-runs/symphony-phase2-questions-persona-eval/habit-tracker/questions/by-persona/the-first-principles-thinker_q08-12_2026-02-24.md | 10 | use-as-is | No |
| habit-tracker / high / Futurist | 8-12 | test-runs/symphony-phase2-questions-persona-eval/habit-tracker/questions/by-persona/the-futurist_q08-12_2026-02-24.md | 11 | use-as-is | No |
| habit-tracker / high / Analogist | 5-8 | test-runs/symphony-phase2-questions-persona-eval/habit-tracker/questions/by-persona/the-analogist_q05-08_2026-02-24.md | 6 | use-as-is | No |
| space-party / low / Analyst | 8-12 | test-runs/symphony-phase2-questions-persona-eval/space-party/questions/by-persona/the-analyst_q08-12_2026-02-24.md | 10 | use-as-is | No |
| space-party / low / Appreciative Inquirer | 8-12 | test-runs/symphony-phase2-questions-persona-eval/space-party/questions/by-persona/the-appreciative-inquirer_q08-12_2026-02-24.md | 12 | use-as-is | No |
| space-party / low / Audience Advocate | 8-12 | test-runs/symphony-phase2-questions-persona-eval/space-party/questions/by-persona/the-audience-advocate_q08-12_2026-02-24.md | 12 | use-as-is | No |
| space-party / low / Devil's Advocate | 8-12 | test-runs/symphony-phase2-questions-persona-eval/space-party/questions/by-persona/the-devils-advocate_q08-12_2026-02-24.md | 12 | use-as-is | No |
| space-party / low / Provocateur | 5-8 | test-runs/symphony-phase2-questions-persona-eval/space-party/questions/by-persona/the-provocateur_q05-08_2026-02-24.md | 8 | use-as-is | No |
| space-party / low / Questioner | 10-15 | test-runs/symphony-phase2-questions-persona-eval/space-party/questions/by-persona/the-questioner_q10-15_2026-02-24.md | 15 | use-as-is | No |
| space-party / low / Storyteller | 5-8 | test-runs/symphony-phase2-questions-persona-eval/space-party/questions/by-persona/the-storyteller_q05-08_2026-02-24.md | 8 | use-as-is | No |
| space-party / low / Systems Thinker | 8-12 | test-runs/symphony-phase2-questions-persona-eval/space-party/questions/by-persona/the-systems-thinker_q08-12_2026-02-24.md | 11 | use-as-is | No |
| space-party / low / Visionary | 5-8 | test-runs/symphony-phase2-questions-persona-eval/space-party/questions/by-persona/the-visionary_q05-08_2026-02-24.md | 7 | use-as-is | No |
| space-party / low / Analogist | 5-8 | test-runs/symphony-phase2-questions-persona-eval/space-party/questions/by-persona/the-analogist_q05-08_2026-02-24.md | 8 | use-as-is | No |
| space-party / medium / Analyst | 10-15 | test-runs/symphony-phase2-questions-persona-eval/space-party/questions/by-persona/the-analyst_q10-15_2026-02-24.md | 15 | use-as-is | No |
| space-party / medium / Appreciative Inquirer | 8-12 | test-runs/symphony-phase2-questions-persona-eval/space-party/questions/by-persona/the-appreciative-inquirer_q08-12_2026-02-24.md | 12 | use-as-is | No |
| space-party / medium / Audience Advocate | 10-15 | test-runs/symphony-phase2-questions-persona-eval/space-party/questions/by-persona/the-audience-advocate_q10-15_2026-02-24.md | 15 | use-as-is | No |
| space-party / medium / Devil's Advocate | 8-12 | test-runs/symphony-phase2-questions-persona-eval/space-party/questions/by-persona/the-devils-advocate_q08-12_2026-02-24.md | 12 | use-as-is | No |
| space-party / medium / Provocateur | 5-8 | test-runs/symphony-phase2-questions-persona-eval/space-party/questions/by-persona/the-provocateur_q05-08_2026-02-24.md | 8 | use-as-is | No |
| space-party / medium / Questioner | 10-15 | test-runs/symphony-phase2-questions-persona-eval/space-party/questions/by-persona/the-questioner_q10-15_2026-02-24.md | 15 | use-as-is | No |
| space-party / medium / Storyteller | 5-8 | test-runs/symphony-phase2-questions-persona-eval/space-party/questions/by-persona/the-storyteller_q05-08_2026-02-24.md | 8 | use-as-is | No |
| space-party / medium / Systems Thinker | 10-15 | test-runs/symphony-phase2-questions-persona-eval/space-party/questions/by-persona/the-systems-thinker_q10-15_2026-02-24.md | 15 | use-as-is | No |
| space-party / medium / Visionary | 5-8 | test-runs/symphony-phase2-questions-persona-eval/space-party/questions/by-persona/the-visionary_q05-08_2026-02-24.md | 7 | use-as-is | No |
| space-party / medium / Analogist | 5-8 | test-runs/symphony-phase2-questions-persona-eval/space-party/questions/by-persona/the-analogist_q05-08_2026-02-24.md | 8 | use-as-is | No |
| space-party / high / Analyst | 10-15 | test-runs/symphony-phase2-questions-persona-eval/space-party/questions/by-persona/the-analyst_q10-15_2026-02-24.md | 15 | use-as-is | No |
| space-party / high / Appreciative Inquirer | 8-12 | test-runs/symphony-phase2-questions-persona-eval/space-party/questions/by-persona/the-appreciative-inquirer_q08-12_2026-02-24.md | 12 | use-as-is | No |
| space-party / high / Audience Advocate | 10-15 | test-runs/symphony-phase2-questions-persona-eval/space-party/questions/by-persona/the-audience-advocate_q10-15_2026-02-24.md | 15 | use-as-is | No |
| space-party / high / Devil's Advocate | 10-15 | test-runs/symphony-phase2-questions-persona-eval/space-party/questions/by-persona/the-devils-advocate_q10-15_2026-02-24.md | 15 | use-as-is | No |
| space-party / high / Provocateur | 5-8 | test-runs/symphony-phase2-questions-persona-eval/space-party/questions/by-persona/the-provocateur_q05-08_2026-02-24.md | 8 | use-as-is | No |
| space-party / high / Questioner | 15-20 | test-runs/symphony-phase2-questions-persona-eval/space-party/questions/by-persona/the-questioner_q15-20_2026-02-24.md | 20 | use-as-is | No |
| space-party / high / Storyteller | 5-8 | test-runs/symphony-phase2-questions-persona-eval/space-party/questions/by-persona/the-storyteller_q05-08_2026-02-24.md | 8 | use-as-is | No |
| space-party / high / Systems Thinker | 10-15 | test-runs/symphony-phase2-questions-persona-eval/space-party/questions/by-persona/the-systems-thinker_q10-15_2026-02-24.md | 15 | use-as-is | No |
| space-party / high / Visionary | 5-8 | test-runs/symphony-phase2-questions-persona-eval/space-party/questions/by-persona/the-visionary_q05-08_2026-02-24.md | 7 | use-as-is | No |
| space-party / high / Constraint Flipper | 5-8 | test-runs/symphony-phase2-questions-persona-eval/space-party/questions/by-persona/the-constraint-flipper_q05-08_2026-02-24.md | 6 | use-as-is | No |
| space-party / high / Empath | 8-12 | test-runs/symphony-phase2-questions-persona-eval/space-party/questions/by-persona/the-empath_q08-12_2026-02-24.md | 10 | use-as-is | No |
| space-party / high / First Principles Thinker | 7-10 | test-runs/symphony-phase2-questions-persona-eval/space-party/questions/by-persona/the-first-principles-thinker_q08-12_2026-02-24.md | 10 | use-as-is | No |
| space-party / high / Futurist | 8-12 | test-runs/symphony-phase2-questions-persona-eval/space-party/questions/by-persona/the-futurist_q08-12_2026-02-24.md | 12 | use-as-is | No |
| space-party / high / Analogist | 5-8 | test-runs/symphony-phase2-questions-persona-eval/space-party/questions/by-persona/the-analogist_q05-08_2026-02-24.md | 8 | use-as-is | No |
| tool-library / low / Analyst | 8-12 | test-runs/symphony-phase2-questions-persona-eval/tool-library/questions/by-persona/the-analyst_q08-12_2026-02-24.md | 10 | use-as-is | No |
| tool-library / low / Appreciative Inquirer | 8-12 | test-runs/symphony-phase2-questions-persona-eval/tool-library/questions/by-persona/the-appreciative-inquirer_q08-12_2026-02-24.md | 12 | use-as-is | No |
| tool-library / low / Audience Advocate | 8-12 | test-runs/symphony-phase2-questions-persona-eval/tool-library/questions/by-persona/the-audience-advocate_q08-12_2026-02-24.md | 10 | use-as-is | No |
| tool-library / low / Devil's Advocate | 8-12 | test-runs/symphony-phase2-questions-persona-eval/tool-library/questions/by-persona/the-devils-advocate_q08-12_2026-02-24.md | 12 | use-as-is | No |
| tool-library / low / Provocateur | 5-8 | test-runs/symphony-phase2-questions-persona-eval/tool-library/questions/by-persona/the-provocateur_q05-08_2026-02-24.md | 7 | use-as-is | No |
| tool-library / low / Questioner | 10-15 | test-runs/symphony-phase2-questions-persona-eval/tool-library/questions/by-persona/the-questioner_q10-15_2026-02-24.md | 15 | use-as-is | No |
| tool-library / low / Storyteller | 5-8 | test-runs/symphony-phase2-questions-persona-eval/tool-library/questions/by-persona/the-storyteller_q05-08_2026-02-24.md | 8 | use-as-is | No |
| tool-library / low / Systems Thinker | 8-12 | test-runs/symphony-phase2-questions-persona-eval/tool-library/questions/by-persona/the-systems-thinker_q08-12_2026-02-24.md | 10 | use-as-is | No |
| tool-library / low / Visionary | 5-8 | test-runs/symphony-phase2-questions-persona-eval/tool-library/questions/by-persona/the-visionary_q05-08_2026-02-24.md | 8 | use-as-is | No |
| tool-library / low / Analogist | 5-8 | test-runs/symphony-phase2-questions-persona-eval/tool-library/questions/by-persona/the-analogist_q05-08_2026-02-24.md | 8 | use-as-is | No |
| tool-library / medium / Analyst | 10-15 | test-runs/symphony-phase2-questions-persona-eval/tool-library/questions/by-persona/the-analyst_q10-15_2026-02-24.md | 14 | use-as-is | No |
| tool-library / medium / Appreciative Inquirer | 8-12 | test-runs/symphony-phase2-questions-persona-eval/tool-library/questions/by-persona/the-appreciative-inquirer_q08-12_2026-02-24.md | 12 | use-as-is | No |
| tool-library / medium / Audience Advocate | 10-15 | test-runs/symphony-phase2-questions-persona-eval/tool-library/questions/by-persona/the-audience-advocate_q10-15_2026-02-24.md | 15 | use-as-is | No |
| tool-library / medium / Devil's Advocate | 8-12 | test-runs/symphony-phase2-questions-persona-eval/tool-library/questions/by-persona/the-devils-advocate_q08-12_2026-02-24.md | 12 | use-as-is | No |
| tool-library / medium / Provocateur | 5-8 | test-runs/symphony-phase2-questions-persona-eval/tool-library/questions/by-persona/the-provocateur_q05-08_2026-02-24.md | 7 | use-as-is | No |
| tool-library / medium / Questioner | 10-15 | test-runs/symphony-phase2-questions-persona-eval/tool-library/questions/by-persona/the-questioner_q10-15_2026-02-24.md | 15 | use-as-is | No |
| tool-library / medium / Storyteller | 5-8 | test-runs/symphony-phase2-questions-persona-eval/tool-library/questions/by-persona/the-storyteller_q05-08_2026-02-24.md | 8 | use-as-is | No |
| tool-library / medium / Systems Thinker | 10-15 | test-runs/symphony-phase2-questions-persona-eval/tool-library/questions/by-persona/the-systems-thinker_q10-15_2026-02-24.md | 14 | use-as-is | No |
| tool-library / medium / Visionary | 5-8 | test-runs/symphony-phase2-questions-persona-eval/tool-library/questions/by-persona/the-visionary_q05-08_2026-02-24.md | 8 | use-as-is | No |
| tool-library / medium / Politician | 8-10 | test-runs/symphony-phase2-questions-persona-eval/tool-library/questions/by-persona/the-politician_q15-20_2026-02-18.md | 20 | truncate to 10 | No |
| tool-library / medium / Analogist | 5-8 | test-runs/symphony-phase2-questions-persona-eval/tool-library/questions/by-persona/the-analogist_q05-08_2026-02-24.md | 8 | use-as-is | No |
| tool-library / high / Analyst | 10-15 | test-runs/symphony-phase2-questions-persona-eval/tool-library/questions/by-persona/the-analyst_q10-15_2026-02-24.md | 14 | use-as-is | No |
| tool-library / high / Appreciative Inquirer | 8-12 | test-runs/symphony-phase2-questions-persona-eval/tool-library/questions/by-persona/the-appreciative-inquirer_q08-12_2026-02-24.md | 12 | use-as-is | No |
| tool-library / high / Audience Advocate | 10-15 | test-runs/symphony-phase2-questions-persona-eval/tool-library/questions/by-persona/the-audience-advocate_q10-15_2026-02-24.md | 15 | use-as-is | No |
| tool-library / high / Devil's Advocate | 10-15 | test-runs/symphony-phase2-questions-persona-eval/tool-library/questions/by-persona/the-devils-advocate_q10-15_2026-02-24.md | 12 | use-as-is | No |
| tool-library / high / Provocateur | 5-8 | test-runs/symphony-phase2-questions-persona-eval/tool-library/questions/by-persona/the-provocateur_q05-08_2026-02-24.md | 7 | use-as-is | No |
| tool-library / high / Questioner | 15-20 | test-runs/symphony-phase2-questions-persona-eval/tool-library/questions/by-persona/the-questioner_q15-20_2026-02-24.md | 20 | use-as-is | No |
| tool-library / high / Storyteller | 5-8 | test-runs/symphony-phase2-questions-persona-eval/tool-library/questions/by-persona/the-storyteller_q05-08_2026-02-24.md | 8 | use-as-is | No |
| tool-library / high / Systems Thinker | 10-15 | test-runs/symphony-phase2-questions-persona-eval/tool-library/questions/by-persona/the-systems-thinker_q10-15_2026-02-24.md | 14 | use-as-is | No |
| tool-library / high / Visionary | 5-8 | test-runs/symphony-phase2-questions-persona-eval/tool-library/questions/by-persona/the-visionary_q05-08_2026-02-24.md | 8 | use-as-is | No |
| tool-library / high / Constraint Flipper | 5-8 | test-runs/symphony-phase2-questions-persona-eval/tool-library/questions/by-persona/the-constraint-flipper_q05-08_2026-02-24.md | 7 | use-as-is | No |
| tool-library / high / Empath | 8-12 | test-runs/symphony-phase2-questions-persona-eval/tool-library/questions/by-persona/the-empath_q08-12_2026-02-24.md | 12 | use-as-is | No |
| tool-library / high / First Principles Thinker | 7-10 | test-runs/symphony-phase2-questions-persona-eval/tool-library/questions/by-persona/the-first-principles-thinker_q08-12_2026-02-24.md | 11 | truncate to 10 | No |
| tool-library / high / Futurist | 8-12 | test-runs/symphony-phase2-questions-persona-eval/tool-library/questions/by-persona/the-futurist_q08-12_2026-02-24.md | 11 | use-as-is | No |
| tool-library / high / Accountant | 8-12 | test-runs/symphony-phase2-questions-persona-eval/tool-library/questions/by-persona/the-accountant_q15-20_2026-02-18.md | 15 | truncate to 12 | No |
| tool-library / high / Politician | 8-10 | test-runs/symphony-phase2-questions-persona-eval/tool-library/questions/by-persona/the-politician_q15-20_2026-02-18.md | 20 | truncate to 10 | No |
| tool-library / high / Analogist | 5-8 | test-runs/symphony-phase2-questions-persona-eval/tool-library/questions/by-persona/the-analogist_q05-08_2026-02-24.md | 8 | use-as-is | No |
| food-truck / low / Analyst | 8-12 | test-runs/symphony-phase2-questions-persona-eval/food-truck/questions/by-persona/the-analyst_q08-12_2026-02-24.md | 11 | use-as-is | No |
| food-truck / low / Appreciative Inquirer | 8-12 | test-runs/symphony-phase2-questions-persona-eval/food-truck/questions/by-persona/the-appreciative-inquirer_q08-12_2026-02-24.md | 12 | use-as-is | No |
| food-truck / low / Audience Advocate | 8-12 | test-runs/symphony-phase2-questions-persona-eval/food-truck/questions/by-persona/the-audience-advocate_q08-12_2026-02-24.md | 11 | use-as-is | No |
| food-truck / low / Devil's Advocate | 8-12 | test-runs/symphony-phase2-questions-persona-eval/food-truck/questions/by-persona/the-devils-advocate_q08-12_2026-02-24.md | 12 | use-as-is | No |
| food-truck / low / Provocateur | 5-8 | test-runs/symphony-phase2-questions-persona-eval/food-truck/questions/by-persona/the-provocateur_q05-08_2026-02-24.md | 7 | use-as-is | No |
| food-truck / low / Questioner | 10-15 | test-runs/symphony-phase2-questions-persona-eval/food-truck/questions/by-persona/the-questioner_q10-15_2026-02-24.md | 14 | use-as-is | No |
| food-truck / low / Storyteller | 5-8 | test-runs/symphony-phase2-questions-persona-eval/food-truck/questions/by-persona/the-storyteller_q05-08_2026-02-24.md | 7 | use-as-is | No |
| food-truck / low / Systems Thinker | 8-12 | test-runs/symphony-phase2-questions-persona-eval/food-truck/questions/by-persona/the-systems-thinker_q08-12_2026-02-24.md | 12 | use-as-is | No |
| food-truck / low / Visionary | 5-8 | test-runs/symphony-phase2-questions-persona-eval/food-truck/questions/by-persona/the-visionary_q05-08_2026-02-24.md | 7 | use-as-is | No |
| food-truck / low / Analogist | 5-8 | test-runs/symphony-phase2-questions-persona-eval/food-truck/questions/by-persona/the-analogist_q05-08_2026-02-24.md | 8 | use-as-is | No |
| food-truck / medium / Analyst | 10-15 | test-runs/symphony-phase2-questions-persona-eval/food-truck/questions/by-persona/the-analyst_q10-15_2026-02-24.md | 14 | use-as-is | No |
| food-truck / medium / Appreciative Inquirer | 8-12 | test-runs/symphony-phase2-questions-persona-eval/food-truck/questions/by-persona/the-appreciative-inquirer_q08-12_2026-02-24.md | 12 | use-as-is | No |
| food-truck / medium / Audience Advocate | 10-15 | test-runs/symphony-phase2-questions-persona-eval/food-truck/questions/by-persona/the-audience-advocate_q10-15_2026-02-24.md | 14 | use-as-is | No |
| food-truck / medium / Devil's Advocate | 8-12 | test-runs/symphony-phase2-questions-persona-eval/food-truck/questions/by-persona/the-devils-advocate_q08-12_2026-02-24.md | 12 | use-as-is | No |
| food-truck / medium / Provocateur | 5-8 | test-runs/symphony-phase2-questions-persona-eval/food-truck/questions/by-persona/the-provocateur_q05-08_2026-02-24.md | 7 | use-as-is | No |
| food-truck / medium / Questioner | 10-15 | test-runs/symphony-phase2-questions-persona-eval/food-truck/questions/by-persona/the-questioner_q10-15_2026-02-24.md | 14 | use-as-is | No |
| food-truck / medium / Storyteller | 5-8 | test-runs/symphony-phase2-questions-persona-eval/food-truck/questions/by-persona/the-storyteller_q05-08_2026-02-24.md | 7 | use-as-is | No |
| food-truck / medium / Systems Thinker | 10-15 | test-runs/symphony-phase2-questions-persona-eval/food-truck/questions/by-persona/the-systems-thinker_q10-15_2026-02-24.md | 15 | use-as-is | No |
| food-truck / medium / Visionary | 5-8 | test-runs/symphony-phase2-questions-persona-eval/food-truck/questions/by-persona/the-visionary_q05-08_2026-02-24.md | 7 | use-as-is | No |
| food-truck / medium / Accountant | 8-12 | test-runs/symphony-phase2-questions-persona-eval/food-truck/questions/by-persona/the-accountant_q08-12_2026-02-24.md | 12 | use-as-is | No |
| food-truck / medium / Analogist | 5-8 | test-runs/symphony-phase2-questions-persona-eval/food-truck/questions/by-persona/the-analogist_q05-08_2026-02-24.md | 8 | use-as-is | No |
| food-truck / high / Analyst | 10-15 | test-runs/symphony-phase2-questions-persona-eval/food-truck/questions/by-persona/the-analyst_q10-15_2026-02-24.md | 14 | use-as-is | No |
| food-truck / high / Appreciative Inquirer | 8-12 | test-runs/symphony-phase2-questions-persona-eval/food-truck/questions/by-persona/the-appreciative-inquirer_q08-12_2026-02-24.md | 12 | use-as-is | No |
| food-truck / high / Audience Advocate | 10-15 | test-runs/symphony-phase2-questions-persona-eval/food-truck/questions/by-persona/the-audience-advocate_q10-15_2026-02-24.md | 14 | use-as-is | No |
| food-truck / high / Devil's Advocate | 10-15 | test-runs/symphony-phase2-questions-persona-eval/food-truck/questions/by-persona/the-devils-advocate_q10-15_2026-02-24.md | 15 | use-as-is | No |
| food-truck / high / Provocateur | 5-8 | test-runs/symphony-phase2-questions-persona-eval/food-truck/questions/by-persona/the-provocateur_q05-08_2026-02-24.md | 7 | use-as-is | No |
| food-truck / high / Questioner | 15-20 | test-runs/symphony-phase2-questions-persona-eval/food-truck/questions/by-persona/the-questioner_q15-20_2026-02-24.md | 16 | use-as-is | No |
| food-truck / high / Storyteller | 5-8 | test-runs/symphony-phase2-questions-persona-eval/food-truck/questions/by-persona/the-storyteller_q05-08_2026-02-24.md | 7 | use-as-is | No |
| food-truck / high / Systems Thinker | 10-15 | test-runs/symphony-phase2-questions-persona-eval/food-truck/questions/by-persona/the-systems-thinker_q10-15_2026-02-24.md | 15 | use-as-is | No |
| food-truck / high / Visionary | 5-8 | test-runs/symphony-phase2-questions-persona-eval/food-truck/questions/by-persona/the-visionary_q05-08_2026-02-24.md | 7 | use-as-is | No |
| food-truck / high / Constraint Flipper | 5-8 | test-runs/symphony-phase2-questions-persona-eval/food-truck/questions/by-persona/the-constraint-flipper_q05-08_2026-02-24.md | 8 | use-as-is | No |
| food-truck / high / Empath | 8-12 | test-runs/symphony-phase2-questions-persona-eval/food-truck/questions/by-persona/the-empath_q08-12_2026-02-24.md | 12 | use-as-is | No |
| food-truck / high / First Principles Thinker | 7-10 | test-runs/symphony-phase2-questions-persona-eval/food-truck/questions/by-persona/the-first-principles-thinker_q08-12_2026-02-24.md | 12 | truncate to 10 | No |
| food-truck / high / Futurist | 8-12 | test-runs/symphony-phase2-questions-persona-eval/food-truck/questions/by-persona/the-futurist_q08-12_2026-02-24.md | 12 | use-as-is | No |
| food-truck / high / Accountant | 8-12 | test-runs/symphony-phase2-questions-persona-eval/food-truck/questions/by-persona/the-accountant_q08-12_2026-02-24.md | 12 | use-as-is | No |
| food-truck / high / Politician | 8-10 | test-runs/symphony-phase2-questions-persona-eval/food-truck/questions/by-persona/the-politician_q08-12_2026-02-24.md | 12 | truncate to 10 | No |
| food-truck / high / Analogist | 5-8 | test-runs/symphony-phase2-questions-persona-eval/food-truck/questions/by-persona/the-analogist_q05-08_2026-02-24.md | 8 | use-as-is | No |
| property-management / low / Analyst | 8-12 | test-runs/symphony-phase2-questions-persona-eval/property-management/questions/by-persona/the-analyst_q08-12_2026-02-24.md | 11 | use-as-is | No |
| property-management / low / Appreciative Inquirer | 8-12 | test-runs/symphony-phase2-questions-persona-eval/property-management/questions/by-persona/the-appreciative-inquirer_q08-12_2026-02-24.md | 12 | use-as-is | No |
| property-management / low / Audience Advocate | 8-12 | test-runs/symphony-phase2-questions-persona-eval/property-management/questions/by-persona/the-audience-advocate_q08-12_2026-02-24.md | 11 | use-as-is | No |
| property-management / low / Devil's Advocate | 8-12 | test-runs/symphony-phase2-questions-persona-eval/property-management/questions/by-persona/the-devils-advocate_q08-12_2026-02-24.md | 13 | truncate to 12 | No |
| property-management / low / Provocateur | 5-8 | test-runs/symphony-phase2-questions-persona-eval/property-management/questions/by-persona/the-provocateur_q05-08_2026-02-24.md | 7 | use-as-is | No |
| property-management / low / Questioner | 10-15 | test-runs/symphony-phase2-questions-persona-eval/property-management/questions/by-persona/the-questioner_q10-15_2026-02-24.md | 25 | truncate to 15 | No |
| property-management / low / Storyteller | 5-8 | test-runs/symphony-phase2-questions-persona-eval/property-management/questions/by-persona/the-storyteller_q05-08_2026-02-24.md | 7 | use-as-is | No |
| property-management / low / Systems Thinker | 8-12 | test-runs/symphony-phase2-questions-persona-eval/property-management/questions/by-persona/the-systems-thinker_q08-12_2026-02-24.md | 11 | use-as-is | No |
| property-management / low / Visionary | 5-8 | test-runs/symphony-phase2-questions-persona-eval/property-management/questions/by-persona/the-visionary_q05-08_2026-02-24.md | 8 | use-as-is | No |
| property-management / low / Analogist | 5-8 | test-runs/symphony-phase2-questions-persona-eval/property-management/questions/by-persona/the-analogist_q05-08_2026-02-24.md | 6 | use-as-is | No |
| property-management / medium / Analyst | 10-15 | test-runs/symphony-phase2-questions-persona-eval/property-management/questions/by-persona/the-analyst_q10-15_2026-02-24.md | 15 | use-as-is | No |
| property-management / medium / Appreciative Inquirer | 8-12 | test-runs/symphony-phase2-questions-persona-eval/property-management/questions/by-persona/the-appreciative-inquirer_q08-12_2026-02-24.md | 12 | use-as-is | No |
| property-management / medium / Audience Advocate | 10-15 | test-runs/symphony-phase2-questions-persona-eval/property-management/questions/by-persona/the-audience-advocate_q10-15_2026-02-24.md | 13 | use-as-is | No |
| property-management / medium / Devil's Advocate | 8-12 | test-runs/symphony-phase2-questions-persona-eval/property-management/questions/by-persona/the-devils-advocate_q08-12_2026-02-24.md | 13 | truncate to 12 | No |
| property-management / medium / Provocateur | 5-8 | test-runs/symphony-phase2-questions-persona-eval/property-management/questions/by-persona/the-provocateur_q05-08_2026-02-24.md | 7 | use-as-is | No |
| property-management / medium / Questioner | 10-15 | test-runs/symphony-phase2-questions-persona-eval/property-management/questions/by-persona/the-questioner_q10-15_2026-02-24.md | 25 | truncate to 15 | No |
| property-management / medium / Storyteller | 5-8 | test-runs/symphony-phase2-questions-persona-eval/property-management/questions/by-persona/the-storyteller_q05-08_2026-02-24.md | 7 | use-as-is | No |
| property-management / medium / Systems Thinker | 10-15 | test-runs/symphony-phase2-questions-persona-eval/property-management/questions/by-persona/the-systems-thinker_q10-15_2026-02-24.md | 15 | use-as-is | No |
| property-management / medium / Visionary | 5-8 | test-runs/symphony-phase2-questions-persona-eval/property-management/questions/by-persona/the-visionary_q05-08_2026-02-24.md | 8 | use-as-is | No |
| property-management / medium / Lawyer | 8-10 | test-runs/symphony-phase2-questions-persona-eval/property-management/questions/by-persona/the-lawyer_q08-12_2026-02-24.md | 12 | truncate to 10 | No |
| property-management / medium / Analogist | 5-8 | test-runs/symphony-phase2-questions-persona-eval/property-management/questions/by-persona/the-analogist_q05-08_2026-02-24.md | 6 | use-as-is | No |
| property-management / high / Analyst | 10-15 | test-runs/symphony-phase2-questions-persona-eval/property-management/questions/by-persona/the-analyst_q10-15_2026-02-24.md | 15 | use-as-is | No |
| property-management / high / Appreciative Inquirer | 8-12 | test-runs/symphony-phase2-questions-persona-eval/property-management/questions/by-persona/the-appreciative-inquirer_q08-12_2026-02-24.md | 12 | use-as-is | No |
| property-management / high / Audience Advocate | 10-15 | test-runs/symphony-phase2-questions-persona-eval/property-management/questions/by-persona/the-audience-advocate_q10-15_2026-02-24.md | 13 | use-as-is | No |
| property-management / high / Devil's Advocate | 10-15 | test-runs/symphony-phase2-questions-persona-eval/property-management/questions/by-persona/the-devils-advocate_q10-15_2026-02-24.md | 15 | use-as-is | No |
| property-management / high / Provocateur | 5-8 | test-runs/symphony-phase2-questions-persona-eval/property-management/questions/by-persona/the-provocateur_q05-08_2026-02-24.md | 7 | use-as-is | No |
| property-management / high / Questioner | 15-20 | test-runs/symphony-phase2-questions-persona-eval/property-management/questions/by-persona/the-questioner_q15-20_2026-02-24.md | 20 | use-as-is | No |
| property-management / high / Storyteller | 5-8 | test-runs/symphony-phase2-questions-persona-eval/property-management/questions/by-persona/the-storyteller_q05-08_2026-02-24.md | 7 | use-as-is | No |
| property-management / high / Systems Thinker | 10-15 | test-runs/symphony-phase2-questions-persona-eval/property-management/questions/by-persona/the-systems-thinker_q10-15_2026-02-24.md | 15 | use-as-is | No |
| property-management / high / Visionary | 5-8 | test-runs/symphony-phase2-questions-persona-eval/property-management/questions/by-persona/the-visionary_q05-08_2026-02-24.md | 8 | use-as-is | No |
| property-management / high / Constraint Flipper | 5-8 | test-runs/symphony-phase2-questions-persona-eval/property-management/questions/by-persona/the-constraint-flipper_q05-08_2026-02-24.md | 8 | use-as-is | No |
| property-management / high / Empath | 8-12 | test-runs/symphony-phase2-questions-persona-eval/property-management/questions/by-persona/the-empath_q08-12_2026-02-24.md | 12 | use-as-is | No |
| property-management / high / First Principles Thinker | 7-10 | test-runs/symphony-phase2-questions-persona-eval/property-management/questions/by-persona/the-first-principles-thinker_q08-12_2026-02-24.md | 12 | truncate to 10 | No |
| property-management / high / Futurist | 8-12 | test-runs/symphony-phase2-questions-persona-eval/property-management/questions/by-persona/the-futurist_q08-12_2026-02-24.md | 12 | use-as-is | No |
| property-management / high / Accountant | 8-12 | test-runs/symphony-phase2-questions-persona-eval/property-management/questions/by-persona/the-accountant_q08-12_2026-02-24.md | 12 | use-as-is | No |
| property-management / high / Lawyer | 8-10 | test-runs/symphony-phase2-questions-persona-eval/property-management/questions/by-persona/the-lawyer_q08-12_2026-02-24.md | 12 | truncate to 10 | No |
| property-management / high / Analogist | 5-8 | test-runs/symphony-phase2-questions-persona-eval/property-management/questions/by-persona/the-analogist_q05-08_2026-02-24.md | 6 | use-as-is | No |
| youth-mentorship / low / Analyst | 8-12 | test-runs/symphony-phase2-questions-persona-eval/youth-mentorship/questions/by-persona/the-analyst_q08-12_2026-02-24.md | 12 | use-as-is | No |
| youth-mentorship / low / Appreciative Inquirer | 8-12 | test-runs/symphony-phase2-questions-persona-eval/youth-mentorship/questions/by-persona/the-appreciative-inquirer_q08-12_2026-02-24.md | 12 | use-as-is | No |
| youth-mentorship / low / Audience Advocate | 8-12 | test-runs/symphony-phase2-questions-persona-eval/youth-mentorship/questions/by-persona/the-audience-advocate_q08-12_2026-02-24.md | 12 | use-as-is | No |
| youth-mentorship / low / Devil's Advocate | 8-12 | test-runs/symphony-phase2-questions-persona-eval/youth-mentorship/questions/by-persona/the-devils-advocate_q08-12_2026-02-24.md | 12 | use-as-is | No |
| youth-mentorship / low / Provocateur | 5-8 | test-runs/symphony-phase2-questions-persona-eval/youth-mentorship/questions/by-persona/the-provocateur_q05-08_2026-02-24.md | 7 | use-as-is | No |
| youth-mentorship / low / Questioner | 10-15 | test-runs/symphony-phase2-questions-persona-eval/youth-mentorship/questions/by-persona/the-questioner_q10-15_2026-02-24.md | 21 | truncate to 15 | No |
| youth-mentorship / low / Storyteller | 5-8 | test-runs/symphony-phase2-questions-persona-eval/youth-mentorship/questions/by-persona/the-storyteller_q05-08_2026-02-24.md | 6 | use-as-is | No |
| youth-mentorship / low / Systems Thinker | 8-12 | test-runs/symphony-phase2-questions-persona-eval/youth-mentorship/questions/by-persona/the-systems-thinker_q08-12_2026-02-24.md | 12 | use-as-is | No |
| youth-mentorship / low / Visionary | 5-8 | test-runs/symphony-phase2-questions-persona-eval/youth-mentorship/questions/by-persona/the-visionary_q05-08_2026-02-24.md | 7 | use-as-is | No |
| youth-mentorship / low / Connector | 5-8 | test-runs/symphony-phase2-questions-persona-eval/youth-mentorship/questions/by-persona/the-connector_q05-08_2026-02-24.md | 7 | use-as-is | No |
| youth-mentorship / medium / Analyst | 10-15 | test-runs/symphony-phase2-questions-persona-eval/youth-mentorship/questions/by-persona/the-analyst_q10-15_2026-02-24.md | 16 | truncate to 15 | No |
| youth-mentorship / medium / Appreciative Inquirer | 8-12 | test-runs/symphony-phase2-questions-persona-eval/youth-mentorship/questions/by-persona/the-appreciative-inquirer_q08-12_2026-02-24.md | 12 | use-as-is | No |
| youth-mentorship / medium / Audience Advocate | 10-15 | test-runs/symphony-phase2-questions-persona-eval/youth-mentorship/questions/by-persona/the-audience-advocate_q10-15_2026-02-24.md | 15 | use-as-is | No |
| youth-mentorship / medium / Devil's Advocate | 8-12 | test-runs/symphony-phase2-questions-persona-eval/youth-mentorship/questions/by-persona/the-devils-advocate_q08-12_2026-02-24.md | 12 | use-as-is | No |
| youth-mentorship / medium / Provocateur | 5-8 | test-runs/symphony-phase2-questions-persona-eval/youth-mentorship/questions/by-persona/the-provocateur_q05-08_2026-02-24.md | 7 | use-as-is | No |
| youth-mentorship / medium / Questioner | 10-15 | test-runs/symphony-phase2-questions-persona-eval/youth-mentorship/questions/by-persona/the-questioner_q10-15_2026-02-24.md | 21 | truncate to 15 | No |
| youth-mentorship / medium / Storyteller | 5-8 | test-runs/symphony-phase2-questions-persona-eval/youth-mentorship/questions/by-persona/the-storyteller_q05-08_2026-02-24.md | 6 | use-as-is | No |
| youth-mentorship / medium / Systems Thinker | 10-15 | test-runs/symphony-phase2-questions-persona-eval/youth-mentorship/questions/by-persona/the-systems-thinker_q10-15_2026-02-24.md | 15 | use-as-is | No |
| youth-mentorship / medium / Visionary | 5-8 | test-runs/symphony-phase2-questions-persona-eval/youth-mentorship/questions/by-persona/the-visionary_q05-08_2026-02-24.md | 7 | use-as-is | No |
| youth-mentorship / medium / Lawyer | 8-10 | test-runs/symphony-phase2-questions-persona-eval/youth-mentorship/questions/by-persona/the-lawyer_q08-12_2026-02-24.md | 12 | truncate to 10 | No |
| youth-mentorship / medium / Connector | 5-8 | test-runs/symphony-phase2-questions-persona-eval/youth-mentorship/questions/by-persona/the-connector_q05-08_2026-02-24.md | 7 | use-as-is | No |
| youth-mentorship / high / Analyst | 10-15 | test-runs/symphony-phase2-questions-persona-eval/youth-mentorship/questions/by-persona/the-analyst_q10-15_2026-02-24.md | 16 | truncate to 15 | No |
| youth-mentorship / high / Appreciative Inquirer | 8-12 | test-runs/symphony-phase2-questions-persona-eval/youth-mentorship/questions/by-persona/the-appreciative-inquirer_q08-12_2026-02-24.md | 12 | use-as-is | No |
| youth-mentorship / high / Audience Advocate | 10-15 | test-runs/symphony-phase2-questions-persona-eval/youth-mentorship/questions/by-persona/the-audience-advocate_q10-15_2026-02-24.md | 15 | use-as-is | No |
| youth-mentorship / high / Devil's Advocate | 10-15 | test-runs/symphony-phase2-questions-persona-eval/youth-mentorship/questions/by-persona/the-devils-advocate_q10-15_2026-02-24.md | 14 | use-as-is | No |
| youth-mentorship / high / Provocateur | 5-8 | test-runs/symphony-phase2-questions-persona-eval/youth-mentorship/questions/by-persona/the-provocateur_q05-08_2026-02-24.md | 7 | use-as-is | No |
| youth-mentorship / high / Questioner | 15-20 | test-runs/symphony-phase2-questions-persona-eval/youth-mentorship/questions/by-persona/the-questioner_q15-20_2026-02-24.md | 23 | truncate to 20 | No |
| youth-mentorship / high / Storyteller | 5-8 | test-runs/symphony-phase2-questions-persona-eval/youth-mentorship/questions/by-persona/the-storyteller_q05-08_2026-02-24.md | 6 | use-as-is | No |
| youth-mentorship / high / Systems Thinker | 10-15 | test-runs/symphony-phase2-questions-persona-eval/youth-mentorship/questions/by-persona/the-systems-thinker_q10-15_2026-02-24.md | 15 | use-as-is | No |
| youth-mentorship / high / Visionary | 5-8 | test-runs/symphony-phase2-questions-persona-eval/youth-mentorship/questions/by-persona/the-visionary_q05-08_2026-02-24.md | 7 | use-as-is | No |
| youth-mentorship / high / Constraint Flipper | 5-8 | test-runs/symphony-phase2-questions-persona-eval/youth-mentorship/questions/by-persona/the-constraint-flipper_q05-08_2026-02-24.md | 7 | use-as-is | No |
| youth-mentorship / high / Empath | 8-12 | test-runs/symphony-phase2-questions-persona-eval/youth-mentorship/questions/by-persona/the-empath_q08-12_2026-02-24.md | 12 | use-as-is | No |
| youth-mentorship / high / First Principles Thinker | 7-10 | test-runs/symphony-phase2-questions-persona-eval/youth-mentorship/questions/by-persona/the-first-principles-thinker_q08-12_2026-02-24.md | 10 | use-as-is | No |
| youth-mentorship / high / Futurist | 8-12 | test-runs/symphony-phase2-questions-persona-eval/youth-mentorship/questions/by-persona/the-futurist_q08-12_2026-02-24.md | 12 | use-as-is | No |
| youth-mentorship / high / Lawyer | 8-10 | test-runs/symphony-phase2-questions-persona-eval/youth-mentorship/questions/by-persona/the-lawyer_q08-12_2026-02-24.md | 12 | truncate to 10 | No |
| youth-mentorship / high / Politician | 8-10 | test-runs/symphony-phase2-questions-persona-eval/youth-mentorship/questions/by-persona/the-politician_q08-12_2026-02-24.md | 11 | truncate to 10 | No |
| youth-mentorship / high / Connector | 5-8 | test-runs/symphony-phase2-questions-persona-eval/youth-mentorship/questions/by-persona/the-connector_q05-08_2026-02-24.md | 7 | use-as-is | No |
| school-consolidation / low / Analyst | 8-12 | test-runs/symphony-phase2-questions-persona-eval/school-consolidation/questions/by-persona/the-analyst_q08-12_2026-02-24.md | 10 | use-as-is | No |
| school-consolidation / low / Appreciative Inquirer | 8-12 | test-runs/symphony-phase2-questions-persona-eval/school-consolidation/questions/by-persona/the-appreciative-inquirer_q08-12_2026-02-24.md | 11 | use-as-is | No |
| school-consolidation / low / Audience Advocate | 8-12 | test-runs/symphony-phase2-questions-persona-eval/school-consolidation/questions/by-persona/the-audience-advocate_q08-12_2026-02-24.md | 12 | use-as-is | No |
| school-consolidation / low / Devil's Advocate | 8-12 | test-runs/symphony-phase2-questions-persona-eval/school-consolidation/questions/by-persona/the-devils-advocate_q08-12_2026-02-24.md | 12 | use-as-is | No |
| school-consolidation / low / Provocateur | 5-8 | test-runs/symphony-phase2-questions-persona-eval/school-consolidation/questions/by-persona/the-provocateur_q05-08_2026-02-24.md | 7 | use-as-is | No |
| school-consolidation / low / Questioner | 10-15 | test-runs/symphony-phase2-questions-persona-eval/school-consolidation/questions/by-persona/the-questioner_q10-15_2026-02-24.md | 13 | use-as-is | No |
| school-consolidation / low / Storyteller | 5-8 | test-runs/symphony-phase2-questions-persona-eval/school-consolidation/questions/by-persona/the-storyteller_q05-08_2026-02-24.md | 7 | use-as-is | No |
| school-consolidation / low / Systems Thinker | 8-12 | test-runs/symphony-phase2-questions-persona-eval/school-consolidation/questions/by-persona/the-systems-thinker_q08-12_2026-02-24.md | 11 | use-as-is | No |
| school-consolidation / low / Visionary | 5-8 | test-runs/symphony-phase2-questions-persona-eval/school-consolidation/questions/by-persona/the-visionary_q05-08_2026-02-24.md | 6 | use-as-is | No |
| school-consolidation / low / Connector | 5-8 | test-runs/symphony-phase2-questions-persona-eval/school-consolidation/questions/by-persona/the-connector_q05-08_2026-02-24.md | 8 | use-as-is | No |
| school-consolidation / medium / Analyst | 10-15 | test-runs/symphony-phase2-questions-persona-eval/school-consolidation/questions/by-persona/the-analyst_q10-15_2026-02-24.md | 15 | use-as-is | No |
| school-consolidation / medium / Appreciative Inquirer | 8-12 | test-runs/symphony-phase2-questions-persona-eval/school-consolidation/questions/by-persona/the-appreciative-inquirer_q08-12_2026-02-24.md | 11 | use-as-is | No |
| school-consolidation / medium / Audience Advocate | 10-15 | test-runs/symphony-phase2-questions-persona-eval/school-consolidation/questions/by-persona/the-audience-advocate_q10-15_2026-02-24.md | 15 | use-as-is | No |
| school-consolidation / medium / Devil's Advocate | 8-12 | test-runs/symphony-phase2-questions-persona-eval/school-consolidation/questions/by-persona/the-devils-advocate_q08-12_2026-02-24.md | 12 | use-as-is | No |
| school-consolidation / medium / Provocateur | 5-8 | test-runs/symphony-phase2-questions-persona-eval/school-consolidation/questions/by-persona/the-provocateur_q05-08_2026-02-24.md | 7 | use-as-is | No |
| school-consolidation / medium / Questioner | 10-15 | test-runs/symphony-phase2-questions-persona-eval/school-consolidation/questions/by-persona/the-questioner_q10-15_2026-02-24.md | 13 | use-as-is | No |
| school-consolidation / medium / Storyteller | 5-8 | test-runs/symphony-phase2-questions-persona-eval/school-consolidation/questions/by-persona/the-storyteller_q05-08_2026-02-24.md | 7 | use-as-is | No |
| school-consolidation / medium / Systems Thinker | 10-15 | test-runs/symphony-phase2-questions-persona-eval/school-consolidation/questions/by-persona/the-systems-thinker_q10-15_2026-02-24.md | 13 | use-as-is | No |
| school-consolidation / medium / Visionary | 5-8 | test-runs/symphony-phase2-questions-persona-eval/school-consolidation/questions/by-persona/the-visionary_q05-08_2026-02-24.md | 6 | use-as-is | No |
| school-consolidation / medium / Politician | 8-10 | test-runs/symphony-phase2-questions-persona-eval/school-consolidation/questions/by-persona/the-politician_q08-12_2026-02-24.md | 11 | truncate to 10 | No |
| school-consolidation / medium / Connector | 5-8 | test-runs/symphony-phase2-questions-persona-eval/school-consolidation/questions/by-persona/the-connector_q05-08_2026-02-24.md | 8 | use-as-is | No |
| school-consolidation / high / Analyst | 10-15 | test-runs/symphony-phase2-questions-persona-eval/school-consolidation/questions/by-persona/the-analyst_q10-15_2026-02-24.md | 15 | use-as-is | No |
| school-consolidation / high / Appreciative Inquirer | 8-12 | test-runs/symphony-phase2-questions-persona-eval/school-consolidation/questions/by-persona/the-appreciative-inquirer_q08-12_2026-02-24.md | 11 | use-as-is | No |
| school-consolidation / high / Audience Advocate | 10-15 | test-runs/symphony-phase2-questions-persona-eval/school-consolidation/questions/by-persona/the-audience-advocate_q10-15_2026-02-24.md | 15 | use-as-is | No |
| school-consolidation / high / Devil's Advocate | 10-15 | test-runs/symphony-phase2-questions-persona-eval/school-consolidation/questions/by-persona/the-devils-advocate_q10-15_2026-02-24.md | 14 | use-as-is | No |
| school-consolidation / high / Provocateur | 5-8 | test-runs/symphony-phase2-questions-persona-eval/school-consolidation/questions/by-persona/the-provocateur_q05-08_2026-02-24.md | 7 | use-as-is | No |
| school-consolidation / high / Questioner | 15-20 | test-runs/symphony-phase2-questions-persona-eval/school-consolidation/questions/by-persona/the-questioner_q15-20_2026-02-24.md | 20 | use-as-is | No |
| school-consolidation / high / Storyteller | 5-8 | test-runs/symphony-phase2-questions-persona-eval/school-consolidation/questions/by-persona/the-storyteller_q05-08_2026-02-24.md | 7 | use-as-is | No |
| school-consolidation / high / Systems Thinker | 10-15 | test-runs/symphony-phase2-questions-persona-eval/school-consolidation/questions/by-persona/the-systems-thinker_q10-15_2026-02-24.md | 13 | use-as-is | No |
| school-consolidation / high / Visionary | 5-8 | test-runs/symphony-phase2-questions-persona-eval/school-consolidation/questions/by-persona/the-visionary_q05-08_2026-02-24.md | 6 | use-as-is | No |
| school-consolidation / high / Constraint Flipper | 5-8 | test-runs/symphony-phase2-questions-persona-eval/school-consolidation/questions/by-persona/the-constraint-flipper_q05-08_2026-02-24.md | 7 | use-as-is | No |
| school-consolidation / high / Empath | 8-12 | test-runs/symphony-phase2-questions-persona-eval/school-consolidation/questions/by-persona/the-empath_q08-12_2026-02-24.md | 12 | use-as-is | No |
| school-consolidation / high / First Principles Thinker | 7-10 | test-runs/symphony-phase2-questions-persona-eval/school-consolidation/questions/by-persona/the-first-principles-thinker_q08-12_2026-02-24.md | 12 | truncate to 10 | No |
| school-consolidation / high / Futurist | 8-12 | test-runs/symphony-phase2-questions-persona-eval/school-consolidation/questions/by-persona/the-futurist_q08-12_2026-02-24.md | 10 | use-as-is | No |
| school-consolidation / high / Accountant | 8-12 | test-runs/symphony-phase2-questions-persona-eval/school-consolidation/questions/by-persona/the-accountant_q08-12_2026-02-24.md | 10 | use-as-is | No |
| school-consolidation / high / Politician | 8-10 | test-runs/symphony-phase2-questions-persona-eval/school-consolidation/questions/by-persona/the-politician_q08-12_2026-02-24.md | 11 | truncate to 10 | No |
| school-consolidation / high / Connector | 5-8 | test-runs/symphony-phase2-questions-persona-eval/school-consolidation/questions/by-persona/the-connector_q05-08_2026-02-24.md | 8 | use-as-is | No |
| mobile-app / low / Analyst | 8-12 | test-runs/symphony-phase2-questions-persona-eval/mobile-app/questions/by-persona/the-analyst_q08-12_2026-02-24.md | 12 | use-as-is | No |
| mobile-app / low / Appreciative Inquirer | 8-12 | test-runs/symphony-phase2-questions-persona-eval/mobile-app/questions/by-persona/the-appreciative-inquirer_q08-12_2026-02-24.md | 12 | use-as-is | No |
| mobile-app / low / Audience Advocate | 8-12 | test-runs/symphony-phase2-questions-persona-eval/mobile-app/questions/by-persona/the-audience-advocate_q08-12_2026-02-24.md | 12 | use-as-is | No |
| mobile-app / low / Devil's Advocate | 8-12 | test-runs/symphony-phase2-questions-persona-eval/mobile-app/questions/by-persona/the-devils-advocate_q08-12_2026-02-24.md | 11 | use-as-is | No |
| mobile-app / low / Provocateur | 5-8 | test-runs/symphony-phase2-questions-persona-eval/mobile-app/questions/by-persona/the-provocateur_q05-08_2026-02-24.md | 7 | use-as-is | No |
| mobile-app / low / Questioner | 10-15 | test-runs/symphony-phase2-questions-persona-eval/mobile-app/questions/by-persona/the-questioner_q10-15_2026-02-24.md | 15 | use-as-is | No |
| mobile-app / low / Storyteller | 5-8 | test-runs/symphony-phase2-questions-persona-eval/mobile-app/questions/by-persona/the-storyteller_q05-08_2026-02-24.md | 7 | use-as-is | No |
| mobile-app / low / Systems Thinker | 8-12 | test-runs/symphony-phase2-questions-persona-eval/mobile-app/questions/by-persona/the-systems-thinker_q08-12_2026-02-24.md | 10 | use-as-is | No |
| mobile-app / low / Visionary | 5-8 | test-runs/symphony-phase2-questions-persona-eval/mobile-app/questions/by-persona/the-visionary_q05-08_2026-02-24.md | 7 | use-as-is | No |
| mobile-app / low / Connector | 5-8 | test-runs/symphony-phase2-questions-persona-eval/mobile-app/questions/by-persona/the-connector_q05-08_2026-02-24.md | 8 | use-as-is | No |
| mobile-app / medium / Analyst | 10-15 | test-runs/symphony-phase2-questions-persona-eval/mobile-app/questions/by-persona/the-analyst_q10-15_2026-02-24.md | 12 | use-as-is | No |
| mobile-app / medium / Appreciative Inquirer | 8-12 | test-runs/symphony-phase2-questions-persona-eval/mobile-app/questions/by-persona/the-appreciative-inquirer_q08-12_2026-02-24.md | 12 | use-as-is | No |
| mobile-app / medium / Audience Advocate | 10-15 | test-runs/symphony-phase2-questions-persona-eval/mobile-app/questions/by-persona/the-audience-advocate_q10-15_2026-02-24.md | 14 | use-as-is | No |
| mobile-app / medium / Devil's Advocate | 8-12 | test-runs/symphony-phase2-questions-persona-eval/mobile-app/questions/by-persona/the-devils-advocate_q08-12_2026-02-24.md | 11 | use-as-is | No |
| mobile-app / medium / Provocateur | 5-8 | test-runs/symphony-phase2-questions-persona-eval/mobile-app/questions/by-persona/the-provocateur_q05-08_2026-02-24.md | 7 | use-as-is | No |
| mobile-app / medium / Questioner | 10-15 | test-runs/symphony-phase2-questions-persona-eval/mobile-app/questions/by-persona/the-questioner_q10-15_2026-02-24.md | 15 | use-as-is | No |
| mobile-app / medium / Storyteller | 5-8 | test-runs/symphony-phase2-questions-persona-eval/mobile-app/questions/by-persona/the-storyteller_q05-08_2026-02-24.md | 7 | use-as-is | No |
| mobile-app / medium / Systems Thinker | 10-15 | test-runs/symphony-phase2-questions-persona-eval/mobile-app/questions/by-persona/the-systems-thinker_q10-15_2026-02-24.md | 14 | use-as-is | No |
| mobile-app / medium / Visionary | 5-8 | test-runs/symphony-phase2-questions-persona-eval/mobile-app/questions/by-persona/the-visionary_q05-08_2026-02-24.md | 7 | use-as-is | No |
| mobile-app / medium / Connector | 5-8 | test-runs/symphony-phase2-questions-persona-eval/mobile-app/questions/by-persona/the-connector_q05-08_2026-02-24.md | 8 | use-as-is | No |
| mobile-app / high / Analyst | 10-15 | test-runs/symphony-phase2-questions-persona-eval/mobile-app/questions/by-persona/the-analyst_q10-15_2026-02-24.md | 12 | use-as-is | No |
| mobile-app / high / Appreciative Inquirer | 8-12 | test-runs/symphony-phase2-questions-persona-eval/mobile-app/questions/by-persona/the-appreciative-inquirer_q08-12_2026-02-24.md | 12 | use-as-is | No |
| mobile-app / high / Audience Advocate | 10-15 | test-runs/symphony-phase2-questions-persona-eval/mobile-app/questions/by-persona/the-audience-advocate_q10-15_2026-02-24.md | 14 | use-as-is | No |
| mobile-app / high / Devil's Advocate | 10-15 | test-runs/symphony-phase2-questions-persona-eval/mobile-app/questions/by-persona/the-devils-advocate_q10-15_2026-02-24.md | 12 | use-as-is | No |
| mobile-app / high / Provocateur | 5-8 | test-runs/symphony-phase2-questions-persona-eval/mobile-app/questions/by-persona/the-provocateur_q05-08_2026-02-24.md | 7 | use-as-is | No |
| mobile-app / high / Questioner | 15-20 | test-runs/symphony-phase2-questions-persona-eval/mobile-app/questions/by-persona/the-questioner_q15-20_2026-02-24.md | 20 | use-as-is | No |
| mobile-app / high / Storyteller | 5-8 | test-runs/symphony-phase2-questions-persona-eval/mobile-app/questions/by-persona/the-storyteller_q05-08_2026-02-24.md | 7 | use-as-is | No |
| mobile-app / high / Systems Thinker | 10-15 | test-runs/symphony-phase2-questions-persona-eval/mobile-app/questions/by-persona/the-systems-thinker_q10-15_2026-02-24.md | 14 | use-as-is | No |
| mobile-app / high / Visionary | 5-8 | test-runs/symphony-phase2-questions-persona-eval/mobile-app/questions/by-persona/the-visionary_q05-08_2026-02-24.md | 7 | use-as-is | No |
| mobile-app / high / Constraint Flipper | 5-8 | test-runs/symphony-phase2-questions-persona-eval/mobile-app/questions/by-persona/the-constraint-flipper_q05-08_2026-02-24.md | 6 | use-as-is | No |
| mobile-app / high / Empath | 8-12 | test-runs/symphony-phase2-questions-persona-eval/mobile-app/questions/by-persona/the-empath_q08-12_2026-02-24.md | 12 | use-as-is | No |
| mobile-app / high / First Principles Thinker | 7-10 | test-runs/symphony-phase2-questions-persona-eval/mobile-app/questions/by-persona/the-first-principles-thinker_q08-12_2026-02-24.md | 9 | use-as-is | No |
| mobile-app / high / Futurist | 8-12 | test-runs/symphony-phase2-questions-persona-eval/mobile-app/questions/by-persona/the-futurist_q08-12_2026-02-24.md | 12 | use-as-is | No |
| mobile-app / high / Accountant | 8-12 | test-runs/symphony-phase2-questions-persona-eval/mobile-app/questions/by-persona/the-accountant_q08-12_2026-02-24.md | 11 | use-as-is | No |
| mobile-app / high / Connector | 5-8 | test-runs/symphony-phase2-questions-persona-eval/mobile-app/questions/by-persona/the-connector_q05-08_2026-02-24.md | 8 | use-as-is | No |
| wearable-device / low / Analyst | 8-12 | test-runs/symphony-phase2-questions-persona-eval/wearable-device/questions/by-persona/the-analyst_q08-12_2026-02-24.md | 10 | use-as-is | No |
| wearable-device / low / Appreciative Inquirer | 8-12 | test-runs/symphony-phase2-questions-persona-eval/wearable-device/questions/by-persona/the-appreciative-inquirer_q08-12_2026-02-24.md | 12 | use-as-is | No |
| wearable-device / low / Audience Advocate | 8-12 | test-runs/symphony-phase2-questions-persona-eval/wearable-device/questions/by-persona/the-audience-advocate_q08-12_2026-02-24.md | 15 | truncate to 12 | No |
| wearable-device / low / Devil's Advocate | 8-12 | test-runs/symphony-phase2-questions-persona-eval/wearable-device/questions/by-persona/the-devils-advocate_q08-12_2026-02-24.md | 12 | use-as-is | No |
| wearable-device / low / Provocateur | 5-8 | test-runs/symphony-phase2-questions-persona-eval/wearable-device/questions/by-persona/the-provocateur_q05-08_2026-02-24.md | 8 | use-as-is | No |
| wearable-device / low / Questioner | 10-15 | test-runs/symphony-phase2-questions-persona-eval/wearable-device/questions/by-persona/the-questioner_q10-15_2026-02-24.md | 17 | truncate to 15 | No |
| wearable-device / low / Storyteller | 5-8 | test-runs/symphony-phase2-questions-persona-eval/wearable-device/questions/by-persona/the-storyteller_q05-08_2026-02-24.md | 8 | use-as-is | No |
| wearable-device / low / Systems Thinker | 8-12 | test-runs/symphony-phase2-questions-persona-eval/wearable-device/questions/by-persona/the-systems-thinker_q08-12_2026-02-24.md | 12 | use-as-is | No |
| wearable-device / low / Visionary | 5-8 | test-runs/symphony-phase2-questions-persona-eval/wearable-device/questions/by-persona/the-visionary_q05-08_2026-02-24.md | 8 | use-as-is | No |
| wearable-device / low / Connector | 5-8 | test-runs/symphony-phase2-questions-persona-eval/wearable-device/questions/by-persona/the-connector_q05-08_2026-02-24.md | 7 | use-as-is | No |
| wearable-device / medium / Analyst | 10-15 | test-runs/symphony-phase2-questions-persona-eval/wearable-device/questions/by-persona/the-analyst_q10-15_2026-02-24.md | 15 | use-as-is | No |
| wearable-device / medium / Appreciative Inquirer | 8-12 | test-runs/symphony-phase2-questions-persona-eval/wearable-device/questions/by-persona/the-appreciative-inquirer_q08-12_2026-02-24.md | 12 | use-as-is | No |
| wearable-device / medium / Audience Advocate | 10-15 | test-runs/symphony-phase2-questions-persona-eval/wearable-device/questions/by-persona/the-audience-advocate_q10-15_2026-02-24.md | 13 | use-as-is | No |
| wearable-device / medium / Devil's Advocate | 8-12 | test-runs/symphony-phase2-questions-persona-eval/wearable-device/questions/by-persona/the-devils-advocate_q08-12_2026-02-24.md | 12 | use-as-is | No |
| wearable-device / medium / Provocateur | 5-8 | test-runs/symphony-phase2-questions-persona-eval/wearable-device/questions/by-persona/the-provocateur_q05-08_2026-02-24.md | 8 | use-as-is | No |
| wearable-device / medium / Questioner | 10-15 | test-runs/symphony-phase2-questions-persona-eval/wearable-device/questions/by-persona/the-questioner_q10-15_2026-02-24.md | 17 | truncate to 15 | No |
| wearable-device / medium / Storyteller | 5-8 | test-runs/symphony-phase2-questions-persona-eval/wearable-device/questions/by-persona/the-storyteller_q05-08_2026-02-24.md | 8 | use-as-is | No |
| wearable-device / medium / Systems Thinker | 10-15 | test-runs/symphony-phase2-questions-persona-eval/wearable-device/questions/by-persona/the-systems-thinker_q10-15_2026-02-24.md | 12 | use-as-is | No |
| wearable-device / medium / Visionary | 5-8 | test-runs/symphony-phase2-questions-persona-eval/wearable-device/questions/by-persona/the-visionary_q05-08_2026-02-24.md | 8 | use-as-is | No |
| wearable-device / medium / Technical Expert | 8-10 | test-runs/symphony-phase2-questions-persona-eval/wearable-device/questions/by-persona/the-technical-expert_q08-12_2026-02-24.md | 12 | truncate to 10 | No |
| wearable-device / medium / Connector | 5-8 | test-runs/symphony-phase2-questions-persona-eval/wearable-device/questions/by-persona/the-connector_q05-08_2026-02-24.md | 7 | use-as-is | No |
| wearable-device / high / Analyst | 10-15 | test-runs/symphony-phase2-questions-persona-eval/wearable-device/questions/by-persona/the-analyst_q10-15_2026-02-24.md | 15 | use-as-is | No |
| wearable-device / high / Appreciative Inquirer | 8-12 | test-runs/symphony-phase2-questions-persona-eval/wearable-device/questions/by-persona/the-appreciative-inquirer_q08-12_2026-02-24.md | 12 | use-as-is | No |
| wearable-device / high / Audience Advocate | 10-15 | test-runs/symphony-phase2-questions-persona-eval/wearable-device/questions/by-persona/the-audience-advocate_q10-15_2026-02-24.md | 13 | use-as-is | No |
| wearable-device / high / Devil's Advocate | 10-15 | test-runs/symphony-phase2-questions-persona-eval/wearable-device/questions/by-persona/the-devils-advocate_q10-15_2026-02-24.md | 14 | use-as-is | No |
| wearable-device / high / Provocateur | 5-8 | test-runs/symphony-phase2-questions-persona-eval/wearable-device/questions/by-persona/the-provocateur_q05-08_2026-02-24.md | 8 | use-as-is | No |
| wearable-device / high / Questioner | 15-20 | test-runs/symphony-phase2-questions-persona-eval/wearable-device/questions/by-persona/the-questioner_q15-20_2026-02-24.md | 30 | truncate to 20 | No |
| wearable-device / high / Storyteller | 5-8 | test-runs/symphony-phase2-questions-persona-eval/wearable-device/questions/by-persona/the-storyteller_q05-08_2026-02-24.md | 8 | use-as-is | No |
| wearable-device / high / Systems Thinker | 10-15 | test-runs/symphony-phase2-questions-persona-eval/wearable-device/questions/by-persona/the-systems-thinker_q10-15_2026-02-24.md | 12 | use-as-is | No |
| wearable-device / high / Visionary | 5-8 | test-runs/symphony-phase2-questions-persona-eval/wearable-device/questions/by-persona/the-visionary_q05-08_2026-02-24.md | 8 | use-as-is | No |
| wearable-device / high / Constraint Flipper | 5-8 | test-runs/symphony-phase2-questions-persona-eval/wearable-device/questions/by-persona/the-constraint-flipper_q05-08_2026-02-24.md | 8 | use-as-is | No |
| wearable-device / high / Empath | 8-12 | test-runs/symphony-phase2-questions-persona-eval/wearable-device/questions/by-persona/the-empath_q08-12_2026-02-24.md | 12 | use-as-is | No |
| wearable-device / high / First Principles Thinker | 7-10 | test-runs/symphony-phase2-questions-persona-eval/wearable-device/questions/by-persona/the-first-principles-thinker_q08-12_2026-02-24.md | 12 | truncate to 10 | No |
| wearable-device / high / Futurist | 8-12 | test-runs/symphony-phase2-questions-persona-eval/wearable-device/questions/by-persona/the-futurist_q08-12_2026-02-24.md | 12 | use-as-is | No |
| wearable-device / high / Lawyer | 8-10 | test-runs/symphony-phase2-questions-persona-eval/wearable-device/questions/by-persona/the-lawyer_q08-12_2026-02-24.md | 11 | truncate to 10 | No |
| wearable-device / high / Technical Expert | 8-10 | test-runs/symphony-phase2-questions-persona-eval/wearable-device/questions/by-persona/the-technical-expert_q08-12_2026-02-24.md | 12 | truncate to 10 | No |
| wearable-device / high / Connector | 5-8 | test-runs/symphony-phase2-questions-persona-eval/wearable-device/questions/by-persona/the-connector_q05-08_2026-02-24.md | 7 | use-as-is | No |
| career-change / low / Analyst | 8-12 | test-runs/symphony-phase2-questions-persona-eval/career-change/questions/by-persona/the-analyst_q08-12_2026-02-24.md | 12 | use-as-is | No |
| career-change / low / Appreciative Inquirer | 8-12 | test-runs/symphony-phase2-questions-persona-eval/career-change/questions/by-persona/the-appreciative-inquirer_q08-12_2026-02-24.md | 12 | use-as-is | No |
| career-change / low / Audience Advocate | 8-12 | test-runs/symphony-phase2-questions-persona-eval/career-change/questions/by-persona/the-audience-advocate_q08-12_2026-02-24.md | 12 | use-as-is | No |
| career-change / low / Devil's Advocate | 8-12 | test-runs/symphony-phase2-questions-persona-eval/career-change/questions/by-persona/the-devils-advocate_q08-12_2026-02-24.md | 10 | use-as-is | No |
| career-change / low / Provocateur | 5-8 | test-runs/symphony-phase2-questions-persona-eval/career-change/questions/by-persona/the-provocateur_q05-08_2026-02-24.md | 7 | use-as-is | No |
| career-change / low / Questioner | 10-15 | test-runs/symphony-phase2-questions-persona-eval/career-change/questions/by-persona/the-questioner_q10-15_2026-02-24.md | 21 | truncate to 15 | No |
| career-change / low / Storyteller | 5-8 | test-runs/symphony-phase2-questions-persona-eval/career-change/questions/by-persona/the-storyteller_q05-08_2026-02-24.md | 7 | use-as-is | No |
| career-change / low / Systems Thinker | 8-12 | test-runs/symphony-phase2-questions-persona-eval/career-change/questions/by-persona/the-systems-thinker_q08-12_2026-02-24.md | 16 | truncate to 12 | No |
| career-change / low / Visionary | 5-8 | test-runs/symphony-phase2-questions-persona-eval/career-change/questions/by-persona/the-visionary_q05-08_2026-02-24.md | 7 | use-as-is | No |
| career-change / low / Connector | 5-8 | test-runs/symphony-phase2-questions-persona-eval/career-change/questions/by-persona/the-connector_q05-08_2026-02-24.md | 8 | use-as-is | No |
| career-change / medium / Analyst | 10-15 | test-runs/symphony-phase2-questions-persona-eval/career-change/questions/by-persona/the-analyst_q10-15_2026-02-24.md | 15 | use-as-is | No |
| career-change / medium / Appreciative Inquirer | 8-12 | test-runs/symphony-phase2-questions-persona-eval/career-change/questions/by-persona/the-appreciative-inquirer_q08-12_2026-02-24.md | 12 | use-as-is | No |
| career-change / medium / Audience Advocate | 10-15 | test-runs/symphony-phase2-questions-persona-eval/career-change/questions/by-persona/the-audience-advocate_q10-15_2026-02-24.md | 15 | use-as-is | No |
| career-change / medium / Devil's Advocate | 8-12 | test-runs/symphony-phase2-questions-persona-eval/career-change/questions/by-persona/the-devils-advocate_q08-12_2026-02-24.md | 10 | use-as-is | No |
| career-change / medium / Provocateur | 5-8 | test-runs/symphony-phase2-questions-persona-eval/career-change/questions/by-persona/the-provocateur_q05-08_2026-02-24.md | 7 | use-as-is | No |
| career-change / medium / Questioner | 10-15 | test-runs/symphony-phase2-questions-persona-eval/career-change/questions/by-persona/the-questioner_q10-15_2026-02-24.md | 21 | truncate to 15 | No |
| career-change / medium / Storyteller | 5-8 | test-runs/symphony-phase2-questions-persona-eval/career-change/questions/by-persona/the-storyteller_q05-08_2026-02-24.md | 7 | use-as-is | No |
| career-change / medium / Systems Thinker | 10-15 | test-runs/symphony-phase2-questions-persona-eval/career-change/questions/by-persona/the-systems-thinker_q10-15_2026-02-24.md | 15 | use-as-is | No |
| career-change / medium / Visionary | 5-8 | test-runs/symphony-phase2-questions-persona-eval/career-change/questions/by-persona/the-visionary_q05-08_2026-02-24.md | 7 | use-as-is | No |
| career-change / medium / Connector | 5-8 | test-runs/symphony-phase2-questions-persona-eval/career-change/questions/by-persona/the-connector_q05-08_2026-02-24.md | 8 | use-as-is | No |
| career-change / high / Analyst | 10-15 | test-runs/symphony-phase2-questions-persona-eval/career-change/questions/by-persona/the-analyst_q10-15_2026-02-24.md | 15 | use-as-is | No |
| career-change / high / Appreciative Inquirer | 8-12 | test-runs/symphony-phase2-questions-persona-eval/career-change/questions/by-persona/the-appreciative-inquirer_q08-12_2026-02-24.md | 12 | use-as-is | No |
| career-change / high / Audience Advocate | 10-15 | test-runs/symphony-phase2-questions-persona-eval/career-change/questions/by-persona/the-audience-advocate_q10-15_2026-02-24.md | 15 | use-as-is | No |
| career-change / high / Devil's Advocate | 10-15 | test-runs/symphony-phase2-questions-persona-eval/career-change/questions/by-persona/the-devils-advocate_q10-15_2026-02-24.md | 15 | use-as-is | No |
| career-change / high / Provocateur | 5-8 | test-runs/symphony-phase2-questions-persona-eval/career-change/questions/by-persona/the-provocateur_q05-08_2026-02-24.md | 7 | use-as-is | No |
| career-change / high / Questioner | 15-20 | test-runs/symphony-phase2-questions-persona-eval/career-change/questions/by-persona/the-questioner_q15-20_2026-02-24.md | 24 | truncate to 20 | No |
| career-change / high / Storyteller | 5-8 | test-runs/symphony-phase2-questions-persona-eval/career-change/questions/by-persona/the-storyteller_q05-08_2026-02-24.md | 7 | use-as-is | No |
| career-change / high / Systems Thinker | 10-15 | test-runs/symphony-phase2-questions-persona-eval/career-change/questions/by-persona/the-systems-thinker_q10-15_2026-02-24.md | 15 | use-as-is | No |
| career-change / high / Visionary | 5-8 | test-runs/symphony-phase2-questions-persona-eval/career-change/questions/by-persona/the-visionary_q05-08_2026-02-24.md | 7 | use-as-is | No |
| career-change / high / Constraint Flipper | 5-8 | test-runs/symphony-phase2-questions-persona-eval/career-change/questions/by-persona/the-constraint-flipper_q05-08_2026-02-24.md | 6 | use-as-is | No |
| career-change / high / Empath | 8-12 | test-runs/symphony-phase2-questions-persona-eval/career-change/questions/by-persona/the-empath_q08-12_2026-02-24.md | 11 | use-as-is | No |
| career-change / high / First Principles Thinker | 7-10 | test-runs/symphony-phase2-questions-persona-eval/career-change/questions/by-persona/the-first-principles-thinker_q08-12_2026-02-24.md | 12 | truncate to 10 | No |
| career-change / high / Futurist | 8-12 | test-runs/symphony-phase2-questions-persona-eval/career-change/questions/by-persona/the-futurist_q08-12_2026-02-24.md | 12 | use-as-is | No |
| career-change / high / Accountant | 8-12 | test-runs/symphony-phase2-questions-persona-eval/career-change/questions/by-persona/the-accountant_q08-12_2026-02-24.md | 12 | use-as-is | No |
| career-change / high / Connector | 5-8 | test-runs/symphony-phase2-questions-persona-eval/career-change/questions/by-persona/the-connector_q05-08_2026-02-24.md | 8 | use-as-is | No |
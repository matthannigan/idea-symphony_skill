# Idea Symphony — Workflow Flowcharts by Effort Level

One flowchart per effort level, showing every skill file consumed, every session artifact produced, every subagent spawn (model × count), script invocation, quality gate, and conditional branch. Reconciled from four independent dry-run orchestration traces (2026-06-10 pre-1.0 audit) plus a baseline drafted from SKILL.md.

⚠ markers flag points where the spec currently forks or is silent — each corresponds to a finding in [docs/dev/skill-audit-1.0.md](dev/skill-audit-1.0.md). Charts depict the workflow as specified today, not as it should be after fixes.

## Legend

| Shape | Meaning |
|---|---|
| `[/file/]` parallelogram | Skill file read (prompts/, guidance/, templates/, scripts source, personas/) |
| `[(artifact)]` cylinder | Session artifact written/read |
| `{{…}}` hexagon | Quality gate or conditional branch |
| `[[…]]` subroutine | Subagent spawn (model × count) |
| `((…))` circle | Deterministic shell script execution |
| `[…]` rectangle | Orchestrator-inline step |
| dotted edge | Read/consume relationship |
| solid edge | Control flow / produce relationship |

Common to all levels: Phase 1 runs inline in the orchestrator (Opus); every subagent receives substituted `{{vars}}` and reads its own files (the orchestrator passes paths, not contents); every phase updates PLAN.md status.

---

## `min` effort

Self-contained speed run via `prompts/min-effort-workflow.md`. No persona system, no `personas/` directory, no `questions-meta.json`, no Step 2.x statuses, no NotebookLM question.

```mermaid
flowchart TD
    U[User request] --> P1[Phase 1 Context Gathering<br/>orchestrator inline, Opus]
    SK[/SKILL.md/] -.read.-> P1
    EFF[/prompts phase1_effort-level.md<br/>trigger detection/] -.read.-> P1
    GUID[/guidance phase1_effort-level.md<br/>⚠ stale 3-level taxonomy/] -.read if user asks detail.-> P1
    TREQ[/templates request.md/] -.-> P1
    TUQ[/templates user-questions.md/] -.-> P1
    TPLAN[/templates plan.md/] -.-> P1
    P1 --> CTX[(context dir, optional)]
    P1 --> UQGATE{{User questions provided?}}
    UQGATE -- yes --> UQ[(USER-QUESTIONS.md)]
    UQGATE -- no --> REQ
    UQ --> REQ[(REQUEST.md)]
    P1 --> MINBRANCH{{Effort = min:<br/>skip NotebookLM question,<br/>omit notebooklm-outputs field}}
    MINBRANCH --> PLAN[(PLAN.md)]
    PLAN --> MW[Enter min workflow]
    MWF[/prompts min-effort-workflow.md/] -.read.-> MW

    MW --> S1[Step 1 Question Generation]
    S1 --> SP1[[Generic question gen<br/>Sonnet ×1]]
    P2B[/prompts phase2B_question-gen_generic.md<br/>⚠ output path not session-anchored/] -.prompt.-> SP1
    REQ -.read.-> SP1
    UQ -.read if exists — allowed at min only.-> SP1
    SP1 --> QM[(QUESTIONS.md<br/>15-20 Qs, Topic Cluster NN headers)]
    QM --> SQ((scripts/split-questions.sh))
    SQ --> BT[(questions/by-topic/NN_slug.md ×3-5)]
    SQ --> PLANTC[(PLAN.md section<br/>Topic Clusters from Phase 2)]
    BT --> G1{{Gate 1: headers present,<br/>3-5 by-topic files,<br/>User Q marker count}}
    G1 -- fail --> S1
    G1 -- pass --> S2[Step 2 Generic Brainstorming<br/>topics in numeric order]

    S2 --> SP2[[Generic brainstorm<br/>Sonnet ×1 per cluster]]
    P3G[/prompts phase3_brainstorm_generic.md<br/>⚠ output path not session-anchored/] -.prompt.-> SP2
    REQ -.read.-> SP2
    BT -.own cluster only.-> SP2
    SP2 --> RESP[(responses/NN_slug/generic-response.md)]
    RESP --> G2{{Gate 2: one response per topic}}
    G2 -- fail --> S2
    G2 -- pass --> S3[Step 3 Summary Generation]

    S3 --> SP3[[Summary subagents<br/>Sonnet ×1 per cluster]]
    P4M[/prompts phase4_summary-only_min-effort.md<br/>⚠ topic var source unstated/] -.prompt.-> SP3
    RESP -.read.-> SP3
    SP3 --> SUMF[(synthesis/NN_slug_summary.md<br/>central-tension frontmatter)]
    SUMF --> HUM1[[Humanizer mode a<br/>Haiku ×1 per summary, edits in place]]
    HPP[/prompts humanizer-pass.md/] -.prompt.-> HUM1
    HSK[/prompts humanizer SKILL.md/] -.style rules.-> HUM1
    HUM1 --> GV1{{⚠ grep-based verification<br/>procedure unspecified}}
    GV1 --> BS((scripts/build-summaries.sh))
    SUMF -.frontmatter stripped here.-> BS
    BS --> SUMM[(SUMMARIES.md)]
    SUMM --> G3{{Gate 3: 1 summary per topic,<br/>no synthesis or attributed files,<br/>SUMMARIES.md exists}}
    G3 -- fail --> S3
    G3 -- pass --> S4[Step 4 Final Output]

    S4 --> AMB{{⚠ AMBIGUOUS ROUTE:<br/>min Step 4.1 self-contained vs<br/>phase5 prompt claiming all efforts}}
    AMB -- min Step 4.1 --> ORC4[Generate BRAINSTORM.md<br/>Sonnet per min model table<br/>no Central Tensions in content list]
    QM -.read.-> ORC4
    SUMM -.authoritative input.-> ORC4
    TBR[/templates brainstorm.md<br/>⚠ hardcodes model-requested opus/] -.template.-> ORC4
    AMB -- phase5 route --> SP5[[Final output subagent<br/>⚠ model conflict Opus vs Sonnet]]
    P5[/prompts phase5_final-output.md/] -.prompt.-> SP5
    SUMM -.read.-> SP5
    SUMF -.central-tension frontmatter<br/>⚠ forbidden by min Step 4&#46;1 re-read rule.-> SP5
    TBR -.template.-> SP5
    ORC4 --> BRM[(BRAINSTORM.md)]
    SP5 --> BRM
    BRM --> HUM2[Humanizer mode c<br/>inline whole-file pass<br/>⚠ runner ambiguous vs min model table Haiku]
    HPP -.prompt.-> HUM2
    HUM2 --> S42[Step 4.2 Present results]
    S42 --> DONE[(PLAN.md: session complete)]
```

---

## `low` effort

Full Phase 2 question pipeline (Steps 2.1–2.3), Step 2.4 skipped, fixed Devil's Advocate + Pragmatist pair, summary-only Phase 4. No `_synthesis.md`, no `attributed/`, no `SYNTHESIS.md`.

```mermaid
flowchart TD
    START([User request, effort low]) --> P1[Phase 1 Context Gathering<br/>orchestrator inline, Opus]
    F_SKILL[/SKILL.md/] -.read.-> P1
    F_P1[/prompts phase1_effort-level.md<br/>triggers + NotebookLM question text/] -.read.-> P1
    F_G1[/guidance phase1_effort-level.md<br/>⚠ stale 3-level system/] -.read if user asks detail.-> P1
    F_TREQ[/templates request.md/] -.-> P1
    F_TPLAN[/templates plan.md/] -.-> P1
    P1 --> CTX[(context dir, optional)]
    P1 --> UQGATE{{User has specific questions?}}
    UQGATE -- yes --> F_TUQ[/templates user-questions.md/]
    F_TUQ --> UQ[(USER-QUESTIONS.md<br/>isolated from Step 2.2)]
    UQGATE -- no --> REQ
    UQ --> REQ[(REQUEST.md)]
    P1 --> NLMQ{{NotebookLM addon? opt-in, default no}}
    NLMQ --> PLAN[(PLAN.md: effort, notebooklm-outputs<br/>⚠ persona-selection-review never instructed)]

    PLAN --> S21[[Step 2.1 roster selection<br/>Opus ×1]]
    F_2A[/prompts phase2A_question-gen-personas-selection.md<br/>⚠ Volume Ranges table has no Low column/] -.substituted prompt.-> S21
    F_G2A[/guidance phase2A_question-gen-personas.md<br/>⚠ says Tier 3 medium-high only/] -.consulted.-> S21
    REQ -.read.-> S21
    S21 --> QGFILE[(personas/question-generation.md)]
    S21 --> PLANSEC1[(PLAN.md section Phase 2 Step 2.1<br/>Tier 1 table, Tier 2 sentinel, Tier 3 0-1)]
    QGFILE --> GATE21{{Gate 2.1: rationale file +<br/>PLAN section + swap rationale}}
    PLANSEC1 --> GATE21
    GATE21 -- fail --> S21

    GATE21 -- pass --> S22[[Step 2.2 question generators<br/>Sonnet ×10-11 parallel]]
    F_2B[/prompts phase2B_question-gen_by-persona.md/] -.per-persona substituted prompt.-> S22
    F_PERS[/personas the-persona.md ×roster<br/>frontmatter stream category volume/] -.each reads own.-> S22
    REQ -.read.-> S22
    PLANSEC1 -.volume targets.-> S22
    UQ -. must NOT read ⚠ rule not stated in prompt .-> S22
    S22 --> BYP[(questions/by-persona/*.md<br/>stream + category frontmatter)]
    BYP --> GATE22{{Gate 2.2: count matches roster,<br/>frontmatter present}}
    GATE22 -- fail --> S22

    GATE22 -- pass --> S23[[Step 2.3 question synthesis<br/>Opus ×1<br/>⚠ effort never substituted]]
    F_2C[/prompts phase2C_question-synthesis.md/] -.substituted prompt.-> S23
    BYP -.glob all.-> S23
    REQ -.read.-> S23
    PLANSEC1 -.fallback stream routing.-> S23
    UQ -.mandatory plus-one if exists.-> S23
    S23 --> QMD[(QUESTIONS.md<br/>8-10 clusters, 32-42 Qs<br/>per-cluster numbering)]
    S23 --> META[(questions-meta.json<br/>⚠ numbering scheme ambiguous)]
    QMD --> SPLIT((scripts/split-questions.sh<br/>⚠ drops wrapped question lines))
    SPLIT --> BYT[(questions/by-topic/NN_slug.md)]
    SPLIT --> ADDGATE{{Additional Questions section exists?}}
    ADDGATE -- yes --> ADD99[(questions/by-topic/99_additional.md)]
    SPLIT --> PLANTC[(PLAN.md section Topic Clusters<br/>ordered slugs incl 99 row —<br/>authoritative source for Phase 5)]
    META --> GATE23{{Gate 2.3: headers, valid JSON,<br/>by-topic count, hard floors,<br/>User Q marker count}}
    GATE23 -- fail --> S23
    DEADPY((scripts/count-cluster-questions.py<br/>⚠ orphan — invoked by nothing))

    GATE23 -- pass --> SKIP24[Step 2.4 SKIPPED at low<br/>fixed pair: DA + Pragmatist]
    SKIP24 --> P3[[Phase 3 brainstorm<br/>Sonnet ×2 per topic<br/>topics in numeric order incl 99]]
    F_P3[/prompts phase3_brainstorm_by-persona.md/] -.substituted prompt.-> P3
    F_DA[/personas the-devils-advocate.md/] -.read.-> P3
    F_PR[/personas the-pragmatist.md/] -.read.-> P3
    REQ -.read.-> P3
    BYT -.own cluster only.-> P3
    P3 --> RESP[(responses/NN_slug/<br/>the-devils-advocate.md + the-pragmatist.md)]
    RESP --> GATE3{{Gate P3: 2 files per topic dir}}
    GATE3 -- missing --> LOG1[log in PLAN Notes, proceed]

    GATE3 -- pass --> P4[[Phase 4 summary generation<br/>Sonnet ×1 per topic]]
    LOG1 --> P4
    F_P4[/prompts phase4_summary-only_low-effort.md<br/>⚠ topic var source unstated/] -.substituted prompt.-> P4
    REQ -.read.-> P4
    BYT -.cluster questions.-> P4
    RESP -.both persona files.-> P4
    P4 --> SUMM[(synthesis/NN_slug_summary.md<br/>central-tension frontmatter,<br/>Neither-lens gaps section)]
    SUMM --> HUM[[Humanizer mode a<br/>Haiku ×1 per summary, edits in place]]
    F_HUM[/prompts humanizer-pass.md<br/>⚠ path token undefined convention/] -.mode a brief.-> HUM
    F_HSK[/prompts humanizer SKILL.md/] -.style rules.-> HUM
    HUM --> VGATE{{⚠ grep-based verification<br/>greps never specified}}
    VGATE --> BUILD((scripts/build-summaries.sh))
    SUMM -.concat, frontmatter stripped.-> BUILD
    BUILD --> SUMMD[(SUMMARIES.md<br/>central-tension keys lost here)]
    SUMMD --> GATE4{{Gate P4 low: 1 summary per topic,<br/>no synthesis or attributed,<br/>SUMMARIES.md exists, no SYNTHESIS.md}}

    GATE4 -- pass --> P5[[Phase 5 final output<br/>Opus ×1]]
    F_P5[/prompts phase5_final-output.md<br/>⚠ skill var missing from substitution list/] -.substituted prompt.-> P5
    REQ -.read.-> P5
    QMD -.read.-> P5
    PLANTC -.ordered slugs + display names.-> P5
    SUMMD -.authoritative substrate.-> P5
    SUMM -.central-tension frontmatter<br/>⚠ not in declared Inputs list.-> P5
    F_TBR[/templates brainstorm.md<br/>word budgets + Session Index/] -.read.-> P5
    P5 --> NLMGATE{{PLAN frontmatter notebooklm-outputs = yes?}}
    NLMGATE -- yes --> F_TNLM[/templates notebook-lm-instructions.md<br/>⚠ artifact numbering contradiction/]
    F_TNLM --> NLMOUT[(NOTEBOOK-LM-INSTRUCTIONS.md)]
    NLMGATE -- no --> BRAIN
    P5 --> BRAIN[(BRAINSTORM.md<br/>SYNTHESIS.md index line deleted at low)]
    BRAIN --> HUMC[Humanizer mode c<br/>inline by Phase 5 subagent itself<br/>⚠ not mentioned in SKILL.md]
    F_HUM -.mode c brief.-> HUMC
    HUMC --> P52[Step 5.2 present results<br/>PLAN.md: session complete]
    P52 --> DONE([Done])
```

---

## `medium` effort

Full pipeline: Steps 2.1–2.4, 4 brainstorming personas per topic (Core pair + 2 Inner Ring; catch-all cluster gets the fixed 4-panel), full three-output synthesis, both build scripts, both rollup files.

```mermaid
flowchart TD
    START([User request, effort medium]) --> P1[Phase 1 Context Gathering<br/>orchestrator inline, Opus]
    F1[/SKILL.md/] -.read.-> P1
    F2[/prompts phase1_effort-level.md<br/>⚠ default low vs SKILL.md default medium/] -.read.-> P1
    F3[/templates request.md, plan.md, user-questions.md/] -.read.-> P1
    P1 --> UQ{{User has specific questions?}}
    UQ -- yes --> AUQ[(USER-QUESTIONS.md<br/>isolated from Step 2.2 generators)]
    UQ -- no --> AREQ
    AUQ --> AREQ[(REQUEST.md)]
    P1 --> CTX[(context dir, optional)]
    P1 --> NLM1{{NotebookLM addon? opt-in, default no}}
    NLM1 --> APLAN[(PLAN.md: effort, notebooklm-outputs<br/>⚠ persona-selection-review never instructed<br/>⚠ template instantiation unspecified)]

    APLAN --> S21[[Step 2.1 roster selection<br/>Opus ×1<br/>⚠ Model table says Orchestrator-Sonnet]]
    F4[/prompts phase2A_question-gen-personas-selection.md<br/>⚠ Politician example row says Synthesize/] -.substituted prompt.-> S21
    F5[/guidance phase2A_question-gen-personas.md/] -.consulted.-> S21
    AREQ -.read.-> S21
    S21 --> AQG[(personas/question-generation.md)]
    S21 --> APLAN21[(PLAN.md section Phase 2 Step 2.1<br/>Tier 1 ×10, Tier 2 sentinel N/A,<br/>Tier 3 0-1 strong-trigger)]
    AQG --> G1{{Gate 2.1: file + tier tables + swap rationale}}
    G1 -- fail --> S21

    G1 -- pass --> S22[[Step 2.2 question generators<br/>Sonnet ×10-11 parallel]]
    F6[/prompts phase2B_question-gen_by-persona.md/] -.per-persona substituted prompt.-> S22
    F7[/personas the-persona.md ×roster<br/>category + stream frontmatter/] -.each reads own.-> S22
    AREQ -.read.-> S22
    APLAN21 -.volume targets.-> S22
    AUQ -. must NOT read ⚠ isolation not stated in prompt .-> S22
    S22 --> ABP[(questions/by-persona/*.md)]
    ABP --> G2{{Gate 2.2: count + frontmatter}}
    G2 -- fail --> S22

    G2 -- pass --> S23[[Step 2.3 synthesis<br/>Opus ×1<br/>⚠ effort never substituted]]
    F8[/prompts phase2C_question-synthesis.md/] -.substituted prompt.-> S23
    ABP -.glob all.-> S23
    AREQ -.read.-> S23
    APLAN21 -.fallback stream lookup.-> S23
    AUQ -.mandatory plus-one if exists.-> S23
    S23 --> AQ[(QUESTIONS.md<br/>10-12 clusters, 45-65 Qs)]
    S23 --> AMETA[(questions-meta.json<br/>⚠ numbering scheme ambiguous)]
    AQ --> SCR1((scripts/split-questions.sh<br/>⚠ drops wrapped lines))
    SCR1 --> ABT[(questions/by-topic/NN_slug.md)]
    SCR1 --> A99C{{Additional Questions section present?}}
    A99C -- yes --> A99[(questions/by-topic/99_additional.md)]
    SCR1 --> APTC[(PLAN.md section Topic Clusters —<br/>authoritative ordered slug + name source)]
    AQ --> G3{{Gate 2.3: headers, JSON parses,<br/>by-topic count, hard floors, User Q markers}}
    G3 -- fail --> S23

    G3 -- pass --> S24[[Step 2.4 brainstorm persona selection<br/>Opus ×1<br/>⚠ no prompt file — inline SKILL.md handoff incomplete]]
    F9[/guidance phase2D_brainstorming-personas.md<br/>⚠ self-titled Phase 2C/] -.methodology.-> S24
    FMAX[/guidance phase2D max-option clone<br/>⚠ dead file, glob hazard, no catch-all section/]
    AQ -.clusters verbatim.-> S24
    AREQ -.read.-> S24
    S24 --> CATCH{{Cluster = 99 Additional Questions?}}
    CATCH -- yes --> FIXED[Fixed 4-panel: DA, Pragmatist,<br/>Analogist, Visionary]
    CATCH -- no --> MATCH[Classify topic type<br/>Core 2 + Inner Ring 2]
    FIXED --> ABR[(personas/brainstorming.md)]
    MATCH --> ABR
    S24 --> APLAN24[(PLAN.md section Phase 2 Step 2.4<br/>per-topic 4-persona table)]
    APLAN24 --> PAUSE{{persona-selection-review = pause?}}
    PAUSE -- pause --> USERCONF[Present selections, await user]
    PAUSE -- auto --> G4
    USERCONF --> G4{{Gate 2.4: heading + table present,<br/>4 per topic, DA + Pragmatist everywhere,<br/>no retired personas}}
    G4 -- fail --> S24

    G4 -- pass --> P3[[Phase 3 brainstorm<br/>Haiku ×4 per topic, parallel per PLAN 2.4 row<br/>slugs joined from Topic Clusters section]]
    F10[/prompts phase3_brainstorm_by-persona.md/] -.substituted prompt.-> P3
    F7 -.persona file each.-> P3
    AREQ -.read.-> P3
    ABT -.own cluster only.-> P3
    P3 --> ARESP[(responses/NN_slug/the-persona.md ×4)]
    ARESP --> G5{{Gate P3: 4 files per topic dir}}
    G5 -- missing --> LOG1[log in PLAN Notes, proceed]

    G5 -- pass --> P4[[Phase 4 full synthesis<br/>Opus ×1 per topic, parallel]]
    LOG1 --> P4
    F11[/prompts phase4_full-synthesis.md<br/>⚠ disk templates synthesis-attributed and merged drifted<br/>⚠ no Conspicuous Absences or recurring tags emitted/] -.substituted prompt.-> P4
    AREQ -.read.-> P4
    ABT -.questions.-> P4
    ARESP -.all 4 responses.-> P4
    P4 --> AATT[(synthesis/attributed/NN_slug.md<br/>⚠ SESSION-STRUCTURE names it _attributed)]
    P4 --> ASYN[(synthesis/NN_slug_synthesis.md<br/>Question N blocks)]
    P4 --> ASUM[(synthesis/NN_slug_summary.md<br/>central-tension frontmatter)]
    ASUM --> HA[[Humanizer mode a<br/>Haiku ×1 per summary, edits in place]]
    ASYN --> HB[[Humanizer mode b<br/>Haiku ×1 per Question N block<br/>text in, text out — writes nothing]]
    F12[/prompts humanizer-pass.md + humanizer SKILL.md/] -.briefs.-> HA
    F12 -.briefs.-> HB
    HB --> ASM[⚠ Assembler step — actor unspecified<br/>reassembles each synthesis file, single write]
    ASM --> ASYN2[(humanized _synthesis.md)]
    HA --> ASUM2[(humanized _summary.md)]
    ASUM2 --> SCR2((scripts/build-summaries.sh))
    ASYN2 --> SCR3((scripts/build-synthesis.sh))
    SCR2 --> ASUMS[(SUMMARIES.md<br/>frontmatter stripped — central-tension lost)]
    SCR3 --> ASYNS[(SYNTHESIS.md)]
    ASUMS --> G6{{Gate P4: attributed + summary + synthesis per topic,<br/>SUMMARIES.md and SYNTHESIS.md exist<br/>⚠ grep-based humanizer verification unspecified}}
    ASYNS --> G6
    G6 -- missing --> LOG2[log gap in PLAN Notes, proceed]

    G6 -- pass --> P5[[Phase 5 final output<br/>Opus ×1]]
    LOG2 --> P5
    F13[/prompts phase5_final-output.md/] -.substituted prompt.-> P5
    F14[/templates brainstorm.md<br/>⚠ reframe rule contradicts prompt<br/>⚠ stale word-band example in prompt/] -.read.-> P5
    AREQ -.read.-> P5
    AQ -.read.-> P5
    APTC -.ordered slugs.-> P5
    ASUMS -.authoritative substrate.-> P5
    ASUM2 -.central-tension keys<br/>⚠ not in declared Inputs list.-> P5
    ASYNS -.linked, never read.-> P5
    P5 --> NLM2{{PLAN frontmatter notebooklm-outputs = yes?}}
    NLM2 -- yes --> F15[/templates notebook-lm-instructions.md<br/>⚠ artifact numbering contradiction/]
    F15 --> ANLM[(NOTEBOOK-LM-INSTRUCTIONS.md)]
    NLM2 -- no --> ABRN
    P5 --> ABRN[(BRAINSTORM.md<br/>Central Tensions max 4,<br/>SYNTHESIS.md index line kept)]
    ABRN --> HC[Humanizer mode c — inline by Phase 5 subagent<br/>⚠ not mentioned in SKILL.md]
    HC --> PRESENT[Step 5.2 present results<br/>PLAN.md: session complete]
    PRESENT --> DONE([Done])
```

---

## `high` effort

Medium's pipeline at maximum settings: Tier 2 joins question generation (14–16 generators), 7 brainstorming personas per topic (Core 2 + Inner 2 + Middle Ring completers 3; catch-all gets the fixed 7-panel), hard floors scale to ≥3, word budgets scale up.

```mermaid
flowchart TD
    START([User request, effort high]) --> P1[Phase 1 Context Gathering<br/>orchestrator inline, Opus]
    SK[/SKILL.md/] -.read.-> P1
    F1A[/prompts phase1_effort-level.md/] -.read.-> P1
    F1B[/guidance phase1_effort-level.md<br/>⚠ stale, no min level/] -.read if user asks detail.-> P1
    F1C[/templates request.md, plan.md, user-questions.md/] -.read.-> P1
    P1 --> UQ{{User-defined questions?}}
    UQ -- yes --> AUQ[(USER-QUESTIONS.md)]
    UQ -- no --> AREQ
    AUQ --> AREQ[(REQUEST.md)]
    P1 --> ACTX[(context dir, optional)]
    P1 --> NLM{{NotebookLM addon? default no}}
    NLM --> APLAN[(PLAN.md: effort high,<br/>notebooklm-outputs flag,<br/>persona-selection-review)]

    APLAN --> S21[[Step 2.1 roster selection<br/>Opus ×1]]
    F2A[/prompts phase2A_question-gen-personas-selection.md/] -.substituted prompt.-> S21
    F2AG[/guidance phase2A_question-gen-personas.md/] -.reference.-> S21
    AREQ -.read.-> S21
    S21 --> T3{{Tier 3 triggers, moderate or stronger:<br/>select 0-2}}
    S21 --> SWAP{{Connector swap or Analogist default}}
    T3 --> AQG[(personas/question-generation.md<br/>Tier 1 + Tier 2 + Tier 3 tables)]
    SWAP --> AQG
    S21 --> APLAN21[(PLAN.md section Phase 2 Step 2.1)]
    AQG --> QG1{{Gate 2.1: file + 3 tier tables +<br/>4 Tier 3 rationale blocks + swap rationale}}
    QG1 -- fail --> S21

    QG1 -- pass --> S22[[Step 2.2 question generators<br/>Sonnet ×14-16 parallel<br/>10 T1 + 4 T2 + 0-2 T3]]
    F2B[/prompts phase2B_question-gen_by-persona.md/] -.per-persona substituted prompt.-> S22
    FPERS[/personas the-persona.md ×roster/] -.each reads own.-> S22
    AREQ -.read.-> S22
    APLAN21 -.volume targets.-> S22
    AUQ -. isolated — never read .-> S22
    S22 --> ABYP[(questions/by-persona/*.md ×14-16)]
    ABYP --> QG2{{Gate 2.2: count matches roster,<br/>stream + category frontmatter}}
    QG2 -- fail --> S22

    QG2 -- pass --> S23[[Step 2.3 question synthesis<br/>Opus ×1<br/>⚠ effort never substituted]]
    F2C[/prompts phase2C_question-synthesis.md/] -.substituted prompt.-> S23
    ABYP -.glob all.-> S23
    AREQ -.read.-> S23
    APLAN21 -.stream fallback.-> S23
    AUQ -.mandatory plus-one if exists.-> S23
    S23 --> AQ[(QUESTIONS.md<br/>11-13 clusters, 55-90 Qs)]
    S23 --> AMETA[(questions-meta.json)]
    AQ --> SPLIT((scripts/split-questions.sh))
    SPLIT --> ABYT[(questions/by-topic/NN_slug.md)]
    SPLIT --> ORPH{{Additional Questions section exists?}}
    ORPH -- yes --> A99[(questions/by-topic/99_additional.md)]
    SPLIT --> APLANTC[(PLAN.md section Topic Clusters incl 99 row)]
    AMETA --> QG3{{Gate 2.3: valid JSON + headers,<br/>AI orphans ≥3 and ST archetypes ≥3 at high,<br/>User Q marker count}}
    QG3 -- fail --> S23

    QG3 -- pass --> S24[[Step 2.4 brainstorm persona selection<br/>Opus ×1<br/>⚠ no prompt file, effort never passed]]
    F2D[/guidance phase2D_brainstorming-personas.md<br/>⚠ algorithm never pins total at exactly 7/] -.methodology.-> S24
    FMAX[/guidance phase2D max-option clone<br/>⚠ dead file — identical title, lacks catch-all section/]
    AQ -.clusters verbatim.-> S24
    AREQ -.read.-> S24
    S24 --> CATCH{{99_additional present?}}
    CATCH -- yes --> FIXED[Fixed 7-panel: DA, Pragmatist,<br/>Analogist, Visionary, Connector,<br/>Systems Thinker, Provocateur]
    CATCH -- no --> ALGO[Per-cluster algorithm:<br/>Core 2 + Inner 2 + Middle 3]
    FIXED --> ABR[(personas/brainstorming.md)]
    ALGO --> ABR
    S24 --> APLAN24[(PLAN.md section Phase 2 Step 2.4<br/>7-persona rows)]
    ABR --> PAUSE{{persona-selection-review = pause?}}
    PAUSE -- pause --> USERAPPROVE[User reviews, may override]
    USERAPPROVE --> QG4
    PAUSE -- auto --> QG4{{Gate 2.4: exactly 7 per topic,<br/>DA + Pragmatist everywhere,<br/>no retired personas}}
    APLAN24 --> QG4
    QG4 -- fail --> S24

    QG4 -- pass --> P3[Phase 3: iterate by-topic files in numeric order]
    ABYT -.topic list.-> P3
    APLAN24 -.personas per row.-> P3
    P3 --> S3[[Brainstorm subagents<br/>Haiku ×7 per cluster]]
    F3[/prompts phase3_brainstorm_by-persona.md/] -.substituted prompt.-> S3
    FPERS -.persona file each.-> S3
    AREQ -.read.-> S3
    ABYT -.own cluster questions.-> S3
    S3 --> ARESP[(responses/NN_slug/the-persona.md ×7)]
    ARESP --> QG5{{Gate P3: 7 files per topic dir}}
    QG5 -- missing --> S3

    QG5 -- pass --> S4[[Phase 4 full synthesis<br/>Opus ×1 per cluster]]
    F4[/prompts phase4_full-synthesis.md<br/>⚠ no Conspicuous Absences or recurring substrate/] -.substituted prompt.-> S4
    AREQ -.read.-> S4
    ABYT -.questions.-> S4
    ARESP -.all 7 responses.-> S4
    S4 --> AATT[(synthesis/attributed/NN_slug.md)]
    S4 --> ASYN[(synthesis/NN_slug_synthesis.md)]
    S4 --> ASUM[(synthesis/NN_slug_summary.md<br/>central-tension frontmatter)]
    ASUM --> HA[[Humanizer mode a<br/>Haiku ×1 per summary]]
    ASYN --> HB[[Humanizer mode b<br/>Haiku ×1 per Question N block]]
    FH[/prompts humanizer-pass.md + humanizer SKILL.md/] -.briefs.-> HA
    FH -.briefs.-> HB
    HB --> ASM[⚠ Assembler step — owner unspecified<br/>single write per synthesis file]
    ASM --> ASYN2[(humanized _synthesis.md)]
    HA --> ASUM2[(humanized _summary.md)]
    ASUM2 --> BS((scripts/build-summaries.sh))
    ASYN2 --> BX((scripts/build-synthesis.sh))
    BS --> ASUMM[(SUMMARIES.md)]
    BX --> ASYNM[(SYNTHESIS.md)]
    ASUMM --> QG6{{Gate P4: triplet per topic,<br/>SUMMARIES.md + SYNTHESIS.md exist}}
    ASYNM --> QG6
    AATT --> QG6

    QG6 -- pass --> S5[[Step 5.1 final output<br/>Opus ×1]]
    F5[/prompts phase5_final-output.md<br/>⚠ stale word-band example/] -.substituted prompt.-> S5
    FT5[/templates brainstorm.md<br/>effort-scaled word budgets/] -.read.-> S5
    AREQ -.read.-> S5
    AQ -.index links.-> S5
    APLANTC -.ordered slugs.-> S5
    ASUMM -.authoritative substrate.-> S5
    ASUM2 -.central-tension keys<br/>⚠ undeclared input.-> S5
    ASYNM -.linked, never read.-> S5
    S5 --> NLM2{{PLAN frontmatter notebooklm-outputs = yes?}}
    FTN[/templates notebook-lm-instructions.md/] -.read only if yes.-> NLM2
    NLM2 -- yes --> ANLM[(NOTEBOOK-LM-INSTRUCTIONS.md<br/>5 artifacts, per-cluster episode parity)]
    NLM2 -- no --> AB
    S5 --> AB[(BRAINSTORM.md<br/>SYNTHESIS.md link kept at high)]
    AB --> HC[Humanizer mode c — inline by Phase 5 subagent]
    FH -.mode c brief.-> HC
    HC --> S52[Step 5.2 present results]
    S52 --> DONE[(PLAN.md: session complete)]
    DEADPY((scripts/count-cluster-questions.py<br/>⚠ orphan — invoked by nothing))
```

---

## Reconciliation notes

Where the four traces and the SKILL.md-only baseline disagreed, the traces won (they read every file). Notable resolutions:

1. **`min` does run `split-questions.sh`** and the by-topic/PLAN Topic Clusters machinery — the baseline marked this uncertain.
2. **`min`'s final-output route is a genuine fork**, not a baseline misreading: min Step 4.1 is self-contained while `phase5_final-output.md` claims all effort levels (audit decision B1). The chart shows both branches.
3. **Humanizer mode (c) is run inline by the BRAINSTORM.md-producing agent itself** (phase5:112; min:163), not as a separate Haiku spawn — contradicting the baseline's guess and min's own model table (audit B1/quick fixes).
4. **`count-cluster-questions.py` and `guidance/phase2D_…_max-option.md` are unreachable** from every effort level (audit B9/B10); they appear as disconnected nodes.
5. **Phase 3 at medium/high reads only the PLAN.md Step 2.4 table** (not `personas/brainstorming.md`), but must join it with the Topic Clusters section to get cluster slugs — that join is currently implicit (audit #15/B5).
6. All artifacts listed in SESSION-STRUCTURE.md appear as nodes in the matching chart, plus two artifacts SESSION-STRUCTURE omits (`questions-meta.json`, `NOTEBOOK-LM-INSTRUCTIONS.md`) — audit quick fix #30.

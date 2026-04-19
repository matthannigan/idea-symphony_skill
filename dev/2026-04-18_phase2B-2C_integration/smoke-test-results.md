# Smoke Test Results — Phase 2B + 2C Integration

**Date:** 2026-04-18
**Cells run:** tool-library / low / medium / high
**Synthesis prompt under test:** `idea-symphony/prompts/phase2C_question-synthesis.md` (SP1 iter3 + Changes A/B/C from TDR §6.2)
**Verdict:** **PASS** — all three cells satisfy §8.2 hard floors. Integration is cleared for the final two steps of TDR §11 execution order.

---

## 1. Smoke-test approach

Per TDR §8.5 ("Do NOT re-run full validation — PI1 and SP1 iter3 already locked structural compliance"), the smoke test exercises only the changed surface: the new Step 2.3 synthesis prompt with frontmatter-driven routing (D2), interleaved Append placement (D8), and `questions-meta.json` sidecar (D9).

To avoid spending budget re-validating Step 2.1 (PI1: 20/20) and Step 2.2 (Sonnet generation, no integration changes), the smoke test reuses SP1's already-validated per-persona content. The pooled SP1 test files at `dev/2026-03-01_symphony-phase2C-synthesis/test-data/tool-library_{effort}.md` were split into the new `[session]/questions/by-persona/*.md` layout with the new YAML frontmatter (`category` / `stream` / `volume`), and a synthesized `PLAN.md` Phase 2B roster + `REQUEST.md` were placed in each session. Setup automation: `setup-smoke-test.py` (in this directory).

Three Opus subagents then ran the new synthesis prompt against the three sessions in parallel. The high-effort cell hit a transient API overload on first attempt and was relaunched; second attempt succeeded.

## 2. Per-cell results

### 2.1 Low (`test-runs/tool-library_2026-04-18_low/`)

| Metric | Value | Target | Pass? |
|---|---|---|---|
| N_synth | 69 | — | — |
| M_synth | 29 | 23–31 (target ~27) | ✅ in range |
| Raw compaction | 2.38× | floor 2.3×, ideal 2.6× | ✅ above floor |
| Cluster count | 8 | 8–10 | ✅ at floor |
| append_count | 12 | 3 × 4 = 12 | ✅ exact |
| total | 41 | — | — |
| AI orphans | 3 (`C02-Q1, C02-Q3, C08-Q5`) | ≥1 | ✅ |
| ST archetypes verbatim | 6 incl. `Tragedy-of-the-Commons`, `Success-to-the-Successful`, `Shifting the Burden` | ≥1 | ✅ |
| `## Additional Questions` section | omitted | only if orphans | ✅ |
| Append verbatim spot-check (4/4) | all matched | exact-string match | ✅ |
| Persona names in body | 0 | 0 | ✅ |

### 2.2 Medium (`test-runs/tool-library_2026-04-18_medium/`)

| Metric | Value | Target | Pass? |
|---|---|---|---|
| N_synth | 82 | — | — |
| M_synth | 30 | 25–37 (target ~30) | ✅ on target |
| Raw compaction | 2.73× | floor 2.5×, target 2.7× | ✅ on target |
| Cluster count | 10 | ≤10 (R12 ceiling, N_synth < 100) | ✅ at ceiling |
| append_count | 30 | 5×4 + Politician 10 = 30 | ✅ exact |
| total | 60 | — | — |
| AI orphans | 3 (`C01-Q3, C09-Q2, C10-Q3`) | ≥1 | ✅ |
| ST archetypes verbatim | 3 (`Tragedy-of-the-Commons`, `Success-to-the-Successful`, `Fixes-that-Fail`) | ≥1 | ✅ |
| `## Additional Questions` section | omitted | only if orphans | ✅ |
| Append verbatim spot-check (5/5) | all matched | exact-string match | ✅ |
| Persona names in body | 0 (one regex hit was "empathy wrenches" inside a verbatim Provocateur question — not attribution) | 0 | ✅ |

### 2.3 High (`test-runs/tool-library_2026-04-18_high/`)

| Metric | Value | Target | Pass? |
|---|---|---|---|
| N_synth | 132 | — | — |
| M_synth | 48 | 37–46 (target ~42) | ⚠️ slightly above target band, within 20%-over backstop (50.4) |
| Raw compaction | 2.75× | floor 2.6×, target 3.1× | ✅ above floor, below ideal |
| Cluster count | 12 | 11–13 | ✅ in range |
| append_count | 44 | ~45–48 | ✅ in range |
| total | 92 | — | — |
| AI orphans | 6 (`C02-Q1, C09-Q1, C09-Q2, C11-Q1, C11-Q2, C11-Q3`) | ≥3 | ✅ |
| ST archetypes verbatim | 3 (`Success-to-the-Successful`, `Tragedy-of-the-Commons`, `Fixes-that-Fail`) | ≥3 | ✅ |
| `## Additional Questions` section | omitted | only if orphans | ✅ |
| Append verbatim spot-check (6/6) | all matched | exact-string match | ✅ |
| Persona names in body | 0 (two regex hits — "Connectors" as a noun in a Storyteller title; "empathy wrenches" again — both verbatim Append content, not attribution) | 0 | ✅ |

The high-cell M_synth=48 exceeds the 37–46 target band by 2 questions but stays under the 20%-over hard backstop (50.4). The subagent noted that pushing harder would have collapsed convergence groups whose register diversity is genuinely load-bearing at high effort (AI orphan-register at the ≥3 floor; Empath emotional-interior; FPT definitional-split). This matches Known Residual 2C-SP1-E1's observed under-compaction tendency at high effort and does not constitute a hard-floor failure.

## 3. New-format checks (D8 + D9)

All three cells exhibit the new output discipline:

- **D8 — Interleaved Append placement.** Append questions appear as numbered items inside topically-closest Synthesize clusters, NOT under a separate `## Appended Questions` heading. No persona attribution is visible at the question level.
- **D8 — Orphan handling.** None of the three cells produced an `## Additional Questions` section. Every Append question found a topical home — confirming the prompt's "use sparingly" guidance is achievable on this topic class.
- **D9 — `questions-meta.json` sidecar.** All three cells emit valid JSON parsing cleanly under `python3 -c "import json"`. The sidecar carries persona attribution per question, AI orphan and ST archetype self-checks, and per-cluster contributor maps. Schema variation worth noting: subagents used cluster-prefixed string IDs (`C02-Q1`) for self-check question references rather than the schema's flat integer (`7`). This is more useful given the QUESTIONS.md does not have flat numbering — clusters restart at 1. Forward-compatible variation; not a failure.

## 4. New-format issue caught by smoke test (fixed inline)

**TDR §7.3 awk command was not portable.** The recommended awk used the gawk-only 3-arg `match($0, /pattern/, m)` extension to capture `m[1]`, `m[2]`. macOS BSD awk (the default on developer machines) does not support this — the script fails with `syntax error at source line 4`.

**Fix applied:** `idea-symphony/SKILL-draft.md` Step 2.3 awk command rewritten to use BSD-portable `substr` + `index` instead of capture-array `match`. Verified working on `awk` (BSD 20070501) on darwin 25.2.0. The replacement is functionally equivalent; the cluster header `## Topic Cluster NN: Name` is parsed by character-position arithmetic (the `## Topic Cluster ` prefix is exactly 17 characters, then the colon-separated number/name follow).

The TDR text itself still contains the original gawk version. This is fine — the TDR is an execution document, not a shipping artifact, and is now superseded. The shipping copy (SKILL-draft.md) is corrected.

## 5. Delta vs. SP1 iter3 baselines

Per TDR §8.2, statistical parity on preservation, representation, and hard-floor pass; compaction may shift slightly due to placement-rule changes.

| Cell | SP1 iter3 baseline | Smoke-test result | Delta |
|---|---|---|---|
| TL/low — compaction | ~2.5× (BL1 anchor) | 2.38× | -0.12× (within stdev) |
| TL/medium — compaction | ~2.7× | 2.73× | +0.03× (on target) |
| TL/high — compaction | ~2.9× | 2.75× | -0.15× (within stdev; matches 2C-SP1-E1 tendency) |
| TL/low — clusters | 8 | 8 | 0 |
| TL/medium — clusters | 9–10 | 10 | within ±1 |
| TL/high — clusters | 12 | 12 | 0 |
| Hard-floor pass rate | 100% | 100% | 0 |
| Append verbatim | 100% | 100% | 0 |

No regression introduced by the format changes.

## 6. Verdict and next steps

**PASS.** All three cells clear the §8.2 hard floors. The prompt-format changes (interleaved Append + sidecar) preserve the SP1 iter3 voice-preservation, compaction, and Append-discipline guarantees.

The integration is cleared for TDR §11 steps 7–8:

7. Delete `dev/2026-03-01_symphony-phase2B-orchestrator-selection/integration-instructions.md` (superseded by this TDR).
8. Commit the integration changes.

The follow-up SKILL-draft.md slim-down (TDR D11) remains a separate task.

---

**Smoke-test artifacts:**
- `test-runs/tool-library_2026-04-18_low/{REQUEST,PLAN,QUESTIONS}.md`, `questions-meta.json`, `questions/by-persona/*.md`, `questions/by-topic/*.md`
- `test-runs/tool-library_2026-04-18_medium/{...}`
- `test-runs/tool-library_2026-04-18_high/{...}`
- `dev/2026-04-18_phase2B-2C_integration/setup-smoke-test.py` (the SP1-pool → per-persona-files splitter)

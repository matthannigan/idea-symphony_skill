# O1 Pilot Summary — tool-library gate check

**Date:** 2026-04-18
**Pilot scope:** 3 variants × tool-library × 2 effort levels = 6 runs
**Purpose:** Structural sanity check before committing to 60 full generation runs
**Gate criteria (per task spec):** (1) Selects Politician at both efforts OR fails diagnosably (not malformed); (2) Produces structurally valid PLAN.md roster; (3) Does not fall for an obvious false-positive trap. **Reshape only if a variant fails ALL three.**

---

## Pilot Results

| Variant | Medium Tier 3 | High Tier 3 | Structural validity | Trap fall |
|---|---|---|---|---|
| **O-V1** (reference-only) | None | Accountant + Lawyer | ✅ Valid | ⚠️ Lawyer (documented tool-library trap) |
| **O-V2** (embedded-triggers) | None | Accountant | ✅ Valid | ✅ Rejected Lawyer trap |
| **O-V3** (structured-checklist) | None | None | ✅ Valid | ✅ Rejected all traps |

**Ground-truth reminder:** tool-library medium = Politician (High confidence on selection, Medium on strength label; ambiguous per GT1); tool-library high = Politician + Accountant (Accountant High-confidence moderate).

---

## Gate Assessment

| Check | O-V1 | O-V2 | O-V3 |
|---|---|---|---|
| 1. Politician selected OR diagnosable miss | Diagnosable miss (both) | Diagnosable miss (both) | Diagnosable miss (both) |
| 2. Structurally valid PLAN.md | ✅ | ✅ | ✅ |
| 3. No obvious false-positive trap | ❌ (Lawyer at high) | ✅ | ✅ |
| **Fails all three?** | No (fails 1 only) | No | No |

**Decision:** All three variants pass the pilot gate. Proceed to full 60 generation runs without reshaping.

---

## Observations (seeds for scoring and PR1)

1. **All three variants missed Politician at medium** — consistent with GT1's ambiguity flag on tool-library medium (strict-rubric reading: stakeholder politics present but not central → not a *strong* trigger). This is an acceptable alternative per Q2 scoring rule but worth monitoring: if the pattern holds across other "stakeholder-complexity but not governance-central" topics, it signals a guide-level issue (the Politician trigger needs either a sharper definition or a worked example of the ambient-vs-central distinction).

2. **O-V1 alone fell for the Lawyer trap.** The reference-only variant interpreted "liability and safety concerns" as a moderate Lawyer trigger despite GT1 flagging this as the exact trap. O-V2 and O-V3 — which embed the trap-rejection language directly in the prompt — correctly rejected it. Early signal that trap-rejection may require explicit in-prompt warnings rather than guide-reference alone.

3. **O-V3 landed at "None" at high effort** — the most conservative call. None of the three triggers (Accountant, Politician) met its threshold. This hints at a "too-strict" failure mode where the checklist's depth/trap filtering causes under-selection. Worth watching whether O-V3 systematically under-selects across the 60-run set.

4. **Connector/Analogist:** All three variants correctly kept Analogist at both effort levels (ground truth: Analogist). No swap errors in the pilot.

5. **PLAN.md structural compliance:** 6/6 outputs produce all required sections (Tier 1 table, Tier 2 table or N/A, Tier 3 table, rationale block with structured per-persona entries). Format consistency is strong for the pilot.

---

## Pilot-to-Full-Run Strategy

- All three variants proceed to full 20-run batches (60 runs total).
- Pilot outputs for tool-library will be used as the tool-library cell in each variant's 20-run set (copied to `findings/O1_runs/{variant}/tool-library_{effort}.md`) — functionally identical to the generation-subagent output, saving 6 runs.
- Non-determinism concerns for these cells are addressed by the targeted re-run mechanism in Stage 5 (suspect cells get 2 additional runs).

**Status:** Pilot gate PASSED for all three variants. Committing to full 60-run generation.

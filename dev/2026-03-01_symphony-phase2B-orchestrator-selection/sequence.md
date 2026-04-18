**Linear chain:**
```
GT1 ──► O1 ──► PR1 ──► PI1
```

**With GT1 status gates (Q13):**

| Downstream task | Accepts Provisional GT1? | Requires Canonical GT1? |
|---|---|---|
| **A1** (Phase 2C, side-channel) | Yes — starts assembly immediately | No |
| **O1** | Yes — can start scoring | Findings stay provisional until Canonical |
| **PR1** | No | **Yes** — iterating against a moving target is out of scope |
| **PI1** | N/A — doesn't consume GT1 directly | Inherited via PR1 |

**Per-task inputs:**

- **GT1** → consumes guide + R5/R6/R7 findings + REQUESTS_ALL.md. Produces `ground-truth/expected-assignments.md` + `findings/GT1_*.md`.
- **O1** → consumes GT1 output + 3 variant prompts (authored in-task). Produces 60 raw runs + 3 per-variant scores + 1 cross-variant synthesis identifying the winning variant and error patterns.
- **PR1** → consumes O1 winning variant + O1 error patterns + Canonical GT1. Iterates up to 4× (+ optional iter5 guide-edit path). Produces `findings/PR1_refined-orchestrator-prompt.md`.
- **PI1** → consumes PR1 final prompt. Re-runs 20× for format validation + finalizes PLAN.md template.

**Key parallelism:** GT1 unblocks Phase 2C's A1 immediately (Provisional handoff), so Phase 2B and Phase 2C run concurrently after GT1. Everything downstream of GT1 inside Phase 2B is sequential — the empirical cycle (generate → score → refine) can't meaningfully parallelize across O1/PR1/PI1.
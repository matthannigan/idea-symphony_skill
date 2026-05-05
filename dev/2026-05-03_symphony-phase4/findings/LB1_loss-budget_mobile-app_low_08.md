# LB1 Per-Sample Score: mobile-app/low/08_choosing-the-relaunch-path-and-communicating-the-change

**Date:** 2026-05-04
**Sample ID:** mobile-app_low_08_choosing-the-relaunch-path-and-communicating-the-change
**Effort:** low
**Prompt under test:** idea-symphony/prompts/phase4_summary-only_low-effort.md
**Through-line count in BL1 ledger:** 22

---

## Axis A
| BL1 TL ID | TL summary | Status | Notes |
|---|---|---|---|
| TL-1 | Decision clock with hard criteria | V/P | Theme 2 + action: "hard decision date (2 weeks from kickoff)" |
| TL-2 | Tech dependency mapping precedes path | V/P | Theme 3 + action: "3-day technical spike" |
| TL-3 | Runway-equivalent dollar cost comparison | Absorbed | Coupling/cost framing kept; specific $250K/$400K dropped |
| TL-4 | Separate-app is highest-cost; validate cheaply | V/P | Action: App Store check + 30-day feasibility + landing page |
| TL-5 | 180K ≠ users; ~14K MAU / ~3.6K DAU | V/P | Theme 1, high-confidence item, action |
| TL-6 | Segmented communication, not blast | V/P | Theme 4 explicit |
| TL-7 | Removal as data migration | V/P | Near-term action with 2-3 day budget |
| TL-8 | Churn instrumentation before removals | V/P | Immediate action: "feature-specific offboarding screens" |
| TL-9 | Loss-aversion asymmetry of "subtraction = focus" | Dropped | Solution side present (forward promise); failure-mode framing absent |
| TL-10 | Postmortem honesty: trust-building vs. reads as incompetence | Dropped | Inverted-framing trade-off entirely smoothed |
| TL-11 | Grief framing risks amplifying loss aversion | V/P | Blind-spot flag preserves it explicitly |
| TL-12 | Direct outreach to power users | V/P | Action: contact top 20-50 |
| TL-13 | Funeral generates product signal beyond PR | Dropped | Funeral kept only as PR/comms tactic |
| TL-14 | Funeral needs forward product preview | V/P | Theme 5: "must end with something tangible" |
| TL-15 | Funeral high-risk in wellness; scope tightly | V/P | Theme 5 + near-term action |
| TL-16 | Three-body feasible region may not exist | Dropped | Optimization premise unchallenged; only "rank by recovery" survives |
| TL-17 | Team capacity is most underweighted constraint | Absorbed | Recovery-cost half present; productivity-multiplier (2-3 mo runway gain) dropped |
| TL-18 | Single cross-constraint north star metric | V/P | Action: "(retention × MAU) / monthly burn" verbatim |
| TL-19 | Urban renewal may not apply given engagement data | Dropped | Premise-challenge absent |
| TL-20 | Workflow audit with 10 heavy users | V/P | Near-term action |
| TL-21 | Features vs. workflows distinction | Absorbed | Workflow-audit action present; explicit framing distinction muted |
| TL-22 | Social as load-bearing vs. rationalized tech debt | Dropped | Pragmatist's 20% threshold kept; DA's tech-debt counterpoint absent |

**Survival rate:** 14 V/P + 3 Absorbed = 17/22 = 77%
**Verdict:** fail (below 80%)

## Axis B (low)

### B.1
- Central Tension: "the team's real constraint is not product strategy, it is that a decision-avoidance loop itself consumes runway" — weak. Names a meta-tension (decision avoidance) but smooths over the path-choice trade-off itself; dilutes via "both converge on one uncomfortable truth."
- Exec Summary: substantive — commits each lens to stances ("the risk lens probes whether... the feasible region may not exist"; "the feasibility lens... immediately proposes tools")
- `[trade-off]` / `[convergent]` / `[unique:*]` tags: 0% — the prompt-mandated stance tags are entirely absent; output uses category tags ([DECISION-GATE], [BUILD], [COMMS]) instead
- Verdict: partial (substantive ExecSum but weak Central Tension and 0% stance-tagging)

### B.2
- BL1 Neither-lens-gap candidates: (1) first-person user emotional texture (relational/emotional), (2) post-relaunch acquisition strategy (political-economy), (3) App Store dynamics (political-economy/platform)
- Output gaps: (a) App Store rank recovery, (b) investor communication strategy, (c) grief-acknowledgment scale risk (in blind-spot section)
- Gap-presence rate: 2/3 BL1 categories mapped (App Store directly; investor narrative ≈ political-economy/acquisition adjacent). First-person emotional gap absent.
- Specificity: substantive (App Store rank reset mechanic, investor update timing tied to 8-month runway)
- Verdict: partial (≈67% mapping, falls short of 75%)

## Axis C — n/a

## Phase-5 Signal Audit
- Confidence-tag candidates from BL1 not propagated: the prompt's stance tags are missing entirely, breaking the downstream weighting affordance. A Phase-5 reader cannot distinguish convergent recs from trade-offs without re-reading source files.
- Two inverted-framing pairs (TL-10, TL-22) lost as productive disagreements — both summaries pick a side (pro-postmortem; pro-social-anchor) without surfacing the counter-stance.
- Premise-questioning DA contributions (TL-16, TL-19) absent; only operational risks survive.

## Sample Verdict
**Pass:** A AND B.1 AND B.2. Strict — partial = FAIL.

**Verdict:** FAIL
**Failure modes:**
- A: 77% survival (below 80%); 5 BL1 TLs dropped, including both inverted-framing pairs (TL-10, TL-22) and three DA premise-challenges (TL-13, TL-16, TL-19).
- B.1: Stance tags ([convergent]/[trade-off]/[unique:*]) entirely absent — replaced with category tags. Central Tension hedges via "both converge on one uncomfortable truth."
- B.2: 67% gap-category mapping; first-person emotional/relational gap missing.
- Pattern: inverted-framing tensions consistently smoothed (TL-10 honesty trade-off, TL-22 social-as-tech-debt counterpoint).

**Recommended prompt revision target:**
1. Make stance tags ([convergent]/[trade-off]/[unique:risk]/[unique:feasibility]) a hard requirement on every action item — the prompt currently says "Tag each item" but the output ignored it; add a structural example with tags in place.
2. Add an explicit "inverted-framing" preservation rule: when both lenses address the same move with opposite stances, the trade-off must appear in Trade-offs section verbatim, not be resolved in Exec Summary.
3. Strengthen Central Tension instruction to forbid "both converge" framings — the section is for the unresolved trade-off, not for meta-agreement.

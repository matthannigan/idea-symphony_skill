---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/wearable-device/min"
datetime: 2026-06-09
effort: "min"
stage: "Phase 4: Summary Generation"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
topic-cluster: "02_power-budget-and-hardware-software-co-design"
central-tension: "Continuous PPG sampling is clinically necessary for arrhythmia detection but inherently budget-breaking, forcing every architectural decision — duty cycling policy, NPU cadence, gating logic — to serve aggressive power conservation while preserving detection fidelity."
---

# Summary: Power Budget and Hardware-Software Co-Design

## Executive Summary

The cluster's organizing tension is real and sharp: the clinical requirement for continuous PPG-based arrhythmia detection consumes 1.5–3 mA on its own, yet a 180 mAh, 7-day battery constrains the entire device to roughly 910 µA average. Every architectural decision in this cluster — duty cycling policy, NPU scheduling cadence, gating state machine design, cross-team contracts — is downstream of that gap. The brainstormer's consistent answer is hierarchical gating. Use the always-on accelerometer to gate PPG on during low-motion windows (not off, a common inversion mistake), batch NPU inference at 30-second cadence rather than streaming, and reserve microphone use for targeted sleep-apnea windows rather than continuous capture. Together these measures can recover 60–70% of PPG power without sacrificing clinically meaningful detection rates.

The second through-line is instrumentation discipline. The brainstormer returned repeatedly to the idea that hardware measurement must precede spreadsheet modeling: GPIO timestamping before adding a power analyzer, per-rail current logging at EVT, synthetic NPU workloads before committing real models. This is not a generic "measure things" recommendation—it's a sequence. Teams that skip characterization and prototype directly into a power spreadsheet routinely discover 2–4× variance from vendor datasheets once real-world factors (skin tone, ambient light, cold silicon, shared SRAM) are accounted for.

The cross-team coordination problem receives the same treatment: version-controlled contracts (a `power-budget.csv`, a `sensor-driver-api.h`, a `model-interchange-spec.md`) stored in `docs/contracts/` and a named system power owner with veto authority. The brainstormer frames this as preventing the classic multi-subteam failure where firmware, ML, and hardware each optimize locally and the system total drifts unchecked until a board spin reveals a 500 µA mystery current leak.

---

## Key Themes

### Hierarchical Gating as the Escape from the PPG Power Trap
PPG at full rate blows any realistic 7-day budget. The solution is a state machine that runs full-rate PPG only during low-motion windows detected by the accelerometer, drops to 1 Hz during vigorous activity, and uses HRV threshold triggers rather than continuous inference. The key inversion—ACC low-motion means PPG on, not off—recurs across Q5 and Q6 and is the most operationally specific design decision in the cluster.

### Measure First, Model Second
Every major recommendation pairs with a concrete measurement instrument: INA228 current monitors on each rail, GPIO toggles for NPU phase timing, synthetic NPU workloads before real model delivery, a 10-minute current trace to catch NPU retention bugs. The sequence is always to characterize on actual silicon before populating a budget or committing to a cadence policy. Vendor benchmark numbers are treated as a starting hypothesis, not a spec.

### Version-Controlled Contracts and Named Ownership as Power Budget Infrastructure
A weekly current-trace review posted to a shared channel, a `power-budget.csv` with named subteam owners, and a designated system power owner with sprint-level veto authority are the organizational mechanisms that keep power visible as a first-class metric. The brainstormer explicitly identifies "power is everyone's problem, so nobody's problem" as the failure mode this structure prevents.

### Latency Budget as a Formal Specification
Detection delay (ACC polling period → PPG startup → minimum valid window → inference runtime → alert) must be written as a one-page system-level spec with named acceptance criteria (≤30 seconds end-to-end for arrhythmia, ≤2 minutes for sleep apnea) before duty-cycle policy is locked. This appears across Q6 and Q8 as the shared contract that aligns firmware and clinical requirements.

### 90th-Percentile User as the Design Target
Budgeting to a median or lab-phantom user systematically underestimates real power draw. A runner with 90 minutes of high-activity mode, frequent syncs, and high-ambient-light conditions may draw 2× the average-case model. The "7-day" claim must be tested against this harder profile before it appears in investor materials.

---

## Recommended Actions

### Immediate (0-3 months)
- Instrument the first EVT board with per-rail current monitors (INA228 at 100 µA resolution) logging at 1 ms intervals; run each subsystem in isolation across temperature before populating any power spreadsheet. `[recurring]`
- Add four GPIO toggles to firmware — `NPU_WAKE`, `INFERENCE_START`, `INFERENCE_DONE`, `NPU_SLEEP` — and log at 1 MHz on a logic analyzer to establish timing ground truth before purchasing a power analyzer. `[recurring]`
- Write and commit three shared-contract documents to `docs/contracts/`: `power-budget.csv` (per-subsystem allocations with named owners), `sensor-driver-api.h` (function signatures and timing contracts, e.g., `ppg_start()` returns within 50 ms), and `model-interchange-spec.md` (input tensor shape, quantization range, expected inference latency/energy). `[single]`

### Near-term (3-12 months)
- Implement and verify the ACC-gating state machine with the correct inversion: ACC detects low-motion → PPG turns on; document the 300–800 ms ACC-to-PPG startup latency in the system spec and verify with a GPIO toggle + logic analyzer. `[recurring]`
- Map NPU power vs. inference cadence on a curve at EVT (starting point: every 30 s ≈ 5 µW average; every 5 s ≈ 30 µW) to identify the sweet-spot cadence where marginal latency gain no longer justifies marginal power cost. `[recurring]`
- Run the NPU with a synthetic matrix-multiply workload matching the expected model shape before ML delivers the final quantized model; compare against vendor benchmarks at 0°C with shared SRAM to expose the 30–50% real-world variance. `[single]`
- Build a software-only power simulator (Jupyter notebook driven by measured current values per state) that the ML team can run to evaluate cadence changes without hardware-in-loop iteration; investigate any >10% disagreement with the real device as an unaccounted wake source. `[single]`

### Long-term (1+ years)
- Designate a named system power owner with veto authority over any change adding more than 20 µA to the average budget; give this person a standing sprint-review agenda item and direct access to the characterization rig. `[single]`
- Gate every PCB revision on a formal cross-team power acceptance sign-off: firmware certifies NPU sleep (GPIO trace attached), ML certifies model runs within inference energy envelope (benchmark attached), hardware certifies all power rails at −10°C and +50°C. `[single]`

---

## Key Considerations

**Opportunities**:
- Hierarchical gating (ACC → PPG, microphone on apnea-pattern trigger only) can recover 60–70% of PPG power with no clinically meaningful loss in arrhythmia detection rate.
- A software power simulator, built in 2–3 days of engineering time, can replace weeks of hardware-in-loop iteration for ML cadence experiments.

**Risks and Challenges**:
- PPG LED drive current in real conditions (skin tone variation, ambient light rejection) runs 2–4× vendor datasheet values — budgets built from datasheets will be wrong.
- NPU retention states (50–200 µA) can silently consume a substantial fraction of the total budget if the full power-down handshake is not explicitly verified; this is a common firmware bug that a momentary measurement won't catch.

**Trade-offs**:
- Lower inference cadence (30 s) saves ~25 µW versus 5-second cadence but increases arrhythmia detection latency. The acceptable ceiling is a clinical judgment that must be specified before cadence policy is locked.
- Gating the microphone via ACC proxy reduces power by ~20 mAh/night but introduces 5–10 second sleep-apnea detection delay. This is clinically tolerable given event duration (10–120 seconds) but must be documented as an explicit spec.

**Conspicuous absences** (stances the brainstormer's output never took):
- The brainstormer never names a firmware team size or org structure as a precondition for the "system power owner" recommendation. The proposal assumes one engineer can hold cross-team veto authority, but on teams where firmware, ML, and hardware report to separate managers, this authority structure may not be grantable without explicit executive buy-in. The recommendation is load-bearing; its organizational precondition is not established.
- The brainstormer describes the ACC-gating state machine's correct logic but does not name the failure mode where the state machine gets stuck in a transitional state (e.g., PPG held on during a false low-motion reading from a stationary but arm-swinging user). A watchdog timeout on PPG active duration is the standard mitigation and is conspicuously absent given how much weight the gating architecture carries.

---

**Questions addressed**: 4 (Q5–Q8)
**Response sources**: 1 (generic brainstormer)

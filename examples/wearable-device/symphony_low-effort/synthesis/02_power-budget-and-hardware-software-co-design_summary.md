---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/wearable-device/low"
datetime: 2026-06-09
effort: "low"
stage: "Phase 4: Summary Generation"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
topic-cluster: "02_power-budget-and-hardware-software-co-design"
central-tension: "The NPU fallback and the 7-day battery promise are interdependent load-bearing claims — a feasibility-oriented view treats CPU-only inference as a defined acceptable escape hatch; a risk-oriented view holds it is not a fallback but a different non-viable product."
---

# Summary: Power Budget and Hardware-Software Co-Design

## Executive Summary

Both lenses converge on a structural diagnosis: the 7-day battery promise and the NPU's centrality to it are joint load-bearing assumptions not yet tested against real silicon or real usage. They diverge sharply on what that means. A feasibility-oriented view treats the risks as solvable engineering problems once made visible (calibrate the spreadsheet budget on prototype hardware, silicon-validate NPU benchmarks before locking model architecture, define a CPU-only MCU DSP fallback at reduced accuracy and inference frequency). A risk-oriented counterpoint holds that each mitigation has a known failure mode. Correlated demand spikes (anomaly detection triggering simultaneous elevated sensing, NPU inference, and BLE alert) break steady-state budget math by 2–3x. NPU vendors quote peak TOPS against dense matrix workloads unlike yours. The CPU-only "fallback" at approximately 3-day battery and 40% lower accuracy is not a fallback but an admission that the intended product does not exist in commercially viable form. That gap between characterization and commitment runs through every question in this cluster.

A second convergent finding: 12 engineers cannot simultaneously maintain a consumer device, build an FDA validation suite, develop HIPAA infrastructure, and iterate ML architecture on a single Series A runway without explicit sequencing. A feasibility view offers concrete sequencing (dedicated clinical track from month 9, HIPAA via compliant cloud vendor). A risk view argues the scope likely exceeds what any sequencing can fix at current headcount. Doing everything mediocrely risks the consumer product excellence that would drive a Series B.

---

## Key Themes

### Correlated Demand Spikes Are the Clinical Scenario, Not a Corner Case
Both lenses agree: simultaneous elevated PPG sampling, NPU inference, and BLE alert is the device's intended detection event, not a tail risk. A feasibility view enforces this via a hard 15 mA instantaneous cap with BLE deferred up to 2 seconds when the NPU is active. A risk view notes that a 6-hour arrhythmia episode at elevated sensing could exhaust the battery before the episode resolves, and argues for a dedicated clinical-emergency power tier guaranteeing 24 hours of minimum monitoring regardless of prior duty-cycle state.

### NPU Lock-In Is Irreversible and Requires Pre-Commit Silicon Validation
Both lenses expect 40–60% of rated NPU throughput under real windowed time-series inference and call for eval-kit validation before model architecture is locked. Where they split: a feasibility view defines the MCU DSP fallback concretely and treats it as viable. A risk view holds that if the fallback cannot meet a commercially viable battery floor, it is not a fallback. That floor must be defined before chip selection, not after.

### Two-Tier Architecture: Measure the Fixed Design Before Adding Adaptive Complexity
Both lenses endorse the fixed two-tier approach (firmware heuristic gating NPU wake-ups) and warn against adaptive complexity before the fixed design is measured. A risk view notes that the adaptive governor may be self-defeating: it increases power draw precisely during a sustained health event when battery criticality is highest. A feasibility view contributes a hard constraint: PPG polling cannot drop below 1 Hz even in low-power mode if the system must catch transient arrhythmias across 3 consecutive beats.

### Unified Budget Framing: Useful Tool or Dangerous Simplification?
A feasibility view embraces treating battery life, inference latency, and model size as a shared constraint matrix, visualizing how a new model proposal moves all three rows before implementation. A risk-oriented counterpoint flags that the framing can obscure asymmetric failure costs. Exceeding the power budget is a product experience problem. Missing accuracy thresholds is a patient safety problem. Clinical accuracy minimums should be non-negotiable hard floors defined first, with power optimization as the constrained subproblem after.

---

## Recommended Actions

### Immediate (0-3 months)
- Run a synthetic "storm day" workload (15 anomaly events, 6 BLE syncs, 8-hour sleep sensing) on three prototype units and use the measured-vs-spreadsheet delta as a calibration factor for all downstream battery specs. [convergent]
- Obtain NPU eval kits for two candidate silicon options; measure actual inference time and current draw under the real workload before locking model architecture. [convergent]
- Document the CPU-only fallback now: model, inference frequency, accuracy floor, projected battery life, and whether that configuration is commercially viable at the intended price point. [trade-off]

### Near-term (3-12 months)
- Designate a power architect with cross-team authority; require power profiling as definition-of-done for any PR touching sensing, inference scheduling, or radio. [convergent]
- Validate PPG in pool conditions on at least 10 subjects; add the worst-case LED drive current delta to the power budget and implement a swim-detection mode. [convergent]
- Define a decision record for sleep session behavior across timezone crossings; implement timezone-shift detection via companion app data. [convergent]
- Get product, firmware, and medical advisors to agree on low-battery behavior during active anomaly detection — reduce sensing vs. die sooner — before implementation. [unique: feasibility]

### Long-term (1+ years)
- Sequence the FDA clinical track as an explicit workstream with named owners from approximately month 9, or explicitly defer it to Series B headcount as a scoping decision. [convergent]
- Measure accuracy degradation per quantization step and plot against NPU inference time; treat inference frequency as a co-equal budget dial alongside model size. [unique: feasibility]

---

## Key Considerations

**High-confidence items** (both lenses agreed):
- Correlated demand spikes are the correct validation scenario; steady-state average-day math can be off by 2–3x.
- BLE advertising interval is the cheapest high-leverage lever; treat it as a cross-team power constraint, not a UX preference.
- NPU throughput requires silicon validation before model lock-in; assume 40–60% of rated TOPS until measured.
- FDA clinical track requires dedicated sequencing — it cannot be sustained as background work alongside consumer device development.

**Trade-offs** (the two lenses disagreed):
- A feasibility case that CPU-only DSP inference is a viable defined fallback; a risk-oriented counterpoint that ~3-day battery defines a different non-viable product and the commercial viability floor must be named before chip selection.
- A feasibility case for the unified budget constraint matrix as a practical planning tool; a risk-oriented counterpoint that it can obscure the asymmetric failure cost of missed arrhythmias vs. dead battery — clinical accuracy minimums must be hard floors, not optimization variables.

**Blind-spot flags** (only one lens raised):
- Clinical-emergency power tier guaranteeing minimum monitoring through a sustained health event, regardless of prior duty-cycle state. [unique: risk]
- Year-2 battery degradation at temperature: real-world performance is likely 5 days; spec should carry explicit conditions and 25% headroom before marketing commits. [unique: risk]
- Inference frequency as a first-class budget dial: a 2x larger model running half as often can be net-neutral on battery and net-positive on accuracy. [unique: feasibility]

**Neither-lens gaps** (what a different angle would have surfaced):
- *Distributional accuracy:* PPG accuracy varies across skin tones in ways documented in commercial wearables and addressed in FDA AI/ML guidance. Neither lens examined whether the clinical accuracy floor is defined against a representative population, or what the regulatory and liability implications are of systematically lower sensitivity for a demographic subset.
- *User phenomenology:* Both lenses address alert accuracy in engineering terms but not behavioral terms. Alert fatigue, health anxiety around missed alerts, and charging behavior shaped by fear of device downtime determine whether the product achieves its health-outcome goal. These factors are structurally absent from both framings.

---

**Questions addressed**: 7
**Source lenses**: risk-oriented (The Devil's Advocate) + feasibility-oriented (The Pragmatist)

---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/low"
datetime: 2026-04-28
effort: "low"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
topic-cluster: "02_power-budget-and-hardware-software-co-design"
persona: "The Devil's Advocate"
---

# Power Budget and Hardware-Software Co-Design - The Devil's Advocate

---

## Power Budget Decomposition Across Correlated Demand Spikes

* **Summary.** The 7-day target may be arithmetically plausible in steady state yet structurally impossible under the correlated-spike scenario that actually defines your worst case — and that scenario is the one that matters clinically.

* **The correlated-spike trap is not a corner case; it's the clinical scenario.** Arrhythmia detection is most critical precisely when the heart is under stress — elevated heart rate, movement artifact, possible perspiration on the sensor. That is also when PPG needs higher sampling frequency, the NPU fires more aggressively, and an alert triggers a BLE event. All four power consumers peak simultaneously. Have we modeled the battery draw under that correlated load? A 7-day target derived from independent duty cycles can be off by 2-3x in practice. Mitigation: run a worst-case correlated power simulation early, before silicon is finalized, using representative stress-event sequences.

* **BLE advertising intervals are a hidden cliff.** Changing BLE advertising from 1000ms to 100ms intervals can increase radio power draw by 5-8x. If the companion app polls aggressively because the product team wants "real-time" notifications, the firmware team's carefully managed duty cycle gets overridden by a mobile developer's UX decision. One potential challenge might be that these teams are not sharing a unified power budget model. Mitigation: enforce an API contract where the mobile team's sync frequency is treated as a first-class power constraint, not a UX preference.

* **Display is the easiest place to hide budget overruns.** Product teams habitually negotiate display-on time upward ("users want to see their heart rate during a workout"). Each 5-second always-on OLED extension can consume more power than an entire NPU inference cycle. Have we established a hard cap on display power allocation with a mechanism to prevent product scope creep from eroding it? Mitigation: assign the display a named budget slice (e.g., 8% of total) and require a formal tradeoff sign-off to exceed it.

* **The 7-day target almost certainly assumes standard temperature and a new battery.** A 45-year-old user swimming in a heated pool, then traveling to a winter climate, will see battery capacity swing 15-20% between conditions. End-of-life battery capacity (after 300 charge cycles) is typically 80% of nominal. The "7-day promise" on year-two hardware, in cold weather, after an alert-heavy night is likely 5 days. Mitigation: define the 7-day spec with explicit temperature and battery-age conditions, and build in a 25% headroom buffer before marketing makes that promise.

---

## Always-On Heuristics Versus Triggered NPU Inference, With Duty-Cycle as a Feedback Governor

* **Summary.** The adaptive duty-cycle design is elegant in theory but risks creating a feedback loop where anomaly-triggered sensing increases power draw precisely when battery is most critical — during actual health events.

* **The self-adjusting duty cycle may be self-defeating under adversarial conditions.** When the device detects something anomalous and increases sensing frequency, it draws more power. If the user is having a sustained arrhythmia episode — exactly the scenario the device exists for — the battery drains faster during the most critical monitoring window. Have we considered that a 6-hour arrhythmia event at elevated sensing frequency could consume enough power to silence the device before the episode resolves? Mitigation: reserve a "clinical emergency" power tier that guarantees minimum monitoring function for at least 24 hours regardless of prior duty-cycle decisions.

* **The latency budget for transient arrhythmias is probably not what the team thinks it is.** Some clinically significant arrhythmias (e.g., paroxysmal supraventricular tachycardia) can resolve in 10-30 seconds. If the low-power heuristic layer needs 15 seconds to accumulate enough signal confidence to trigger the NPU, and the NPU needs another 2-3 seconds for classification, the event may be over before classification completes. The device would then alert on a historical event — raising questions about alert timing accuracy in any future regulatory submission. Mitigation: benchmark end-to-end detection latency against published clinical onset-to-detection requirements before committing to the two-tier architecture.

* **The power delta between heuristic-polling and full NPU inference may not be large enough to justify the architectural complexity.** Modern ultra-low-power NPUs can run continuous lightweight inference at 0.5-2mW. If the "always-on heuristic" layer consumes 0.3mW and the gating saves the device from running NPU inference 90% of the time, the net saving may be less than 1mW — meaningful over a week, but not transformative. One potential challenge might be that the team is building significant firmware complexity to recover a battery gain that could be achieved more simply by lowering display brightness by 20%. Mitigation: do the actual mW math before investing in two-tier architecture; complexity has a maintenance cost.

* **Duty-cycle self-adjustment requires robust context awareness to avoid false-economy decisions.** Accelerometer-detected movement during swimming looks similar to movement during a fall. If the heuristic layer mis-classifies vigorous swimming as "low activity" and reduces sensing frequency, it may under-sample PPG during exactly the period when cardiac stress is highest. Mitigation: the context inference layer needs explicit validation against a labeled activity dataset before it can be trusted as a power-saving governor.

---

## NPU Co-Design Boundary, Lock-In, and Silicon-Underperformance Fallback

* **Summary.** The NPU is both the cornerstone of the power-accuracy value proposition and the single most irreversible architectural decision in the stack — and it may be made before enough is known to make it confidently.

* **Have we considered that NPU benchmark numbers almost never survive contact with real workloads?** NPU vendors quote peak TOPS figures using dense matrix multiplication with 8-bit integers and no memory bandwidth contention. The actual ML workload here — windowed time-series inference with irregular sampling, multi-sensor fusion, and frequent context switching — will likely achieve 30-50% of rated throughput. If the power-accuracy target is predicated on the spec-sheet number, the 7-day battery figure may be built on sand. Mitigation: demand that the hardware team characterize NPU performance under the actual inference pattern before finalizing chip selection, even if it means a 6-week delay.

* **Model architecture lock-in at NPU selection is a 5-year constraint on ML innovation.** If the chosen NPU has limited support for transformer-style attention mechanisms and the team later wants to implement a sequence model that outperforms the current convolutional approach, they either accept the performance penalty or face a hardware revision. Have we mapped out the model architecture space the team expects to explore over the product's commercial life, and verified the NPU supports it? Mitigation: evaluate at least two NPU candidates against a 5-year model roadmap, not just the current architecture.

* **The fallback plan to CPU-only inference is not a plan; it's a product failure.** If the NPU underperforms and the team falls back to the main MCU for inference, the 7-day battery target becomes approximately 3 days — which is a different product at a different price point serving a different user behavior. One potential challenge might be that the team treats "CPU fallback" as a safety net when it is actually an admission that the product does not exist in its intended form. Mitigation: define, now, the minimum viable battery life at which the product is still commercially viable, and assess whether CPU-only inference can meet that floor.

* **Volume silicon divergence from pre-production samples is a known hardware startup risk.** Early NPU samples are often from wafers with tighter process control than volume production. Power figures validated on engineering samples can degrade 10-20% at volume. With 18 months of Series A runway, there is no margin to absorb a tape-out revision triggered by volume silicon underperformance. Mitigation: negotiate with the NPU vendor for power characterization guarantees on volume production lots, or hold a tape-out contingency in the runway model.

---

## Critical-Path Engineering Allocation Across the Twelve-Engineer Team

* **Summary.** Twelve engineers sounds substantial until you map the actual concurrent workloads — at which point the team is simultaneously trying to do at least four things that each normally require dedicated resourcing.

* **The team cannot simultaneously maintain a production device and build an FDA validation suite without dropping something.** Firmware and ML engineers are the shared resource for both consumer-device maintenance and clinical-pathway work. FDA 510(k) submissions require software documentation, design history files, and V&V test suites that have no analog in consumer wellness development. Have we estimated how many engineering-weeks the FDA pathway actually consumes before committing to it in parallel with product delivery? Mitigation: make the FDA pathway a distinct workstream with named owners and a realistic timeline, or explicitly defer it until Series B headcount is secured.

* **Three ML engineers is thin for the full scope of the ML roadmap.** Model development, hardware-specific quantization, accuracy validation, drift monitoring design, firmware integration testing, and clinical-performance benchmarking are at minimum 2-3 full-time roles each during active development phases. One potential challenge might be that the ML team is being asked to deliver consumer-grade accuracy now, validate clinical-grade accuracy later, and maintain both simultaneously — with three people. Mitigation: identify the highest-risk ML deliverable (likely sensor fusion accuracy), staff it with dedicated focus, and time-box everything else.

* **Two mobile engineers building a HIPAA-compliant sync architecture is a significant under-resourcing risk.** HIPAA compliance for the companion app requires audit logging, encryption-at-rest, data minimization review, business associate agreement infrastructure, and security penetration testing — before any clinical partner will sign an agreement. This is not a feature; it is a compliance program. Have we validated that two engineers can build and maintain this while also delivering the consumer companion app? Mitigation: scope the minimum viable HIPAA architecture with a healthcare compliance consultant before committing to a timeline, and consider whether a HIPAA-compliant backend-as-a-service could reduce the build burden.

* **The roadmap may be implicitly sequenced on a Series B that is not guaranteed.** Expanding to FDA 510(k) work, HIPAA infrastructure, and clinical partnerships likely requires at least 5-8 additional engineers — a headcount that assumes successful Series B fundraising. If the current team tries to do all of it at once on Series A runway, they risk shipping a product that is mediocre at everything rather than excellent at the consumer wellness use case that would actually drive the Series B. Mitigation: define the Series A deliverable as a single, well-executed consumer product, and treat clinical/regulatory work as explicitly Series B scope.

---

## The Battery-Budget Discipline That Enables Everything Else

* **Summary.** The risk here is not that the team lacks a power budget — it's that they have individual budgets in each sub-team that are not reconciled into a single shared constraint until integration, when overruns are expensive to fix.

* **Power budget ownership needs a single accountable engineer.** In teams of this structure, firmware owns MCU power, hardware owns sensor and radio power, and ML owns inference power — but no one owns the system budget. The result is that each team optimizes locally, assumes the other teams have headroom, and the total exceeds target at integration. Have we considered appointing a power budget "owner" with authority to allocate and enforce budget slices across teams? Mitigation: designate a power architect role (likely a senior firmware engineer) with final authority on cross-team power allocation decisions.

* **The power budget will be violated first in a meeting room, not in hardware.** Product and design teams will make feature decisions — "the display should show the time always so users don't have to raise their wrist" — that consume significant power budget without engineering review. One potential challenge might be that there is no formal mechanism for engineering to assess power impact of product decisions before they are committed. Mitigation: establish a lightweight power-impact review for any new feature proposal, similar to a security review, before it enters the sprint backlog.

* **Without instrumented power measurement in the dev build, the budget is theoretical.** Power budgets only discipline behavior when developers can see their actual consumption during development, not just in final hardware testing. If the firmware team can only measure system power on the bench with specialized equipment, power regressions will accumulate silently between measurement sessions. Mitigation: invest early in automated power profiling integrated into the CI/CD pipeline, even if it requires a dedicated test harness.

---

## The Power Budget and the Model Accuracy Budget Are the Same Problem in Disguise

* **Summary.** The compiler-register-allocation analogy is intellectually appealing, but treating these as a "unified budget" risks obscuring the fact that they have incommensurable units and different stakeholders who care about different failure modes.

* **Power budget and accuracy budget fail in different directions with different consequences.** A compiler spilling registers degrades performance uniformly. A health device that exceeds power budget runs out of battery; a device that falls below accuracy thresholds misses arrhythmias. These are not symmetric failures — one is a product experience problem, the other is a patient safety problem. Have we considered that unifying them in a single optimization framework may obscure the asymmetric cost of accuracy failures? Mitigation: maintain separate hard floors for accuracy (driven by clinical risk tolerance) before treating the remaining margin as available for power optimization.

* **Pareto frontier thinking can create a false confidence that an optimal solution exists.** The framing of a "unified budget allocation problem" suggests that for any given battery target, there is an optimal accuracy level the team can achieve. In practice, regulatory and clinical requirements define a minimum accuracy threshold that is non-negotiable — and below that threshold, the device simply cannot be sold as a health monitor. One potential challenge might be that the team optimizes to a Pareto frontier that does not include any clinically viable point. Mitigation: define clinical accuracy minimums first (from the literature or regulatory precedent), then treat power optimization as the constrained problem.

* **The analogy breaks down at the model-selection boundary.** Compiler register allocation is a search over a well-defined, enumerable solution space. Model architecture search is not — there is always a model the team has not yet tried that might dominate the current Pareto frontier. Treating model selection as a "budget allocation" problem may cause premature convergence on local optima. Mitigation: reserve explicit time in the ML roadmap for architecture exploration beyond the initial model family, even after the "unified budget" framework suggests an optimal solution has been found.

* **Hardware-software co-design requires both sides to be co-present in budget negotiations.** The compiler analogy works when there is one unified compiler team. Here, the power budget is owned by hardware and firmware; the accuracy budget is owned by ML. These teams have different incentives and different visibility into constraints. Have we ensured that model accuracy requirements are represented in NPU selection meetings, and that NPU constraints are represented in model architecture decisions? Mitigation: establish a formal co-design review checkpoint before any hardware or model architecture decision is finalized.

---

## Seven Days on One Charge

* **Summary.** The 7-day narrative is compelling, but the realistic user arc reveals several moments where the device's firmware assumptions about "normal" usage are structurally incorrect — and where failure is visible and reputationally damaging.

* **Swimming invalidates the PPG sensor and may trigger false alerts or silences.** PPG heart rate measurement through wrist skin is severely degraded by water immersion and the associated motion artifact from swimming strokes. The device will either produce false arrhythmia alerts during laps (creating alert fatigue in a health-conscious 45-year-old who swims regularly) or will suppress sensing during exercise (missing the cardiac stress window that matters most). Have we characterized PPG accuracy in water immersion, and does the firmware have a validated "swimming" mode that handles this gracefully? Mitigation: validate sensor performance in pool conditions explicitly, and design a swim-detection mode that sets appropriate user expectations about monitoring capability.

* **Crossing two time zones disrupts the circadian sleep-detection model.** Sleep apnea detection likely relies on learned circadian patterns and expected sleep window timing. A user who flies west and sleeps at what their body clock reads as 2am will have disrupted sleep architecture that the model may interpret as anomalous. If the device sends a "possible sleep apnea event" alert because the model is disoriented by jet lag, the user's trust in the device collapses. One potential challenge might be that the model has no mechanism to detect and adapt to timezone transitions. Mitigation: implement a timezone-shift detection layer (using phone timezone from the companion app) that adjusts the sleep model's expected window and suppresses anomaly alerts during the adaptation period.

* **Battery anxiety will cause users to charge earlier than the 7-day target, undermining the metric.** A health-conscious 45-year-old who wears a device for cardiac monitoring will not let it run to 5% battery before charging — they will charge it when it hits 30-40%, especially before travel or sleep. This is rational behavior, but it means the device is off their wrist for charging more frequently than a naive "7-day battery" framing suggests. Have we modeled what "effective monitoring coverage" looks like for a typical user behavior pattern, as opposed to theoretical maximum battery life? Mitigation: design the UX around "always monitored" as the value proposition, with charging behavior guidance that minimizes gaps, rather than marketing maximum battery duration.

* **The device's worst battery day and the user's highest-risk cardiac day may be the same day.** Transatlantic travel involves sleep deprivation, dehydration, altitude exposure, alcohol, and physical inactivity — all cardiovascular stressors. It also involves long periods of BLE disconnection (airplane mode), potential temperature extremes, and erratic charging opportunity. The device's power management may be worst-configured for exactly the user scenario where accurate monitoring matters most. Mitigation: explicitly model the "travel day" scenario in power budget analysis and ensure the device maintains monitoring function across a 24-hour travel disruption without requiring a charge.

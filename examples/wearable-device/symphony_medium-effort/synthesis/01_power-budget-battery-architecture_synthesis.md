---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/wearable-device/med"
datetime: 2026-06-09
effort: "medium"
stage: "Phase 4: Response Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-8"
topic-cluster: "01_power-budget-battery-architecture"
synthesis-type: "synthesis"
---

# Brainstorming Synthesis: Power Budget & Battery Architecture

---

## Synthesized Insights by Question

### Question 1: Per-subsystem power budget decomposition

**Full question**: If the 7-day target is decomposed into per-subsystem budgets — sensing, NPU inference, BLE/sync, display, always-on housekeeping — what percentage ceiling should each subsystem be allocated, which is the hardest to compress without degrading clinical utility, and have we run a bottom-up budget that accounts for NPU duty-cycling, sensor sampling rates, and Bluetooth sync overhead under realistic worst-case usage so we know the answer if the first prototype delivers 4 days, not 7?

* **Build the budget bottom-up from current measurements on your actual silicon, not from industry rules of thumb.** All four perspectives converge here: percentage allocations published for generic wearables fail for clinical-grade sensors. The first move is to profile each subsystem on the real chips under real firmware. Instrument every subsystem with current profiling on day one and produce a diagnostic trace. When the first prototype delivers 4 days instead of 7, you can point to the subsystem that overran rather than guessing. The proposed allocations themselves diverge meaningfully (sensing-light versus sensing-heavy partitions), which is itself the signal: until measured, any partition is fiction. NPU inference and clinical sensing emerge as the hardest line items to compress. Multi-signal detection and 7-day battery may be mutually incompatible at this form factor, which a single-sensor PPG-only prototype can test directly.

* **Reserve an explicit 15–20% contingency for housekeeping and firmware overhead, and stress-test on worst-case silicon.** "Fixed" background costs (calibration loops, BLE advertising during sleep, secure-enclave operations, power-monitoring instrumentation) ship higher than predicted. The first prototype typically runs 20–30% worse than the spreadsheet. Bake the cushion in and validate on the highest-leakage silicon binning across the full temperature range before committing to battery chemistry.

* **Architect the budget to survive pathological worst-case days, not the average day.** A clinical device must withstand a user in sustained AFib at 120+ bpm for hours, triggering near-continuous inference and frequent BLE event-logging. The budget should hold across two or three such days without dropping below 20% battery; if it only holds for the average user, the alert-heavy days that matter clinically are exactly when the battery fails.

* **Treat sync overhead and cross-subsystem coupling as first-class budget items, not negligible line entries.** Naive per-subsystem partitioning misses costs from interaction: sensor-fusion synchronization within tight timestamp windows, wake-up latency jitter, BLE retransmission that spikes nonlinearly on alert-heavy days, a single accidental display wake (consuming 5–15% of a day), and thermal throttling that compresses the inference duty cycle in hot ambient conditions. Budget for these explicitly and add field instrumentation to catch unintended wake events.

---

### Question 2: Inference cadence vs. detection latency vs. sensing duty cycle

**Full question**: What is the quantified relationship between inference cadence (every 30 seconds vs. every 5 minutes) and the probability of missing a clinically significant arrhythmia event, at what cadence does detection latency become medically unacceptable, and how should PPG, accelerometer, skin temperature, and microphone duty cycles be sequenced in burst-and-sleep mode (with what burst duration and inter-burst interval) to preserve multi-signal correlation while shifting boundaries when an active event is suspected?

* **Derive cadence empirically by replaying real arrhythmia datasets at 30s / 2min / 5min intervals, not by intuition.** Run trained models offline against representative or retrospective PPG records at each cadence and measure the sensitivity and latency cost of each step-down. Use firmware that logs ground-truth-versus-prediction timing. Estimates of where the data lands range widely: "1–2 minute cadence is non-negotiable because missing a minute of sustained AFib is unacceptable" versus "5–10 minute intervals are fine because alerting 2–3 minutes after onset is still clinically useful." That spread is why the experiment must run before power optimization sets the number, ideally with a small-N clinical protocol.

* **Use a single burst window that fires all sensors together every few minutes to preserve multi-signal correlation cheaply.** Fire PPG plus accelerometer (and temperature) in one synchronized window of roughly 8–30 seconds, then drop to near-zero-power standby for several minutes between bursts. Co-firing in one window keeps cross-sensor correlation valid while sensors stay mostly asleep. The cost is up to a few minutes of first-detection latency at burst boundaries.

* **Add a two-tier adaptive cadence: a cheap always-on detector that escalates to full multi-sensor inference only on suspicion.** A lightweight anomaly detector runs continuously or at 30-second intervals on cached PPG. On a candidate event, it triggers high-fidelity inference using all sensors, including waking the microphone. This shifts power cost from continuous high-fidelity processing to rare full inference. Tuning must avoid both missed events and over-triggering.

* **Commit to an explicit latency requirement and let it constrain cadence, with a hard floor below which power breaks.** State responsiveness as a requirement (for example, cadence no longer than 90 seconds to achieve 2-minute alert latency), not a hope. Recognize a physical lower bound of roughly 10–15 seconds for the acquisition-buffer-inference chain. Get the clinical advisory board to agree the floor is medically acceptable.

* **Watch for adaptive cadence making total daily power data-dependent and creating dead windows.** Event-triggered escalation makes battery life a function of how many events a user has. High-alert users may violate the 7-day promise, and fixed sleep phases can systematically miss transient events that fall between bursts. Model detection probability over realistic activity patterns, not just calendar time. Budget for worst-case event clustering. Measure the accuracy cost of correlating sensor data captured in different bursts with timestamp skew.

---

### Question 3: Microphone power cost and NPU/CPU offload boundary

**Full question**: Continuous microphone sampling for breathing-pattern detection is among the most power-intensive sensor modes on a wrist form factor — does its marginal diagnostic value for sleep apnea justify its power cost relative to PPG-plus-accelerometer, where should the NPU/CPU offload boundary sit (affecting peak current draw and battery chemistry choice), and what is the fallback design if microphone must be dropped to hit battery targets?

* **Drop the microphone from the first product unless empirical testing proves it adds substantial sleep-apnea accuracy over a PPG-plus-accelerometer baseline.** All four perspectives converge: continuous microphone sampling (30–60 mW, more than PPG and accelerometer combined) is the budget killer and likely a luxury for a first release. Train or measure two models—one with microphone, one without—on the target population. Keep the microphone only if the accuracy delta is material. Wrist microphone signal quality is poor (arm movement, rustling, ambient noise). Users may object to always-listening collection. PPG-derived SpO2 drops plus accelerometer-inferred arousals already capture most of the apnea signal.

* **Put inference on the NPU and housekeeping on the CPU, keep the model quantized, and design the offload boundary to remain reconfigurable.** Run the quantized (INT8 or binary) detection model on the NPU in its native low-power mode. The CPU/MCU handles sensor I/O, buffering, threshold logic, and BLE. This holds peak current low and widens battery-chemistry choices. Confirm empirically that the NPU is actually efficient for any audio workload. Architect the boundary so the microphone path can be dropped or disabled without a silicon respin (a power island fusing the NPU and microphone ADC would lock the decision).

* **Validate peak current against battery-chemistry limits, because simultaneous microphone, NPU, and BLE activity can exceed safe draw.** Average power can look acceptable while a coincident spike (microphone active during NPU inference and BLE transmit) trips thermal throttling or battery-protection cutoff. Model the current-draw timeline. Confirm the chosen chemistry sustains simultaneous multi-sensor inference rather than assuming time-multiplexing keeps current in bounds. Peak current also drives PCB layout.

* **Design the firmware to ship without the microphone from day one and treat it as a phase-two addition, but check market consequences first.** The credible fallback is PPG (gold standard for arrhythmia), accelerometer (sleep staging, micro-arousals), and skin temperature, with apnea inferred from heart-rate variability and movement. Validate this fallback against clinical requirements before committing—it ripples through firmware and model selection. Separately, model the revenue and customer-acquisition impact of dropping the microphone if sleep apnea is a headline differentiator rather than a secondary feature.

---

### Question 4: Power envelope as municipal zoning

**Full question**: City planners allocate finite land across residential, commercial, industrial, and green space uses, accepting that expanding one zone compresses others and that the allocation shapes what kind of city emerges — your battery budget faces the same combinatorial constraint across sensing, NPU inference, radio, and display; what planning-derived principles (e.g., mixed-use density, just-in-time provisioning, demand-responsive zoning) could reshape how the firmware dynamically reallocates power rather than treating each subsystem's budget as a fixed partition?

* **Replace fixed partitions with a context-aware state machine that reallocates power by device mode.** Define states (Resting/Sleep, Active, Suspicious/Event) and let each re-partition the envelope: minimal display and low-frequency inference at rest, more sensing and radio when active, burst inference when an event is suspected. Demand-responsive allocation means subsystems earn budget from context rather than holding static ceilings. Estimated savings are 20–30% (or 2–3x battery-life extension) over static partitions. If those savings materialize, firmware is the bottleneck, not hardware.

* **Exploit mixed-use density and just-in-time provisioning: overlap subsystems and spin up high-power modes only on demand.** Co-locate work that would otherwise pay separate costs: PPG sampling during sync windows, inference windows that also refine sensor thresholds, time-sliced processor sharing. Wake expensive subsystems only when triggered (microphone only on suspected apnea). Add a "congestion charge" that defers non-critical sync when inference blocks the radio, sending data only when the device is already in a high-power state. The trade-off is firmware complexity for substantial savings.

* **Hard-wire a protected floor and an emergency-alert reserve that dynamic reallocation can never touch.** Some functions must never be reallocated: critical-alert BLE transmission needs headroom even if it momentarily exceeds the nominal budget. Core PPG-only arrhythmia detection must stay powered even if every dynamic system fails. Design the battery curve to handle sustained high-sync periods without dropping below functional voltage.

* **Price in the cost, verification burden, and stochastic-demand failure modes of dynamic allocation before assuming it nets out positive.** The optimizer itself consumes power (instrumentation, ADC conversions, control loops). Baseline its own cost before assuming a net win. Dynamic state machines are far harder to certify than static budgets and can explode the FDA verification workload. Mixed-use density increases thermal contention at wrist scale, where subsystems are already coupled. Simulate concurrent NPU + BLE + screen loads. Since health events are stochastic rather than forecastable, reserve a separate "event surge" budget that is never dynamically reallocated.

---

### Question 5: Battery as the primary output

**Full question**: What if the 7-day battery life was not a constraint but the *product* — and cardiac arrhythmia detection was just the justification for making an extremely efficient power system? How would the design change if you optimized the entire architecture around power budget first and let accuracy be whatever it could be within that envelope? *The insight: the team frames power as a tax on accuracy; inverting this might reveal a more honest hierarchy of what the hardware can actually deliver.*

* **Inverting the hierarchy is the cluster's most clarifying reframe: anchor on a fixed power envelope and maximize accuracy within it, rather than chasing accuracy and panic-optimizing power afterward.** Commit to a roughly 100 mW / 7-day envelope as the anchor. Accept that continuous multi-sensor inference is off the table. Design for intermittent inference. Accept around 85% sensitivity as the real-world ceiling, not a hoped-for 95%. The device then actually hits 7 days because that was the anchor, not a wish. Marketing claims become honest: "detects arrhythmias within 5 minutes; battery lasts 7 days."

* **Power efficiency reframed as reliability is itself a form of accuracy: consistent lower sensitivity over 7 days beats high sensitivity that dies at day 3.** A device that drains in 3 days and forces a charge has monitoring gaps that produce real false negatives. Steady inference over a full 7 days is clinically more reliable than intermittent high sensitivity. This converts the power budget from "a tax on features" into "the floor that enables reliability." A simpler 7-day device tends to outsell a complex 3-day one because users tolerate the simplicity.

* **The inversion implies a concretely different, simpler sensor and model stack.** Committing to the envelope first changes the bill of materials: drop the microphone, simplify the IMU (3-axis rather than 9-axis), and tune PPG to the minimum frequency that catches arrhythmias (25 Hz rather than 100 Hz, for example). Consider an ensemble of small cadence-specific models, each tuned to a specific arrhythmia pattern and switched off during known low-risk periods, instead of one large network. Once the envelope is fixed, the dominant variables become chip selection, battery chemistry, and firmware architecture. Success comes from hardware co-design with suppliers, not algorithmic cleverness.

* **The inversion also de-risks the regulatory path and clarifies the business model — start as bounded consumer wellness, gather data, then decide on FDA.** A power-bounded device with deliberately limited capability is easier to ship and defend than an over-ambitious clinical tool that misses battery targets. Honest, achievable battery claims with straightforward detection logic actually lower liability. Ship a good 7-day consumer device now, collect 6+ months of real-world data, then decide on the 510(k) path from a proven foundation. Position the IP as the on-device ML and sync protocol (with hardware commodified around weekly charging).

* **A pointed dissent: for a health device, optimizing power first can erode clinical credibility and amplify regulatory liability — so make the design priority explicit and conservative.** A power-first device that detects only 60–70% of significant arrhythmias invites the question "why trust the results?" This inversion works for an activity tracker but corrodes trust in a health device. If a regulator learns the architecture was power-optimized rather than accuracy-optimized, the 510(k) path becomes slower and costlier. The resolution is not to abandon the inversion but to choose a position explicitly. Specify battery life conservatively to keep headroom for later accuracy gains. Align marketing, firmware, regulatory, and support on whether this is a battery innovation justified by health monitoring or a health device with good battery life.

---

**Questions addressed**: 5
**Synthesized insights**: 21

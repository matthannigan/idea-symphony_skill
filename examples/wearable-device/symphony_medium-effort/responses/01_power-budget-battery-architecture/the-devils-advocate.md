---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/med"
datetime: 2026-04-28
effort: "medium"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "01_power-budget-battery-architecture"
persona: "The Devil's Advocate"
---

# Topic Cluster 01: Power Budget & Battery Architecture - The Devil's Advocate

---

## Per-Subsystem Power Budget Decomposition

* **Underestimation of always-on housekeeping drains reserves.** Firmware background tasks, sensor calibration loops, BLE advertising during sleep, and secure enclave operations rarely ship at predicted watts. Recommend building a 15–20% contingency into the "fixed" housekeeping budget, then stress-test firmware on worst-case silicon (highest leakage binning) across full temperature range to validate before committing to battery chemistry. Without this cushion, reaching 4 days instead of 7 is almost guaranteed.

* **Thermal runaway compresses inference duty cycle in summer use.** Heat dissipation on a wrist-worn device is severely constrained; running continuous NPU inference at full power in 35°C ambient may trigger thermal throttling or even device shutdown. Allocate separate power and thermal budgets that assume seasonal ambient variance, and model how clock-gating and voltage scaling degrade detection latency in hot conditions—users may lose anomaly detection precisely when stress/activity elevates cardiac risk.

* **Sensor fusion creates implicit cross-subsystem coupling.** If PPG requires 10% duty cycle to detect arrhythmias but accelerometer requires 5%, and their timestamps must be synchronized within 100ms for valid fusion, then naive per-subsystem budgeting misses the synchronization overhead and the power cost of wake-up latency jitter. Recommend bottom-up modeling that traces end-to-end data flow and includes inter-sensor timing constraints.

* **Display is either invisible or catastrophic to budget.** A single 5-second user interaction or one accidental display-on event per day could consume 5–15% of daily budget, yet most budget allocations treat display as negligible. Have we specified hard constraints on display wake-lock duration, auto-off timing, and user education around screen-time, plus instrumentation to detect unintended wake events in field data? Otherwise, real users will discover the budget math doesn't hold.

* **BLE sync overhead grows nonlinearly with health events.** During normal use, sync might cost 1% of daily budget; but if the device detects 3 arrhythmia alerts in one day, companion app reconnection, retransmission, and potential cloud sync attempts could spike to 5–8%. Have we modeled budget headroom for alert-heavy days, and do we have a fallback strategy (e.g., local-only logging, deferred sync) if total events exceed some threshold?

## Inference Cadence vs. Detection Latency vs. Sensing Duty Cycle

* **Detection latency and clinical liability are untested assumptions.** You may have internal heuristics suggesting 30-second inference cadence is "clinically acceptable," but if a real arrhythmia event lasts 45 seconds and you sample every 5 minutes, users or regulators may contest that missed window. Recommend running a controlled clinical protocol (even small-N) to quantify: at what inference cadence does the false-negative rate for known arrhythmias exceed acceptable risk, then design headroom above that cadence before power optimization kicks in.

* **Burst-and-sleep sequencing creates dead windows.** If you burst accelerometer+temperature every 3 minutes for 10 seconds, then sleep 2min50sec, a user's sudden postural change or activity spike may occur during sleep phase and be completely invisible. Recommend modeling detection probability over realistic user activity patterns (walking, sleeping, exertion), not just calendar time, and testing that multi-signal bursts don't systematically miss transient events by design.

* **Multi-signal correlation window is not free.** Storing PPG data from one burst and accelerometer data from an earlier burst, then correlating them post-hoc, adds computational overhead and synchronization complexity. If inter-burst interval varies due to dynamic power management, correlation reliability degrades. Have we measured the accuracy cost of stale cross-sensor windows, or are we assuming correlation works even with 10–30 second timestamp skew?

* **"Clinically significant" is regulatory and user-defined, not just technical.** A cardiologist cares about sustained arrhythmias lasting 30+ seconds; a consumer may care about any detected irregularity for reassurance. If your model trains to detect one definition but users or regulators expect another, inference cadence and sensitivity become mismatched. Recommend anchoring cadence requirements to *stated* clinical criteria, not engineering guesses.

* **Power feedback loop destabilizes cadence.** If firmware dynamically increases inference cadence in response to detected events (e.g., "arrhythmia candidate detected, now sample every 10 seconds for 2 minutes"), total daily power becomes data-dependent and unpredictable. Users experiencing frequent alerts during high-stress periods may deplete batteries faster than peers, violating the 7-day promise. Have we modeled worst-case cadence variability and ensured 7-day target holds under alert-heavy workloads?

## Microphone Power Cost and NPU/CPU Offload Boundary

* **Microphone diagnostic value is not established.** Breathing-pattern detection via acoustic analysis is valuable for sleep apnea, but wrist-worn microphone quality is poor, ambient noise contaminates signals, and users may object to always-listening data collection on privacy grounds. Before allocating 10–15% of daily power budget to continuous microphone sampling, have we A/B tested breathing-detection accuracy against PPG+accelerometer baselines in real sleep settings, and confirmed the incremental false-negative reduction justifies the privacy and power trade-off?

* **Continuous microphone creates regulatory exposure.** FDA reviewers and privacy regulators may treat always-on audio recording differently from optical and motion sensing, even if the wearable doesn't store audio. Shifting microphone workload to the NPU reduces CPU power but doesn't address the regulatory question: are we comfortable shipping a device that continuously listens, even if audio never leaves the device? Fallback recommendation: make microphone optional at hardware level, so clinical version uses it but consumer version doesn't.

* **NPU offload boundary is firmware-sticky, not hardware-flexible.** If initial silicon choice locks NPU and microphone ADC into same power island, and subsequent field data suggests microphone should be disabled, you cannot adjust the design without a new hardware revision. Recommend architecting the NPU/CPU boundary so microphone signal can be dropped to CPU (higher power cost but workable) or disabled entirely, without cascading architectural changes.

* **Peak current draw during microphone+NPU may exceed battery chemistry limits.** Lithium coin cells and thin-film batteries have maximum sustainable current draw; simultaneous microphone sampling at high resolution plus NPU matrix operations could spike current above safe limits, forcing derated performance or thermal shutdown. Have we validated that selected battery chemistry supports simultaneous multi-sensor inference peak current, or are we assuming time-multiplexing between microphone and NPU will keep current below limits?

* **Fallback design without microphone may not be credible.** If arrhythmia detection alone is the primary value prop and sleep apnea is secondary, then dropping microphone is acceptable; but if sleep apnea is a key differentiator, removing microphone narrows the addressable market. Have we modeled revenue impact and customer acquisition cost if microphone must be disabled to hit battery targets, and confirmed the product is still compelling without it?

## Power Envelope as Municipal Zoning

* **Dynamic reallocation requires sophisticated control software, which itself consumes power.** Building a feedback system that measures subsystem power in real-time, decides which modules to throttle, and updates firmware behavior introduces measurable overhead for power monitoring itself—instrumentation amplifiers, ADC conversions, control loop executions. Have we prototyped the power cost of dynamic allocation before assuming it's a net win, or are we chasing optimization without baselining the cost of the optimizer?

* **Just-in-time provisioning assumes predictable demand, which health events are not.** City planners can forecast housing demand by population trends; but arrhythmia events are stochastic. If your firmware allocates power "just in time" for NPU inference and an unexpected cluster of events occurs, the dynamic budget runs dry and you either miss detections or throttle other subsystems (e.g., display, comms). Recommend modeling worst-case event clustering and reserving a separate "event surge" budget that is never dynamically reallocated.

* **Demand-responsive zoning works because zones can fail gracefully; wearables cannot.** If a city de-allocates commercial zoning and a business needs it, the economic loss is contained; if your wearable de-allocates sensing power and the user suffers a missed health alert, liability is severe. Have we designed fallback behavior that ensures core detection capability (e.g., PPG-only arrhythmia detection) remains powered even if all dynamic reallocation systems fail?

* **Firmware complexity and verification burden explode with dynamic reallocation.** Static per-subsystem budgets are testable and certifiable; dynamic reallocation systems are state machines with combinatorial behaviors. Each new heuristic for power reallocation adds conditions to test, edge cases to specify, and potential failure modes. For a device aiming at FDA compliance, have we estimated the validation workload for a dynamic power system vs. the runtime savings, or are we over-engineering power management at the cost of certification timelines?

* **Mixed-use density principle breaks down at wrist scale.** Urban planners achieve efficiency by co-locating complementary uses (residential + retail); but on a wristband, sensing, processing, and radio subsystems are already tightly packed and thermally coupled. "Density" in firmware terms means concurrent workloads, which increases heat and power contention. Have we simulated thermal effects of simultaneous high-load activities (e.g., NPU + BLE transmit + screen), or does dynamic zoning assume these activities will never overlap?

## Battery as the Primary Output

* **Inverting the hierarchy reveals an uncomfortable truth about clinical viability.** If you optimize for 7-day battery first and let accuracy be secondary, you may ship a device that detects only 60–70% of clinically significant arrhythmias at a false-positive rate that requires daily manual review. Users and regulators will ask: "If battery efficiency was your design priority, why should I trust the detection results?" This inversion works for a generic activity tracker, but for a health device, it erodes credibility. Recommend being explicit in marketing and regulatory submissions about whether the device is optimized for accuracy or for longevity, not both.

* **Power-first design amplifies regulatory liability.** If an FDA reviewer discovers that your architecture was power-optimized rather than accuracy-optimized, they may demand additional clinical validation to confirm you're not trading safety for battery life. A 510(k) pathway becomes slower and more expensive. Conversely, if you claim accuracy-first design, regulators expect you to have justified every power optimization as a necessity, not a convenience. Have we decided whether we're pursuing FDA clearance, and if so, do we have a regulatory strategy that withstands scrutiny of design priorities?

* **User expectations are set by the first interaction.** Once you ship a device with 7-day battery, users expect 7-day battery in perpetuity, even if field data shows real-world use delivers 5–6 days. If you later discover that 7-day battery is incompatible with required accuracy improvements, you cannot inform users that the device's primary output has changed from battery to detection quality without backlash. Recommend conservatively specifying target battery life so you have headroom for post-launch accuracy improvements.

* **Power-as-product requires radical transparency and differentiation.** If battery life is truly the differentiator, then say so explicitly: "We've optimized for 7-day battery, accepting lower false-positive filtering to achieve this. For clinical-grade arrhythmia detection, consider our companion clinical device." This honesty is rare in wearables and could be a competitive advantage, but it requires building a product with clear, limited use cases. Without that clarity, power-first design becomes a confusing compromise.

* **Organizational misalignment will emerge in post-launch iterations.** Marketing will promise "7 days and breakthrough cardiac detection." Firmware will optimize for the 7 days. Regulatory will demand evidence of the detection capability. Customer support will field complaints from users who experienced missed alerts. Have we held a design review with all stakeholders present to confirm that everyone agrees on whether this device is a battery innovation with health monitoring as justification, or a health device that happens to have impressive battery life? Organizational clarity on that question is non-negotiable.

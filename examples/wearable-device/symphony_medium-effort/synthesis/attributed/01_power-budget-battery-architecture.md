---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/wearable-device/med"
datetime: 2026-06-09
effort: "medium"
stage: "Phase 4: Response Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-8"
topic-cluster: "01_power-budget-battery-architecture"
synthesis-type: "attributed"
---

# Brainstorming Synthesis: Power Budget & Battery Architecture - With Attribution

---

## Synthesized Insights by Question

### Question 1: Per-subsystem power budget decomposition

**Full question**: If the 7-day target is decomposed into per-subsystem budgets — sensing, NPU inference, BLE/sync, display, always-on housekeeping — what percentage ceiling should each subsystem be allocated, which is the hardest to compress without degrading clinical utility, and have we run a bottom-up budget that accounts for NPU duty-cycling, sensor sampling rates, and Bluetooth sync overhead under realistic worst-case usage so we know the answer if the first prototype delivers 4 days, not 7?

* **Build the budget bottom-up from current measurements on your actual silicon, not from industry rules of thumb.** All four perspectives converge here: percentage allocations published for generic wearables fail for clinical-grade sensors, so the first move is to profile each subsystem on the real chips under real firmware. Instrument every subsystem with current profiling on day one and produce a diagnostic trace, so that when the first prototype delivers 4 days instead of 7, you can point to the subsystem that overran rather than guessing. The proposed allocations themselves diverge meaningfully (see sub-bullets), which is itself the signal: until measured, any partition is fiction.
  * **NPU inference is the hardest to compress; allocate roughly sensing 20% / housekeeping 15% / NPU 35% / BLE 25% / display 5%.** You cannot detect cardiac anomalies without signal processing, so inference is the irreducible core; run a bottom-up model driven by sampling rates and inference frequency before prototyping. *—The First Principles Thinker*
  * **Sensing dominates at 40–50%; NPU 25–30%, BLE 15–20%, display and housekeeping 5–10%.** Clinical-grade sensors, not the MCU, eat the budget; the MCU can sleep for months while the NPU burns during inference windows. *—The Technical Expert*
  * **Sensing 35% / NPU 25% / BLE 20% / display-haptics 12% / housekeeping 8%, with a reality check.** If you hit 4 days the culprit is almost always microphone duty-cycling or inference overruns during event detection. *—The Pragmatist*
  * **Multi-signal detection and 7-day battery may simply be mutually incompatible at this form factor.** If display, BLE, and housekeeping claim 45% before NPU gets a slot, continuous inference is impossible; test with a single-sensor PPG-only prototype to learn whether the constraint is physics or engineering. *—The First Principles Thinker*

* **Reserve an explicit 15–20% contingency for housekeeping and firmware overhead, and stress-test on worst-case silicon.** Two perspectives independently flag that "fixed" background costs (calibration loops, BLE advertising during sleep, secure-enclave operations, power-monitoring instrumentation) ship higher than predicted, and that the first prototype will run 20–30% worse than the spreadsheet. Bake the cushion in and validate on the highest-leakage silicon binning across the full temperature range before committing to battery chemistry.
  * **Build 15–20% contingency into housekeeping, then stress-test firmware on worst-case silicon across temperature; without this cushion, 4 days instead of 7 is almost guaranteed.** *—The Devil's Advocate*
  * **Reserve 15% of total budget for firmware optimization, sensor current spikes, and regulatory testing; the first prototype is 20–30% worse than the spreadsheet.** *—The Pragmatist*

* **Architect the budget to survive pathological worst-case days, not the average day.** A clinical device must withstand a user in sustained AFib at 120+ bpm for hours, triggering near-continuous inference and frequent BLE event-logging. If the budget only holds for the average user, the alert-heavy days that matter clinically are exactly when the battery fails.
  * **Survive two or three worst-case days at full capacity without dropping below 20% battery, or clinical liability exposure spikes.** *—The Technical Expert*
  * **Model worst-case usage explicitly: a user with frequent premature beats triggering 30-second inference for an hour must not drain the battery in 24 hours.** *—The Technical Expert*

* **Treat sync overhead and cross-subsystem coupling as first-class budget items, not negligible line entries.** Naive per-subsystem partitioning misses costs that emerge from interaction: sensor-fusion synchronization, wake-up latency jitter, and BLE retransmission that spikes nonlinearly on alert-heavy days. A display wake event or a cluster of alerts can each consume 5–15% of a day's budget that the partition never accounted for.
  * **Sensor fusion creates implicit cross-subsystem coupling; PPG and accelerometer timestamps synchronized within 100ms add synchronization and wake-up-jitter overhead that naive budgeting misses.** *—The Devil's Advocate*
  * **BLE sync overhead grows nonlinearly with health events; three alerts in a day could spike sync from 1% to 5–8% — model headroom for alert-heavy days.** *—The Devil's Advocate*
  * **Display is either invisible or catastrophic; one accidental wake event could consume 5–15% of daily budget, so specify hard wake-lock and auto-off constraints plus field instrumentation for unintended wakes.** *—The Devil's Advocate*
  * **Thermal runaway compresses the inference duty cycle in summer; continuous full-power NPU at 35°C ambient may throttle or shut down, so budget separately for seasonal ambient variance.** *—The Devil's Advocate*

---

### Question 2: Inference cadence vs. detection latency vs. sensing duty cycle

**Full question**: What is the quantified relationship between inference cadence (every 30 seconds vs. every 5 minutes) and the probability of missing a clinically significant arrhythmia event, at what cadence does detection latency become medically unacceptable, and how should PPG, accelerometer, skin temperature, and microphone duty cycles be sequenced in burst-and-sleep mode (with what burst duration and inter-burst interval) to preserve multi-signal correlation while shifting boundaries when an active event is suspected?

* **Derive cadence empirically by replaying real arrhythmia datasets at 30s / 2min / 5min intervals, not by intuition.** All four perspectives reject guesswork and prescribe the same experiment: run trained models offline against representative or retrospective PPG records at each cadence and measure the sensitivity and latency cost of each step-down. Build firmware that logs ground-truth-versus-prediction timing so the cadence decision is made on data. The personas disagree on where the data will land (see sub-bullets), which is precisely why the experiment must run before power optimization is allowed to set the number.
  * **You likely need inference every 2–3 minutes; missing a full minute of sustained AFib is medically unacceptable, so ~1–2 minute cadence is probably non-negotiable without per-sample anomaly detection.** *—The Technical Expert*
  * **98% sensitivity at 2-minute cadence vs. 95% at 5 minutes would make the latency cost small; most true arrhythmias last 30+ seconds anyway.** *—The Pragmatist*
  * **Latency is overestimated in medical wearables; most arrhythmias last seconds to minutes, so alerting 2–3 minutes after onset is still clinically useful, which permits 5–10 minute intervals.** *—The First Principles Thinker*
  * **Run a controlled clinical protocol (even small-N) to quantify the cadence at which the false-negative rate for known arrhythmias exceeds acceptable risk, then design headroom above it.** *—The Devil's Advocate*

* **Use a single burst window that fires all sensors together every few minutes to preserve multi-signal correlation cheaply.** Three perspectives converge on burst-and-sleep as the central power lever: fire PPG plus accelerometer (and temperature) in one synchronized window, then drop to near-zero-power standby between bursts. Co-firing inside one window is what keeps cross-sensor correlation valid while sensors stay mostly asleep.
  * **Sensing burst every 5 minutes: PPG 100Hz for 15s, accelerometer 50Hz in the same window, temperature every 5s, microphone (if included) in the last 10s; between bursts drift to near-zero power.** *—The Technical Expert*
  * **Burst PPG + accelerometer for 8s, sleep 4 minutes, repeat; the cost is up to 4 minutes' latency on first detection, acceptable if clinical review confirms arrhythmias remain detectable post-event.** *—The Pragmatist*
  * **Collect PPG at 100Hz for 30s before each inference with accelerometer and temperature at 1Hz for context, then sleep.** *—The First Principles Thinker*

* **Add a two-tier adaptive cadence: a cheap always-on detector that escalates to full multi-sensor inference only on suspicion.** Three perspectives independently propose the same architecture — a lightweight anomaly detector runs continuously or at 30s on cached PPG, and on a candidate event it triggers high-fidelity inference using all sensors, including waking the microphone. This shifts power cost from continuous high-fidelity processing to rare full inference.
  * **Two-tier strategy: lightweight detector runs continuously, triggering full-sensor inference on a possible event; requires tuning to avoid both missed events and over-triggering.** *—The Technical Expert*
  * **When the model detects irregular heartbeat, extend the burst to include the microphone, so it samples only during suspected events.** *—The Pragmatist*
  * **On high PPG variance, burst inference to every 30 seconds for 5 minutes, then return to baseline.** *—The First Principles Thinker*

* **Commit to an explicit latency requirement and let it constrain cadence, with a hard floor below which power breaks.** Turn responsiveness into a stated requirement rather than a hope, and recognize a physical lower bound on how fast the acquisition-buffer-inference chain can run.
  * **State it as a requirement: "inference cadence no longer than 90 seconds to achieve 2-minute alert latency," moving the team from "detect eventually" to a committed window.** *—The Technical Expert*
  * **Set a 10–15 second hard latency floor; you cannot go faster without burning the budget, so get the clinical advisory board to agree it is acceptable.** *—The Pragmatist*

* **Watch for adaptive cadence making total daily power data-dependent and creating dead windows.** A dissenting caution against the burst-and-escalate consensus: event-triggered escalation makes battery life a function of how many events a user has, so high-alert users may violate the 7-day promise, and fixed sleep phases can systematically miss transient events that fall between bursts. Model detection probability over realistic activity patterns, not calendar time, and budget for worst-case event clustering.
  * **A power feedback loop destabilizes cadence; alert-heavy users may deplete batteries faster than peers — model worst-case cadence variability and confirm 7 days holds under alert-heavy workloads.** *—The Devil's Advocate*
  * **Burst-and-sleep creates dead windows; a postural change during a 2min50sec sleep phase is invisible, so model detection probability over real activity patterns.** *—The Devil's Advocate*
  * **Multi-signal correlation is not free; correlating PPG and accelerometer from different bursts with 10–30s timestamp skew degrades reliability — measure the accuracy cost of stale cross-sensor windows.** *—The Devil's Advocate*

---

### Question 3: Microphone power cost and NPU/CPU offload boundary

**Full question**: Continuous microphone sampling for breathing-pattern detection is among the most power-intensive sensor modes on a wrist form factor — does its marginal diagnostic value for sleep apnea justify its power cost relative to PPG-plus-accelerometer, where should the NPU/CPU offload boundary sit (affecting peak current draw and battery chemistry choice), and what is the fallback design if microphone must be dropped to hit battery targets?

* **Drop the microphone from the first product unless empirical testing proves it adds substantial sleep-apnea accuracy over a PPG-plus-accelerometer baseline.** This is the strongest convergence in the cluster: all four perspectives reach the same conclusion that continuous microphone sampling (cited at 30–60 mW or 40–60 mA, more than PPG and accelerometer combined) is the budget killer and likely a luxury for a first release. The shared test is identical: train or measure two models, one with microphone and one without, on the target population, and only keep the microphone if the accuracy delta is material (one perspective sets the bar at >15%, another at >5%). Otherwise drop it.
  * **Train two models, one with microphone and one without; unless the mic adds 15%+ sleep-apnea accuracy over the PPG+accel baseline, drop it — breath-sound analysis on a wrist is notoriously noisy (arm movement, rustling, ambient noise).** *—The Technical Expert*
  * **Continuous 16kHz/16-bit sampling consumes 30–50 mW, more than PPG and accelerometer combined; if PPG+SpO2+accelerometer-inferred REM reaches 85%+ sensitivity, the microphone is a feature luxury — drop it and ship on time.** *—The First Principles Thinker*
  * **Microphone draws 40–60 mA in acquisition; burst-on-event (triggered by accelerometer + heart-rate variance) yields 5–7 extra days of runtime for a modest diagnostic trade-off — catch apnea post-hoc, not real-time.** *—The Pragmatist*
  * **A/B test breathing-detection accuracy against PPG+accelerometer in real sleep settings before allocating 10–15% of daily budget; wrist microphone quality is poor and users may object to always-listening collection.** *—The Devil's Advocate*

* **Put inference on the NPU and housekeeping on the CPU, keep the model quantized, and design the offload boundary to remain reconfigurable.** Three perspectives converge on the offload split — NPU runs the quantized (INT8/binary) detection model in its native low-power mode while the CPU/MCU handles sensor I/O, buffering, threshold logic, and BLE — which holds peak current low and widens battery-chemistry choices. A distinct fourth caution warns that this boundary can become hardware-locked, so it must be architected to let the microphone path be dropped or disabled without a silicon respin.
  * **NPU for the main arrhythmia model (fixed-latency, power-efficient), CPU/MCU for buffering, sensor I/O, and BLE; keep weights INT8 or binary to run in the NPU's low-power mode and minimize peak current.** *—The Technical Expert*
  * **CPU handles always-on acquisition and threshold logic (wake-on-interrupt above a variance threshold); NPU runs only multi-signal correlation, keeping peak draw under 100 mA and enabling a lower-capacity battery.** *—The Pragmatist*
  * **If the NPU is not optimized for audio classification, offloading saves no power and the CPU must do the work anyway — measure current draw for mic-on-CPU vs. mic-on-NPU; if the NPU is inefficient for audio, dropping the mic is the first-principles answer.** *—The First Principles Thinker*
  * **The offload boundary is firmware-sticky: if silicon locks the NPU and microphone ADC into one power island, you cannot disable the mic later without a hardware revision — architect so the mic path can be dropped or disabled without cascading changes.** *—The Devil's Advocate*

* **Validate peak current against battery-chemistry limits, because simultaneous microphone, NPU, and BLE activity can exceed safe draw.** Two perspectives flag that average power can look fine while a coincident spike (microphone active during NPU inference and BLE transmit) trips thermal throttling or battery-protection cutoff. Model the current-draw timeline and confirm the chosen chemistry sustains simultaneous multi-sensor inference rather than assuming time-multiplexing keeps current in bounds.
  * **Model the current timeline: when the mic is active, is the NPU also running, and when does BLE transmit fire? Peak current determines battery chemistry and PCB layout.** *—The Technical Expert*
  * **Coin cells and thin-film batteries have maximum sustainable draw; simultaneous high-resolution mic plus NPU matrix ops could spike above safe limits, forcing derating or shutdown — validate, don't assume time-multiplexing.** *—The Devil's Advocate*

* **Design the firmware to ship without the microphone from day one and treat it as a phase-two addition, but check the market consequences first.** Three perspectives converge that the credible fallback is PPG (gold standard for arrhythmia) plus accelerometer (sleep staging, micro-arousals) plus skin temperature, with apnea inferred from heart-rate variability and movement. A dissenting check asks whether the product remains compelling commercially if sleep apnea is a headline differentiator rather than secondary.
  * **Fallback is PPG + accelerometer + temperature; apnea drops to inference from HRV and accelerometer breathing motion — design firmware from day one to ship without the mic, treat it as phase two.** *—The Pragmatist*
  * **Fallback covers the primary use case (arrhythmia via PPG) and most of the secondary (apnea proxy in accel micro-arousals); validate against clinical requirements before committing, since it ripples through firmware and model selection.** *—The Technical Expert*
  * **If SpO2 drops + accelerometer arousals reach acceptable sensitivity, the microphone is pure cost; a device that does arrhythmia well beats one that does everything poorly under power starvation.** *—The First Principles Thinker*
  * **The fallback may not be credible if sleep apnea is a key differentiator; model the revenue and customer-acquisition impact of disabling the microphone before assuming the product still sells.** *—The Devil's Advocate*

---

### Question 4: Power envelope as municipal zoning

**Full question**: City planners allocate finite land across residential, commercial, industrial, and green space uses, accepting that expanding one zone compresses others and that the allocation shapes what kind of city emerges — your battery budget faces the same combinatorial constraint across sensing, NPU inference, radio, and display; what planning-derived principles (e.g., mixed-use density, just-in-time provisioning, demand-responsive zoning) could reshape how the firmware dynamically reallocates power rather than treating each subsystem's budget as a fixed partition?

* **Replace fixed partitions with a context-aware state machine that reallocates power by device mode.** Three perspectives converge on the central translation of the zoning metaphor: define states (Resting/Sleep, Active, Suspicious/Event) and let each one re-partition the envelope — minimal display and low-frequency inference at rest, more sensing and radio when active, burst inference when an event is suspected. Demand-responsive allocation means subsystems earn budget from context rather than holding static ceilings, and the claimed savings are large.
  * **State machine — Resting, Active, Suspicious, Sleep — each reallocating the envelope; test whether dynamic reallocation cuts 7-day power 20–30% versus static partitions. If so, firmware, not hardware, is the bottleneck.** *—The First Principles Thinker*
  * **State machine — normal sleep (minimal sensing), elevated HR/movement (more PPG + accel), flagged event (full inference) — yields 2–3x battery-life extension by reserving high-power modes for when needed.** *—The Technical Expert*
  * **Predictive resource zoning: during waking hours allocate more to radio for sync; during sleep cut radio and raise inference for apnea monitoring — buys 1–2 extra days without hardware changes.** *—The Pragmatist*

* **Exploit mixed-use density and just-in-time provisioning: overlap subsystems and spin up high-power modes only on demand.** Three perspectives apply the density principle concretely — co-locate work that would otherwise pay separate costs (PPG sampling during sync windows, inference windows that also refine sensor thresholds, time-sliced processor sharing) and wake expensive subsystems only when triggered (microphone only on suspected apnea). The trade-off named on all sides is firmware complexity in exchange for substantial savings.
  * **Multiplex heavily: PPG and accelerometer share one 50ms window, inference and display time-slice one core, microphone wakes only on suspected apnea — 40–50% savings at the cost of firmware complexity.** *—The First Principles Thinker*
  * **PPG sampling during sync windows and inference windows that refine thresholds avoid paying separate costs; cluster inference + radio into the morning/evening windows when users naturally sync.** *—The Technical Expert*
  * **Overlap subsystems and add a "congestion charge": defer non-critical sync 30 seconds when inference blocks the radio, sending data only when the device is already in a high-power state — recovers 10–15% efficiency.** *—The Pragmatist*

* **Hard-wire a protected floor and an emergency-alert reserve that dynamic reallocation can never touch.** Two perspectives — one endorsing dynamic zoning, one challenging it — agree on the same guardrail: some functions must never be reallocated away. Critical-alert BLE transmission needs headroom even if it momentarily exceeds the nominal budget, and core PPG-only arrhythmia detection must stay powered even if every dynamic system fails.
  * **Over-provision the radio for clinical safety: a genuine cardiac event must transmit to the phone within seconds even if it momentarily exceeds budget; design the battery curve for sustained high-sync periods.** *—The Technical Expert*
  * **Demand-responsive zoning works because city zones fail gracefully, but a missed health alert does not; ensure core PPG-only detection stays powered even if all reallocation systems fail.** *—The Devil's Advocate*

* **Price in the cost, verification burden, and stochastic-demand failure modes of dynamic allocation before assuming it nets out positive.** A sustained dissent against the dynamic-zoning consensus: the optimizer itself consumes power (instrumentation, ADC conversions, control loops), dynamic state machines are far harder to certify than static budgets, mixed-use density increases thermal contention at wrist scale, and just-in-time provisioning assumes predictable demand that stochastic health events violate. Baseline the optimizer's own cost and reserve an "event surge" budget that is never reallocated.
  * **Dynamic reallocation requires control software that itself consumes power; prototype the optimizer's cost before assuming it's a net win.** *—The Devil's Advocate*
  * **Just-in-time provisioning assumes predictable demand, but arrhythmia events are stochastic; reserve a separate "event surge" budget that is never dynamically reallocated.** *—The Devil's Advocate*
  * **Static budgets are testable and certifiable; dynamic reallocation is a combinatorial state machine that explodes the FDA verification workload — estimate validation cost vs. runtime savings before committing.** *—The Devil's Advocate*
  * **Mixed-use density breaks down at wrist scale because subsystems are already thermally coupled; "density" means concurrent workloads, which increases heat and power contention — simulate NPU + BLE + screen overlap.** *—The Devil's Advocate*

---

### Question 5: Battery as the primary output

**Full question**: What if the 7-day battery life was not a constraint but the *product* — and cardiac arrhythmia detection was just the justification for making an extremely efficient power system? How would the design change if you optimized the entire architecture around power budget first and let accuracy be whatever it could be within that envelope? *The insight: the team frames power as a tax on accuracy; inverting this might reveal a more honest hierarchy of what the hardware can actually deliver.*

* **Inverting the hierarchy is the cluster's most clarifying reframe: anchor on a fixed power envelope and maximize accuracy within it, rather than chasing accuracy and panic-optimizing power afterward.** Three perspectives strongly endorse the inversion as honest and liberating: commit to a ~100 mW / 7-day envelope as the anchor, accept that continuous multi-sensor inference is off the table, design for intermittent inference, and accept ~85% sensitivity as the real-world ceiling instead of a hoped-for 95%. The device then actually hits 7 days because that was the anchor, not a wish, and marketing claims become honest ("detects arrhythmias within 5 minutes; battery lasts 7 days").
  * **Optimize for power first; a 7-day battery at ~100 mW is the primary product and cardiac detection is the justification — eliminates fantasy budgets, accepts intermittent inference and 85% sensitivity, markets honestly.** *—The First Principles Thinker*
  * **The most honest reframing the team could adopt; design a power-efficient core (burst sensing, event-driven inference, minimal radio), then ask what accuracy fits — stops unbounded accuracy-chasing.** *—The Pragmatist*
  * **Design the smallest, lowest-power device possible, commit to a fixed envelope, then optimize the model and sensing within it — the device hits 7 days because that was the anchor.** *—The Technical Expert*

* **Power efficiency reframed as reliability is itself a form of accuracy: consistent lower sensitivity over 7 days beats high sensitivity that dies at day 3.** Two perspectives reframe the trade-off entirely — a device that drains in 3 days and forces a charge has monitoring gaps that produce real false negatives, so steady inference over a full 7 days is clinically more reliable than intermittent high sensitivity. This converts power budget from "a tax on features" into "the floor that enables reliability."
  * **Power efficiency is accuracy: a device that reaches 3 days and forces charging is clinically unreliable due to monitoring gaps; consistent lower sensitivity over 7 days beats inconsistent high sensitivity over 3.** *—The First Principles Thinker*
  * **Power budget is not a tax on features; it is the floor that enables reliability — a simpler 7-day device outsells a complex 3-day device because users tolerate simplicity.** *—The First Principles Thinker*

* **The inversion implies a concretely different, simpler sensor and model stack.** A distinctive technical consequence: committing to the envelope first changes the bill of materials and the engineering focus. Drop the microphone, simplify the IMU, tune PPG to the minimum frequency that catches arrhythmias, and consider an ensemble of small cadence-specific models instead of one large network. Once the envelope is fixed, the dominant variables become chip selection, battery chemistry, and firmware — hardware co-design, not algorithmic cleverness.
  * **Abandon the microphone, use a 3-axis accelerometer instead of a 9-axis IMU, tune PPG to ~25Hz instead of 100Hz; accept 85% of events caught but an order of magnitude more reliable than competitors.** *—The Technical Expert*
  * **Train a lightweight ensemble of small models running at different cadences, each tuned to a specific arrhythmia pattern, turning off models during known low-risk periods — architectural simplicity may improve reliability.** *—The Technical Expert*
  * **You are hardware-constrained, not software-constrained: once the envelope is fixed, spend engineering effort on chip/battery/firmware co-design with suppliers, not on squeezing one more point from the model.** *—The Technical Expert*

* **The inversion also de-risks the regulatory path and clarifies the business model — start as bounded consumer wellness, gather data, then decide on FDA.** Two perspectives note that a power-bounded device with deliberately limited capability is easier to ship and defend than an over-ambitious clinical tool that misses battery targets, and that honest, achievable battery claims with straightforward detection logic actually lower liability. Ship a good 7-day consumer device now, collect 6+ months of real-world data, then decide on the 510(k) path from a proven foundation.
  * **A bounded consumer wellness device is easier to ship and defend than an over-ambitious clinical tool that fails battery targets; ship a good 7-day device now, then pursue FDA from a proven foundation.** *—The Pragmatist*
  * **Honest, achievable battery claims with simple PPG + temp + accelerometer logic are lower-liability; customers burned by optimistic marketing and poor battery life will sue — the technical choice shapes legal exposure.** *—The Technical Expert*
  * **If the 7-day battery is the product, users charge weekly like a smartwatch; this commodifies the hardware and positions the IP as the on-device ML and sync protocol, not the battery.** *—The First Principles Thinker*

* **A pointed dissent: for a health device, optimizing power first can erode clinical credibility and amplify regulatory liability — so make the design priority explicit and conservative.** One perspective challenges the consensus directly. A power-first device that detects only 60–70% of significant arrhythmias invites the question "why trust the results?" — an inversion that works for an activity tracker but corrodes trust in a health device. If an FDA reviewer learns the architecture was power-optimized rather than accuracy-optimized, the 510(k) path becomes slower and costlier. The resolution is not to abandon the inversion but to choose a position explicitly, specify battery life conservatively to keep headroom for later accuracy gains, and align the whole organization on whether this is a battery innovation justified by health monitoring or a health device with good battery life.
  * **Inverting the hierarchy reveals an uncomfortable truth: a power-first device detecting 60–70% of events erodes credibility for a health device even if it works for a generic tracker — be explicit in marketing and regulatory submissions about which you optimized for.** *—The Devil's Advocate*
  * **Power-first design amplifies regulatory liability; if a reviewer finds the architecture was power-optimized, they may demand extra clinical validation, slowing the 510(k) — decide the regulatory strategy first.** *—The Devil's Advocate*
  * **User expectations are set by the first interaction; specify battery life conservatively so you keep headroom for post-launch accuracy improvements without backlash.** *—The Devil's Advocate*
  * **Hold a design review with marketing, firmware, regulatory, and support present to confirm everyone agrees whether this is a battery innovation or a health device — that organizational clarity is non-negotiable.** *—The Devil's Advocate*

---

**Questions addressed**: 5
**Personas contributing**: The Devil's Advocate, The First Principles Thinker, The Pragmatist, The Technical Expert
**Total synthesized insights**: 21

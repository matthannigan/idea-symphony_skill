---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/min"
datetime: 2026-04-28
effort: "min"
stage: "Phase 3: Generic Brainstorming"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
topic-cluster: "02_power-budget-and-hardware-software-co-design"
---

# Brainstorming Responses: Power Budget and Hardware-Software Co-Design

---

## Question 5: Battery Budget Allocation

**Across sensing, inference, display, BLE sync, and housekeeping, what process would you use to derive a per-subsystem power envelope — and which subsystem is most likely to blow the budget in a real prototype, given the continuous PPG sampling required for arrhythmia detection?**

* **Bottom-up measurement before spreadsheet math.** Build a power characterization rig on your first EVT board: a high-side current monitor (INA228 or similar at 100 µA resolution) on each major rail, logged at 1 ms intervals via a dedicated logging MCU. Run each subsystem in isolation and measure actual idle, active, and peak draw across temperature. Only then populate your budget spreadsheet — because PPG LED drive current at 25 mA will be 2–4× what a vendor datasheet suggests once you account for skin tone variation and ambient light rejection requiring higher LED duty. This approach catches surprises before tape-out, not after.

* **Allocate from constraint backward, not from components forward.** Start with your hard constraint: 180 mAh cell (typical for a 12 mm thick band), 7 days = 168 hours, gives a 1.07 mA average current budget. Reserve 15% margin for aging and temperature. That leaves ~910 µA average. Assign BLE sync a fixed 50 µA average (one 5-second sync per hour at ~8 mA active), housekeeping 20 µA, display 30 µA (short burst on wrist raise), and inference 80 µA average. That leaves ~730 µA for sensing — which is your binding constraint and forces you to duty-cycle PPG aggressively, not continuously.

* **PPG is the most likely budget breaker — and the solution is hierarchical gating.** Continuous green-LED PPG for arrhythmia detection at a 25 Hz sample rate with ACC-based motion rejection typically consumes 1.5–3 mA, which alone blows a 1 mA average budget. The practical escape: run PPG at full rate only during low-motion windows (flagged by accelerometer), drop to 1 Hz during vigorous activity when motion artifact would invalidate the signal anyway, and use a pre-computed heart rate variability threshold trigger rather than continuous inference. This recovers 60–70% of PPG power without sacrificing clinically meaningful arrhythmia catch rate.

* **Model your worst-case user, not your median user.** A sedentary 65-year-old wearing the device 22 hours/day and rarely triggering wrist-raise display activations is cheap. A runner who triggers 90 minutes of high-activity mode daily, syncs every 15 minutes, and has a high-ambient-light environment (requiring more LED power) might consume 2× your average-case model. Budget to the 90th-percentile user scenario and communicate to investors that "7 days" is tested against that harder profile, not a lab phantom.

---

## Question 6: Duty Cycling and Event-Driven Sensing

**To what extent can the device rely on a low-power "always-on" accelerometer gating the more expensive PPG and microphone sensors, and what signal latency or detection delay does that introduce relative to the 7-day battery target?**

* **Accelerometer gating is viable for PPG but mismatched to arrhythmia detection.** A low-power accelerometer (BMI270 at 6 µA in always-on mode) can reliably gate out vigorous activity that would corrupt PPG anyway — that's a power win with no clinical cost. But arrhythmia events like paroxysmal atrial fibrillation are episodic and brief (seconds to minutes), and they can occur at rest or mid-activity. Relying on ACC to gate PPG off during rest would be exactly backwards. The correct gate condition is: ACC detects low-motion → PPG turns on, not off. Design your state machine around that inversion explicitly, or you'll measure resting HRV accurately and miss the event you're looking for.

* **Quantify the latency budget before choosing a gating policy.** A typical ACC-to-PPG startup sequence (ACC wakes, evaluates 2-second window, asserts GPIO, PPG analog front-end powers up, LED stabilizes, AGC settles) takes 300–800 ms. For arrhythmia onset detection, a sub-second gap is acceptable — the clinically relevant window is minutes, not milliseconds. Document this latency in your system spec and verify it with a GPIO toggle + logic analyzer before locking the firmware. If startup latency grows to 2+ seconds in a cold-start scenario, you need a partial-on mode for the AFE.

* **Microphone gating for breathing pattern detection is a different problem.** Sleep apnea events require sustained microphone capture during sleep, but a 2.5 mA MEMS microphone running 8 hours/night costs ~20 mAh — roughly 11% of your daily budget from one sensor. A better architecture: use the accelerometer's chest-movement proxy (in wrist-worn form, wrist angle and micro-tremor correlate moderately with breathing) as a pre-screen, and wake the microphone only when the ACC signal suggests a potential apnea pattern. Accept that this introduces 5–10 second detection delay, which is clinically tolerable for sleep apnea (events last 10–120 seconds by definition).

* **Model detection delay as a system-level specification, not a firmware afterthought.** Write a one-page latency budget document that lists: ACC polling period → PPG startup time → minimum valid PPG window before inference → inference runtime → alert generation. Sum these. For arrhythmia: target end-to-end ≤ 30 seconds from event onset to alert. For sleep apnea: target ≤ 2 minutes. These specs then drive duty-cycle policy (PPG window length, inference trigger threshold) and are the acceptance criteria your QA team tests against — not a vague "low latency" goal.

---

## Question 7: NPU Utilization Efficiency

**How does the choice of inference batch size, scheduling cadence (e.g., run inference every 30 s vs. streaming), and sleep-state management for the NPU affect both throughput and idle power — and how would you instrument and validate these tradeoffs on actual silicon before committing to a PCB revision?**

* **Batch size and cadence interact non-linearly — measure the crossover point.** On a typical embedded NPU (Arm Ethos-U55 class), inference on a 30-second window of PPG + ACC features takes roughly 15–80 ms at single-batch, consuming 5–20 mW during that burst. If you run inference every 30 seconds, average inference power is 15 ms / 30,000 ms × 10 mW = 5 µW — nearly free. But if you increase cadence to every 5 seconds for lower detection latency, average inference power jumps to 30 µW and sleep-state overhead becomes dominant (wake-from-deep-sleep takes 0.5–2 ms and has a fixed energy cost). Map this tradeoff on a power-vs-cadence curve at EVT, and you'll find a "sweet spot cadence" where marginal latency gain no longer justifies marginal power cost.

* **NPU idle power is not zero — validate sleep state implementation explicitly.** Many embedded NPU reference designs leave the NPU in a "retention" state (clock-gated but SRAM powered) consuming 50–200 µA even when idle. Your 1 mA total budget cannot absorb an NPU that never fully powers down. Verify that your firmware correctly sequences through the full power-down handshake (flush pipeline, assert shutdown GPIO, verify VDDNPU rail collapses on your power rail logger). A common bug: the NPU driver keeps a "heartbeat" wake that re-enters retention every 100 ms, preventing full power-off. Catch this with a 10-minute current trace, not a momentary measurement.

* **Instrument with GPIO timestamping before adding a power analyzer.** Before buying a Otii Arc or Monsoon power monitor, add 4 GPIO toggles to your firmware: NPU_WAKE, INFERENCE_START, INFERENCE_DONE, NPU_SLEEP. Log these on a cheap logic analyzer at 1 MHz. This gives you timing ground truth (inference duration, sleep duration, wake latency) at zero cost. Then overlay your power rail measurement against these timestamps to assign energy to each phase. Teams that skip GPIO instrumentation spend weeks arguing about whether their power measurement is aliased or whether the NPU is actually sleeping.

* **Use synthetic workloads before committing real models.** Before your ML team delivers a final quantized model, run the NPU with a synthetic kernel (matrix multiply of the expected shape) to characterize the silicon's actual performance vs. the vendor's TFLite Micro benchmarks. Vendor numbers are often measured on warmed-up silicon at 25°C with optimal SRAM layout. Your real model, running on a cold device at 0°C, with SRAM shared by the sensor driver, may be 30–50% slower. Discovering this before PCB revision allows you to upsize NPU clock or renegotiate model complexity rather than spinning a new board.

---

## Question 8: Hardware-Software Co-Design Process

**With a team split across firmware, ML, hardware, and mobile app, what integration checkpoints and shared contracts (e.g., power measurement harnesses, sensor driver APIs, model interchange formats) would prevent each subteam from optimizing locally in ways that collapse the system-level power budget?**

* **Define shared contracts as versioned files in the repo, not Slack agreements.** Write three documents that every subteam signs off on before any code ships: (1) a `power-budget.csv` with per-subsystem current allocations and owners; (2) a `sensor-driver-api.h` header with function signatures and timing contracts (e.g., `ppg_start()` must return within 50 ms, power must be below 2 mA within 100 ms); (3) a `model-interchange-spec.md` that defines the input tensor shape, quantization range, and expected inference latency/energy. Put these in `docs/contracts/` and require a PR review from all subteam leads when any of them changes. Without version-controlled contracts, "the firmware will handle it" becomes a game of telephone.

* **Run a weekly cross-team power audit, not a quarterly integration test.** Each Friday, whoever updated the firmware that week runs a 10-minute current trace on a reference board and posts the CSV to a shared channel alongside a diff of what changed. If the 7-day average current drifts more than 50 µA from the previous week's baseline, it triggers a root-cause investigation before the next sprint — not after three months of drift. This keeps power budget visible as a first-class metric alongside build size and test coverage, rather than a "we'll optimize at the end" concern.

* **Build a software-only power simulator that ML and firmware teams can run without hardware.** Model each subsystem as a state machine with measured current values per state and duration distributions from your characterization data. The ML team can then test "what happens if I increase inference cadence from 30 s to 15 s?" and get a projected battery-life number in seconds, without waiting for firmware integration. Tools like an energy model in a Jupyter notebook, driven by real current measurements, take 2–3 days to build and save weeks of hardware-in-loop iteration. Critically, when the real device disagrees with the model by more than 10%, it forces an investigation that almost always reveals an unaccounted wake source.

* **Gate PCB revisions on cross-team integration sign-off against explicit power acceptance criteria.** Before committing to a new PCB spin, require a formal sign-off document: firmware team certifies NPU sleep is validated (GPIO trace attached), ML team certifies model runs within the allocated inference time and energy envelope (benchmark numbers attached), hardware team certifies all power rails are within spec at -10°C and +50°C. This is the "power acceptance test" analog to a software merge gate. It costs one day to run and prevents a board spin that discovers a 500 µA mystery current from an improperly sequenced power rail — a common failure mode that adds 6–8 weeks to a schedule.

* **Assign a "system power owner" who has authority across all subteams.** The most common failure mode in multi-subteam embedded projects is that firmware optimizes their module, ML optimizes their model, and hardware optimizes their BOM — but nobody is accountable for the system total. Designate one engineer (typically a senior firmware engineer with cross-domain visibility) as the power owner with veto power over any change that adds more than 20 µA to the average budget without offsetting savings elsewhere. Give this person a standing agenda item in sprint reviews and direct access to the hardware characterization rig. Without a named owner, power budget is everyone's problem and therefore nobody's problem.

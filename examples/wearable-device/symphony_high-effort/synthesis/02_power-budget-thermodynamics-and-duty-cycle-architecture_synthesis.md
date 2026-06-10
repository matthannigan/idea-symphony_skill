---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/wearable-device/high"
datetime: 2026-06-09
effort: "high"
stage: "Phase 4: Response Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-5"
topic-cluster: "02_power-budget-thermodynamics-and-duty-cycle-architecture"
synthesis-type: "synthesis"
---

# Brainstorming Synthesis: Power Budget, Thermodynamics, and Duty-Cycle Architecture

---

## Synthesized Insights by Question

### Question 1: Battery as Keystone Constraint and Zero-Based Budget

**Full question**: The 7-day battery target is a keystone-features constraint — not a hardware spec but a determinant of which sensors run continuously vs. intermittently, which models run at full vs. quantized precision, and how often the companion app syncs. Given that radio and always-on sensing (not computation) typically dominate wearable power, what does a zero-based energy budget say about per-subsystem mWh/day across sensing, inference, display, and BLE, which subsystem poses the tightest constraint, and does the budget make continuous monitoring physically achievable or force fundamentally event-driven sensing? Has the team independently validated that 7 days with continuous PPG, accelerometry, temperature, and microphone plus on-device ML is achievable with commercial NPU hardware, or is this a goal being engineered toward without a confirmed path? And what is 7 days actually optimizing for, and would users accept 3 days for materially better detection accuracy?

* **Validate the 7-day target on real silicon before it becomes architecture. Datasheets are aspirational, measured current draw is truth.** Six of the seven perspectives converge that the team must build a breadboard or reference prototype with the actual sensor suite and target NPU, run it under realistic duty cycles, and measure per-subsystem power rather than inheriting numbers from spec sheets. With continuous PPG plus on-device ML, a 500-600 mWh cell realistically delivers 2-4 days. Seven days is currently aspirational without a confirmed path. Physical validation should be the first milestone (a multi-week continuous stress test across a 15-35°C range). Spec sheets assume ideal conditions. Silicon under sustained load reveals thermal drift and creep that collapse the budget.

* **Radio and always-on sensing, not computation, are the tightest constraints. Budget bottom-up from a fixed radio allocation.** BLE commonly dominates at 40-60% of wearable power. PPG sensing is second at 20-35%. Inference is a relatively modest 5-15%. Optimizing inference efficiency first is optimizing the wrong bottleneck. Fix the radio budget as a constant (sync aggregated alerts once daily plus on-demand checks). Then ask how much sensing and inference fit in the remainder. Physics likely forces event-driven sensing, not choice.

* **The 7-day number is a business constraint masquerading as a spec. Test the 3-day-for-better-accuracy tradeoff with real users before locking it.** What 7 days optimizes for (convenience, competitive positioning, clinical norms) should be validated against user tolerance, not assumed. Three days of clinical-grade detection may save more lives or look cleaner on a 510(k) than seven days of weak intermittent signals. Run a small structured user study presenting explicit battery-vs-accuracy tradeoffs before the spec is finalized.

* **Treat 7 days as an iterative checkpoint and design for second-source hardware to de-risk the single-vendor dependency.** Aim for 5 days early and iterate toward 7 rather than burning runway on a speculative spec. Prototype against two NPU candidates with firmware that supports either. The product should not be hostage to one vendor's datasheet performance.

* **Thermal load, not just total energy, is a hidden constraint in a wrist form factor.** Total energy is not the same as evenly distributed power. Inference spikes generate localized heat. Cumulative thermal stress over a week degrades silicon and accelerates self-discharge, potentially slipping a 7-day target to 5-6 days. Validate that the chosen duty cycle is thermally compatible.

---

### Question 2: Thermodynamic Lower Bound on Inference and Analog Gating

**Full question**: Shannon's channel capacity and Landauer's principle imply a physical minimum energy per bit of computation. Given the decision entropy of arrhythmia detection, what is the theoretical minimum energy per inference, and how far above that bound are current NPUs operating (revealing whether the power problem is a hardware gap or algorithmic inefficiency, quantifiable as the break-even anomaly prevalence at which event-triggered batch inference saves more energy than continuous inference)? And is there a classical signal-processing threshold (e.g., an analog comparator on R-R interval regularity) that could gate the NPU to fire only on anomalous beats, eliminating what fraction of total inference energy by moving coarse detection earlier into the analog domain before any ML runs?

* **An analog or low-power R-R-interval gate ahead of the NPU is the single highest-ROI architecture move. It eliminates roughly 80-99% of inference in normal rhythm.** This is the strongest consensus in the cluster. A cheap continuous comparator (or firmware-computed R-R check) watches beat-to-beat interval variance and wakes the expensive NPU only on irregular rhythm. With arrhythmia prevalence of a few percent, this cuts NPU duty cycle by 90-99%. The coarse "anomaly present or not" decision moves to the thermodynamically cheapest domain. The NPU handles the fine "what kind of anomaly" question. Freed budget lets the model run at higher precision on the genuinely anomalous beats.

* **The thermodynamic floor proves the power problem is algorithmic and hardware inefficiency, not physics. The gap is the design space, not a wall.** The theoretical minimum (picojoules or below, given the low entropy of a mostly-normal beat stream) sits a trillion-fold below real NPUs operating in micro- to milli-joules. The gap exists because general-purpose matrix math is overcomputed, not because physics forbids efficiency. Measure how far above the floor you sit: a 1000x gap is a hardware/architecture problem, a 10x gap is a model-optimization opportunity. Either way, the gate plus aggressive quantization closes most of it.

* **Quantize aggressively and batch inferences to spread thermal load. Anomalies are high-amplitude and survive low precision.** INT8 (or lower) quantization likely preserves clinically relevant sensitivity while cutting inference power 4-8x. Batching inferences amortizes fixed wake/setup overhead and smooths the thermal spike, at the cost of detection latency that is medically defensible for most arrhythmias.

* **Design the anomaly definition around the cheapest computation rather than the other way around.** Instead of asking whether the NPU can detect a predefined anomaly, ask what the most energetically efficient anomaly is to detect, which may be simpler, more robust, and more clinically useful.

* **Caution: analog gating is brittle, and the energy accounting may be hiding that sensing, not inference, dominates the budget.** Two load-bearing cautions cut against the consensus. First, analog thresholds drift with skin temperature and component aging and cannot be updated post-manufacture. They can silently flood or starve the NPU unless built with hysteresis bands and periodic recalibration (or pushed into updatable firmware). Second, and more fundamental: if sensing is 50% of power and inference only 10%, optimizing inference will not fix the 7-day budget at all. Build a 24-hour stacked power trace to confirm where energy actually goes before committing to inference-side optimization.

* **Validate the gate offline against labeled data before freezing hardware. >1% missed anomalies is unacceptable for a health device.** Replay a week of labeled patient PPG/ECG through the proposed thresholds in post-processing and measure missed true positives. Under 0.5-1% loss justifies the analog complexity. Above it, the liability is disqualifying. This is a 2-3 week experiment to run before hardware freeze.

---

### Question 3: Forced Simplicity as a Feature

**Full question**: If the 7-day battery rules out continuous high-frequency inference, how might intermittent or event-triggered sensing, rather than always-on monitoring, actually produce a more user-friendly device that feels less surveillance-like and more intentionally attentive?

* **Intermittent, event-triggered sensing reframes the device from surveillance watcher to attentive companion. The constraint becomes premium positioning rather than an apology.** Periodic or anomaly-triggered attention feels qualitatively different from always-on tracking. It is less creepy, less notification fatigue, more intentional. Market intermittency as a designed feature ("detects anomalies without constant monitoring," "checks in at moments that matter") rather than concealing it as a power compromise. Make the periodicity visible (e.g., batch inference into 9 AM / noon / 3 PM windows) so users feel the device's rhythm. A weekly alert is taken more seriously than twice-daily noise.

* **Forced simplicity cascades into engineering, privacy, and regulatory wins: simpler models, cleaner data, easier 510(k) defense.** Fewer sensors and event windows mean smaller, more interpretable models that train faster and are easier to defend to the FDA. Intermittent PPG (e.g., during sleep) is cleaner PPG with less motion artifact. Less data leaving the device makes HIPAA compliance and BLE sync lighter. Intermittent event-triggered monitoring is easier to defend in a 510(k) than continuous inference with its false-positive burden.

* **Event-triggered sensing widens the addressable market and enables faster model iteration by freeing per-decision compute.** An event-triggered device serves both high-burden and rare-episode users well with a clear value story for each. Concentrating compute on events gives 2-3x the per-decision budget, allowing more expressive models and faster A/B iteration than a continuous low-power design.

* **Friction and ritual can build trust better than invisible automation.** Requiring the user to wear or activate the device during defined windows creates agency and ritual ("I put on my monitor for sleep"). This can build habit and trust more durably than seamless passive surveillance. It is arguably more honest than promising continuous coverage the battery cannot deliver.

* **Caution: intermittency risks false reassurance, and worried 40+ users may want more monitoring, not less.** This challenges the cluster's core premise and is load-bearing because the target users are precisely the anxious cohort the reframe assumes wants detachment. "No alert" does not mean "healthy." It means "not flagged." A too-high trigger threshold in low-power mode can silently miss a real event. Mitigations turn intermittency back into transparency: an explicit in-app contract about what event-triggered means, a "scanned 847 times, ruled out arrhythmia 844 times" dashboard reframing intermittency as efficient triage, periodic reassurance pings, and a user-selectable continuous mode for high-risk periods. A pragmatic compromise is continuous low-power PPG sensing (cheap) with inference only on detected irregularity (expensive).

---

### Question 4: Stage Management and the Power Budget Allocation Problem

**Full question**: Theater stage managers coordinate lighting, sound, rigging, and cast so no two resource-intensive cues compete for the same moment. The wearable faces an analogous choreography problem: continuous PPG sensing, ML inference, Bluetooth sync, and display refresh all compete for a shared 7-day power budget. What stage-management principles (pre-computed cue sequences, resource reservation windows, graceful degradation when a cue runs long) could inform how the firmware scheduler allocates power across subsystems, and what physiological signals (sleep, exercise, stillness) could function as cue triggers that shift the device between power configurations?

* **Build a physiological-context state machine with pre-defined power "scenes," shifting the allocation decision from runtime contention to design-time choreography.** Define modes (Sleep, Sedentary/Rest, Exercise/Active, Alert, Low-Battery) where each pre-assigns which subsystems run and at what cadence: sleep mode runs low-frequency PPG for apnea and defers BLE to morning; exercise down-samples inference and relaxes anomaly thresholds to avoid false alerts; alert mode commits full power. Pre-computing scenes at design time eliminates the resource-contention peaks that arise when tasks compete at runtime. A precomputed timeline saves an estimated 20-30% of power versus deciding "infer now?" per beat.

* **Use cheap, locally-computed physiological signals (HRV, accelerometer jerk, temperature drift) as the cue triggers that orchestrate expensive subsystems.** HRV signals relaxed vs. stressed/exercising state. Accelerometer motion onset detects activity. Skin-temperature circadian drift hints at sleep phase. A lightweight estimator (a few KB) running per minute categorizes context and sets the next interval's power allocation. Over a few weeks it can learn an individual's high-risk windows and front-load reserves into them.

* **Reserve non-overlapping time windows for each subsystem to prevent current-draw spikes and brown-out.** Assign BLE sync, inference batches, and high-frequency sensing to non-overlapping slots so subsystems never compete for current delivery, which causes voltage droop and forces throttling. Pre-booked windows let the battery-management IC optimize charge delivery and make consumption predictable and testable. Software-pipelining the stages (transmit yesterday's summary while sampling today's data) keeps draw steady.

* **Build graceful degradation as a built-in stabilizer so the battery declines smoothly instead of hitting a cliff.** Define explicit battery-threshold fallback rules (e.g., below 20% reduce inference frequency or drop to sleep-only apnea detection; below 10% go silent except for a critical alert or haptic-only feedback). A power-pyramid framing (core detection always on, enhanced inference above 60%, premium features only when docked) gives progressive capability. These transitions should be firmware-managed and largely transparent. Include "call an audible" handling when an inference job runs long.

* **Reserve emergency capacity so a detected anomaly always gets full bandwidth, and validate the whole state machine in simulation before deployment.** An explicit alert state should degrade non-critical functions (pause background sync, raise display polling, run inference at full power) so a detected arrhythmia gets full compute and comms even on a constrained budget. Simulate the entire state machine over thousands of synthetic user-days to catch cascading failures (e.g., a midnight sync that drains 30% of the night's budget). Confirm worst-case lifetime exceeds 5 days before any real firmware ships.

* **Caution: context detection is brittle, state machines thrash at boundaries, and the choreography itself costs power.** Three failure modes the convergence tends to assume away. Context detection is non-trivial: accelerometer sleep-detection fails on bedridden or sedentary users. Exercise detection misses swimming. Validate detection accuracy offline (>85% before earning the right to switch modes). Let users manually tag activity to seed context. State machines thrash without hysteresis, oscillating on sensor noise and burning energy on transitions. Require sustained-state dwell times and exponential backoff. The scheduler is not free: a feature-rich power manager can consume 5-10% of MCU cycles. Profile it against a <2% budget or push power management to a dedicated PMIC. Real user behavior (an incoming call, an app sync colliding with inference) also defeats fixed cue sequences. An adaptive scheduler with soft resource caps that degrade rather than block colliding operations is preferable.

---

**Questions addressed**: 4
**Synthesized insights**: 21

---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "02_power-budget-thermodynamics-and-duty-cycle-architecture"
persona: "The Pragmatist"
---

# Power Budget, Thermodynamics, and Duty-Cycle Architecture - The Pragmatist

## Q1: Battery as Keystone Constraint and Zero-Based Budget

* **Start with a real teardown, not datasheet math.** Build a reference prototype with your actual sensor suite and NPU, run it for 48 hours, measure per-component power draw under realistic conditions (sleep detection active, sporadic BLE syncs, screen on/off patterns). Scale the numbers to 7 days—if you hit 3–4 days, you have a hardware problem that's solvable; if you're at 1 day, your 7-day target may be aspirational without a significant redesign. This tells your team whether 7 days is achievable or a goal being engineered toward.

* **Allocate budgets bottom-up from radio dominance.** BLE advertising and scanning typically consume 40–60% of wearable power; PPG sensing with typical photodiode arrays takes another 20–30%; inference on modest quantized models burns 5–15% depending on duty cycle. A practical zero-based approach: start with "radio budget is fixed at X mWh/day," then ask how many PPG samples and inference runs fit in the remaining power—not the other way around.

* **Event-triggered sensing answers the throughput question.** Continuous PPG at 100 Hz on a wearable for 7 days is expensive; sampling at 25 Hz or event-gating (detect abnormal beats, then spike to full resolution) cuts power by 50–70% while preserving detection capability for most arrhythmias. The team should validate whether 3-day battery with perfect sensitivity matters more clinically than 7-day battery with 95% sensitivity—that's a product tradeoff, not an engineering failure.

* **Validate with a second-source NPU or fallback design.** If the 7-day target depends on a single vendor's NPU performing exactly to spec under your workload, you've locked the product to that vendor and one performance assumption. Practical risk mitigation: prototype with two candidates (e.g., ARM Cortex-M55 + NEON, or Cortex-M4 + quantized TensorFlow Lite), compare measured inference times and power, and design firmware to support either—this de-risks the 7-day dependency and gives you leverage in cost negotiations.

* **Reframe 7 days as a checkpoint, not a ceiling.** With your 18-month runway, aim for 5 days by Month 6, then iterate toward 7. This buys time for model optimization, firmware tuning, and sensor selection without burning runway on a speculative goal. If you hit 10 days, you've freed up power for better inference precision or more frequent health checks—a win either way.

## Q2: Thermodynamic Lower Bound on Inference and Analog Gating

* **Estimate decision entropy, then compare to measured power.** For arrhythmia detection, the output space (normal vs. anomaly) is roughly 1 bit; Shannon's bound suggests a theoretical minimum of ~1 pJ/bit on modern processes. Most NPUs operate at 100–1000 pJ/decision, meaning they're 100–1000x above the thermodynamic floor—a gap that's primarily a hardware efficiency problem, not fundamental physics. A practical insight: this gap narrows if your models make fewer arithmetic operations per decision, suggesting quantization and pruning are worth the accuracy loss.

* **Analog threshold gating is underexploited and implementable.** A simple analog comparator monitoring R-R interval deviation (comparing successive beats to a rolling median) can gate the NPU to fire only on irregular rhythms, eliminating inference on 90%+ of normal beats and cutting inference power consumption from 10–15% to 1–2% of total budget. This is classical signal processing (not ML) and costs negligible power—a high-ROI retrofit that works even on cheaper MCUs.

* **Dual-mode architecture avoids the all-or-nothing choice.** Run a lightweight rule-based detector (R-R regularity, amplitude, low-frequency drift) continuously in hardware or via a tiny embedded model (few KB), then invoke the full quantized neural model only when flags trip. This preserves 95% of anomaly detection capability while cutting inference power to 20–30% of continuous operation—pragmatically, this is where most wearables land.

* **Batch inference scheduling trades latency for power.** Instead of inferring on every PPG sample or every beat, buffer 5–10 seconds of data and infer once per minute during day (acceptable for arrhythmia detection) and once every 5 minutes at night. Batching reduces context-switching overhead and NPU wake-up cycles, saving 30–50% of inference power compared to continuous inference—with a clinically acceptable latency cost for non-emergent arrhythmias.

* **Validate with published benchmarks on your target NPU.** Arm, ST, and Nordic publish power measurements for ML inference on their processors; cross-reference your model size and operation count against those baselines to calibrate your expectations. If your model is 2x worse than published numbers, the problem is likely firmware (inefficient memory access patterns) or quantization (wider than needed)—both fixable without new hardware.

## Q3: Forced Simplicity as a Feature

* **Event-triggered sensing feels less invasive to users.** A device that samples continuously (even at low power) can feel like constant surveillance—even if the data never leaves the device. A wearable that "wakes up" when it detects irregular breathing or anomalous heart patterns, then runs a quick check, feels more like an attentive assistant than a tracker. Practically, this means marketing the intermittent model as a feature ("Detects anomalies without constant monitoring") rather than hiding it as a power constraint.

* **Reduce scope to achievable core.** Instead of monitoring four signals (PPG, accelerometer, temperature, microphone) continuously, start with PPG + accelerometer for arrhythmia and sleep apnea. Drop microphone for v1 unless breathing pattern detection is a hard clinical requirement. Cutting one sensor reduces power by ~10–15%, improves detection by eliminating false signals, and accelerates time-to-market—pragmatically the right trade.

* **Intermittent sensing enables faster model iteration.** With continuous monitoring, you're locked into low-power, simpler models to fit the budget. With event-triggered inference, you have 2–3x the compute budget per decision, letting you deploy more expressive models and A/B test improvements faster. Better model accuracy in 6 months trumps a mediocre model on perfect 7-day battery.

* **Intermittent sensing widens the addressable market.** Users with high arrhythmia burden (>100 episodes/week) benefit from continuous monitoring; users with rare episodes (2–3/month) benefit from responsive alerts on anomalies. An event-triggered device serves both cohorts well and has a clearer value story for each. A continuous monitor optimized for the rare-episode user burns power unnecessarily for the high-burden user.

* **Reframe intermittency as "smart monitoring for your rhythm."** If the device adapts sensing frequency based on recent history (more frequent checks if anomalies detected in past 24 hours, slower checks if clean), users perceive personalization and care, not battery constraints. This requires marginally more firmware logic but dramatically improves the user experience narrative.

## Q4: Stage Management and Power Budget Allocation

* **Physiological state as a scheduler cue.** Sleep detection (via accelerometer + PPG amplitude drop) is a natural switching point: night mode drops BLE sync frequency from 5 min to 30 min, disables display refreshes, and runs inference at lower frequency (apnea is the main night risk). Exercise detection (accelerometer spike) temporarily halts low-SNR sensor reads and batches inference post-workout. Implementing state-based firmware scheduling takes 2–3 weeks for a junior firmware engineer and saves 20–30% of total power without sacrificing detection capability.

* **Precompute inference schedules, don't improvise.** Define three power profiles (active/day, rest, sleep) and assign sensor/inference cadences to each at firmware design time. Rather than the MCU deciding "should I infer now?" on every beat, the scheduler follows a precomputed timeline: infer at t=10s, t=25s, t=50s, etc. This reduces decision logic (faster execution, lower power) and makes power consumption predictable and testable.

* **Graceful degradation is your reliability safety net.** If battery drops below 20%, shift to sleep-only mode (detect apnea, skip arrhythmia checks). Below 10%, go silent and preserve enough power for a low-power alert if critical anomaly detected. Define these transitions explicitly in firmware; users expect predictable behavior as battery depletes, not surprise power-offs. This takes 1 week to implement and improves user trust substantially.

* **Resource reservation windows prevent cue collisions.** Schedule inference, BLE sync, and high-frequency sensing in non-overlapping windows—e.g., infer at t=0–5s, sync BLE at t=6–12s, sample PPG at t=13–30s. This keeps current draw steady and prevents momentary power spikes that trigger brown-out or reduce efficiency. Firmware design: use an event queue with reserved time windows, not interrupt-driven chaos.

* **Measure and iterate on real power profiles.** After implementing state-based scheduling, run logged power traces over a full day (24-hour profile with sleep/wake/exercise). Compare to zero-based budget—if you're 30% over, dial back inference frequency by 10–15%; if you're 20% under, enable higher-precision models or more frequent syncs. This empirical approach beats theoretical optimization and surfaces unexpected firmware inefficiencies (e.g., sensor re-initialization overhead, BLE connection timeouts).

---

**Total responses written: 20**
**Questions addressed: 4**
**Responses per question: 5, 5, 5, 5**
**Model: claude-haiku-4-5-20251001**

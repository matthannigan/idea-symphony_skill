---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "03_ml-architecture-quantization-and-sensor-fusion"
persona: "The Simplifier"
---

# ML Architecture, Quantization, and Sensor Fusion - The Simplifier

---

## Q1: Architecture, Quantization, and MCU/NPU Partitioning Under Power Envelope

* **Summary.** Stop optimizing four architectures in parallel. Pick one (RNN/LSTM beats the others for continuous sequential signals with tight power budgets), use INT8 quantization from day one (not as late optimization), and partition statically: PPG feature extraction on MCU, anomaly scoring on NPU. Skip quantization-aware training until accuracy collapse proves it necessary—you're likely overthinking underrepresented classes.

**Response 1 (Pragmatist cut):**
Architecture shopping delays shipping. RNN/LSTM handles continuous PPG anomaly detection with lowest parameter count among the four families. Quantize to INT8 immediately in the training loop rather than post-hoc—this prevents surprises later. Partition work by locality: MCU filters and normalizes raw PPG (low cycle cost, continuous), NPU runs the sequence model (high intensity, bursty). Skip the complexity of QAT until real ablation data shows accuracy actually collapses on rare classes. Three months of implementation beats six months of benchmarking variants.

**Response 2 (Ruthless scope cut):**
What if the team committed to a single COTS MCU+NPU pairing (Nordic nRF9151 + embedded Arm M4) and called everything else out of scope? INT8 is standard now—mixed precision adds complexity for marginal gains. Skip context-switch overhead analysis; static partitioning with simple message passing works fine. The real savings come from having the ML team optimize one model on one platform, not three engineers building variant branches against four architectures. Unblock 6 months.

**Response 3 (Constraints-driven):**
Let the SRAM budget drive architecture selection, not the other way. If you have 512K SRAM available and arrhythmia models need 300K, you're left with 212K for everything else. Start there: which model families fit that envelope with usable accuracy? Likely RNN. INT8 quantization shrinks both weights and activations; it's almost free. Partitioning is then a scheduling problem, not an architectural choice—processes run sequentially because SRAM is small, not because the design is sophisticated.

**Response 4 (Waste elimination):**
QAT is solving a problem you might not have. Post-hoc INT8 quantization of well-trained RNN models rarely loses more than 1-2% accuracy on common cases. You're chasing rare-event precision (arrhythmia detection) by adding training loop complexity. Measure first: does INT8 actually degrade rare-class recall below acceptable thresholds? If yes, *then* add QAT. If no, ship it. That's how you save four months—by not solving imaginary problems.

---

## Q2: Sensor Fusion Topology and Graceful Degradation

* **Summary.** Late fusion (independent anomaly scoring per sensor, weighted combination at output) beats early fusion for graceful degradation. Accelerometer rejects motion artifacts; if PPG fails, you still have temperature + breathing for context. Communicate degradation honestly: "High confidence" vs. "Check again in 5 min."

**Response 1 (Simplicity-first):**
Don't fuse at the input level; it creates a single point of failure. Late fusion is clearer: PPG generates an arrhythmia score (0–1), accelerometer validates whether motion artifacts corrupt it, temperature adds context. If PPG signal quality drops below threshold during exercise, output confidence drops—that's design, not failure. Users understand "wearing too loosely, please adjust" better than algorithmic explanations. One line: confident score or degrade gracefully.

**Response 2 (Elimination approach):**
What if attention-based fusion was unnecessary complexity for a four-sensor stack? Late fusion with hand-coded weights (0.6 PPG arrhythmia score, 0.3 accelerometer motion context, 0.1 temperature trend) solves 95% of your cases and uses a quarter of the inference cycles. Attention mechanisms shine with 10+ sensors; you have four. The simplest version wins here.

**Response 3 (Structural degradation):**
Graceful degradation happens only if you design each sensor as independent evidence, not as components of a fused inference. PPG alone detects arrhythmias (main job). Accelerometer alone rejects motion noise (guard). Temperature alone tracks thermal baseline (context). Late fusion combines scores; sensor dropout simply weights down that sensor's contribution. No architecture change needed. If PPG fails completely, output "unable to assess heart rhythm" honestly instead of hallucinating confidence.

**Response 4 (Human-centered):**
Stop overthinking signal topology; start with user experience. "Your device is not making reliable readings right now" is clearer and safer than confidence scores users don't understand. If accelerometer detects motion and PPG is noisy, tell the user to hold still or refit. If a sensor fails entirely, disable the features that depend on it. Sensor fusion isn't about blending signals invisibly; it's about knowing what you don't know.

---

## Q3: Hardware-Software Co-design, SRAM as Architectural Invariant, and Component Optimization

* **Summary.** Treat SRAM as the hard constraint—it defines model size, buffer sizes, and inference latency. Nordic nRF9151 or Ambiq Apollo both hit your power envelope; pick based on existing team expertise, not benchmarks. PPG signal processing lives in fixed-point on MCU up to peak detection; SpO2 ratio-of-ratios needs floating-point hardware or live with firmware fallback. Component-level optimization without system-level coordination is how you get thermal runaway—lock inference scheduling to sleep cycles.

**Response 1 (Constraint-driven architecture):**
SRAM is your non-negotiable invariant. If you have 512K total and the OS/radio stack takes 200K, your ML model has 312K budget. Period. That determines model topology before a single line of training code runs. Nordic nRF9151 gives you that transparently; Ambiq requires more careful accounting. PPG filtering (bandpass, baseline removal) runs in fixed-point with careful scaling—no DSP needed until SpO2 calculations, which do need either hardware float or acceptance that SpO2 accuracy will degrade. Build down from SRAM, not up from feature wishlist.

**Response 2 (Team expertise wins):**
Choose the MCU+NPU combo your firmware team knows best. Nordic for Arm ecosystem, Ambiq for low-power specialists. Don't buy into benchmark marketing; the difference in power consumption between the two is noise if your inference scheduling is loose. Pick one, lock it in, and use the six months you saved on integration time to actually optimize inference timing and thermal management—the things that actually move the needle.

**Response 3 (Interaction effects):**
Component optimization (model latency in milliseconds, sensor wakeup timing) doesn't predict system behavior (device temperature, battery drain) because of hidden coupling. MCU running a slow PPG filter keeps the radio off longer—good. NPU with aggressive inference scheduling causes thermal spikes that throttle the MCU—bad. Coordinate at the system level: wake sequence determines which components run when; thermal limits determine duty cycle. Build a simple event loop that respects these constraints, then optimize within it.

**Response 4 (Eliminate numerical precision cliffs):**
Don't chase full SpO2 implementation with ratio-of-ratios precision until you've measured whether users care. A simpler "SpO2 normal, low, or error" readout might work fine with fixed-point approximation. Peak detection and baseline removal are essential for signal quality; they work in fixed-point with scaling. Only add floating-point hardware if real data shows precision drift ruins the signal. You're probably over-specifying before shipping.

---

## Q4: Sensor Fusion as Strength, Not Complexity Tax

* **Summary.** Elegant multi-signal fusion doesn't emerge from sophisticated fusion algorithms; it comes from each signal being independently useful and clearly scoped. PPG detects rhythm abnormalities. Accelerometer validates whether the person is moving. Temperature tracks fever context. Microphone listens for breathing patterns. Each answers one question; fusion just prioritizes alerts. Don't try to make one algorithm do what four independent measurements already do better.

**Response 1 (Clarity of purpose):**
The cleanest fusion systems treat each signal as answering a separate question, not as overlapping inputs to one model. PPG: "Is the heart rhythm abnormal?" Accelerometer: "Is the person still?" Temperature: "Is there a fever?" Microphone: "Are breathing patterns regular?" Each generates a separate confidence score; fusion is a priority system. High arrhythmia confidence + motion = wait for stability. High arrhythmia + still + fever = alert immediately. This is transparent to users and doesn't degrade to confusion when one sensor fails.

**Response 2 (Eliminate over-fusion):**
What if you skipped sensor fusion algorithms entirely and built a simple decision tree instead? "If PPG abnormal, check accelerometer motion. If still, check temperature. If elevated, alert." That's not sophisticated, but it's robust, auditable, and uses less power than any learned fusion model. It's also easier for clinicians to understand (which matters if you ever pursue 510(k) clearance). Simplicity scales.

**Response 3 (Weight by reliability, not complexity):**
Don't design fusion to "harmonize" signals; design it to respect signal reliability. PPG has high noise during motion; downweight it then. Accelerometer is always reliable; trust it for motion context. Temperature drifts slowly; use it as a long-term trend. Microphone is environment-dependent; only use it in controlled settings (sleep). Weights aren't learned parameters—they're expert rules based on signal physics. Change them only if real data contradicts assumptions.

**Response 4 (System resilience):**
Strong sensor fusion isn't about blending everything; it's about knowing what you can't measure. If PPG fails during exercise, you lose rhythm detection—that's unavoidable. But you still have temperature and breathing context, so you don't catastrophically fail. Design by graceful degradation: each sensor's absence is a known mode with known limitations, not an edge case. Users understand "I can't measure your heart rate right now because you're moving" better than any confidence score.

---

## Q5: Urban Sensing Parallel for Multi-Signal Fusion and Graceful Degradation

* **Summary.** Smart city fusion works because traffic, air quality, and transit each have independent value and fail independently. Apply the same: PPG, accelerometer, temperature, and microphone should each enable useful outputs alone. Anomaly confidence reflects partial information ("breathing is slow and temp is up, but we lost PPG contact—check again in 2 min") rather than trying to mask degradation. Treat sensor failure as a clear state, not a blended blur.

**Response 1 (Value per sensor):**
Traffic cameras alone detect congestion. Air quality sensors alone show pollution spikes. Transit data alone reveals ridership patterns. None needs the others to be useful. Apply that here: PPG alone detects arrhythmias. Accelerometer alone rejects noise. Temperature alone tracks baseline shift. Microphone alone detects apnea breathing. Each has clear, independent value. Fusion combines them into higher-confidence alerts, but the system doesn't hollow out if one fails. That's resilience.

**Response 2 (Signal correlations, not fusion models):**
Smart cities discovered that value lives in correlations—"traffic is up, and air quality is down, at the same time"—not in any single stream. Don't learn a complex fusion model; log correlations and threshold them. "Heart rate elevated AND activity low AND temperature rising" → check for infection. "Heart rate elevated AND motion high" → probably exercise, not arrhythmia. These are observable facts, not learned patterns. Simpler, faster, more auditable.

**Response 3 (Honest degradation):**
When a camera fails, traffic systems don't hallucinate confidence; they report "sensor offline, using recent historical data." Do the same with health signals. "PPG unavailable due to poor contact; breathing assessment only—check again when device is snug." Users respond better to honest gaps than to synthetic confidence. It's also safer for health claims: you're not pretending to know what you don't.

**Response 4 (Architecture for independence):**
The reason smart city fusion works is that streams are processed independently and combined late. A broken camera doesn't corrupt air quality readings. Apply that principle: each sensor generates a scalar output (confidence that a condition is present). Fusion is a weighted sum of scalars, not learned blending of feature vectors. This keeps the system transparent, debuggable, and resilient. When a sensor fails, you simply zero its weight.

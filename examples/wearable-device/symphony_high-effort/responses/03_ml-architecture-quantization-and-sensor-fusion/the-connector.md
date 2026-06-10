---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "03_ml-architecture-quantization-and-sensor-fusion"
persona: "The Connector"
---

# ML Architecture, Quantization, and Sensor Fusion - The Connector

---

## Q1: Architecture, quantization, and MCU/NPU partitioning

**Response 1: The Codec Principle**

There's a structural parallel with video compression codecs. Just as H.265 achieves better accuracy-per-bit by choosing where to sacrifice information (temporal vs. spatial detail), your model architecture choice should map to where the wearable can afford information loss. RNNs capture temporal dependencies in arrhythmia progression (like motion compensation in video), while CNNs process spatial patterns in PPG morphology cheaply. The partitioning question mirrors codec-encoder split: compute temporal reasoning on the NPU, edge detection on the MCU. Quantization-aware training becomes strategic calibration—similar to how video encoders learn where human perception tolerates artifacts. For rare-event detection, apply stronger quantization to common patterns, preserve precision in anomaly signal margins.

**Response 2: The Resilience-Through-Constraint Lens**

Emergency medicine teams operate under resource constraints that paradoxically improve decision-making—fewer tests force diagnostic clarity. Your quantization strategy mirrors this: INT8 isn't a compromise, it's a forcing function that prevents model bloat. The discipline of fitting arrhythmia detection into tight precision creates architectural honesty—you can't hide marginal features. Introduce QAT early, not as insurance but as co-design validation. A model that survives aggressive quantization proves its features are robust. The MCU/NPU split should follow energy cascades: filter-and-discard operations (accelerometer spike rejection, artifact detection) run constantly on MCU; energy-expensive sequence reasoning (LSTM) on NPU only when signal quality crosses thresholds. This inverts typical thinking—let the constraint shape the algorithm.

**Response 3: The Biological Redundancy Model**

Organisms don't partition computation by theoretical efficiency—they use metabolic gradients. High-energy organs (brain) handle complex reasoning; low-energy reflexes (spinal cord) handle urgent patterns. Your wearable mirrors this: teach the MCU to recognize arrhythmia *shapes* (spike patterns) via simple rules, reserve the NPU for *confidence reasoning* over sequences. Quantization then becomes metabolic matching: low-power layers use INT4 (like reflex arcs), decision layers use mixed-precision (conscious reasoning). The interaction between context-switch overhead and SRAM limits is a metabolic boundary—cross it and you waste more energy switching than computing. Model the wearable as a two-tier nervous system where speed and simplicity at the edge eliminate unnecessary NPU invocations.

**Response 4: The Supply-Chain Architecture Insight**

Just-in-time manufacturing reduced waste by keeping only needed inventory in motion. Apply this to sensor-processing duty cycles: don't assume continuous inference. Partition based on *event probability*, not symmetry. Low-probability arrhythmias need minimal-compute screening (accelerometer + temperature rules out false alarms), high-confidence PPG patterns trigger full-sequence evaluation on NPU. Quantization thresholds become inventory rules—hold INT4 representations in fast SRAM, fetch full-precision weights from flash only when signal variance exceeds thresholds. This coupling between quantization strategy and duty-cycle scheduling is where most startups leave efficiency on the table.

---

## Q2: Sensor fusion topology and graceful degradation

**Response 1: The Weathering Communication Pattern**

Ecological monitoring networks learned to broadcast uncertainty honestly—"sensor X is degraded, prediction confidence drops 30%"—rather than hiding it in aggregates. For your four-sensor fusion, adopt intermediate attention-based fusion where each signal carries a confidence score learned during training. If PPG contact fails during exercise, the attention mechanism learns to downweight it and amplify accelerometer+temperature context. Critical insight: motion-artifact rejection isn't a preprocessing step, it's part of the fusion topology. Train the attention layer on labeled examples of poor contact, sensor lag, and dropout scenarios. Users see a real confidence slider that decays when reliability drops, creating honest degradation rather than silent failures.

**Response 2: The Distributed Decision Network**

Financial systems prevented cascading failures by designing decisions that don't centralize—each node must be independently defensible. Your sensor fusion should adopt this: early fusion is risky (one bad signal corrupts all downstream reasoning), but late fusion isolates failures. The parallel: late fusion lets each signal maintain independent anomaly detection (PPG detects rhythmic irregularity, accelerometer filters movement artifacts), then *reconciliation* finds agreement. A confidence score emerges only when multiple independent streams vote on the same anomaly. Motion artifact requirements become a specification of *disagreement thresholds*—when PPG and accelerometer conflict, trust neither fully, degrade gracefully to temperature + respiratory baseline.

**Response 3: The Graceful Handoff in Jazz Improvisation**

Jazz musicians handle missing band members by redistributing roles—if the bassist drops out, the piano and drums maintain the rhythm structure. Sensor dropout in health monitoring works the same way. Design your fusion architecture as *role reassignment*, not weighted averaging. When PPG fails, accelerometer + temperature + breathing patterns establish a *movement-adjusted baseline*; anomaly detection runs in this degraded mode with different thresholds. The key connection: this works only if each sensor *trains to succeed independently* during model development. A model trained only on full-sensor data will catastrophically fail when one signal vanishes. Multi-modal training with dropout simulation during development creates resilience.

---

## Q3: Hardware-software co-design, SRAM as architectural invariant, PPG signal processing

**Response 1: The Constraints-as-Features Principle**

Modernist architecture—think Dieter Rams' philosophy—treats material constraints as the source of elegant design, not problems to hide. Your SRAM limit (typically 128–256 KB on Nordic/Ambiq platforms) is a design invariant, not a limitation to overcome. Frame this reframing: how does committing to fixed SRAM shape the ML topology? It forces algorithmic parsimony. For PPG processing, fixed-point arithmetic with integer-only bandpass filtering (Butterworth ~32-bit accumulation) works until harmonic resonance in skin reflectance demands floating-point—a numerical cliff. Detect this empirically: test PPG preprocessing on actual patient cohorts, find the precision threshold, then decide: add a DSP coprocessor (expensive) or redesign the baseline-wander rejection to work in integer space. The COTS pairing (Nordic + Syntiant NDP) offers 256 KB SRAM—treat that as the architectural floor, not a problem.

**Response 2: The Paleontological Approach to Component Interaction**

Fossil records reveal that extinction cascades often follow from single-point failures in a tightly coupled ecosystem. Your component-level optimization risk mirrors this: optimize sensing schedules in isolation, optimize inference scheduling in isolation, and emergent thermal management issues kill battery life. The parallel solution: design *interfaces between components* as explicit contract boundaries. Sensor wakeup timing should feed inference scheduling; inference duty cycle should modulate thermal limits. ST STM32N6 offers a built-in power monitor—use it as the coordination mechanism: if thermal headroom drops below 10%, inference throttles; if signal quality drops below threshold, sensing interval extends. Richer sensor fusion (more signals, more compute) works only if components exchange *state information*, not just data.

**Response 3: The Urban Planning Signal Redundancy Model**

Cities that survived traffic gridlock didn't optimize individual intersections; they created signal coordination protocols that prevented cascading failures. Your multi-signal health system mirrors this. PPG numerical precision cliffs matter less if you design *multiple confirmation pathways* for anomaly detection. Train the model so that PPG morphology suggests arrhythmia, but respiration rate (microphone-based) and skin temperature act as independent validators. This is different from simple sensor fusion—it's *coordinated failure modes*. If PPG precision forces float32 (signal-processing cost), but accelerometer + temperature + breathing can independently flag concerning patterns with INT8, then you've created architectural redundancy. The value isn't in any single precision choice but in the graph of interdependencies.

---

## Q4: Sensor fusion as strength, not complexity

**Response 1: The Conducting Orchestra Analogy**

When orchestral sensor fusion felt unified rather than discordant, conductors didn't average instruments—they shaped relative emphasis over time. In Bach's fugues, four voices interweave, and the beauty emerges from *structural relationships*, not volume. Apply this to PPG + accelerometer + temperature + breathing: define signal relationships *musically*. During rest, PPG dominates anomaly detection (rhythm irregularities matter most). During sleep, breathing + temperature define the baseline; any PPG deviation from expected sleep-apnea patterns triggers alerts. The fusion topology follows the *narrative* of what-matters-when, not mechanical averaging. Weighting should be learned dynamically—a gating mechanism that says "in this activity state, trust this signal hierarchy." The coordination felt unified because each voice played its designed role within a coherent whole.

**Response 2: The Ecological Niche Principle**

Healthy ecosystems don't blend species together; each occupies a niche where its strengths dominate. Your sensors should do likewise: PPG is the rhythm specialist (heartbeat morphology, rate regularity), accelerometer is the context specialist (activity, artifact rejection), temperature is the baseline specialist (circadian rhythm, fever), microphone is the respiration specialist (breathing rate, apnea). Fusion means *respecting niches*, not averaging. A arrhythmia confidence score emerges from: PPG detects morphological anomaly (high confidence), accelerometer confirms it's not movement artifact (context), temperature and respiration patterns don't contradict (validation). This layered assessment—each signal answering a specific question—creates coherence. The principle: fusion strength comes from *specialized signal roles* reconciled into a unified decision, not from treating all signals interchangeably.

---

## Q5: Urban sensing parallel for multi-signal fusion and graceful degradation

**Response 1: The Traffic Flow Resilience Model**

Cities discovered that traffic sensors deployed in silos created brittle systems: one broken camera and routing algorithms failed silently. The fix: treat each sensor stream (traffic cameras, pedestrian counters, transit GPS) as independently actionable. If cameras fail, pedestrian count patterns + transit delays still reveal congestion. Your device mirrors this: if PPG contact is poor (camera analog), can breathing rate + accelerometer pattern + skin temperature still detect apnea events? Not with full confidence, but with *disclosed degradation*. The urban insight: the fusion architecture succeeds when signals provide *overlapping but independent evidence*, creating a confidence hierarchy. Degradation is transparent (your app shows "Heart rate detection: limited during exercise, confidence 65%") rather than hidden (silently noisy alerts).

**Response 2: The Air Quality and Mobility Correlation Discovery**

Smart cities found unexpected value in correlations between streams captured simultaneously: traffic patterns correlated with air quality *at the same moment*, revealing causality. In health monitoring, the parallel is detecting *co-occurrences* of anomalies across signals. An arrhythmia that appears in PPG but doesn't correlate with accelerometer motion, temperature spike, or respiratory change is more suspicious (potential noise) than one where all four signals show state change together. The fusion architecture should weight *temporal co-occurrence*—anomalies that ripple across multiple signals simultaneously are more credible. Sensor failure degrades gracefully because the confidence score depends on *agreement strength*, not on all sensors reporting perfect data. Partial sensor loss reduces confidence but doesn't silence the system.

**Response 3: The Sensing Resilience Through Diversity**

Smart city infrastructure learned that diversity in sensor *types* (not just redundancy) created resilience: traffic cameras fail in darkness, LIDAR works; transit GPS fails in tunnels, physical sensors work. Your health monitoring device should embrace the same principle: PPG fails during exercise, accelerometer + respiration baseline take over; microphone fails in noisy environments, PPG + temperature maintain watchfulness. The architectural insight: redundancy of *different signal characteristics* (not identical backup sensors) is what creates graceful degradation. Each sensor's failure mode is covered by another sensor's strength zone. The fusion weighting learns these complementary patterns. A user's exercise triggers PPG unreliability, but the model learned during development that breathing rate + accelerometer quietness + temperature stability form a coherent "normal exercise" signature, so confidence stays reasonable rather than collapsing.

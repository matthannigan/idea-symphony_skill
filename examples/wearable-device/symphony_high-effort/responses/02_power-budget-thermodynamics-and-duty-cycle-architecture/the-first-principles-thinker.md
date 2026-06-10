---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "02_power-budget-thermodynamics-and-duty-cycle-architecture"
persona: "The First Principles Thinker"
---

# Power Budget, Thermodynamics, and Duty-Cycle Architecture - The First Principles Thinker

---

## Q1: Battery as Keystone Constraint and Zero-Based Budget

**Summary.** Strip away component datasheets and build the energy budget from first principles: battery capacity → subsystem allocation → architectural consequences.

**Response 1A: Physics-Up Budget Model**
At its core, this is a thermodynamic accounting problem. Start with hard constraint: 7-day battery = ~840 hours. Work backward from watt-hours available in the cell to discover which subsystems get how many milliwatts continuously. Radio dominates (BLE at 20–100 mW), then PPG sensing (continuous = always hungry), then inference spikes. The fundamental insight: if BLE and continuous sensing consume 80% of budget, there's simply no headroom for always-on high-fidelity ML. The team must validate this math independently—not assume NPU datasheets are honest—and accept that 7 days might force 30-min duty-cycled sensing rather than continuous monitoring. That's not a compromise; it's the architecture physics demands.

**Response 1B: Event-Driven Sensing as Architectural Requirement**
Continuous monitoring isn't actually the goal; detecting anomalies is. If the battery forces event-triggered inference (sampling only when physiological markers suggest abnormality), that's not a weakness—it's an insight about what the device fundamentally needs to do. A simple analog comparator watching R-R interval variance costs microwatts and can gate the NPU awake only when rhythm looks irregular. This inverts the problem: instead of "7 days with continuous sensing," ask "what duty cycle preserves detection sensitivity while staying under the energy budget?" The answer might be 15-minute cycles, or event-triggered cycles, which could actually *improve* user experience by feeling less invasive than always-listening.

**Response 1C: Battery Target Is a Business Constraint, Not Physics**
The unasked question: why 7 days? Competitive positioning? Clinical wear-period norms? User convenience? These are legitimate, but they're business decisions masquerading as specs. At first principles, a 3-day device with marginally better detection accuracy might save more lives than a 7-day device with higher false-negatives due to power constraints. The team should run the tradeoff: compute lives-saved per unit sensitivity gain versus the battery days users would tolerate. If users accept 3-day cycles for clinical-grade accuracy, the whole architecture simplifies, inference quality improves, and the product becomes defensible on grounds of *better detection*, not longer batteries.

**Response 1D: Thermal Budget as Hidden Constraint**
7-day battery in a wrist-worn form factor implies tight thermal limits. Inference peaks (even on low-power NPUs) generate localized heat. Over a week, cumulative thermal stress on the silicon degrades performance and battery self-discharge. The fundamental issue: total energy ≠ evenly distributed power. A device that idles at 2 mW then spikes to 50 mW for 100 ms every 5 minutes distributes thermal load differently than steady 3 mW. Validate that the thermal budget is actually compatible with the duty cycle chosen. If continuous PPG + periodic inference requires running hot, the 7-day target might slip to 5–6 days in practice.

---

## Q2: Thermodynamic Lower Bound on Inference and Analog Gating

**Summary.** Derive the theoretical minimum energy per inference from information theory, measure how far real hardware is above that bound, and locate the analog/digital boundary for maximal efficiency.

**Response 2A: Shannon-Landauer Limits Reveal the Real Gap**
The fundamental question: how many bits of entropy is in "is this beat normal or anomalous?" If arrhythmias occur in ~2% of monitored beats, the entropy per inference is roughly 0.14 bits. Landauer's principle says you need ~10^-21 J per bit at room temperature; multiply by entropy per inference and you get a theoretical floor around 10^-22 J per decision—picowatts. Real NPUs burning milliwatts per inference are *trillions of times* above that bound. The gap is huge not because NPUs are inefficient, but because they're doing overcomputed general-purpose matrix math. The first-principles question: can you move the decision boundary into analog, using classical signal processing to filter down to maybe 1% of beats for ML evaluation? If so, you've cut inference energy by 100x.

**Response 2B: Analog Gating at the Sensor Boundary**
Before any digital processing, milk the analog domain. A few passives and a comparator watching the PPG signal for sudden transitions in R-R interval regularity cost microjoules per day. The waveform itself contains the anomaly signal—spikes, skipped beats, flutter patterns—all detectable with naive threshold logic. Gate the NPU to wake only when this analog trigger fires. In normal sinus rhythm, the gate might open 10 times a day; in irregular rhythm, 100+ times. This relocates the coarse detection (anomaly present/absent?) to the thermodynamically cheapest domain (analog), leaving the NPU to answer the fine question (what kind of anomaly?). Break-even: if this gates out 95% of inference compute, you've just recovered most of the power budget for better sensing or model fidelity elsewhere.

**Response 2C: Quantize the Model Aggressively**
High-precision floating-point inference is mathematically clean but energetically wasteful. At first principles, 8-bit quantization on the weights and activations of an arrhythmia detector likely preserves detection accuracy better than you'd expect (anomalies are usually high-amplitude, easy to spot even at low precision). Validate that the sensitivity/specificity stay acceptable at INT8. If they do, inference power drops 4–8x compared to FP32. The hardware to do this efficiently (quantization-aware training, low-bit activation functions) is commoditized; the cost is engineering time to verify that coarse quantization doesn't erase the anomaly signal. First principles: use the precision that *just barely* preserves clinically relevant sensitivity, not the precision that's theoretically cleanest.

**Response 2D: Batch Inference as Thermal Spreading**
Single inference = spike. Batch ten inferences once per hour = smoother thermal profile, lower peak power, more predictable. This trades latency for efficiency: if you can accept 30-min detection delay (medically defensible for most arrhythmias), batch small inference jobs during scheduled "analysis windows" rather than firing the NPU on every trigger. The energy efficiency of batching comes from amortized overhead (startup, memory setup, context). Batch size of 10 might drop per-inference cost by 30% because the fixed-overhead gets divided. At first principles: amortize fixed costs over multiple decisions. Detection latency becomes another knob in the battery/accuracy tradeoff.

---

## Q3: Forced Simplicity as a Feature

**Summary.** Reframe intermittent sensing not as a power limitation but as a design virtue—less surveillance, more intentionality.

**Response 3A: Inversion: Intermittent Monitoring Feels Less Creepy**
Always-on health monitoring feels like a surveillance device; periodic health checks feel like a tool. If the device samples every 30 minutes for 2 minutes (scan PPG, run inference, then sleep), users experience intentional attention moments rather than constant passive listening. This psychological shift—from "the device is always watching" to "the device periodically checks in"—could be a *feature* in marketing and user trust, not an apology. Reframe the battery constraint as a design choice: "We built a health monitor that respects your privacy by only analyzing your heart rhythm when you've given it permission through periodic check-ins, not constant surveillance." Fundamental truth: lighter-touch monitoring might actually build better user habits and long-term device engagement.

**Response 3B: Scheduled Awareness Windows Align with User Intent**
A device that does high-frequency analysis during sleep (when anomalies matter most) and lighter sampling during day is more useful than uniform 24/7 coverage. Detect sleep onset from accelerometry, shift to continuous low-power PPG during sleep window, drop back to 30-min samples during day. User experience improves because the device is smarter about when it's "paying attention"—and total energy stays within budget. This inverts the power problem into a UX problem solved through scheduling. First principles: intermittent doesn't mean random. Intermittent means *intentional about when to be attentive*.

**Response 3C: Friction as Trust Signal**
If the device requires the user to wear it consistently during certain windows (e.g., sleep hours) and samples opportunistically during day, you create a ritual. Rituals build trust and habit better than invisible automation. Users feel *agency*—"I put on my health monitor for sleep monitoring"—rather than passive surveillance. Paradoxically, a device that *doesn't* promise continuous monitoring might be more honest and more trusted than one that tries and fails to deliver 7-day perfect data coverage.

---

## Q4: Stage Management and Power Budget Allocation

**Summary.** Apply choreography principles—cue sequencing, resource reservation, graceful degradation—to firmware scheduling across competing power-hungry subsystems.

**Response 4A: Physiological State as the Master Cue Sheet**
A stage manager doesn't fire all lighting and sound cues simultaneously. Similarly, the firmware needs a master state machine that knows: Am I in sleep? Active movement? Resting? Each state pre-scripts which subsystems are active and in what sequence. During sleep (high-risk window for apnea/arrhythmia), activate continuous PPG and audio sampling, defer Bluetooth sync until morning. During exercise (high HR variability expected), down-sample inference frequency to avoid alert noise. During stillness, sample more aggressively to catch subtle arrhythmias. This isn't just power optimization; it's physiological *wisdom*. The firmware becomes reactive to context, not reactive to sensors alone. First principles: allocate resources not equally, but proportional to detection *need* per state.

**Response 4B: Resource Reservation Windows**
Theater reserves a 15-minute window for a complex set change; other cues are blocked during that window. Similarly, reserve non-overlapping windows for radio communication, inference batches, and sensor recalibration. E.g., Bluetooth sync happens 0:00–0:05, inference batch runs 0:06–0:10, PPG sensor baseline refresh runs 0:11–0:15. This prevents brownout conditions where multiple subsystems compete for current delivery, which causes voltage droop and forces power throttling. Predictable scheduling also lets the battery management IC optimize charge delivery. Fundamental insight: scheduling conflict prevention saves more power than any single optimization.

**Response 4C: Graceful Degradation as Built-In Behavior**
A stage manager has a contingency plan if a cue runs long: dim secondary lights, delay a prop entrance, adjust pacing. The firmware should degrade gracefully. If inference runs long (model slower than expected), automatically skip the next scheduled batch and increase the sampling interval. If Bluetooth is slow, defer non-critical sync and retry at the next window. If battery voltage dips, shift to a pre-programmed "low-power state" that drops model precision (INT8 quantization, smaller model), reduces PPG sample rate, and suspends non-essential radio traffic. These degradations should be *transparent to the user experience* because they happen rarely and are managed by the firmware, not the user. This keeps the system robust without user intervention.

**Response 4D: Sensing-to-Sync Pipelining for Steady State**
At its core, firmware power management is a pipeline problem: sensor reads → feature extraction → ML inference → alert logic → Bluetooth batch sync. Overlap where possible but sequence to avoid peak conflicts. While Bluetooth is transmitting yesterday's summary, the PPG sensor is already sampling tomorrow's data, and features are being extracted in a separate DMA channel. This software pipelining (not data pipelining, but firmware task scheduling) keeps power more steady. No one subsystem dominates a single moment; work is spread. The fundamental principle: choreography wins through sequencing and overlap, not through isolation.

---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/wearable-device/med"
datetime: 2026-04-28
effort: "medium"
stage: "Phase 2 Step 2.2: Persona-Based Question Generation"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
persona: "The Connector"
category: perspective
stream: append
volume: 7
---

# Brainstorming Questions from The Connector: On-Device ML Health Monitoring Wearable

---

## Privacy Architecture as Immune System

1. **On-device data containment as biological quarantine**: Epidemiology developed the concept of containment zones — isolating pathogens before they reach systemic circulation — and your on-device ML architecture mirrors that structure exactly; what does this parallel reveal about how to design the boundary between local inference and the sync protocol, particularly around what constitutes a "processed alert" versus "raw signal residue" that might still carry identifiable biometric fingerprints?

2. **Regulatory strategy as species adaptation**: Conservation biology distinguishes between organisms that survive by being generalists (adapting to many environments) versus specialists (optimizing for one niche but vulnerable to change) — your device sits at the consumer-wellness / clinical-device boundary; what does this framing reveal about whether a single hardware and ML architecture can genuinely serve both regulatory environments, or whether trying to serve both creates a product that is optimally suited for neither?

---

## Battery Budget as Urban Resource Allocation

3. **Power envelope as municipal zoning**: City planners allocate finite land across residential, commercial, industrial, and green space uses, accepting that expanding one zone compresses others and that the allocation shapes what kind of city emerges — your battery budget faces the same combinatorial constraint across sensing, NPU inference, radio, and display; what planning-derived principles (e.g., mixed-use density, just-in-time provisioning, demand-responsive zoning) could reshape how the firmware dynamically reallocates power rather than treating each subsystem's budget as a fixed partition?

---

## Model Update Strategy as Supply Chain Design

4. **Federated learning as just-in-time manufacturing**: Toyota's lean production system eliminated large inventory buffers by synchronizing supply exactly to demand, reducing waste and enabling rapid adaptation — federated learning proposes a structurally similar move for ML: eliminate the central data warehouse by synchronizing gradient updates instead of raw data; what does the lean manufacturing analogy reveal about the failure modes of federated learning in your context (e.g., the equivalent of a supply disruption when a node goes offline, or quality variance when "parts" — user physiologies — differ significantly across the fleet)?

5. **Firmware model updates as software-defined radio**: Cognitive radio systems were designed to reprogram their signal-processing behavior at runtime to adapt to spectrum conditions, essentially separating the radio's "intelligence" from its hardware; how far can your ML pipeline adopt the same architecture — separating the neural network weights and inference logic from the underlying NPU firmware — and what are the security and validation implications of treating model updates as first-class reprogrammable components rather than firmware artifacts?

---

## False Positive/Negative Tradeoffs as Dual-Use Engineering

6. **Alert calibration as nuclear deterrence equilibrium**: Cold War strategists discovered that credibility of deterrence depends not on maximizing destructive capacity but on calibrating response thresholds so that false alarms do not trigger escalation — your false positive/negative tradeoff has the same structural property: a system that alerts too readily loses user trust and gets ignored (deterrence failure from crying wolf), while one that is too conservative misses actual events (failure through inaction); what does the deterrence literature's concept of "graduated response" suggest about designing a tiered alert architecture that distinguishes urgent cardiac alerts from lower-confidence sleep apnea flags, and how does this interact with liability exposure?

---

## Sensor Fusion as Ensemble Governance

7. **Multi-sensor anomaly detection as jury deliberation**: Jury systems require multiple independent assessors to reach a verdict, with the logic that diverse observers with different vantage points are less likely to share the same blind spots — your PPG, accelerometer, temperature, and microphone sensors are structurally analogous jurors, each with distinct detection strengths and failure modes; what does jury design research (e.g., the optimal size, unanimity vs. supermajority thresholds, handling of outlier "jurors") suggest about how to architect the sensor fusion layer's voting or weighting logic, particularly for edge cases where one sensor is occluded or degraded?

---

**Total questions**: 7
**Topic clusters**: 4

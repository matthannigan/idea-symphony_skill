---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/wearable-device/med"
datetime: 2026-04-28
effort: "medium"
stage: "Phase 2 Step 2.2: Persona-Based Question Generation"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
persona: "The Analyst"
category: analytical
stream: synthesize
volume: 13
---

# Brainstorming Questions from The Analyst: On-Device ML Health Monitoring Wearable

---

## Power Budget Decomposition and Allocation Trade-offs

1. **Battery budget breakdown**: If the 7-day target is decomposed into per-subsystem power budgets — sensing, NPU inference, BLE/sync, display, and always-on housekeeping — what percentage ceiling should each subsystem be allocated, and which subsystem is the hardest to compress without degrading clinical utility?

2. **Inference frequency vs. detection latency**: Given that continuous inference is the most power-expensive operating mode, what is the quantified relationship between inference cadence (e.g., every 30 seconds vs. every 5 minutes) and the probability of missing a clinically significant arrhythmia event — and at what cadence does detection latency become medically unacceptable?

3. **Sensor duty cycling trade-offs**: How should PPG, accelerometer, skin temperature, and microphone duty cycles be sequenced or co-activated to minimize redundant power draw while preserving the multi-signal correlation needed for anomaly detection confidence?

---

## ML Model Architecture and Accuracy-Efficiency Trade-offs

4. **Model size vs. accuracy on the NPU**: What is the empirical relationship between model parameter count, NPU inference latency, energy per inference, and arrhythmia/apnea detection F1 score on the target microcontroller — and where on that curve does the design currently sit relative to the 7-day battery constraint?

5. **False positive and false negative cost asymmetry**: Breaking this down analytically — false negatives carry clinical harm risk (missed arrhythmia), while false positives carry alert fatigue and liability risk. What decision threshold policy, sensitivity/specificity trade-off, and downstream escalation protocol best balances these asymmetric costs for a 40+ consumer wellness population?

6. **Sensor fusion weighting methodology**: When PPG, accelerometer, and microphone signals disagree on anomaly classification — for instance, elevated heart rate with no corresponding motion artifact — what fusion architecture (early fusion, late fusion, or attention-based) best quantifies the confidence contribution of each modality, and how is that confidence communicated to the alert system?

7. **Model update strategy unit economics**: Comparing on-device fine-tuning, federated learning, and periodic firmware-delivered model updates — what are the storage, compute, bandwidth, and engineering overhead costs per approach at the expected fleet scale after Series A deployment, and which approach preserves the on-device privacy guarantee at lowest operational cost?

---

## Data Pipeline Architecture and Privacy Compliance

8. **Data residency boundary mapping**: Breaking this down — which data states (raw sensor samples, feature vectors, model activations, alert events, aggregated summaries) are generated at each stage of the inference pipeline, and for each state, what is the technical mechanism that prevents it from leaving the device while still enabling companion app functionality?

9. **HIPAA compliance architecture for clinical partnerships**: If a clinical partner requires audit trails of alert events to meet their own HIPAA obligations, what is the minimum data payload that can be synced while satisfying their audit requirements — and what architectural change would be needed today to support that mode without retrofitting the consumer product later?

10. **Aggregated summary definition and re-identification risk**: The design relies on "aggregated summaries" syncing to the companion app — what statistical or algorithmic criteria define a summary as sufficiently aggregated to prevent re-identification of individual health events, and how is that threshold validated against known de-identification standards (e.g., HIPAA Safe Harbor, Expert Determination)?

---

## Regulatory Pathway and Decision Criteria

11. **Consumer-to-clinical transition decision framework**: The key factors for deciding when to pursue FDA 510(k) clearance seem to be: evidence of clinical efficacy, predicate device availability, engineering resources required for quality system compliance, and commercial timing. What quantitative thresholds or milestone criteria should trigger the formal transition — and which of those factors is most likely to be the binding constraint given the current 18-month runway?

12. **False positive liability exposure under consumer wellness claims**: If the device operates as a consumer wellness product (no FDA clearance) and generates a false negative that precedes a cardiac event, what is the analytical exposure profile — does the absence of a medical claim reduce liability, or does the nature of the sensor data and target population create a duty-of-care regardless of regulatory classification?

---

## System Performance Measurement and Validation

13. **Ground truth dataset requirements**: To validate arrhythmia and sleep apnea detection performance against a clinically meaningful benchmark, what are the minimum dataset characteristics required — sample size, demographic breakdown, Holter/PSG co-recording methodology, annotation protocol — and how does the current ML team of three scale to producing that validation corpus within the Series A runway?

---

**Total questions**: 13
**Topic clusters**: 4

---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/low"
datetime: 2026-04-28
effort: "low"
stage: "Phase 2 Step 2.2: Persona-Based Question Generation"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
persona: "The Connector"
category: "perspective"
stream: "append"
volume: 7
---

# Brainstorming Questions from The Connector: On-Device ML Health Monitoring Wearable

---

## Cross-System Constraint Reconciliation

1. **The power budget and the model accuracy budget are the same problem in disguise**: There's a structural parallel here with compiler optimization — where the compiler must allocate a fixed register budget across competing operations, trading off locality, spill cost, and instruction count simultaneously. How might thinking of battery life, inference latency, and model complexity as a unified "budget allocation" problem — rather than three separate engineering tradeoffs — change how the team approaches hardware-software co-design for the NPU?

2. **Federated learning resolves the same tension as distributed version control**: Git's architecture solves the problem of keeping many independent copies consistent without a central authority holding the canonical truth — and it does so without nodes ever needing to share their full working state. What structural lessons from distributed version control (branching, merge conflict resolution, asynchronous reconciliation) could inform the design of a model-update strategy that keeps on-device models improving over time without raw sensor data ever leaving the wrist?

---

## Regulatory Strategy as System Architecture

3. **The consumer-to-clinical pathway mirrors the dual-use problem in aerospace certification**: Aircraft components often start life in commercial aviation and later get qualified for military use — not by redesigning the part, but by building a qualification layer on top of an already-validated foundation. What if the team designed the software and data pipeline architecture now as though the 510(k) submission were already in progress — so that the clinical qualification layer is an additive shell rather than a retrofit — and what architectural decisions made today would be hardest to undo later?

4. **HIPAA compliance and on-device privacy are not the same constraint, but they interact**: There's a parallel with the difference between "secure by design" and "compliant by audit" in enterprise security architecture — one is baked into the system's information flow, the other is a documentation and access-control overlay. Where exactly does the architectural boundary sit between the privacy guarantee the device makes by design (raw data never leaves) and the HIPAA compliance posture the company will need to document for clinical partnerships — and how might conflating the two create blind spots in either direction?

---

## Sensor Fusion and the Ecology of Signals

5. **Multi-sensor anomaly detection has a structural parallel with ecological indicator species**: In ecology, the health of a watershed isn't assessed by measuring everything — certain keystone indicators whose behavior reflects the broader system are monitored instead. Which of the four sensor streams (PPG, accelerometer, skin temperature, microphone) functions as the keystone signal for each target condition (arrhythmia vs. sleep apnea), and how might framing sensor fusion around "which signals do the others depend on for interpretability" — rather than treating all four as equal inputs — change the model architecture and power scheduling strategy?

---

## User Trust as an Engineering Variable

6. **False positive rate and user trust follow the same curve as antibiotic overuse and resistance**: There's a parallel with how overprescribing antibiotics degrades their future effectiveness — each unnecessary alert trains the user to ignore the system, eroding the value of true alerts over time. How should the team model "alert credibility decay" as a first-class system variable alongside sensitivity and specificity — and what does treating user trust as a depletable resource imply for how the alert threshold logic should adapt over a user's device lifetime?

7. **The companion app's role mirrors the relationship between a dashboard and the underlying control system**: In industrial process control, dashboards are deliberately designed to show operators only the information needed for a decision, not the raw sensor feeds — because information overload degrades response quality. What principle should govern which processed outputs the companion app surfaces versus withholds, and how does the answer change when the user is a 40-year-old self-monitoring for family risk history versus a cardiologist interpreting data under a clinical partnership agreement?

---

**Total questions**: 7
**Topic clusters**: 4

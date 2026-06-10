---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/med"
datetime: 2026-04-28
effort: "medium"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "08_sensor-fusion-detection-reliability"
persona: "The Devil's Advocate"
---

# Sensor Fusion & Detection Reliability - The Devil's Advocate

---

## Multi-Sensor Fusion as a Reliability Multiplier with a Fragility Tail

* **Summary.** Fusing four sensors *sounds* more robust, but each contact failure, moisture ingress, or positional shift becomes a shared liability. The pipeline needs explicit sensor health monitoring with graceful degradation.

Your current architecture probably treats fusion outputs as gospel, but what happens when PPG contact degrades silently? The model will conflate sensor artifact with real arrhythmia. **Mitigation:** Implement per-sensor confidence scoring based on signal stationarity checks (e.g., PPG peak regularity, accelerometer drift bounds). When confidence drops below threshold, flag that sensor as unreliable and reweight the voting logic to bypass it. This lets you detect "hardware failure mode" distinct from "physiological anomaly."

---

## Real-World Performance vs. Lab Benchmarks

* **Summary.** Your test bench assumes perfect skin contact, controlled lighting, and stationary subjects. Users wear the device while running, showering, and sleeping in beds—conditions your 95% accuracy never encountered.

The assumption that lab accuracy generalizes is the hidden killer here. Darker skin tones often show degraded PPG performance due to light absorption differences. Movement artifacts are orders of magnitude worse in real homes than in controlled studies. **Mitigation:** Run multi-week field validation with diverse users across real settings before clinical claims. Build an on-device drift detector that flags when signal quality degrades and stores the degraded samples for later retraining. Publish your accuracy *by demographic and use context*, not just aggregate. This transparency also protects against FDA liability later.

---

## Multi-Sensor Anomaly Detection as Jury Deliberation

* **Summary.** Jury theory says unanimity is fragile (one stubborn juror kills consensus) but supermajority can mask systematic blind spots (three jurors with the same bias beat the one truth-teller). Your sensor weights and voting thresholds are an arbitrary guess.

Here's the problem: if PPG, accelerometer, and microphone all drift in the *same* direction due to a shared environmental factor—say, ambient temperature rising—your "jury" reaches false consensus. Classic jury failure. **Mitigation:** Design sensor pairs as adversaries. Have PPG + temperature validate each other for cardiac signals independent of motion; use accelerometer + microphone to cross-check breathing independent of HR. Build rules where if *any* sensor pair disagrees significantly, lower overall confidence and escalate to user attention (e.g., "recalibrate device position"). This prevents coordinated failure modes.

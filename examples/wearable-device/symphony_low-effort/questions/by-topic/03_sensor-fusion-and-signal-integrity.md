---
project-name: "On-Device ML Health Monitoring Wearable"
effort: "low"
stage: "Phase 2 Step 2.3: Question Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-7"
---

# Topic Cluster 03: Sensor Fusion and Signal Integrity

## Questions

1. **Fusion architecture choice, microphone power gating, and whether fusion is even necessary**: Combining PPG, accelerometer, skin temperature, and microphone creates a richer signal but a harder inference problem on a constrained NPU — how should the team decide between early fusion (raw signal concatenation), late fusion (independent per-sensor classifiers combined at the decision level), or hybrid approaches; for which target conditions (arrhythmia vs. apnea) is multi-sensor fusion genuinely necessary versus introducing more failure modes than it resolves; and what is the architecture for selectively enabling the microphone based on inferred sleep state (derived from accelerometer and PPG) given its meaningful continuous power draw?
2. **Multi-signal interdependence, slow sensor degradation, and alert reliability under real wear**: Sensor fusion is a strength when all signals function but a fragility when one degrades (motion artifact on PPG during exercise, microphone noise in a loud environment) — how does the fusion architecture distinguish "the signals disagree because something is clinically interesting" from "the signals disagree because one sensor is compromised," what mechanisms detect slow sensor drift (PPG optical paths fouling with skin oils, accelerometer baselines drifting) before it silently compromises clinical validity, and how should the anomaly detection pipeline handle graceful degradation — suppressing low-confidence alerts versus surfacing uncertainty to the user?
3. **Motion artifact rejection, demographic generalization, and end-to-end preprocessing budget**: PPG on a wrist is highly susceptible to motion artifact and the accelerometer is the standard corrective input — what is the firmware-level approach for separating true cardiac signal from movement noise before data reaches the ML pipeline, has the team stress-tested whether on-device performance actually holds for users with irregular skin tones, tattoos, or subcutaneous fat distributions that degrade PPG (what is the recall rate on those subgroups specifically), and how confident is the team that the aggregate compute and memory budget for preprocessing PLUS inference fits within the NPU's headroom — verified end-to-end on actual hardware rather than per-sensor estimates summed separately?
4. **The sensor fusion moment that exceeded expectations**: When has the combination of PPG, accelerometer, skin temperature, and breathing-pattern signals produced an insight or detection that none of the individual signals would have surfaced on their own? What made that fusion work, and what does it suggest about the architecture's latent capability?
5. **Multi-sensor anomaly detection has a structural parallel with ecological indicator species**: In ecology, the health of a watershed isn't assessed by measuring everything — certain keystone indicators whose behavior reflects the broader system are monitored instead. Which of the four sensor streams (PPG, accelerometer, skin temperature, microphone) functions as the keystone signal for each target condition (arrhythmia vs. sleep apnea), and how might framing sensor fusion around "which signals do the others depend on for interpretability" — rather than treating all four as equal inputs — change the model architecture and power scheduling strategy?
6. **From Event Detection to Temporal Health Geography**: Rather than building a system that identifies discrete cardiac or apnea events, what would it look like to design a device whose primary output is a continuous, evolving map of a person's physiological state over months and years — something with no current analog in either consumer wellness or clinical medicine — and how would the on-device ML architecture differ if the goal were pattern cartography rather than anomaly alerting?

---

**Question count**: 6
**Cluster focus**: How four heterogeneous sensor streams combine, degrade, and generalize across real-world wear conditions on the wrist.

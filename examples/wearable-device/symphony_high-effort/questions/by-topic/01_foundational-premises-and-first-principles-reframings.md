---
project-name: "On-Device ML Health Monitoring Wearable"
effort: "high"
stage: "Phase 2 Step 2.3: Question Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-5"
---

# Topic Cluster 01: Foundational Premises and First-Principles Reframings

## Questions

1. **Detection vs. confirmation, and the wrist-as-given**: The REQUEST frames the device as anomaly detection on the wrist, but what if the highest value to 40+ cardiac-risk users is *confirming normalcy* (not detecting problems) — and given the well-documented signal-quality tradeoffs at the wrist versus chest/finger/ear (and the fundamental SNR floor at the wrist where motion artifact can exceed PPG by an order of magnitude, which no amount of ML sophistication may recover from), what assumptions about user compliance, clinical signal quality, and the very definition of a false positive are baked into both choices, and have they been stress-tested?
2. **Information-theoretic floor on the model itself**: From first principles, what is the minimum description length of a model that distinguishes atrial fibrillation from normal sinus rhythm at clinically acceptable sensitivity/specificity — and does that fit within a decision tree or small lookup table rather than a neural network, making the NPU unnecessary for the primary detection task and exposing the multi-sensor stack (PPG, accelerometer, temperature, microphone) to an independence audit that asks which two- or three-sensor subset captures 95% of the discriminative signal so entire channels can be duty-cycled off?
3. **Microphone signal value test**: What would it take to validate that the microphone's contribution to sleep apnea detection accuracy justifies its inclusion, given that microphone data is also the most socially sensitive sensor, the most vulnerable to environmental interference, and the most likely to raise privacy concerns?
4. **Health as personal-signature substrate**: Imagine the system learned to recognize health as a unique, constantly-evolving signature specific to this body, where "anomaly" ceases to be a meaningful concept because every person's baseline is continuously redefined as their personal norm — what would that reframing change about the ML pipeline, and is there a principled information-theoretic argument for it?
5. **Biological symbiosis**: What if the device didn't monitor the body from the outside but instead developed a genuinely bidirectional relationship — where the wearable and the wearer co-regulate each other, and the "device" dissolves into a new kind of embodied awareness that has no precedent in either medicine or consumer technology?

---

**Question count**: 5
**Cluster focus**: The unstated assumptions and information-theoretic floors that shape every downstream decision before the team writes a line of code.

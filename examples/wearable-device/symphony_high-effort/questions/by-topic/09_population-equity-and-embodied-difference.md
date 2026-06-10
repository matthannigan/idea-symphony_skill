---
project-name: "On-Device ML Health Monitoring Wearable"
effort: "high"
stage: "Phase 2 Step 2.3: Question Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-5"
---

# Topic Cluster 09: Population, Equity, and Embodied Difference

## Questions

1. **Training data demographics, sensor accuracy disparities, and edges of intended use**: ML anomaly detection is only as good as the distribution of bodies and conditions trained on, and PPG-based heart rate and SpO2 readings have documented accuracy disparities across skin tones — what is the demographic composition of the training data, how are we validating sensor performance across diverse skin types, what obligation do we have to disclose known accuracy gaps to users before purchase, what happens to model performance for users whose physiology, skin tone, or medication profile differs from the training set (athletes, pacemaker patients, post-surgical, etc., whose "normal" physiology is embedded in the anomaly detection models), and how will the device signal its own uncertainty to users at the edges of intended use? Has the team explicitly benchmarked sensor signal quality under real-world wear conditions across the target demographic, or is the ML model being asked to compensate for sensor limitations that should be addressed in hardware first?
2. **Affordability gap, digital-literacy silent failure, physical accessibility, and the demographic adoption curve**: The target user (40+ with cardiac family history) skews middle/upper income, so design choices (price, app ecosystem, onboarding) may inadvertently exclude the people most at risk who have the fewest healthcare touchpoints; in the onboarding flow, where does a 68-year-old with limited smartphone experience quietly give up and never complain because they assume it's their fault (a documentation-language and digital-literacy barrier no metric will surface), and how are we designing for users with arthritis, prosthetics, skin sensitivities, or conditions that make a wrist-worn form factor uncomfortable or impossible — and given that accelerating health-conscious behavior in adults 45–65 combined with growing wearable adoption in this cohort suggests a demand curve that will steepen over the next 3–5 years as the millennial cohort ages into the target demographic, does the product roadmap and clinical partnership strategy account for a substantially larger and more demographically heterogeneous addressable market in year 4–5 than at launch?
3. **The caregiver version (whose body, whose data)**: What if the wearable was worn not by the health-conscious 40-year-old but by their worried adult child — and it reported the parent's health status to someone else entirely? What assumptions about autonomy, consent, and who health data serves are embedded in the current design that would shatter under this inversion?
4. **The house, not the person**: Here's something absurd, but stay with me — what if the wearable was designed to monitor the *environment's* effect on the body rather than the body itself? It detects the room, the stress, the noise, the air — and the human is just the sensor. What would the ML pipeline look like if the anomaly you were detecting wasn't in the heartbeat but in the circumstance that produced it?

---

**Question count**: 4
**Cluster focus**: Whose bodies the device works for, who gets left out at every stage from training data to onboarding, and the structural-equity dimensions of access, validation, and physical wearability.

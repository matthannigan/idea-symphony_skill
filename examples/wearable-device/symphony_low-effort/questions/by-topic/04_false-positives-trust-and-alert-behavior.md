---
project-name: "On-Device ML Health Monitoring Wearable"
effort: "low"
stage: "Phase 2 Step 2.3: Question Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-7"
---

# Topic Cluster 04: False Positives, Trust, and Alert Behavior

## Questions

1. **False-positive rate as a design variable across alert fatigue, credibility decay, regime shifts, and the consumer-clinical accuracy gap**: Given target users are health-conscious adults 40+ with elevated cardiac anxiety, what false positive rate is operationally acceptable before alert fatigue causes users to disable notifications, how does the team plan to recover trust if learned dismissal becomes habitual before model accuracy improves, what governance process determines where the FP/FN dial is set across firmware/ML/legal/clinical (since erring toward sensitivity generates alert-fatigue and unnecessary-intervention liability while erring toward specificity generates missed-event liability in a population actively seeking detection), and do acceptable FP/FN rates for a consumer wellness device differ meaningfully from what those same users would accept under FDA clearance — given that calibration optimized for one regulatory regime may make the other harder to achieve?
2. **The 2 a.m. false-positive liability scenario**: Consider a 52-year-old user who receives a cardiac arrhythmia alert at 2 a.m., calls emergency services, and after a hospital visit learns it was a false positive caused by motion artifact during sleep — what does the liability exposure look like for a company that positioned itself as a consumer wellness device but whose alert phrasing the user interpreted as a clinical warning?
3. **Silent disengagement as the leading retention indicator**: People don't tell us when false positives are eroding their trust — they just stop wearing the device; false positives carry real psychological cost (unnecessary ER visits, heightened health anxiety, erosion of confidence) but users rarely report this explicitly and instead simply disengage; what mechanisms exist to surface that silent disengagement before it becomes a retention failure?
4. **Behavioral side-effects of continuous monitoring — hypervigilance and Shifting-the-Burden dependency**: For a device targeting users with family cardiac history, there's a well-documented pattern where people who monitor a health metric change their behavior in response to the monitoring itself (anxiety, hypervigilance, reassurance-seeking) — which of those responses are beneficial versus harmful to the clinical goals, and how should the system be designed to avoid a Shifting-the-Burden dynamic where users come to rely on the wearable as their primary cardiac awareness, skip other health check-ins because "the device would have caught it," and become less resilient when the device is lost, broken, or out of battery at the wrong moment?
5. **A false-positive governance practice rooted in user trust**: The team already holds real data about alert thresholds and their human consequences. What would a standing practice look like — a review cadence, a cross-functional forum, a design principle — that used those insights to keep false-positive rates low while honoring users' need for timely, meaningful signals rather than noise?
6. **The device is wrong about everything, and it knows it**: Imagine the wearable's anomaly detection model had a hard-coded rule that every alert must display a confidence interval alongside a plain-English statement like "I'm 40% sure about this and here's what I'm missing" — what would change about how users relate to health alerts, and what does this reveal about the dangerous gap between how ML systems present themselves and what they actually know? *The real insight: most health-tech hides model uncertainty because confidence sells, but surfacing uncertainty might be the only ethical path for devices that touch medical decisions.*
7. **The silent alert**: Imagine Marcus, 54, waking at 2 a.m. to a gentle haptic buzz on his wrist — the device has flagged an arrhythmia pattern it has never surfaced before. What is the complete narrative arc from that silent on-device inference to the moment Marcus decides whether to call a doctor, and how should the system design support every emotional beat of that journey without overwhelming him with raw data he cannot interpret?

---

**Question count**: 7
**Cluster focus**: How alert calibration, behavioral response, and liability exposure interact across the lifetime of device use.

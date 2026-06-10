---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "12_team-runway-and-conway-s-law-architecture"
persona: "The Constraint Flipper"
---

# Team, Runway, and Conway's-Law Architecture — The Constraint Flipper

## Q1: Resource allocation, scope-vs-runway, ML-team-scale, and team-boundary handoff risks

* **Constraint as clarity mechanism.** The "problem" of three ML engineers across two conditions is actually a gift—it forces ruthless prioritization. Instead of fragmented efforts on both arrhythmia and apnea with marginal ROI, lock the team into one clinically defensible use case (arrhythmia detection with PPG + accelerometer). This narrowing eliminates the fusion complexity tax, creates a single testing protocol, and gives you a credible FDA submission story. The limitation becomes your competitive advantage: "depth over breadth" is a stronger Series B narrative than "we tried both."

* **Conway's Law reversed: structure as architecture.** The seam between 3 ML and 4 firmware isn't a failure mode—it's an intentional boundary. Treat it like a system interface: define a tight contract (latency budget, inference I/O format, model update protocol) and let each side optimize independently. The handoff risk vanishes when both teams own the interface spec from week one. Cross-functional pairing sessions stop debugging "who dropped the ball" and start designing the ball's trajectory.

* **18 months as a forcing function.** With runway pressure, the team can't iterate infinitely. This cuts through analysis paralysis: build a working end-to-end prototype in months 1–4 (even if accuracy is 70%), then spend months 5–18 chasing the last 20% with real user data. The constraint of time forces shipped iteration over perfect planning, which actually accelerates you toward a defensible product faster than a well-funded team overthinking in labs.

* **Descoping as amplification.** Don't ask "what can we drop?" Ask "what if we hyperspecialize?" Drop the companion app fancy features (sync to family members, trend graphs)—keep only essential alert notifications and data export for clinicians. Redirect those 2 mobile engineers to firmware validation. The 14-engineer core team now has brutal focus; the limited scope makes every engineer's contribution visible and measurable.

* **Risk detection via coordination metrics.** The real leading indicator of failure isn't technical—it's communication breakdown. If firmware and ML teams are escalating design questions weekly, you're in trouble. If they're shipping against an agreed contract with zero escalations, you're winning even if accuracy is mediocre. Track handoff velocity and stakeholder alignment, not just model performance.

---

## Q2: The focused-sprint leverage—which cross-functional pairing unlocks the highest-leverage insight?

* **ML + Firmware: the battery budget arbitrage.** Pair one ML engineer with two firmware engineers for a two-week sprint focused on inference latency profiling on the actual NPU. The bottleneck isn't model size—it's how many times per hour you can run inference without draining the battery. This pairing models the exact tradeoff: smaller model = faster inference = lower power. After two weeks, you have a Pareto curve (accuracy vs. power) that kills all other debates. Every downstream decision (which sensor modalities, which conditions) hangs off this one curve.

* **Hardware + ML: thermal-power coupling.** The wearable's skin contact thermal management directly affects ML inference duty cycle and accuracy (skin temperature sensors drift with device heat). A hardware engineer and ML engineer spending two weeks mapping thermal loads, sensor placement, and model scheduling creates a non-obvious insight: yes, you're power-limited, but the *sequence* of inference (detect arrhythmia first, then request SpO2 confirmation) changes the thermal profile completely. This reordering might buy you 20% more battery with no new hardware.

* **Firmware + Mobile: sync protocol as the proxy.** Your HIPAA surface is actually the sync handshake. Pair a firmware engineer with a mobile engineer to design the on-device encryption, authentication, and incremental upload protocol in two weeks. This isn't just "security theater"—it's the architectural decision that either makes clinical partnerships possible (clean separation of alerts from raw data) or creates liability nightmares (data leakage via sync). The insight: the sync protocol *is* the regulatory moat. Build it right, and FDA reviewers see airtight privacy-by-design. Build it sloppy, and you're years away from clinical claims.

* **ML + Mobile: false-positive feedback loop.** Pair an ML engineer with a mobile engineer to design the alert confirmation / user feedback flow in the app. Sounds like feature work, but it's actually your data flywheel. When users dismiss a false alert, that becomes retraining signal for the on-device model (via periodic firmware updates). Two weeks of sprint should yield: a working feedback schema, a privacy-safe way to aggregate dismissals, and a retraining cadence that keeps the model fresh. The constraint (limited data from 12-person team testing) becomes your advantage—you're forced to design continuous learning from day one.

* **Entire core team: system architecture day.** Actually, skip team-specific pairings and instead run a one-day (not two-week) architecture simulation. Set a target battery life (e.g., 7 days with 10 arrhythmia checks/hour) and work backward: what model latency? What sensor fusion? What sync frequency? The exercise isn't to solve it—it's to *expose* where teams have conflicting assumptions. Two weeks later, each team independently tackles their piece knowing the full picture.

---

## Q3: 18 months as a scoping gift—which two or three ML inference capabilities validate the on-device approach most compellingly?

* **Single-condition mastery: arrhythmia detection as proof-of-concept.** Focus exclusively on detecting irregular heart rhythms from PPG + accelerometer. This is the condition with the highest clinical relevance (sudden cardiac events are the fear), the clearest user value (early warning before syncope), and the most tractable ML problem (rhythm detection has decades of clinical precedent). Eighteen months is enough to achieve 95%+ sensitivity and <5% false positive rate with rigorous validation on diverse populations. A clinically defensible single-condition product (with an FDA 510(k) pathway visible) is worth 10x more to Series B investors than a "beta two-condition wearable with research limitations."

* **Sensor fusion as the differentiator, not both conditions.** Don't split effort on two conditions. Instead, pick *one* condition (arrhythmia) and spend months 5–18 perfecting multi-modal fusion: PPG → rhythm candidate, then cross-check with accelerometer motion artifact, then confirm with skin temperature and breathing patterns (from mic) for physiological plausibility. This requires three ML engineers building a tightly coupled Bayesian or attention-based fusion model. The result: a single inference pipeline so robust that clinical partners trust it. This is your Series B story: "We built a fusion model so precise it catches arrhythmias 95% of physicians would miss."

* **Apnea detection as the lightweight second use case.** If arrhythmia validation is solid by month 10, add apnea detection as a second, lightweight capability: just microphone + accelerometer, no PPG cross-check. It's lower-risk because apnea is slower-moving (you have hours, not seconds, to detect it), so inference can be less frequent and less power-hungry. By month 18, you have two validated conditions, but they have asymmetric development: arrhythmia is bulletproof; apnea is "good enough for consumer wellness." This mix actually strengthens your narrative: "We've proven the arrhythmia use case clinically. Apnea is our extensibility engine." Investors see both depth and scalability.

* **Thermal resilience as the implicit third capability.** Don't count this as a third use case, but spend 2–3 months building a meta-model: on-device self-calibration that detects when sensor drift (due to device heating, sweat, skin variability) is degrading inference accuracy, then automatically adjusts thresholds or requests recalibration. This turns a constraint (devices drift in the wild) into a capability (self-healing inference). By month 18, you ship an arrhythmia detector that *knows* when it's uncertain and flags retraining windows. Regulators love this—it's evidence that the system is honest about its limitations.

* **The portfolio approach: depth + breadth positioning.** Spend months 1–12 building the most clinically rigorous arrhythmia detector on the market (deep, single-condition focus). Spend months 12–18 showing extensibility: a sketch of apnea detection, a prototype of seizure risk screening (for wearables placed on wrist during sleep), maybe even a sleep-quality classifier. You won't ship these, but you *show* them. Series B investors see: "This team can build one thing brilliantly and extend it." The constraint of 18 months + 12 engineers actually protects you—you're forced to show taste, not clutter the product roadmap. Narrowness is the gift.

---

**Total: 13 distinct responses across 3 questions (4 + 5 + 4)**
**Frontmatter validation:** all fields completed per session structure


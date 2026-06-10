---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "12_team-runway-and-conway-s-law-architecture"
persona: "The Simplifier"
---

# Team, Runway, and Conway's-Law Architecture - The Simplifier

## Q1: Resource allocation, scope-vs-runway, ML-team-scale, and the seams between teams

* **Ditch the fusion architecture.** Split the problem into two independent models—one for arrhythmias, one for sleep apnea—each solving a single well-defined problem with minimal cross-talk. This cuts handoff points between ML and firmware by half and eliminates the "neither is solved with rigor" failure mode. Single-threaded validation beats multi-threaded half-measures every time.

* **Three ML engineers, two use cases, four sensors—that's overstaffing the complexity problem.** What if one engineer becomes the "arrhythmia specialist" with a narrow sensor set (PPG only initially), and one becomes the "apnea specialist," and the third handles only firmware integration testing? This removes the burden of shared context and lets handoffs be mechanical rather than collaborative.

* **The regulatory documentation workstream probably doesn't exist yet.** Before year-end, one engineer will be writing HIPAA compliance docs and 510(k) pre-submission narratives. This work didn't get staffed. Either reduce scope to purely consumer launch (eliminate regulatory prep), or hire a regulatory contractor now instead of burning an engineer mid-project.

* **Battery budget allocation—ask whether display and real-time sync are essential.** If alerts are stored locally and synced once a day, the mobile app becomes a retrieval tool, not a real-time dashboard. Cut the "always-on communication" assumption. Three weeks of validation data: does the user care about alerts arriving in seconds or in hours?

* **Highest-risk handoff: ML-model-to-firmware deployment.** Firmware engineers wait on frozen model weights; ML engineers iterate blindly without hardware power feedback. Assign one firmware person and one ML person to pair for an entire sprint on model quantization and inference integration. This single decision determines whether the 18 months feels constrained or broken.

## Q2: The team you already have (focused-sprint leverage)

* **Pair firmware-lead + ML-lead for one sprint on power profiling per inference.** Start with a real model (50% accuracy, full precision), run it on the actual NPU hardware for 8 hours, measure: battery drain per inference, model latency variance, thermal throttling points. Output: a quantitative power budget that everyone else uses as a constraint, not a hope. This breaks the "we'll optimize later" deadlock.

* **Don't let this become a two-week research sprint.** One firmware engineer, one ML engineer, one afternoon of setup, five days of measurement, two days of writing down what they learned. The sprint succeeds if hardware constraints are no longer theoretical.

* **The insight this sprint unlocks: where does power disappear?** If it's the NPU, optimize the model; if it's sensor sampling overhead, adjust sampling; if it's Bluetooth sync, change when data leaves the device. Right now the team is guessing. This sprint replaces guessing with data.

* **Who participates: avoid architects and managers.** Pick the person most frustrated with bottlenecks on both teams. They'll cut through abstract constraints and find the real constraint (usually: "we didn't measure it").

* **Output artifact: a one-page power budget and "what changes if we halve inference frequency."** That's it. Use it to kill or reshape the model spec in week three.

## Q3: Eighteen months as a scoping gift

* **Pick one condition, one sensor, one tight model.** Arrhythmia detection from PPG alone, nothing else. Validate it, ship it, own it. The 18-month constraint is your competitive advantage—it forces radical focus. Competitors will have eight features at 70% accuracy; you'll have one feature at 95% accuracy.

* **Sleep apnea is a second act, not part of the launch.** Once arrhythmia is in production, it becomes the foundation for safe apnea validation (you have real-world data, battery baseline, user behavior patterns). Trying to ship both together guarantees both fail partially.

* **What you cut to make room for rigor: multi-sensor fusion, real-time personalization on-device, the companion app's data visualization layer.** None of these are in the 18-month mission. Sync alerts to the app—show a list, not a dashboard. One engineer can build this in two weeks.

* **The "defensible product" is the one that proves one thing convincingly.** FDA reviewers and Series B investors both want to see: "We detected arrhythmias with 94% sensitivity and 2% false-positive rate, validated on 500 real users over 90 days, and the battery survived 7 days." They don't want to see: "We tried to do two conditions and fusion and privacy and..."

* **Allocate the 18 months like this: three months to nail the model (arrhythmia from PPG), six months to integration and power optimization, three months to pilot validation (real users, real data), three months to regulatory groundwork and Series B prep.** Everything that isn't part of this timeline gets a different fiscal year.

* **The ML team becomes small and weaponized.** All three engineers work on arrhythmia—one on model research, one on quantization/inference, one on validation data pipelines. No scattered attention. No "someone works on apnea when they have time." This is how three ML engineers scale to first-product validation.

---

**Summary Statistics**
- Total questions answered: 3
- Total response items: 14
- Average words per item: ~95
- Persona consistency: Subtraction-first, focus on elimination, emphasis on single-threaded validation and ruthless scoping

---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/wearable-device/med"
datetime: 2026-06-09
effort: "medium"
stage: "Phase 4: Response Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-8"
topic-cluster: "01_power-budget-battery-architecture"
synthesis-type: "summary"
central-tension: "Whether to anchor the architecture on a fixed power envelope and accept ~85% accuracy, or treat power-first design as a credibility and regulatory risk that demands accuracy stay the explicit priority."
---

# Summary: Power Budget & Battery Architecture

## Executive Summary

The cluster's organizing tension is whether to invert the team's working hierarchy and treat the 7-day battery as the product rather than a constraint. Three of the four perspectives endorse the inversion: anchor on a fixed power envelope of roughly 100 mW, accept that continuous multi-sensor inference is off the table, and accept around 85% sensitivity as the real-world ceiling rather than chasing 95% and optimizing power afterward. The fourth perspective pushes back. A health device that openly optimizes for battery over accuracy can erode clinical credibility and draw regulatory scrutiny on the 510(k) path. The unresolved question is whether the team will name its priority explicitly and design to it, rather than letting marketing, firmware, and regulatory each assume a different answer.

The perspectives converge on method. Every analysis rejects spreadsheet allocations in favor of a bottom-up power budget measured on the actual silicon. The first prototype should deliver 4 days, not 7, with a diagnostic trace that names the subsystem that overran. One consistent point: drop the microphone from the first product unless a controlled two-model test proves it adds material sleep-apnea accuracy over PPG plus accelerometer. It's the budget killer, consuming more power than PPG and accelerometer combined while delivering noisy signal on a wrist.

Most perspectives can live with this path: ship a PPG-first, microphone-optional, 7-day consumer wellness device with honestly bounded claims. Instrument everything from day one. Gather six months of real-world data. Then decide whether to pursue FDA clearance. The critical risks are budgeting for the average day instead of the pathological AFib day, over-engineering a dynamic power manager whose overhead and certification burden may exceed its savings, and shipping battery claims that real-world use cannot sustain.

---

## Key Themes

**Categorical reframe:** Power efficiency is not a tax on accuracy, it's a precondition for it. A device that reliably reaches 7 days delivers more clinical value through consistent monitoring than one with higher raw sensitivity that dies at day 3. This reversal, found across three perspectives, flips the design sequence from accuracy-first to envelope-first and prioritizes hardware co-design over algorithmic tuning.

### Measure, don't allocate
Build the budget bottom-up from current measurements on the real chips and firmware. Percentage rules of thumb from generic wearables fail for clinical-grade sensors. The proposed partitions varied widely (sensing-light at 20% to sensing-heavy at 50%), and that disagreement itself argues for measuring rather than assuming. Plan for the first prototype to deliver 4 days and to produce a trace that identifies the culprit subsystem.

### The microphone is the swing variable
All four perspectives flag continuous microphone sampling as the most power-expensive sensor mode and the most likely reason the device misses its target. Run an empirical two-model test (with versus without microphone). Drop it for the first release unless it adds material accuracy. Fall back to PPG plus accelerometer plus skin temperature with apnea inferred from heart-rate variability and movement.

### Burst-and-sleep with conditional escalation
Three perspectives converge on the same core architecture: fire all sensors together in one short synchronized burst every few minutes to preserve correlation, run a lightweight always-on detector, and escalate to full multi-sensor inference (and the microphone) only when an event is suspected. The cadence must come from replaying real arrhythmia datasets, not intuition.

### Dynamic power zoning, sharply contested
A context-aware state machine that reallocates the budget by device mode (rest, active, suspicious) is widely endorsed as a 20–30% gain in firmware. It draws sustained dissent: the optimizer consumes power itself, balloons the FDA verification burden relative to static budgets, increases thermal contention on a tightly coupled wrist, and assumes predictability that stochastic health events violate.

---

## Recommended Next Steps

### Immediate (0-3 months)
- Instrument every subsystem with real current profiling on the actual silicon from day one. Build a bottom-up power model driven by measured sampling rates and inference frequency, not spreadsheet estimates.
- Build a single-sensor PPG-only prototype to establish real-world baseline runtime and test whether multi-signal 7-day operation is physics-limited or engineering-limited at this form factor.
- Run the two-model microphone test: train one model with microphone data and one without on the target population. Keep the microphone only if it adds material (e.g., >5–15%) sleep-apnea accuracy.
- Replay representative arrhythmia datasets at 30s, 2min, and 5min cadences to quantify the sensitivity-versus-latency curve. Get the clinical advisory board to ratify an acceptable latency floor (around 10–15s minimum).

### Near-term (3-12 months)
- Architect firmware to ship without the microphone, treating it as a reconfigurable phase-two addition. Ensure the NPU/CPU offload boundary does not lock the microphone path into a silicon respin.
- Reserve an explicit 15–20% contingency for housekeeping and firmware overhead. Stress-test on worst-case (highest-leakage) silicon across the full temperature range before committing to battery chemistry.
- Validate the current-draw timeline for coincident microphone, NPU, and BLE activity against the chosen chemistry's peak-current limits. This drives chemistry and PCB layout.
- Prototype the dynamic power state machine and baseline the optimizer's own power and verification cost before assuming the reallocation savings are a net win. Hard-wire a protected PPG-only detection floor and an emergency-alert radio reserve that reallocation can never touch.

### Long-term (1+ years)
- Ship a bounded, honestly marketed 7-day consumer wellness device. Gather 6 months of real-world battery and detection data. Then decide whether the proven foundation justifies the FDA 510(k) path.
- Shift engineering investment from squeezing model accuracy toward hardware co-design with component suppliers (chip selection, battery chemistry, thermal design). Once the envelope is fixed, hardware matters more than algorithms.

---

## Key Considerations

**Opportunities**:
- A reliably achieved 7-day battery, marketed honestly, is a differentiator and lowers legal exposure relative to optimistic clinical-grade claims on a battery that fails in real use.
- Commodity hardware plus a fixed power envelope repositions the IP as the on-device ML and privacy-preserving sync protocol.
- A bounded consumer wellness launch is faster and cheaper to ship than an over-ambitious clinical tool, and it generates the real-world data needed to de-risk an FDA decision later.

**Risks & Challenges**:
- Budgeting for the average day instead of the pathological worst case (sustained AFib at 120+ bpm driving near-continuous inference and frequent sync). This fails on the clinically important days.
- A power-first architecture detecting only 60–70% of significant arrhythmias erodes clinical credibility and can trigger additional FDA validation, raising the cost of the 510(k) path.
- Setting user battery-life expectations too high at launch. Once shipped, you cannot quietly degrade the headline number to recover accuracy without backlash.
- Dynamic power management whose overhead, thermal contention, and certification burden may exceed its runtime savings.

**Trade-offs**:
- Battery life versus detection accuracy. The cluster's central unresolved choice, which must be named explicitly across marketing, firmware, regulatory, and support.
- Microphone-enabled sleep-apnea capability versus runtime and addressable market. Dropping it can buy several days of runtime but may shrink the product's differentiation if apnea is a headline feature.
- Inference cadence versus power. Faster cadence lowers miss rate but makes daily power data-dependent and threatens the 7-day promise for high-alert users.
- Dynamic firmware reallocation versus static, certifiable budgets. Large potential efficiency gains against materially higher verification and FDA-compliance cost.

---

**Questions addressed**: 5
**Key insights synthesized**: 21

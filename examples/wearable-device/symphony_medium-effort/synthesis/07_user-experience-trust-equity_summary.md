---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/wearable-device/med"
datetime: 2026-06-09
effort: "medium"
stage: "Phase 4: Response Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-8"
topic-cluster: "07_user-experience-trust-equity"
synthesis-type: "summary"
central-tension: "The choices that make the device technically impressive (high sensitivity, a 7-day battery, an app-centered architecture) are the same choices that erode the trust of an anxious, low-fluency, often-excluded user base."
---

# Summary: User Experience, Trust & Equity

## Executive Summary

The organizing tension across this cluster is that the choices making the device technically impressive are the same choices that quietly erode trust with the people it is meant to serve. The target user is not a health-conscious early adopter but an anxious 40+ adult carrying inherited cardiac risk, often with low digital fluency and a history of having concerns dismissed. For that user, maximal sensitivity produces alert fatigue, a 7-day battery becomes a weekly churn cliff, and an app-centered architecture excludes anyone on an older phone, a prepaid plan, or a shared device. All four perspectives flagged this concern.

The strongest convergent finding reorders the team's likely priorities: a low false-positive rate matters more than maximally-early detection. One correct, actionable alert that a doctor validates produces the "this saved my life" gratitude the project is aiming for. A stream of mostly-benign alerts trains the user to ignore the device, and the one real event then sits unread for days. The counsel is to launch conservative (accept more false negatives), add tiered alerting and confidence scores, publish a target false-alert rate, and raise sensitivity only as the model matures.

Trust itself was reframed as something earned in the mundane rather than declared through privacy documentation. Granular consent screens are theater. The at-risk user clicks "accept all" without reading. What builds trust is repeated low-risk reliability, plain-language honesty about what the device does and does not do, and consent surfaced in the usage flow at the moment it matters. A tiered sharing ladder that lets a burned skeptic start at "device only" without losing the product was a recurring concrete mechanism.

Two equity findings were treated as non-negotiable, pre-launch gates rather than backlog items: PPG accuracy varies with skin tone and must be validated across the Fitzpatrick scale with published per-tone criteria, and accessibility for wrist size and motor dexterity (arthritis, charging, screen taps) must inform hardware before design locks. Deferring either risks accuracy and signals to excluded populations that they were never considered.

Finally, the cluster surfaced a latent product reframe with real strategic weight: positioning the device around cultivating felt understanding of one's own rhythms rather than catching anomalies. It is buildable on the same sensors and changes the emotional frame from anxiety to curiosity, but steps outside detection-based regulatory guardrails, making it a v2/beta track rather than a v1 pivot.

---

## Key Themes

A categorical reframe survived the load-bearing test and reorganizes the cluster: **the metric that produces "this device saved my life" gratitude is alert precision, not detection earliness, so the team should deliberately trade sensitivity for trust at launch.** This reverses the implicit priority in the brief and changes which engineering targets matter most.

### Trust is earned in the mundane, not declared in documentation
Across every question, the at-risk user does not read consent screens, does not trust privacy guarantees, and does not respond to "your metrics are normal." Trust builds from small reliabilities, plain honesty ("we won't study you, sell you, surveil you"), consent surfaced at the point of use, and a tiered sharing ladder that makes "device only" a respectable choice.

### Anxiety is the baseline, and the device can amplify or contain it
The dominant entry state is anxious vigilance, so feedback design either contains the user's anxiety or amplifies it. The recurring fixes are conservative first-week defaults, a "demonstrate value then deepen access" onboarding ramp, recognition over reassurance, and the right to dial the relationship with health data down, not just up.

### Equity failures are designed in by deferral
PPG skin-tone accuracy and physical/sensory accessibility were treated as pre-launch gates, not future work. Deferring them is the failure, because retrofitting arrives after the message ("those bodies didn't matter") has already landed.

### The hostile wearable is the path of least resistance
The team's reasonable engineering defaults (one battery target, app-as-hub, high sensitivity, cloud-tuned thresholds) compound into a device users abandon by month six. A friction audit of the user journey can counter this.

### From detection to meaning
A consistent latent reframe positions the product around felt understanding of one's own rhythms rather than anomaly detection. It's buildable on the same hardware and emotionally healthier, but regulatorily riskier, and best explored as a parallel track.

---

## Recommended Next Steps

### Immediate (0-3 months)
- Recruit and run usability and consent-comprehension testing with actual 40+ cardiac-history users at real (not aspirational) literacy levels, including a "verify understanding" exercise, before locking onboarding.
- Set a published target false-alert rate (e.g., under one per user per month) and re-tune the model toward lower sensitivity and fewer false alerts for launch, with a roadmap to raise sensitivity as accuracy improves.
- Add PPG skin-tone accuracy and motor-dexterity/wrist-size accessibility to launch milestone criteria as explicit pass/fail gates, with cohorts spanning Fitzpatrick 3-6 and documented motor limitations.

### Near-term (3-12 months)
- Build standalone device value: an on-device dashboard (resting HR, sleep score, weekly trend) plus device-side critical alerts, so the companion app enhances rather than gates.
- Design the 2am alert flow as silent logging with contextualized confidence and a one-tap morning "send to doctor" template. Partner with cardiologists to define actionable thresholds and the operational meaning of "early."
- Implement the tiered consent/sharing ladder and an offline secure-link (QR) sharing mechanism for cardiologist-only and spouse-only scenarios, including shared-device authentication.
- Replace metric dumps with narrative weekly summaries delivered as a consistent ritual. Let users preview and approve what leaves the device.

### Long-term (1+ years)
- Freeze and publish a data-sync contract, requiring explicit re-consent before any scope expansion and quarterly re-permission prompts.
- Commit to and publish annual model recalibration, battery-degradation curves, and an in-app data-health report. Lock clinical validation and ecosystem partnerships to sustain three-year trust.
- Prototype the "rhythm / felt understanding" reframe as a v2/beta track with on-device personalization and annotation. Engage regulatory experts before making any non-detection claims.

---

## Key Considerations

**Opportunities**:
- A precision-first, conservative-launch posture can become the brand's differentiator in a market saturated with alert-happy wearables.
- A tiered, in-flow consent and sharing model can win the skeptical, dismissed, lower-fluency users most at risk for undetected arrhythmia, exactly the underserved core market.
- The same sensors and models support a "cultivate felt understanding of your rhythms" product that reframes the experience from anxiety to curiosity and opens a wellness category beyond detection.

**Risks & Challenges**:
- Alert fatigue from high sensitivity is the single most-cited failure mode: it trains users to ignore the one real event and is permanent once trust breaks.
- Deferred skin-tone and accessibility testing creates equity gaps, liability, churn, and a reputational signal that excluded populations were an afterthought.
- The "early detection may save lives" claim cannot be validated without outcome data the device never sees, and an over-confident accuracy impression invites lawsuits when the device misses.
- Data-sync scope creep can silently convert a privacy product into a surveillance one without users noticing.

**Trade-offs**:
- Sensitivity vs. trust: catching every event maximizes detection but generates the false-alarm flood that destroys trust. The cluster favors trust.
- Technical impressiveness vs. user retention: a 7-day battery, app-centered sync, and high sensitivity look strong on a spec sheet but compound into abandonment.
- Detection-based regulatory clarity vs. a meaning/rhythm reframe: the reframe is emotionally healthier and buildable but steps outside the detection guardrails that provide liability cover.
- Real-time symbiotic feedback vs. compulsion risk: tighter loops deepen self-knowledge but can breed obsessive tracking. This argues for deliberate weekly friction.

---

**Questions addressed**: 9
**Key insights synthesized**: 39

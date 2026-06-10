---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "08_false-positive-false-negative-tradeoffs-and-liability"
persona: "The Provocateur"
---

# False-Positive / False-Negative Tradeoffs and Liability - The Provocateur

## Q1: The threshold with no safe harbor

* **Summary: Reverse the optimization entirely.** What if you *inverted* the cost-asymmetry assumption and made false positives catastrophically expensive (users must perform a 20-minute clinical verification ritual before any alert fires) while accepting false negatives as a natural tax of conservative calibration? The real insight: liability concerns presume the device can't *educate* users into accepting a narrower alert band. What if transparency about uncertainty—"we're 73% confident, not diagnosing"—actually provides better legal protection than trying to hide uncertainty behind a single crisp threshold?

* **Summary: Design for alert-ignorance, not alert-compliance.** Imagine the device fires alerts that are *intentionally obscure*—phrased as "anomalous pattern detected, discuss with your cardiologist" rather than triggering any immediate action response. The real insight: the death-spiral happens because users treat alerts as imperative commands. What if you repositioned alerts as *data artifacts for discussion*, not directives, flipping who bears the decision-making burden (user + doctor, not device + legal team)?

* **Summary: Threshold as a time-series, not a fixed number.** What if the threshold *drifted unpredictably* each week based on aggregate user cohort data (a collective calibration) rather than staying constant? The real insight: a fixed threshold feels scientifically precise but is actually arbitrary. A dynamic, transparent, publicly-auditable threshold might distribute liability across the community rather than concentrating it on the startup—and force users to engage with uncertainty as an evolving property, not a solved problem.

* **Summary: Threshold credentialing tiers per condition.** What if you calibrated different thresholds for arrhythmias vs. sleep apnea, and made each threshold *conditional on user history* (high family risk → higher sensitivity even if more false positives locally, since the user is self-selecting into that band)? The real insight: the framing "one threshold for all users" is marketing fiction anyway. Personalized thresholds are more defensible because they acknowledge the user's own risk tolerance entered explicitly into the device's decision logic.

* **Summary: Accept threshold drift as a known liability surface.** What if the operating manual explicitly stated: "This threshold is calibrated at launch and will measurably degrade by ~3% annually as user physiology changes. We will publish monthly calibration reports. Misses are expected."? The real insight: the safest legal position is *anticipated transparency*, not perfection claims. Users who've been explicitly warned about degradation and given tools to detect it are less likely to pursue negligence claims than users who believed the device was stable.

---

## Q2: False-negative invisibility, slow degradation, and calibrating urgency

* **Summary: Invert detection into prediction—predict when the device will fail you.** What if the device maintained a *ghost model* running in parallel that deliberately used an opposite threshold (catching what the main model ignores) and periodically whispered to the user: "There's a 12% chance I missed an arrhythmia last night that this alternative calibration would have caught"? The real insight: false negatives are invisible because there's only one model voice. A dual-model architecture (conservative and liberal) makes miss-risk visible and gives users agency to switch bands during high-risk periods.

* **Summary: Emit degradation alerts, not health alerts.** What if the device sent a monthly report structured as: "Your sensor array confidence has drifted to 84% (from 91% three months ago). Recommend recalibration by wearing the device during your known arrhythmia triggers."? The real insight: you're not trying to diagnose the user; you're trying to diagnose the *device*. Shifting to device-health language removes the medical claim but preserves user agency to notice and act.

* **Summary: Surface confidence intervals, not binary alerts.** What if every alert came with a confidence range: "Possible arrhythmia (34–67% confidence) vs. Normal (33–66% confidence)"—the ranges overlapping intentionally? The real insight: the "urgency gradient" you're asking about can't exist as a single number. Showing the actual decision boundary (where evidence is weakest) lets users calibrate their own urgency *because they understand the ambiguity*, rather than trusting a black-box severity flag.

* **Summary: Gamify device-health feedback.** What if the companion app included a mini-game where users predict what the device will detect over the next week, and then see calibration accuracy? The real insight: behavioral feedback flows back *in real time* through a game loop, so device degradation shows up in "your prediction accuracy fell 3 points" rather than burying it in a health report no one reads.

* **Summary: Build a false-negative audit trail into the consumer wellness phase.** What if you partnered with users willing to share their ECG (medical gold standard) for 2–4 weeks annually, and published annual transparency reports: "At our launch threshold, we missed 2 arrhythmias per 10,000 user-weeks of wear"? The real insight: direct measurement of miss rates from a self-selected cohort is better than statistical modeling, feeds the eventual clinical dataset, and transforms false negatives from an invisible scare into a public, auditable constraint users can trust because it's measured, not claimed.

---

## Q3: The false-positive win—designing toward best outcome

* **Summary: Flip the narrative from "alert avoidance" to "narrative creation."** What if the ideal alert experience was designed *backward* from the user's story 12 months later: "My device alerted me to a subtle pattern, I mentioned it to my doctor during a routine visit, and it turned out I had early atrial fibrillation that treatment has since controlled"? The real insight: you're not optimizing for alert accuracy; you're optimizing for *serendipitous discovery*. That means the threshold should favor sensitivity (more false positives) because the user's doctor will filter; the notification should be *rich with context* (time of day, activity, trend), not alarming; and follow-up should be conversational ("want to share this with a doctor?"), not urgent.

* **Summary: Design the alert as the start of a diagnostic conversation, not the end of one.** What if the notification opened directly into a capture flow where the user records context: "What were you doing? How did you feel? Any stressors?" This crowd-sourced context becomes the artifact shared with care providers. The real insight: a well-designed false positive becomes a *training example* the user co-creates, giving them investment in the device's accuracy and transforming the alert from "something went wrong" into "let's figure this out together."

* **Summary: Gamify alert follow-through, not alert avoidance.** What if receiving an alert that you then verified (via a doctor visit or ECG) earned you a milestone: "Verified Alert—you caught something real"? Or a follow-up 6 weeks later: "That alert led to treatment, and your sleep quality improved 12%"? The real insight: the best outcome isn't the alert firing; it's the user *trusting the alert enough to act*. Closing that feedback loop makes the alert experience satisfying rather than anxiety-inducing.

* **Summary: Acknowledge that the "best outcome" is rare and make rarity the design feature.** What if the device was *intentionally* conservative, firing only 2–3 alerts per year (very high specificity), each one treated as a significant event worth investigating together with a healthcare provider? The real insight: alert fatigue is real, so designing for *signal not noise* means accepting that true positive events are rare *and worth all the ceremony of a real clinical conversation*. Scarcity makes urgency credible.

---

## Q4: Credentialing systems and the false-positive liability surface

* **Summary: Invent a "health signal guild" system where alerts are certified by tiers.** What if the device emitted three tiers: (1) "Pattern detected—confidence 45%, note it" (no credentialing needed, purely observational); (2) "Anomaly cluster—confidence 78%, discuss with your doctor" (requires the device to link to a vetted cardiologist directory for easy referral); (3) "Clinical-grade alert—confidence 96%, seek care today" (only fired after the 510(k) clearance, requires direct integration with EHR systems)? The real insight: credentialing isn't a single threshold; it's a *liability segregation system*. Each tier has different stakeholders (patient, doctor, system), so the startup only claims authority for tier 1, doctors mediate tier 2, and the regulated clinical system owns tier 3.

* **Summary: Flip credentialing to patient agency, not institutional authority.** What if users could *select* which credentialing tier they were enrolled in—wellness mode (conservative, lots of false positives) vs. diagnostic mode (higher sensitivity, accepts uncertainty)—and this choice was logged as informed consent? The real insight: the legal liability shifts when users actively choose their tradeoff. You're not deciding the threshold for them; you're offering a menu of thresholds and asking them which risks they want to carry.

* **Summary: Build a "second opinion" system where cardiologists can override or re-weight alerts.** What if a partnered cardiologist could log in and re-classify alerts retroactively ("that was actually a false positive—your algorithm should note this"), creating a feedback loop that calibrates the device per doctor and per patient cohort? The real insight: credentialing through *partnership* rather than independence separates the liability—the startup builds the signal, the credentialed doctor builds the interpretation, and the liability is distributed across the chain of custody.

* **Summary: Tier alerts by reversibility of action.** What if tier 1 alerts ("mention to your doctor") required no liability because the user isn't being asked to do anything; tier 2 ("seek care in 48 hours") required cardiologist partnership because it's requesting non-emergency care; and tier 3 ("call 911") was simply forbidden at the consumer wellness level? The real insight: the liability surface shrinks dramatically when you only claim authority over actions you're equipped to support. You can't credentialize an emergency response, so don't try—that's 911's job.

---

## Q5: Calibrated deception—the 48-hour cool-down

* **Summary: Imagine the device is actually *delaying* alerts to reduce anxiety-driven false positives.** What if it held alerts for 48 hours, then only fired if the anomaly re-confirmed, and it turned out false alarm anxiety disappeared *because the anomaly usually resolved naturally*? The real insight: you're not deceiving the user; you're filtering noise. The question isn't "should we delay?" but "how much delay is medically safe?" A 48-hour hold might be ideal for arrhythmia pattern detection but catastrophic for sleep apnea events. The design principle is *condition-specific delay*, not blanket delay.

* **Summary: Flip the delay into a learning period.** What if those 48 hours were *active learning*—the device sends you a low-urgency notification ("we noticed a pattern; we're watching for confirmation") and asks you to log any symptoms? Then if the pattern re-confirms with correlated symptom reports, the alert fires as high-confidence? The real insight: the cool-down isn't deception; it's collaborative evidence-building. The user becomes a co-detector, and the delayed alert is stronger for it.

* **Summary: Calibrate delay by personalized event history.** What if users with a long history of false alarms (or anxiety-driven clinic visits following alerts) got automatic 72-hour delays, while users with strong family history got 12-hour delays? The real insight: the delay is a *personalized confidence adjustment*, not a deception. You're transparently saying: "For you, based on your pattern, we wait longer before surfacing ambiguous signals."

---

## Q6: Designed failure mode—the 1% catastrophic error

* **Summary: Build intentional blind spots that you disclose and map.** What if the device was *deliberately* insensitive to one class of arrhythmia (say, bradycardia below 35 BPM) and you published that explicitly: "This device cannot detect or will miss very slow heart rates. If you have a history of bradycardia, consult your doctor about monitoring alternatives"? The real insight: the trust paradox is real—claiming near-perfection is less credible than admitting specific limits. A device that says "we're great at detecting x, we're weak at y" is more trustworthy than one claiming universal excellence because it sounds like someone actually tested it.

* **Summary: Make the 1% catastrophic error predictable by context.** What if the device had a known failure mode that it could *predict*: "During intense exercise, our confidence drops to 75% due to motion artifacts. Do not rely on alerts during or immediately after workouts"? The real insight: users trust systems more when they understand the boundary conditions. The failure becomes a *known risk they can manage*, not a hidden landmine.

* **Summary: Transparently randomize low-confidence alerts as a calibration tool.** What if 1% of low-confidence detections (below 60% threshold) were *randomly suppressed*, and the user was told: "Some ambiguous patterns are intentionally withheld to see how often they resolve on their own"? The real insight: you're doing natural experiments on your own user base, which is ethically fraught but honest. Users who understand they're in a calibration study trust the results more than those who think every alert is real.

---

## Q7: False-positive tolerance as a calibration advantage

* **Summary: Treat consumer false positives as a labeled dataset you'll eventually monetize (carefully).** What if you positioned the wellness device as a *data collection phase* for the eventual clinical device, and set the threshold to generate 5–10x more false positives than clinical spec? The real insight: false positives aren't bugs; they're training examples. You're collecting edge cases and borderline signals that no IRB-approved clinical trial could ethically collect, building a richer corpus than competitors have. This is legally defensible if you're transparent about the trade-off to consumers.

* **Summary: Invert the usual progression—start with high sensitivity in wellness, then narrow in clinical.** What if you *intentionally* designed the consumer device to be more aggressive (more false positives), marketed it explicitly as "detection-focused, not diagnosis-focused," collected massive amounts of feedback about where the boundaries actually are in real-world conditions, and then used that data to calibrate the clinical device to much higher specificity? The real insight: the regulatory path is usually *narrow from the start* (conservative, FDA-ready), but you could do the opposite—*broad early, narrow later*—and end up with a clinically superior model because you learned where the hard cases live.

* **Summary: Design the consumer phase as a participatory calibration study.** What if wellness-phase users were explicitly enrolled in a "help us calibrate" program, with gamified feedback ("you've contributed 47 confirmed events, 23 false alarms, 5 edge cases")? The real insight: users who know they're contributing to a research effort are less likely to distrust false positives and more likely to provide the rich feedback (context, outcome, action taken) that you need to build the clinical model. The false positives stop being failures and become the primary research input.

---

**Total questions**: 7  
**Total responses**: 35  
**Response distribution**: Q1 (5), Q2 (5), Q3 (4), Q4 (4), Q5 (3), Q6 (3), Q7 (3)

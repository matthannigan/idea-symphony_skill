---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/min"
datetime: 2026-04-28
effort: "min"
stage: "Phase 3: Generic Brainstorming"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
topic-cluster: "04_regulatory-strategy-and-clinical-pathway"
---

# Brainstorming Responses: Regulatory Strategy and Clinical Pathway

---

## Question 13: Consumer Wellness vs. Clinical Claims Differentiation

* **Establish a concrete "forbidden phrase" list and make it a design gate.** Maintain a short, living document of specific phrases that FDA has historically treated as implied medical claims — "detects atrial fibrillation," "clinically validated," "monitors heart health for diagnosis" — and treat it as a literal gate in your PR review and copy-approval flow. Require sign-off from a regulatory consultant on any outward-facing string that mentions the heart, arrhythmia, or apnea before it ships. Because the ML team will naturally describe model performance in clinical terms (sensitivity, specificity, PPV), create a translation layer: what the team measures internally versus what the product communicates externally are governed by separate vocabularies.

* **Reframe all user-facing output as "patterns" and "insights," never "conditions."** The companion app should surface results in language that describes observation rather than diagnosis: "Your heart rhythm showed an irregular pattern 3 times last night" rather than "Possible AFib detected." This isn't just wordsmithing — it reflects the actual epistemic state of a consumer wellness device without FDA clearance. Map every alert type to an approved phrasing template reviewed by counsel, and lock those templates so ML model updates cannot change the phrasing without a separate review step.

* **Run a cross-functional "claim audit" before each release, with the ML team present.** The friction point is that ML engineers describe their work in clinical terms for good reason — those are the terms the literature uses — but that framing bleeds into product decisions invisibly. A quarterly or pre-release working session where firmware, ML, mobile, and a regulatory advisor review every new metric, alert, and UI string together surfaces problems before they ship. The goal is not to police language but to build shared understanding of which framing choices carry regulatory risk so the ML team can self-edit upstream.

* **Design the alert UX around a "you may want to discuss this with your doctor" call-to-action, not a diagnosis.** Every alert should terminate in a referral nudge rather than a conclusion. This creates a defensible UX posture — the device observed something; a clinician interprets it — and aligns incentives: if the device consistently routes users to clinical follow-up rather than attempting to close the loop itself, it is behaviorally distinct from a diagnostic device even if the underlying model is highly accurate.

---

## Question 14: 510(k) Predicate and Design History

* **Start a Design History File on day one, even if you are not required to.** IEC 62304 and FDA's Quality System Regulation (21 CFR Part 820, now harmonizing toward ISO 13485) require a Design History File (DHF) for cleared devices, but building the habit immediately costs almost nothing and saves enormous rework later. Use a structured folder in your version control system: requirements, design decisions with rationale, verification test results, risk assessments per ISO 14971. The expensive rework is not recreating decisions — it is reconstructing the reasoning behind decisions made two years ago when the engineers who made them have left.

* **Pick a predicate device now and reverse-engineer its 510(k) submission to understand what clinical evidence it required.** The FDA's 510(k) database is public. Find two or three cleared wearable cardiac monitors (e.g., AliveCor KardiaMobile, Withings ScanWatch) and read their substantial equivalence arguments. Identify what clinical study designs they used, what sample sizes, what performance thresholds FDA accepted. Design your own internal validation studies from day one to generate data in a format that mirrors those submissions — because a study run with a different protocol is difficult to retrofit later even if the underlying device performance is equivalent.

* **Treat software versioning and change control as a regulatory artifact from the start.** IEC 62304 classifies software by safety class and requires documented change control for Class B and C software. Your on-device ML inference engine almost certainly qualifies as Class B or C given the clinical downstream implications. The shortcut that costs the most to undo: releasing firmware updates without documented change impact assessments. Every model weight update, every threshold change, every sensor fusion tweak should be logged with a record of what changed, why, and what verification was performed — because under 510(k), you will need to demonstrate that your software lifecycle process is controlled, not just that the current version works.

* **Run a prospective, IRB-approved observational study during the wellness launch window.** The most valuable clinical evidence asset you can accumulate pre-510(k) is real-world performance data collected under a protocol that satisfies IRB review. This does not require FDA oversight at the wellness stage, but it does require partnering with a clinical site, defining your endpoints, and obtaining informed consent from participants. A 200-patient, 90-day observational study comparing device alerts to gold-standard Holter monitor reads gives you both a performance baseline and a publishable dataset — which strengthens both the 510(k) and the fundraising story.

* **Do not harden your alert thresholds in firmware if you might need to tune them for a 510(k).** One costly rework scenario: you ship a wellness device with a fixed sensitivity/specificity operating point baked into firmware, build a user base around that behavior, and then discover FDA requires a different operating point for your intended clinical use. Architect the threshold as a configurable parameter with a controlled update path so you can shift it without re-engineering the inference pipeline. This is a software architecture decision that is much cheaper to make at the start than to retrofit.

---

## Question 15: Liability and False Negative Exposure

* **Build a layered disclaimer strategy that is proportionate to alert severity, not a single blanket disclaimer.** A blanket "this is not a medical device" disclaimer buried in a EULA is nearly worthless legally because courts look at the totality of how a product is marketed and used. Instead, surface contextual disclaimers at the moment of alert: when the device surfaces an irregular-rhythm pattern, the app should explicitly state that this observation requires clinical evaluation and cannot diagnose a condition. Because false negatives are the primary liability concern — a user who has an event the device missed — the key UX protection is ensuring the device never implies it is a complete cardiac safety net. Language like "This device monitors selected patterns and may not detect all cardiac events" should appear in onboarding and in the app's alert settings, not just in fine print.

* **Implement a "not a substitute for medical care" friction point during onboarding, not just in ToS.** Require users to actively acknowledge — via a checkbox with specific language, not passive scrolling — that the device is a wellness tool and that any cardiac concern warrants clinical evaluation. Courts treat active acknowledgment differently from passive disclosure. Document the acknowledgment in your backend with a timestamp so you have a record. This is especially important for your target demographic (40+, family history of cardiac events) because plaintiff attorneys will argue that marketing to a health-anxious population created a duty of care.

* **Set algorithmic thresholds conservatively for false negatives and document the tradeoff explicitly.** In a consumer wellness context, a missed event is legally more dangerous than a false alarm (which is annoying but not fatal). Set your detection threshold to favor sensitivity over specificity — accept more false positives to reduce false negatives — and document this design choice in your risk file with explicit rationale. Under a products liability analysis, a manufacturer who knowingly set a threshold that increased false negatives without documented justification faces greater exposure than one who can demonstrate the tradeoff was considered, risk-weighted, and chosen deliberately.

* **When you pursue clinical claims, shift from ToS-based protection to clinical integration.** The liability analysis inverts once you seek FDA clearance for clinical claims: at that point, your product is being used in a clinical decision-making context and contractual disclaimers become much weaker protection. The appropriate safeguard is clinical workflow integration — the device surfaces alerts to a clinician who orders confirmatory tests, not to a patient who acts unilaterally. Design your clinical partnership model so that the alert chain always terminates with a licensed provider making the diagnostic decision. This is not just liability protection; it is the model FDA expects for cleared diagnostic devices.

---

## Question 16: International Regulatory Sequencing

* **Prioritize US FDA 510(k) over CE marking in the first 18 months, because the US market is larger and your clinical partnership pathway depends on it.** EU MDR is significantly more burdensome than the pre-2021 MDD it replaced — it requires a Notified Body review (none of which are fast), a clinical evaluation report with substantial clinical evidence, and ongoing post-market surveillance. With 18 months of runway, attempting CE marking simultaneously with a US FDA submission would spread the team too thin and likely result in neither being completed. The US market also gives you faster revenue access for clinical partnerships (hospital systems, health plans) that can fund the Series B needed to support international expansion.

* **Use the wellness launch window to collect data that satisfies multiple regulatory frameworks.** If you design your observational study protocol with both FDA and EU MDR in mind from the start — using endpoints and data collection procedures that satisfy both frameworks' clinical evidence requirements — you avoid running separate studies for each jurisdiction. This requires engaging a regulatory consultant with both US and EU experience before finalizing the study protocol, but the cost of that advice is much lower than the cost of running two separate clinical studies. Health Canada's requirements are substantially aligned with FDA's, so a US-designed study typically transfers well.

* **Sequence CE marking second, targeting 24-36 months post-launch, using a MDR-experienced Notified Body.** EU MDR requires a Notified Body (BSI, TÜV SÜD, etc.) and the queue for initial device certifications is currently 12-18 months. Start the Notified Body engagement process at month 12 of your runway — before your Series B closes — so that CE marking is achievable within 12 months of a successful US clearance. The EU addressable market (particularly Germany, France, Netherlands) justifies the investment once you have cleared the US, but attempting it concurrently with the FDA pathway is a resource trap.

* **Treat Health Canada as a lower-effort parallel path if you have Canadian clinical partners.** Health Canada's medical device review process is more predictable and faster than either FDA 510(k) or EU MDR for Class II devices, and it accepts substantial equivalence arguments similar to 510(k). If your team has any Canadian clinical partnership opportunities — hospital systems, academic medical centers — filing a Canadian Medical Device License application in parallel with your FDA submission adds relatively little incremental burden because the technical file largely overlaps. This gives you a second market and a second clinical data source without the full overhead of EU MDR.

---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "08_false-positive-false-negative-tradeoffs-and-liability"
persona: "The Empath"
---

# False-Positive / False-Negative Tradeoffs and Liability - The Empath

## Q1: The threshold with no safe harbor

This question *reeks* of defensive anxiety — the startup is trying to thread a needle that doesn't exist. My gut says the whole framing is backwards: they're treating a threshold choice as if it's a knob to be optimized when it's really a *values statement* about who matters and what risk they're willing to impose on others.

* **The ER-flood dread is real but displaced.** The team is terrified of false positives because they *fear the blame*, not because they deeply care about the 60-year-old who drives 45 minutes to an ER only to be told it was anxiety. That fear will make the device timid, cautious, less useful. Users will feel the distance.

* **The death-spiral is less about credibility, more about violated expectations.** When users start getting false alarms, the emotional betrayal deepens each time — not "this tech isn't perfect" but "these people don't actually understand my body, or worse, don't care enough to get it right." Calibrating the threshold won't fix that feeling.

* **A family history of cardiac events changes everything emotionally.** A 55-year-old whose mother had a stroke at 58 is living in quiet terror, even if they don't say it. They're *hoping* this device catches the invisible thing they can't shake the dread about. That person will tolerate false positives *if* they feel the device is on their team. If they feel it's just crying wolf, the trust fractures and they uninstall.

* **The "consumer wellness" shield is emotionally transparent.** Disclaimers about "not a medical device" won't save the startup from the feeling-level betrayal when a user who trusted the alerts suffers an uncaught event. The legal language creates rational distance but emotional liability.

* **Safe-harbor language should feel protective, not bureaucratic.** If the companion app language feels like a corporation protecting itself, users will resent it. If it feels like "we're transparent about what we know and don't know," people will feel respected — and that emotional trust is what actually prevents misuse.

---

## Q2: False-negative invisibility, slow degradation, and calibrating urgency

My instinct here is that the team is designing for a *visible* failure mode and terrified of an *invisible* one — and the invisibility is emotionally corrosive in ways they haven't named.

* **A missed event in the dark is its own kind of terror.** The user doesn't know it happened. They might feel a flutter and wonder "should I have gotten an alert?" — and now every moment of doubt erodes trust. The device becomes a constant whisper of "am I safe?" rather than a voice of reassurance. That creeping uncertainty is worse than a false positive.

* **Slow degradation hits differently than sudden failure.** If the device suddenly stops working, that's clear — people adjust. But if it *slowly* becomes less reliable and nobody knows when that happened, there's an ambient anxiety. The user second-guesses their own body — "was that a real symptom or is the device just broken?" That ambiguity is emotionally exhausting.

* **The monitoring-drift question needs a human answer, not just a technical one.** If the system surfaces "we caught 12% fewer events this month than last quarter," the emotional response depends entirely on *why you're telling me*. If it feels like accountability ("we monitor ourselves because we care"), people feel safety. If it feels like excuse-making ("here's why our device is worse but we're not liable"), it feels evasive.

* **Different users need different urgency languages.** A person with diagnosed arrhythmia needs alerts that feel like "call your cardiologist." A wellness user with no diagnosis needs alerts that feel like "mention this to your doctor sometime." Using the same language for both creates either under-response (the diagnosed patient doesn't panic when they should) or over-response (the wellness user drives to the ER unnecessarily).

* **Transparency about limitations feels like safety; uncertainty feels like abandonment.** If the device says "I'm 87% confident in this signal," people feel informed. If it says "I might have missed something" without data, people feel unmoored. The data doesn't have to be perfect — it has to feel trustworthy.

---

## Q3: The false-positive win — designing toward best outcome

This is the question that *shifts the energy*. Instead of designing *away from* bad outcomes, what if you designed *toward* what it actually feels like to be helped?

* **The best alert doesn't hit like a panic button; it hits like someone knows you.** The user gets an alert, it feels urgent but not hysterical, they take it to their doctor, the doctor says "this was good to catch," they feel *seen* — like the device understood something about their body they didn't even know to worry about. That feeling is what drives word-of-mouth and lifelong engagement.

* **This best-case outcome reveals a threshold calibration problem nobody talks about: alert *timing* and *context*.** A 2 AM alert feels catastrophic even if benign. A 3 PM alert when the user is near their doctor feels manageable. The threshold for "should I alert?" can't be separated from "is this the right moment to disrupt this person's life?" That's an emotional design choice, not a statistical one.

* **The notification architecture needs to protect the moment of impact.** When the user opens the notification, they're vulnerable — they're about to feel fear or hope or both. The language, the visual design, the action options all determine whether this becomes "the device that saved me" or "the device that scared me unnecessarily." This is where precision of language matters as much as precision of detection.

* **The follow-up *after* the alert matters as much as the alert itself.** If the device goes silent after the alert, the user feels abandoned — "did it work? Do I need to do anything else?" If the device provides guided next steps (specific timing for contacting doctor, what symptoms to watch for, how to prepare for the appointment), the user feels accompanied. Emotional scaffolding is clinical care.

* **Designing toward the win creates a dataset of *trust* that a dataset of *accuracy* can never capture.** If users feel helped by the alerts, they'll be more honest with the app, more engaged with their health, more likely to provide the behavioral data that lets the model improve. The device earns better training data by earning emotional trust first.

---

## Q4: Credentialing systems and the false-positive liability surface

There's something deeply *relieving* about this question — it stops treating the threshold as a lonely engineering choice and starts treating it as a *role definition*. My gut says this is where the startup escapes the death-spiral.

* **The cardiologist credentialing analogy unmasks the real problem.** A nurse doesn't diagnose; a resident doesn't operate alone. These boundaries exist because we've learned that *clarity of role* protects everyone — the patient knows what they're getting, the provider knows what they're responsible for, the organization knows what it's liable for. The wearable currently tries to be both (alerts the user, implies diagnosis-readiness) and belongs to neither — emotionally and legally.

* **A tiered alert architecture creates emotional permission structures.** Tier 1: "This signal is interesting to share with your doctor" — no panic required. Tier 2: "This signal warrants a call to your doctor this week" — mild urgency. Tier 3: "This signal warrants immediate medical attention" — real alarm. Users *feel* the difference and self-calibrate their emotional response. The device stops claiming authority it doesn't have.

* **The cardiologist partnership is emotionally powerful because it *distributes* the liability feeling.** A user with a flagged arrhythmia gets the alert, goes to the cardiologist, the cardiologist confirms and says "good catch" — suddenly the device feels like a trusted partner in a medical relationship, not a replacement for one. The emotional safety of "my doctor takes this seriously" cascades onto "the device is trustworthy."

* **The consumer-to-clinical transition is an *identity shift*, not just a regulatory one.** A wellness device says "I'm curious about your health." A clinical device says "I have a duty of care toward you." That's a fundamentally different emotional contract. Trying to straddle both makes the device feel inauthentic — like it's playing a role it hasn't committed to. Users sense that and distrust it.

* **Credentialing also protects against the *wrong kind* of over-reliance.** A user with a clinical device might become *too* dependent on the alert threshold and ignore their own symptoms. A cardiologist credentialing system creates collaboration rather than replacement — the patient learns to listen to their body *and* trust the device, not swap one for the other.

---

## Q5: Calibrated deception — the 48-hour cool-down

This question *haunts* me because my gut says it's probably true, but the team will reject it on principle. There's something deeply wise being suppressed here.

* **The dread of the forced cool-down is institutional cowardice, not user protection.** The startup is terrified that if users discovered the 48-hour delay, they'd feel *deceived* — "you withheld information from me!" But that fear is backwards. What users will actually feel is relief: "You were smart enough to know that my 2 AM panic doesn't need an audience; you gave me time to breathe." The deception is only bad if it's discovered as a *trick*. If it's discovered as *care*, it's actually a feature.

* **Alert fatigue is a feeling that precedes clinical degradation.** Long before users stop acting on alerts, they feel *harried* — like their body is betraying them constantly, like nothing is stable. A 48-hour cool-down transforms that feeling: "My body is mostly reliable, and the device only talks when something is genuinely persistent." That shift is emotionally curative.

* **The hidden assumption is that faster alerts equal better care — and this breaks that assumption completely.** Sometimes the best medicine is *time*. A transient arrhythmia that resolves on its own, if you don't panic about it, just becomes a blip. If you panic and drive to the ER, it becomes a story. The device that withholds the intermediate signal might actually be wiser than the device that broadcasts everything.

* **The trust paradox: transparency about the cool-down might be better than hiding it.** "We delay alerts by 48 hours to reduce anxiety and false-alarm driving. This means you won't know about transient signals — which is actually a feature, not a bug." Users who hear *why* the delay exists might feel the device respects their nervous system more than users who think they're getting real-time data.

* **This reveals a design tension the team needs to name: are they reducing *noise* or reducing *information*?** The emotional experience depends on the framing. A 48-hour delay positioned as "we filter out the noise" feels protective. Positioned as "we're not telling you something," it feels withholding.

---

## Q6: Designed failure mode — engineered imperfection and trust

My instinct says this is a Trojan horse question that contains an insight too dangerous for the startup to accept: *perfect devices are emotionally untrustworthy*.

* **Perfection creates ambient doubt.** If a device claims it will never fail, users subconsciously brace for the inevitable failure. They don't actually *believe* the perfection claim — they believe failure is being hidden from them. That creates a waiting anxiety: "when will it break?" Engineering transparency around a 1% known error rate paradoxically *increases* confidence in the other 99% because it feels honest.

* **The designed failure mode reveals something about how health trust actually works.** A doctor who admits uncertainty ("I think this is likely X, but here are other possibilities") feels more trustworthy than a doctor who claims certainty about ambiguous symptoms. The admission of fallibility is itself credible. A device that says "I'm right 99% of the time and here's the 1% where I'm systematically wrong" might earn *more* trust than a device claiming higher accuracy with hidden caveats.

* **This works only if the 1% is chosen with wisdom, not randomness.** If the device fails predictably on certain populations or conditions (and owns that publicly), it becomes a tool users understand and work with. If the failure is opaque, users feel unsafe. The emotional move is from "this device might betray me unexpectedly" to "this device and I both know our limits."

* **The commercial risk is that competitors will exploit the disclosed imperfection.** "Our device is 98% accurate; theirs admits to 99% failure!" But in healthcare, that marketing almost always backfires — it feels like false precision. Users increasingly distrust devices that promise perfection; they trust devices that promise honesty about tradeoffs.

* **This reveals the team's implicit assumption: that liability comes from being discovered as imperfect.** Actually, liability often comes from *claiming* perfection and failing. An engineered failure mode with transparent communication might be the strongest legal *and* emotional protection available.

---

## Q7: False-positive tolerance as a calibration advantage

My gut reaction is that this is the most emotionally *honest* question on the list — it stops pretending the device needs to be perfect and starts asking what imperfection can *teach*.

* **"Consumer wellness" permission isn't just regulatory; it's emotional freedom.** The team can be less precise now because they're allowed to be. That permission — to gather messy edge cases, to learn from borderline signals, to be transparent about uncertainty — creates a *different relationship with users* than a clinical device. Users of wellness devices expect learning; users of clinical devices expect certainty. The emotional texture is fundamentally different.

* **A rich labeled dataset of edge cases is the most valuable kind of training data, and it's emotionally authentic.** If a user gets a false-positive alert about something that turns out to be anxiety, and they report that back to the app, the device now knows more about that person's body *and* about how anxiety manifests in biometric data. The false positive becomes *information* rather than *failure*. That reframing changes everything.

* **Users will tolerate more false positives if they feel they're helping.** "Your false alert taught us something important about your body" feels like partnership. "Sorry that was wrong, our bad" feels like incompetence. The same false positive, different emotional framing — one builds loyalty, one erodes it. If the companion app can surface how the labeled edge case is improving the model, users become collaborators in the device's learning.

* **This advantage has an expiration date, and users will *feel* when it's gone.** Once the device goes clinical, the emotional permission changes. Suddenly false positives aren't "learning opportunities," they're "medical errors." The team needs to orchestrate a *transition* in how users relate to false positives — from tolerant to intolerant — before the regulatory boundary is crossed.

* **The biggest risk is feeling like exploitation disguised as research.** If users suspect the startup is gathering their data under the guise of "learning" without compensating them fairly or protecting their privacy, the false-positive tolerance evaporates instantly and turns to resentment. This advantage only works if users genuinely *feel* they're partners in the research, not subjects of it.

---

**Summary Statistics**

* **Total questions addressed:** 7
* **Responses per question:** 5 each
* **Primary emotional themes:** Trust (appears in 6/7), Autonomy & Control (5/7), Transparency vs. Concealment (5/7), Fear & Anxiety (5/7), Partnership & Collaboration (4/7)
* **Persona voice integrity:** All responses center gut-feeling-first emotional signals, avoid rationalization backfill, flag unspoken dynamics, acknowledge stakeholder emotional variance

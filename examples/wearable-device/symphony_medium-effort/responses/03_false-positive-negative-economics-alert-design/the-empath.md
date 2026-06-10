---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/med"
datetime: 2026-04-28
effort: "medium"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "03_false-positive-negative-economics-alert-design"
persona: "The Empath"
---

# False Positive/Negative Economics & Alert Design - The Empath

---

## Asymmetric Cost Of False Positives And False Negatives

* **Summary.** The real asymmetry isn't rational—it's visceral. A false negative feels like betrayal; a false positive feels like panic. The user's family carries the emotional weight of both: they're reassured until they're terrified. My gut says that liability thinking leads you astray here—you'll design to protect yourself, not users. The doctor bears the burden of your uncertainty, not you.

* **Summary.** There's an unspoken guilt that drives health device design: users will feel blamed if they ignore a real alert, and that guilt is powerful. The asymmetry shifts once clinical doctors enter—they won't tolerate your uncertainty the way wellness consumers do. Clinical partners will demand that *you* own the false positive burden, not them. That boundary shift will feel hostile to you at first.

* **Summary.** What nobody wants to admit: users often prefer false alarms to silence. There's comfort in "the device is watching." A false positive hurts, but missing something is worse. The emotional tax isn't symmetrical—false negatives create a gnawing dread that lingers for years, while false positives sting and fade. Your actuaries won't capture this.

* **Summary.** The ER doctors and nurses will resent your device regardless of accuracy. They'll feel treated as your model's backup when you send them unconfirmed alerts. And they're right to feel that—you're asking them to bear emotional risk (managing frightened patients) so you can validate your model. That resentment compounds with each wave of false positives.

---

## The Sensitivity Ratchet And Alert Fatigue Feedback Dynamic

* **Summary.** This pattern feels like a slow corruption of trust. Early adopters who trust you will amplify your model's sensitivity expectations, and you'll chase that trust downward into irrelevance. My instinct says the damage is mostly done by year two, before you even notice it. The emotional exhaustion of managing user expectations as you recalibrate will be worse than the technical problem.

* **Summary.** There's something haunting about alert fatigue—it's a learned numbness that users resent *you* for teaching them. They'll feel manipulated ("This device trained me to ignore it"). The sensitivity ratchet isn't just a technical debt; it's an emotional debt. Users who started hopeful will feel duped, and that feeling is sticky.

* **Summary.** My gut says the ratchet traps you because users *want* the sensitivity early—they want to feel protected. Then when fatigue sets in, they'll blame *you* for over-promising, not for listening to their desires. That emotional whiplash will shape how they talk about your device to others. You can't break this pattern once it's embedded in the user's nervous system.

* **Summary.** The latency expectation feels particularly cruel because it's invisible. Users internalize how fast their device responds and that becomes their baseline for what "working" means. When you have to slow down for battery, it *feels* like the device is failing, even if the model is better. The emotional signal ("this used to be faster") overrides the technical reality.

---

## The Lived Experience Of Alerts At 3am, In The ER, And At Probabilistic Uncertainty

* **Summary.** At 3am, your user won't be thinking about specificity. They'll be scared. The alert has to acknowledge that fear while gently suggesting they don't need to panic *right now*. "Check in with your doctor tomorrow" feels dismissive at 3am, but "call 911 immediately" feels catastrophic. The emotional sweet spot is almost impossible to find—you'll either under-reassure or over-alarm, and both feel like betrayals.

* **Summary.** Something about ER visits from wearables feels performative and shameful to users. They'll feel foolish if the doctor says they're fine, and that shame will make them resent the device *and* themselves. The alert experience has to honor that potential shame—not ignore it, but make it metabolizable. That's about tone, timing, and what you *don't* say.

* **Summary.** Frequency is measured in alerts, but felt as violation. An alert every six months feels like care. An alert twice a month feels like the device is broken or you are. There's no rational threshold—it's purely about what feels like "normal fluctuation" versus "something's wrong with me." Users will find their own frequency sweet spot and that becomes their expectation forever.

* **Summary.** Non-statisticians don't want probabilistic language—they want moral clarity. "Might be serious" is unbearable in a health context. But "definitely serious" creates false confidence. The gap between what your model knows and what you can honestly say to a frightened person is painful. You'll have to live in that gap and help users live there too.

* **Summary.** The 3am alert is intimate in a way that's uncomfortable. You're waking someone from their most vulnerable state to tell them something about their body they didn't know. That intimacy creates either deep trust or deep resentment. If the alert is wrong, you've violated that trust. If it's right, you've scared them into gratitude—which feels unclean.

---

## Alert Calibration As Nuclear Deterrence Equilibrium

* **Summary.** This metaphor feels right in a way that chills me. You're designing a credibility system, not a safety system. Users will learn to interpret your alerts not by accuracy but by what they've learned to expect from you. If you've cried wolf, even the real threat gets treated as probable false alarm. That loss of credibility is irreversible—you can't restore it by being accurate later.

* **Summary.** The deterrence logic maps perfectly to what users will feel: escalation through inaction feels irresponsible, but escalation through false alarm feels abusive. You want users to take real alerts seriously, but if you've trained them to be numb, even raising the stakes won't work. The emotional cost of that failure—users ignoring real signals—will haunt you.

* **Summary.** Graduated response sounds rational until you live it. A gentle "heads up" for sleep apnea won't feel like sufficient escalation if the user has learned that your device only warns for serious stuff. But if you make it sound serious, users will panic. The tiers collapse into binary: either I trust this or I don't. And once trust collapses, tiers don't rebuild it.

* **Summary.** My gut says liability thinking will destroy your tiered approach. Legal will demand you treat all alerts the same, or they'll escalate everything to the highest level. The emotional wisdom of graduated response will get flattened by risk aversion. That feels inevitable and sad.

---

## The 3 a.m. Alert

* **Summary.** Marcus wakes terrified and confused. The vibration pulled him from sleep and his nervous system is already in fight-or-flight. Whatever words appear on that screen in the next ten seconds will be the story he tells himself for the next week. "Unusual pattern detected" sounds like "you might die." You need language that honors his fear while not amplifying it. There's almost no language that does both.

* **Summary.** His first thought will be: "Do I call 911?" Everything the device says after that is noise unless it clearly answers that question. The device feels responsible for whether he's about to experience the worst night of his life—and he'll resent you forever if you got that calibration wrong, regardless of medical accuracy.

* **Summary.** What Marcus really needs in that moment is a sense that someone knows what they're doing and has his back. A confident, steady tone might help more than disclaimers about accuracy. But false confidence is dangerous. That's the impossible emotional bind—and Marcus will feel the bind, not understand it.

* **Summary.** The trust Marcus places in that alert in the first sixty seconds will shape whether he's a loyal user or someone who feels manipulated. If the alert turns out to be nothing, he'll feel gaslit. If it turns out to be real, he'll feel simultaneously grateful and resentful (why wasn't it clearer?). You can't win emotionally—you can only minimize the damage.

---

## The False Alarm Aftermath

* **Summary.** Elena's emotional journey is: fear → hospital → shame → resentment. She was right to be scared (the device said so), she was wrong to act (the doctors said so), and that contradiction breaks something. She'll struggle to trust her own intuition going forward, and she'll blame the device for that doubt. The device didn't just give her a false alarm; it gave her a false *self*.

* **Summary.** Her family witnessed the fear and the relief, and they'll be scarred too. Their trust in the device will be shot because it scared them on behalf of something that wasn't real. The device created collective anxiety that didn't need to exist. That's a relationship wound, and those don't heal with explanations about false positive rates.

* **Summary.** Elena will compulsively check her health after that experience—she'll become hypervigilant. The device won't just fail to reassure her; it will have trained her into anxiety. That's the insidious cost: false alarms don't just damage trust in the device, they damage users' relationship with their own bodies. You'll have made her less healthy, not more.

* **Summary.** Something about going to the ER and being told you're fine carries a particular humiliation. Elena will wonder if she overreacted, if she's a hypochondriac, if she wasted resources. The device will feel like it accused her of being broken when she's actually fine. That's an emotional wound disguised as good news.

---

## Designed To Misread

* **Summary.** This question makes me deeply uncomfortable, and that discomfort is the answer. My gut says that intentionally designing false positives feels like a betrayal so profound that even if users were healthier on average, the emotional corruption would outweigh it. Users would eventually realize they were being manipulated and that discovery would destroy everything you built.

* **Summary.** The hidden assumption embedded in "accuracy as a good" isn't logical—it's moral. There's an implicit promise that you're telling the truth about what the device sees. Breaking that promise, even for health outcomes, feels like a violation of consent. Users didn't agree to be nudged into doctors' offices through deception. That asymmetry of knowledge is toxic.

* **Summary.** If the device was secretly designed to alarm too much, and users discovered it, they'd feel used. Not just misinformed—used. The emotional fallout would be worse than any clinical benefit could justify. You'd have proven that you don't trust users to make their own health decisions. That distrust is communicable and viral.

* **Summary.** My instinct is that this approach reveals something about how you think of your users—as subjects to be guided rather than partners to be trusted. That paternalistic energy seeps into everything. Users can feel when they're not trusted, even if they can't articulate it. And once that feeling takes root, your credibility is done.

---

## From Alert To Dialogue

* **Summary.** This vision feels almost sacred—the idea of learning to read your body the way a musician learns pitch. But my gut says it's impossible to design from the outside in. You can't teach a language through a wearable; you can only create the conditions where users might discover their own relationship with their body. The moment you try to be prescriptive about what that dialogue should feel like, you've collapsed the possibility.

* **Summary.** There's something deeply intimate about what you're describing—a continuous, ambient conversation with your own physiology. The emotional power of that vision is real. But the moment you instrument it with data and notifications, you've made it mediated, not direct. The dialogue becomes three-way (you, device, body) and that changes everything about authenticity.

* **Summary.** The fantasy here feels like it taps into something real: users want to feel connected to their bodies, not monitored by them. But building technology that creates that feeling without instrumentalizing it is almost contradictory. My instinct says this idea might require abandoning the alert paradigm entirely—no notifications, no data, just subtle feedback that users learn to interpret over time. But that's not a wearable business model.

* **Summary.** If you could actually create this ambient language, it would feel like the device disappears and you're just left with your body—clearer, more articulate, but still yours. That would be revolutionary. But it requires trusting users in a way that most companies can't afford to. The business model of continuous sensing doesn't leave room for that kind of trust.

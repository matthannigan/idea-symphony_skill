---
project-name: "Modern Habit Tracker Web App"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/habit-tracker/high"
datetime: 2026-06-09
effort: "high"
stage: "Phase 4: Response Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-8"
topic-cluster: "10_access-inclusion-and-the-returner-s-emotional-landscape"
synthesis-type: "attributed"
---

# Brainstorming Synthesis: Access, Inclusion, and the Returner's Emotional Landscape - With Attribution

---

## Synthesized Insights by Question

### Question 1: The shame-spiral install and the scar-tissue carrier

**Full question**: Before a burned-out user even reopens an app store, they've rehearsed their own failure, and the target population carries a specific kind of disappointed self-knowledge that lives in their body. What does the first 90 seconds after install look like, how does every interaction either reinforce or interrupt the "I'll probably quit this one too" story, and what emotional memory does this app need to acknowledge or actively interrupt when someone who has failed before tries again?

* **The first 90 seconds must interrupt a rehearsed failure story, not launch features.** All seven personas converge that the returner arrives already running a "this won't work either" narrative, and the opening experience either reinforces or interrupts it. The consolidated stance: strip onboarding to near-zero, let one tiny action happen before any motivational framing, and signal through tone and structure that the app expects struggle and treats restart as normal. The system should read like it was built by someone who has also failed, reframing prior attempts as data rather than character defect.
  * **Mirror trauma-informed therapy intake: "You've tried before. That's data, not failure."** Safety signals, no performance pressure, explicit acknowledgment of past pain; opening should expect struggle and not punish pauses. *—The Analogist*
  * **Acknowledge the failure in the first 30 seconds with "Welcome back if you've been here before."** They want honesty, not cheerleading; reduce activation friction ruthlessly so success lands within 60 seconds. *—The Audience Advocate*
  * **The first message matters more than the architecture; let the design speak.** A clean first screen with zero exhortation ("What do you want to build?") respects their intelligence without drawing attention to their failure history. *—The Devil's Advocate*
  * **The "I'll probably quit this one too" story is the real competitor; lead with permission.** "This breaks for a lot of people; that's a design flaw, not a character flaw" is more healing than compassionate language. *—The Empath*
  * **Acknowledge the return explicitly with a "What matters most" choice and a visible reset button.** Let them pick their own pace; shift the story from "I quit" to "I came back." *—The Pragmatist*
  * **Open with recognition: "You're not starting from zero; you're starting from knowing what didn't work."** Prompt "What made the last one feel like too much?" rather than launching into features. *—The Storyteller*
  * **Invert the narrative: "Tell me about the last time you tried this."** Hold space before asking for anything; begin sessions with "What's true about today?" so the user reports reality, not aspiration. *—The Visionary*

* **Make quitting and restarting frictionless so abandonment is never silent or punished.** A focused convergence across three personas: the interrupt point is the moment a lapse becomes a graceful pause rather than a rupture. A visible "pause this habit" or reset control, available without deletion or penalty, converts the dreaded break into an expected part of the rhythm.
  * **Make quitting frictionless with a clear "pause this habit" button in week 2 to prevent silent abandonment.** *—The Devil's Advocate*
  * **Build a visible, easy reset button to restart after a lapse without deletion or penalty.** *—The Pragmatist*
  * **Use a discharge-protocol model: graduated re-entry, reduced expectations, explicit permission to rebuild slowly.** The early phase should feel like supervised re-entry, not a sprint. *—The Analogist*

---

### Question 2: Cognitive load, mental health, and "invisible but present on a hard day"

**Full question**: The target population (adults 25-45 who've bounced) includes a significant proportion managing anxiety, ADHD, or depression for whom a "minimal" UI can still feel overwhelming on a bad day. How does the core loop hold up when the user's executive function is impaired, and what would "invisible but present on a hard day" actually look like compared to "invisible but present on a typical day"?

* **"Minimal" is not the same as low-friction; a hard-day mode must collapse the interface to a single affordance.** All seven personas converge that a clean dashboard still demands decisions (which habit, when, how many) that become real friction under executive dysfunction. The consolidated design: a distinct hard-day state, reached by toggle or by the app sensing it, that surfaces only one action, removes secondary navigation, and treats "just showing up" as a complete check-in. This is reframing of what presence means, not a reduction in button count.
  * **Build mood states into the UI: a "rough day" toggle that simplifies, offers one-click check-ins, and removes optional features.** The app should morph based on executive function, not ask the user to adapt. *—The Analogist*
  * **One interface that gracefully handles both states: a one-tap check-in that expands to "check in, even just to tell me you're struggling" without judgment.** *—The Audience Advocate*
  * **Build a "bad day mode" toggle surfacing only the single most urgent habit; let users pre-configure it for known-hard days.** *—The Devil's Advocate*
  * **Anti-friction minimalism: a non-demanding presence where checking in takes three seconds, not thirty seconds of form-filling.** *—The Empath*
  * **Progressive disclosure with smart defaults, voice input, and a "just mark present" option; one clear action per screen for ADHD.** *—The Pragmatist*
  * **A "today is harder" mode where the only visible option is a single pre-filled intention and "I can't right now" is a first-class action.** *—The Storyteller*
  * **Adaptive friction: sense degradation in executive function and reduce the UI to one button, one field, in real time.** *—The Visionary*

* **"Invisible but present" means available without demand, never auto-surfacing shame metrics.** A strong convergence across personas: on a hard day the app must exist in the background and only surface when the user has energy, with no ambient notifications, badges, or streak visuals that turn opening the app into another source of guilt. A skipped day should read as rest, actively supported, not as failure.
  * **No ambient notifications or badges; show streaks and analytics only when the user navigates to them, never auto-surface shame-inducing metrics; dark mode and larger text.** *—The Pragmatist*
  * **Remove all streak-based visuals by default; replace notifications with indefinitely snoozable reminders; frame a skipped day as "rest."** *—The Devil's Advocate*
  * **Permission to fail quietly: an interface that treats zero and one the same way, where both count as "you showed up."** *—The Audience Advocate*
  * **Presence without demand: the app shows up, acknowledges the user opened it, and asks for nothing ("I'm here").** *—The Visionary*
  * **A gentle awareness that the tool is there if wanted, with no "I should be doing this" trigger.** *—The Empath*
  * **The interface bends toward you: "I noticed you've been quiet. That's okay. I'm here when you're ready."** *—The Storyteller*

---

### Question 3: Language, literacy, and the hustle-culture bounce

**Full question**: The PRD assumes enough literacy and English fluency to parse "cue/routine/reward framing (Atomic Habits model)," but people who most need help building consistent habits may include those with lower literacy, non-native speakers, or users who've never heard of Atomic Habits, and a significant population finds the language of "habit stacks" and "behavioral science" alienating or associated with hustle culture. How should habit creation work for someone who doesn't recognize the vocabulary, and how might the product reach people who want to build a healthier routine without identifying as someone who "optimizes" themselves?

* **Drop behavioral-science vocabulary entirely; ask "what do you want to be consistent with?" instead of naming frameworks.** All seven personas converge that "cue/routine/reward," "habit stacking," "optimize," and "behavioral science" are gatekeeping language that codes as hustle culture and repels the exact returners the app exists to serve. The consolidated stance: replace jargon with the language of fit, rhythm, and care ("things I care about," "what fits into your day," "what matters to show up for"), letting users name their own intention in their own words.
  * **Translate "cue/routine/reward" into "Before / During / After" with icons; replace "habit stacking" with "link it to something you already do."** *—The Analogist*
  * **Reject the assumption that everyone reads Atomic Habits; meet them in the language of fit and rhythm, never mention frameworks.** *—The Audience Advocate*
  * **Atomic Habits vocabulary is gatekeeping; offer parallel vocabularies and test labels with working-class adults and non-native speakers.** *—The Devil's Advocate*
  * **The jargon codes as "your life is a system to hack"; say "routines you actually want," not "systems you can optimize."** *—The Empath*
  * **Reframe as "things I care about," not self-improvement: a user responds to "meditation to calm my nerves," not "anxiety reduction protocol."** *—The Pragmatist*
  * **Reframe the product through narrative, not pedagogy: honor "better mornings" and "trying to not feel like garbage before 10 AM" as the same thing.** *—The Storyteller*
  * **Frame habits through embodied metaphor: "things that feel easier," "rhythms I return to."** *—The Visionary*

* **Build voice-first and image-first paths so literacy and English fluency are never a barrier to the core flow.** A convergence across several personas: text-based comprehension is an exclusion mechanism, and the core interaction should work through speaking, listening, icons, and example videos rather than paragraphs of explanation. This draws on oral knowledge-transfer traditions and treats lower literacy as a design challenge, not a user deficiency.
  * **Offer voice-first pathways, example videos, and narrative framing ("here's how someone like you built this"), honoring non-literate knowledge transfer.** *—The Analogist*
  * **Use images and interaction before words; habit creation should work without paragraphs of explanation.** *—The Audience Advocate*
  * **Make speaking and listening the core interaction model: describe what you're trying to do and the system echoes it back.** *—The Visionary*
  * **Offer Spanish and simplified English, visual-first flows, audio descriptions of charts, and a plain-language onboarding video.** *—The Pragmatist*
  * **Use language that trusts people to be intelligent without specialized vocabulary; sound like a friend, not a productivity guru.** *—The Empath*

* **Anchor habits in values rather than achievement so non-optimizers are reached on their own terms.** Several personas independently surface that the deepest exclusion is cultural, not linguistic: people who reject hustle logic want sustainability, rest, presence, or connection, and centering productivity language narrows the addressable market to the people least harmed by prior apps.
  * **Build with values-based frames, not achievement frames: "I want to be more present," not "optimize presence."** *—The Devil's Advocate*
  * **Speak to people who want to build a healthier routine without identifying as someone who optimizes; the language of aspiration is toxic to those who've internalized failure.** *—The Audience Advocate*

---

### Question 4: Secondary users who never became primary

**Full question**: The PRD flags parents tracking kid-facing habits as a v2 consideration, but these users have meaningfully different emotional stakes (responsibility for someone else's formation) and introduce a fundamentally different accountability loop, someone monitoring someone else's behavior rather than their own. What would it mean to design *with* parents rather than deferring them, what assumptions in the core loop would need to change, and how does adding that use case even quietly in v2 reshape what the core product has to be good at?

* **Parents are a structurally different accountability loop and deferring them to v2 warps or indebts the core product.** All seven personas converge that monitoring someone else's formation is not a feature to bolt on but a different relationship, and that designing "for parents eventually" locks in architectural debt or a product that is wrong for both cases. The consolidated stance: build the permission, consent, and notification architecture for an observer relationship now even if single-user remains the default, and frame the parental view around support and care rather than surveillance and compliance.
  * **Design two parallel UIs from day one; make the parental view about "does my kid have what they need?", not "did they comply?"** *—The Analogist*
  * **The app must be good at both self-tracking and light monitoring from day one or the monitoring logic will feel bolted on; acknowledge this is care, not surveillance.** *—The Audience Advocate*
  * **Deferring parental use locks in architectural debt; design the accountability model to support any observer (parent, partner, therapist, peer) now.** *—The Devil's Advocate*
  * **Parents need a separate "guardian view" built now as a hidden feature, with different data (completion, not streaks) and different timescales (weekly, not daily dopamine).** *—The Pragmatist*
  * **Design with the parent, not for the parent watching from outside; the loop becomes relational, not individual, reshaping notification tone and what counts as failure.** *—The Storyteller*
  * **Parents need a product that protects the relationship first and habit-tracking second; "collaborative witnessing," not surveillance.** *—The Empath*
  * **Invent a new relationship form ("collaborative intention space") with mutual, bidirectional witness rather than parental controls bolted on.** *—The Visionary*

* **Guard against the surveillance-and-coercion failure mode with consent, data limits, and autonomy-supportive defaults.** A focused convergence: handing a parent unconditional visibility into a child's behavior creates shame, control, and a coercion tool that defeats habit formation. Mitigations cluster around per-habit child consent, limited parental data access, and the question of who initiates the invitation.
  * **Require explicit per-habit child consent, limit parental data access (no detailed logs), and provide materials on autonomy-supportive accountability, or don't ship parental features until family dynamics are researched.** *—The Devil's Advocate*
  * **The kid needs to feel ownership, not monitored; data asymmetry matters and reshapes what gets celebrated and what failures are visible.** *—The Storyteller*
  * **Invitation mechanics matter enormously: the same feature feels different when a parent asks to "help track" versus when a school counselor initiates it; don't put the burden on the kid.** *—The Audience Advocate*
  * **Parents carry a guilt tech often weaponizes; design so the app supports the parent's confidence instead of undermining it when a kid misses a habit.** *—The Empath*
  * **If a parent sees a lapse, the app should suggest checking in, not pushing harder; time reminders with sensitivity.** *—The Pragmatist*

---

### Question 5: The invisible inflection (narrative): Maya on day 47 vs. day 2

**Full question**: Imagine a user named Maya who downloads the app on a Monday with good intentions and is still opening it every morning ten weeks later. What does the experience feel like on day 47 compared to day 2, and what specific design choices created that "easier the longer you use it" curve rather than the friction-accumulating reverse?

* **The ease curve is deliberate friction removal, not feature accumulation; the app must actively simplify as usage deepens.** All seven personas converge that day 47 should feel easier because the app got quieter and the behavior became automatic, and that the default failure mode is the reverse: features pile up (insights, analytics, social comparison) and day 47 becomes more cluttered than day 2. The consolidated stance: commit to active simplification over time, hiding advanced features until requested, so friction inverts by design.
  * **Adaptive difficulty: fewer prompts once habits feel automatic; by week seven the app is invisible infrastructure, not a tool she "uses."** *—The Analogist*
  * **What changes is what the app stops asking for; the interface should literally become simpler as usage increases.** *—The Audience Advocate*
  * **Commit to active simplification: progressively hide advanced features after 10+ days; if session time or interaction paths increase, you've added friction.** *—The Devil's Advocate*
  * **The arc shifts from willpower to inevitability; the app gets quieter and more integrated, and success is when you stop noticing it entirely.** *—The Empath*
  * **Build a "difficulty scheduler" now: week 1 a simple check, week 3 optional context, week 8 analytics; a 3-month roadmap, not a surprise.** *—The Pragmatist*
  * **Narrative continuity: by day 47 the app reflects her becoming ("here's what you look different at") rather than asking her to remember.** *—The Storyteller*
  * **The app learns to disappear: notifications gone, hierarchy simplified, feedback shifts from "Great, you did it!" to "this is becoming part of your body's rhythm."** *—The Visionary*

* **The app should shape itself around Maya's specific friction points, and week twelve (not day 47) is the real fragility test.** Two distinct reframes worth preserving: the personalization that creates the ease curve depends on the app learning her individual patterns, and the moment of greatest risk is later than the narrative assumes, after novelty fades but before the habit is automatic.
  * **The real test is week twelve, when novelty has worn off and the habit is rooted or fragile; that's where most people quit and the app should be most supportive, not least.** *—The Audience Advocate*
  * **The experience shifts because the app learned her specific friction points: it notices she opens it with coffee, or that Tuesdays are rough, and asks less then.** *—The Empath*
  * **Build a three-tier UX (onboarding / engagement / mastery) that users opt into rather than being force-progressed.** *—The Devil's Advocate*

---

### Question 6: The previous app ghost: scar tissue and streak anxiety

**Full question**: Many target users carry scar tissue from a prior habit app, including streak anxiety, guilt notifications, and gamification that started feeling like a job. How does the first week of this app's experience actively signal to that user that this is different, before they ever consciously articulate the comparison?

* **Signal difference through visible absence: no streaks, no guilt notifications, no red X on a missed day.** All seven personas converge that the strongest differentiation signal is the felt absence of the mechanics that burned users out, experienced in the body the first time a missed day produces no consequence. The consolidated stance: the first week must telegraph "this is different" through what the app refuses to do, not through promises of gentleness.
  * **Make differentiation about what was removed, not added; let users feel the difference through absence of triggers.** *—The Analogist*
  * **Signal safety through what you don't do: no streak counter looming, no notifications until asked, no red X on a missed day; prove it, don't talk about it.** *—The Audience Advocate*
  * **Absence requires specificity, not just tone: study competitors, identify shame-inducing features, and explicitly don't build them ("No streaks. No leaderboards.").** *—The Devil's Advocate*
  * **The first missed day where nothing happens is when trust is rebuilt; signal difference through absence of harm, not words.** *—The Empath*
  * **The main habit card must not show a streak number; show "Last done: Monday," audit every string for shame language (a 4-hour, high-leverage task).** *—The Pragmatist*
  * **No badges, no fire icons, no "day 3 of 365" countdown; by day eight the user realizes "this one isn't afraid of my imperfection."** *—The Storyteller*
  * **Display refusals prominently as the selling point: "We don't send guilt notifications. We don't gamify with streaks."** *—The Visionary*

* **Explicitly name the scar tissue and the prior-app comparison in early onboarding.** A convergence across several personas, partly in productive tension with the "let the design speak" caution above: rather than only signaling through absence, ask the user directly about what made them leave, and use the answer to disable the specific features that mimic their prior app.
  * **Ask explicitly: "Have you used a habit app before? What made you leave?" and build per-user notification rules from the answer.** *—The Devil's Advocate*
  * **Explicitly invite comparison with prior apps: "We're different, and here's specifically how"; that honesty beats a hundred motivational graphics.** *—The Audience Advocate*
  * **Acknowledge the scar directly: "Other apps guilt-tripped users. We won't. Here's what we do differently."** *—The Analogist*
  * **Radical honesty: "You've tried other apps. They probably felt like a job. This is different, here's why."** *—The Visionary*
  * **Name the patterns, don't just avoid them; actively signal difference.** *—The Empath*

---

### Question 7: What if habit formation were a living system, not a log

**Full question**: Imagine a world where the tracker doesn't record what you did but instead senses the shape of your life over time, not a ledger of check-ins but an emergent portrait of who you are becoming, one that reveals patterns you would never have articulated as goals when you started?

* **Reframe the app from referee to mirror: from "did you do it?" to "who are you becoming?"** All seven personas converge that the emotional difference between logging and noticing is large, and that a system reflecting emergent patterns ("you're more consistent when you're connected to people") feels like witnessing rather than evaluation. The consolidated vision: surface patterns the user never set as goals, making the relationship generative and forgiving rather than pass/fail.
  * **Ecosystem monitoring, not species counting: track "what does your life look like now?" and how habits interact (running + sleep + mood), revealing identity shifts you didn't optimize for.** *—The Analogist*
  * **Logging feels like data entry; noticing feels like paying attention to yourself; the app becomes a mirror, not a referee tallying compliance.** *—The Audience Advocate*
  * **It reframes the relationship from evaluation to witnessing, from control to discovery; people would feel less judged and more seen as a becoming.** *—The Empath*
  * **A portrait instead of a calendar: "mornings have started to feel gentler," not "6/7 days"; show emergence, the felt sense of becoming.** *—The Storyteller*
  * **A resonance field, not a ledger: feedback as reflection ("this rhythm lives here in your week"), a mirror of your own unfolding.** *—The Visionary*

* **Keep the concrete log underneath and make pattern analysis opt-in, because vagueness kills retention and insights can wound.** A load-bearing counter-test from the adversarial lens, partly echoed by the feasibility lens: removing explicit check-ins strips the tactile reward and the honest record of whether the habit is actually forming, and surfaced patterns can reveal shame the user never intended to see. The mitigation is to offer both concrete logging and emergent insight, with pattern analysis defaulted off and framed non-judgmentally.
  * **"Emergent portrait" is operationally vague and vagueness kills retention; keep the log transparent in a secondary view while the primary surfaces patterns, and make insights opt-in, default off, because they can sting or spiral the user.** *—The Devil's Advocate*
  * **This is an 18-month moonshot, not an MVP; a ledger is easier to build and matches the user's mental model. Start with the ledger, add a no-judgment pattern digest at month 6, a green/gray heatmap as a living portrait without ML.** *—The Pragmatist*

---

### Question 8: What if the concept of a "habit" itself were worth questioning

**Full question**: We accept "habit" as the natural unit of this product, but habits are a particular cultural and psychological model with specific assumptions (repetition, automaticity, identity-linking). What if this product could pioneer an entirely new vocabulary and structure for intentional behavior change that doesn't inherit the limitations of the habit-as-unit frame, something that doesn't yet have a name in the self-improvement canon?

* **"Habit" carries baggage (automaticity, optimization, willpower) that excludes people who want consistency without obsession; a gentler frame could reach them.** All seven personas converge that the word itself imports assumptions, and that not everyone's goal is an automatic behavior; some want a deliberate practice, a ritual with meaning, or simple showing-up. The consolidated stance: explore vocabulary like "practice," "routine," "showing up," "intention," or "becoming" that honors discipline and identity-shift without the shame-math of the habit canon.
  * **Pioneer "behavior cultivation" over "habit formation": contextual, relational, emergent ("weaving," "rooting," "integrating"); reach for richer terms like "becomings" or "practices."** *—The Analogist*
  * **Ask "what do you want to be consistent with?" instead of "what habit?"; not every change is a habit, some are practices, rituals, or simple consistency.** *—The Audience Advocate*
  * **The word carries discipline and grim determination; a softer, more exploratory name could shift the whole emotional experience toward self-discovery.** *—The Empath*
  * **Pioneer "steady intention" or "becoming": "I want to show up for myself" is the same act without shame-math, streak-anxiety, and identity-threat.** *—The Storyteller*
  * **Introduce "continuities" or "returns": patterns that feel like "coming home" rather than mechanical repetition; structure around movement or trajectories that can be daily, weekly, or seasonal.** *—The Visionary*

* **Keep "habit" as the user-facing label even if the architecture is new, and design the data schema for plural behavior types now.** A pragmatic and adversarial counterweight that does not deny the reframe but constrains it: inventing new vocabulary adds onboarding cognitive load and forfeits access to behavioral-science research and competitor comparability. The resolution is to deliver something new under a familiar label, and to make the conceptual choice a research and schema decision rather than a naming gamble.
  * **Keep "habit" as the user-facing label, use a new architecture underneath, and frame it as "a habit app that actually works differently"; breaking the frame fragments the market and forfeits research access unless new terms map clearly to existing science.** *—The Devil's Advocate*
  * **Treat this as a question to ask before shipping: run a 2-week research sprint, and design the schema with a behavior_type enum (habit / routine / practice / goal) so a pivot to "ritual" costs hours, not a rebuild.** *—The Pragmatist*

---

### Question 9: The habit that stuck and the app that earned loyalty

**Full question**: Think about a habit you've successfully maintained for six months or more. What made it stick, and what did the tool or system you used get right that others got wrong? And separately, when has a productivity or wellness app genuinely delighted you not just on day one but after weeks of use, and what specific design decision do you credit for that staying power?

* **Habits stick when tied to identity and intrinsic motivation, not achievement; the app earns loyalty by quietly supporting what the user already wants.** All seven personas converge that durable habits become "part of who I am" and align with what the person actually cares about, and that loyal tools get out of the way rather than gamifying. The consolidated stance: facilitate the identity-shift quietly, build on existing intrinsic motivation, and earn loyalty through frictionless return and the absence of shame rather than feature richness.
  * **Loyalty follows deep contextual memory ("last time you got stuck was rainy mornings"); habits stick when something believed in the person through the struggle, transforming task into ritual and meaning.** *—The Analogist*
  * **Habits stick when connected to identity, not achievement; loyal tools did one thing well and disappeared; loyalty is what the app stops doing, and clearing the bar of "didn't make me feel like a failure."** *—The Audience Advocate*
  * **The habits that stuck felt like play, not work; loyalty comes from delight, not discipline, and from meeting people where their intrinsic motivation already lives.** *—The Empath*
  * **A friend runs because running became how she talks to herself; the app earned loyalty by never gamifying that, just making the appointment easy to keep.** *—The Storyteller*
  * **Habits stuck because they became easier the longer she did them; loyalty came from invisible support and emotional coherence between what the tool said and did.** *—The Visionary*

* **Treat this as evidence to gather before shipping, and separate "delight" from "loyalty" as distinct metrics.** A distinctive methodological reframe: the answer lives in users' lived experience, not the designer's behavioral-science assumptions, so the roadmap should be shaped by interviews; and first-week delight and long-term loyalty are orthogonal, requiring different design and different measurement.
  * **This is the only question whose answer lives outside the app; run 8-12 unstructured interviews with people who maintained a habit 6+ months, and ask what external factors mattered. Delight and loyalty are orthogonal; track them independently and optimize for loyalty.** *—The Devil's Advocate*
  * **Run 5 stickiness interviews to learn whether it was mechanics, social loop, or intrinsic motivation, then nail one loyalty-driver perfectly rather than ten mediocre ones.** *—The Pragmatist*

---

**Questions addressed**: 9
**Personas contributing**: The Analogist, The Audience Advocate, The Devil's Advocate, The Empath, The Pragmatist, The Storyteller, The Visionary
**Total synthesized insights**: 16

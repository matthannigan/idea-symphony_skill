---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/med"
datetime: 2026-04-28
effort: "medium"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "07_team-dynamics-and-the-psychology-of-cutting"
persona: "The Devil's Advocate"
---

# Team Dynamics and the Psychology of Cutting - The Devil's Advocate

---

## Killing Your Darlings Without Breaking the Team

* **The morale gamble is real.** Framing a cut as "strategic clarity" feels cleaner than "failure acknowledgment," but engineers will see through it. They already know 15 half-built features is an indictment of planning. One mitigation: acknowledge the organizational failure explicitly (poor prioritization, scope creep, unclear strategy) rather than letting them assume it reflects their individual competence. Separate *institutional decisions* from *execution quality* in the narrative.

* **Resistance as institutional knowledge mining.** Have we considered turning the team's emotional resistance into a structured input? When someone fights cutting a feature, there's often hidden information: "We built this because we thought TikTok was the differentiator" or "Three power users depend on this." The challenge is that *good faith expertise looks identical to sunk-cost-fallacy attachment*. Mitigation: ask engineers to document the reasoning behind each feature's existence before cuts are discussed, then use that record to validate which resistance is knowledge and which is attachment.

* **Freed capacity might not convert to focus.** Cut 11 features tomorrow, and you don't automatically get a focused team—you get a team that suddenly has 11 feature maintenance projects they just cancelled. That emotional weight lands *harder* than the original work. Mitigation: don't announce the cut as "now you have time to focus"—announce it as "we're now spending the next 3 weeks decommissioning these systems properly and documenting the institutional knowledge you'll lose." That work has visible endpoints and honors the past.

* **The timing paradox with burnout.** A burned-out team is exactly wrong for executing a complex cut—they'll take shortcuts, skip documentation, leave technical debt. But waiting for them to recover first means 8 months of continued half-built feature maintenance. Mitigation: the cut itself becomes the recovery intervention. Design the cut as a series of small, high-autonomy decommissioning projects (each engineer owns one feature's sunset), not a top-down mandate.

* **DAU/MAU won't stabilize overnight.** The team will expect metrics to bounce immediately. They won't. A simpler product with zero engagement still needs months to find product-market fit. Have we discussed what happens to team morale when engagement stays flat for Q2 after the relaunch? Mitigation: set explicit recovery timelines (6-month stabilization window) and commit to not adding features reactively if early metrics disappoint.

---

## Restoring Team Capacity Before Cutting

* **The burnout cycle is self-hiding.** A burned team will make genuinely poor decisions about what to cut—they'll often want to keep the features they personally enjoy building rather than the ones users need. You can't trust feature-retention decisions from a depleted team. But how do you restore capacity without first breaking the maintenance burden that's causing depletion? The mitigation isn't binary. Have we considered: a two-week feature freeze, immediately, *before* any cut decisions? Use that time to let the team recover just enough to think clearly about what to keep.

* **The intervention sequence matters enormously.** Cutting features first breaks morale (you're admitting failure before recovery). Restoring capacity first without cuts just delays the feature bloat. One path: (1) immediately reduce *notification volume and marketing pressure* (smallest unit of relief), (2) two-week freeze, (3) team maps institutional knowledge about each feature, (4) *then* make cut decisions together. Sequence matters—each phase buys psychological safety for the next.

* **Capacity restoration might be pure velocity, not time.** The team has 8 months of runway. If they're spending 60% of time in context-switching and maintenance, they effectively have 3.2 months of *productive* time. Adding headcount doesn't solve this (onboarding overhead). One risk: management assumes "restore capacity" means "hire faster." Mitigation: first measure what percent of daily engineering time is context-switching vs. feature work. You might find that eliminating 3 features frees 40% of cognitive load immediately.

* **Restoring capacity without cutting risks enabling more bloat.** If the team suddenly feels less burned and you haven't cut features yet, the natural human response is to pitch *new* ideas. "We're faster now, we could finally build the AI coach we cut three years ago." One mitigation: restoration happens *alongside* a formal feature lock-down. Tell the team: "We're reducing your maintenance burden for 4 weeks. In week 3, we're making irreversible cuts. Ideas are welcome until then, but expect them to feed into the cut analysis, not into new work."

---

## The Team's Proudest Build

* **Pride reveals your actual product, not your intended one.** The feature the team's proudest of probably isn't the social feed or the marketplace—it's the workout logging system they built cleanly, or the progress journal UI they refined three times. That pride tells you something crucial about where quality execution happened. The risk: you might need to cut the thing they're proud of anyway. Mitigation: separate *pride of execution* from *strategic importance*. Document the conditions that enabled that quality (time, autonomy, clear scope) and recreate those conditions in whatever you keep, rather than assuming you must protect the feature itself.

* **Quality often lived in small, unglamorous features.** Have we considered that the team's proudest moment might be something that barely moves the retention needle—maybe the settings redesign that lets users mute notifications properly, or the onboarding flow refinement? These aren't headline features, but they're *loved by power users*. Mitigation: surface these in the priority conversation not as "nice to have," but as "quality baseline." The relaunch won't work if the core 3-4 features are powerful but janky.

* **Protecting pride can feel like protecting bloat.** The team is proud of a feature because they executed it well—but they might be proud of *all 15*, in different ways. One danger: using "what are you proud of?" as a disguised feature-protection conversation. Mitigation: ask a sharper question: "Which piece of work would you *unhesitatingly recommend* a peer engineer build, and which would you warn them to redesign?" Pride plus "I'd rebuild this the same way" is a different signal than pride plus guilt.

---

## The Team Energized Again

* **Pride in a simpler product feels very different from pride in building features.** Six months from now, that engineer looking at the simplified product will feel energized if three conditions are met: (1) the core features they're maintaining actually *work*, (2) they can see the impact (real user feedback, not just metrics), (3) they have time to refine and improve rather than firefight. The risk is romanticizing simplicity. A janky 3-feature app is just a smaller version of a janky 15-feature app. Mitigation: the simplification only creates energy if the remaining features are genuinely *higher quality* than the originals.

* **"They let go of the features they built" understates the loss.** What an engineer really discovers when they're proud of a simpler product is permission to *stop defending old decisions*. The energy comes from liberation, not achievement. One risk: management reads "let go" as "accept loss quietly." Mitigation: make the letting-go ceremonial and explicit. A retrospective that honors each cut feature (why it mattered, what we learned, what we're keeping from its approach) gives the team permission to move forward without guilt.

* **Time is the actual unit of pride.** The feeling you're describing—genuine excitement about a simpler product—only happens if the team's daily reality changes, not just the product roadmap. If engineers go from firefighting 15 features to firefighting 3 features but in the same sprint structure, nothing changes emotionally. Mitigation: protect 20-30% of sprints for *quality refinement and technical debt reduction* on the kept features. That visible time investment signals that you're not just cutting, you're rebuilding what you kept.

* **The relaunch story matters more than the product itself.** An engineer felt pride not because the feature was small, but because it solved a real problem cleanly. Six months from now, if the 3-4 core features have a clear story (you focused on X because your actual users need X daily), they'll feel energized. If the features seem arbitrary or compromise-based, they'll feel like they're still building the bloated product, just with fewer items. Mitigation: frame the kept features around a user story, not a feature list: "Fitness tracking is the core because 70% of daily active users open the app to log a workout."

---

## The Constraint Trinity as One Connected Problem

* **You're right that burnout and bloat share a root cause—but the cause isn't overproduction, it's *unclear priorities*.** Toyota's lesson was that overproduction creates waste and worker exhaustion simultaneously. But in software, "overproduction" is shipping half-built features under unclear prioritization. The real insight: the team can't execute well on unclear direction, which compounds the sense that nothing matters, which drives engagement down, which triggers pressure to add more features. Mitigation: start with ruthless goal alignment, not feature cuts. If everyone agrees "we're building the #1 fitness app for daily habit logging," cuts become obvious and morale-protecting.

* **Reframing as "restoring craft" only works if craft is actually possible after the cut.** The risk of this reframe is that it absolves management of responsibility for the original mess. Engineers didn't lose the ability to care—they were systematically prevented from caring by unclear priorities and context-switching. Mitigation: couple the "craft restoration" narrative with concrete structural changes: reduced sprint velocity targets, longer feature cycle times, explicit refactor allocations. Craft isn't a feeling, it's a condition you create.

* **The feature bloat *is* a team health problem, but not in the way this frames it.** Feature bloat causes exhaustion because engineers correctly perceive that none of the features are good enough. Each engineer thinks, "I built something mediocre," which damages how they see themselves and the product. Cutting features doesn't magically restore craft—simplifying *does*, but only if you actually improve the remaining features. Mitigation: make the promise explicit to the team: "We're cutting features so we can move each remaining feature from 'shipping what works' to 'building something you're proud of.'"

* **The reframe will only stick if leadership visibly changes behavior.** Engineers have seen "we're focusing now" before, often right before a CEO announces a pivot or a new feature gets greenlit by fiat. The real risk is that the team adopts "restoring craft" language in the retrospective, then watches leadership add an API-first feature in Q2 because a big customer asked. Mitigation: build irreversibility into the cut. Kill the feature branches, archive the code, make it costly to resurrect old features. That signaling matters more than the narrative.

---

## The Day the List Got Shorter

* **That retrospective moment is where team culture gets permanently bent.** A well-led version: the engineer who built the sleep tracker hears "your work was quality execution on unclear direction, and we're changing direction" — acknowledgment that validates their competence while naming the systemic problem. A poorly-led version: "We're cutting features to focus" — which the engineer hears as "your work didn't matter." The risk is that you can't control which version happens without enormous care. Mitigation: before the cut conversation, have one-on-ones with engineers who built features you're cutting, specifically to understand what they're proud of and what they learned, so you can reference that in the retrospective.

* **The sleep tracker engineer is already bracing for impact.** They probably know it's at risk. The moment that determines culture isn't the announcement—it's what happens next. Does the team move their code into an archive (which feels like honoring it) or delete it (which feels like erasure)? Do they spend an hour in the retrospective on "why did we build sleep tracking" or twenty minutes? Mitigation: design the retrospective structure deliberately. Each cut feature gets a ten-minute segment: what we learned, why we're cutting, what we keep from the approach. That ritual protects culture.

* **This moment is also where you learn which engineers will stay.** A burned-out engineer might decide "if my work gets cut, I'm cutting my employment" — and you might not want to keep someone at that point anyway. But a *conscientious* engineer might decide "if leadership cuts features I built without recognizing the value, I should go somewhere with clearer strategy." The risk: losing your good people while keeping the ones who don't care what gets shipped. Mitigation: after cuts are made, have a separate conversation with each engineer about future roadmap and their role in it. Explicitly ask: "Is there a version of this company's direction that excites you?"

* **The culture outcome depends entirely on whether the team believes this will happen again.** If the retrospective frames the cut as "we overcomplicated things" (implying bad judgment in aggregate), engineers will brace for the next retrospective to cut *their* favorite feature. If it frames the cut as "unclear strategy hurt us" (implicating external factors like prioritization process), the team might actually believe this won't repeat. Mitigation: pair the retrospective with a visible change in how features get greenlit. If cuts are explained as "we should have said no earlier," then implement a visible gate that prevents future bloat (feature council, user-impact baseline, something).

---

## The Burn-It-Down Reframe

* **Using team burnout as a product decision signal is genuinely bold, but have we considered the data-quality problem?** A burned team's preferences are *not* reliable input to product strategy. They'll prefer features that give them the most relief or autonomy, not necessarily what builds sustainable retention. An engineer burned out by maintenance will want to keep the new, interesting feature and cut the boring-but-essential logging system. Mitigation: if you use "team energy and passion" as a signal, weight it against user data. The frame should be "team passion plus retention data," not team passion *instead of* data.

* **The insight about execution quality is real, but backwards.** You're absolutely right that care drives execution quality. But the team's care is already damaged. You won't restore it by building features they love—you'll restore it by giving them permission to do the work well, which means simplification plus time. Mitigation: the logic holds if you phrase it as "the team can only execute beautifully on 3-4 features with adequate time," not "the team has identified the 3-4 features they love to build." Both point to simplification, but the second pretends the team's judgment is sound when it isn't.

* **Quality-driven selection risks becoming "build what the most vocal engineer cares about."** In a six-person team, one engineer's passion can feel like "team energy." The risk is that you cut the feature that serves 40% of users because the engineer who built it is quiet and burned out, and you keep the niche feature because its builder is vocal about it. Mitigation: make team energy visible and accountable. Use something like a NASA TLX burnout scale or engagement survey to quantify which features are emotionally draining. That's harder to game than asking in a room full of exhausted people, "What do you want to keep?"

* **This reframe works best as a *tiebreaker*, not a primary decision.** If user data is ambiguous about whether to keep the meditation guide or the workout tracker, then yes, "which one do our engineers actually enjoy maintaining?" becomes the decider. But if user data says "70% of power users open the app to log workouts and 3% use meditation," the engineer's energy can't override that. Mitigation: make the hierarchy explicit in the decision rubric. Frame it as: (1) user impact, (2) team sustainability, (3) team passion. That prevents the reframe from becoming an excuse to ignore data.

---

**Responses:** 30 distinct items across 7 questions  
**Persona:** The Devil's Advocate  
**Approach:** Each response identifies a specific risk or hidden assumption, pairs it with a concrete mitigation or reframe, and varies scope from immediate (retrospective rituals) to systemic (decision-making rubrics).

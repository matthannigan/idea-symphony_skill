---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/mobile-app/low"
datetime: 2026-06-09
effort: "low"
stage: "Phase 4: Summary Generation"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
topic-cluster: "04_strengths-based-vision-for-the-focused-product"
central-tension: "A strengths-based vision that looks forward to grateful future users risks being built around the 2% who stayed rather than diagnosing what drove the 92% away — making the aspirational arc a retrofit of the existing failure rather than a genuine reset."
---

# Summary: Strengths-Based Vision for the Focused Product

## Executive Summary

The organizing tension in this cluster is an inverted framing of the same coordinator: the vision of future users who love the focused product. A feasibility-oriented view treats that vision as a practical design tool. Write the one-sentence App Store description now. Run the three-year review exercise with your team. Identify the daily trigger moment your retained users already use. The argument is that the direction you can articulate clearly is the direction worth executing. A risk-oriented counterpoint flags that any future-users vision built from the 8% who stayed implicitly sidesteps the harder question of why 92% left within 30 days. Designing around grateful survivors may produce a product that perfectly serves a few thousand users and no one else.

Both lenses agree on one high-confidence point: team pride in a feature must be validated against user engagement data before it can anchor a product decision. Burnout distorts memory, territorial ownership distorts nominations, and a genuinely polished ancillary feature (a well-built meal planner in a fitness app, say) can pass the pride test while failing the relevance test entirely. The feasibility-oriented view adds a practical method: overlay each team member's independent pride nomination against the 8% cohort's usage logs and find the intersection. The risk-oriented view adds a stricter filter: require that any pride-nominated feature connect directly to why someone downloads a fitness app, not just that it works well in isolation.

On the relaunch arc, both lenses converge on the diagnosis: the 47-second average session is primarily a notification-driven empty open, and the redesigned product needs to deliver genuine first value within 90 seconds with no tutorial. Where they diverge is on who experiences that arc. The feasibility-oriented view focuses on designing the first-value moment for new users and testing it with a small cohort before full launch. The risk-oriented view insists on a second, distinct arc for the 180,000 people who already formed an impression. Their experience is not overwhelm-to-clarity but skepticism-to-trust, and the redesign will fail to re-engage them if it treats them as first-time users.

---

## Key Themes

### Pride Nominations Require a Relevance Filter, Not Just a Metric Filter

Both lenses converge on the need to cross-reference team pride against actual usage data. The feasibility-oriented view offers a practical structure: independent nominations overlaid with cohort logs, surfacing the intersection as the starting candidate. The risk-oriented view adds a second gate. Does the pride-nominated feature connect to the core reason someone downloads a fitness app, or is it a genuinely good ancillary capability that should be cut regardless of its quality? Without the relevance filter, the product risks anchoring its relaunch on a polished but peripheral feature.

### Sunk-Cost Reasoning Must Be Expelled by Name

Both lenses treat sunk-cost votes as the primary structural threat to a sound feature selection. The feasibility-oriented view recommends making the ban explicit before the selection meeting. A visible one-page rule should state that sunk-cost arguments are out of order. The risk-oriented view adds a governance note: the rule needs a named person with authority to enforce it when engineers argue that cutting a feature is technically impractical because it's already deeply integrated. Naming the rule without naming the enforcer leaves the rule unenforced.

### The Radical Omission Frame Needs to Follow, Not Lead, Proof of Value

Both lenses resist using "radical omission as creative act" as a relaunch narrative before the stripped-down product has demonstrated it works. A feasibility-oriented case argues for a two-week "quiet app" prototype. Strip to one feature, show it to churned users, watch what they do. This is a practical entry point into the creative constraint. A risk-oriented counterpoint flags that a startup with 8% retention and a burned product attempting a "bold creative choice" narrative without established brand trust risks being read as "ran out of money" rather than "made a principled decision." The sequencing matters: earn the right to the narrative through demonstrated product value first.

### The First-Session Arc Has Two Distinct Versions

The feasibility-oriented view focuses on the new-user arc: value within 90 seconds, no tutorial, tested via A/B with users who downloaded but never completed onboarding. The risk-oriented view adds a structurally different problem: 180,000 existing users cannot experience "first time" discovery. They bring skepticism from the old version, and they need explicit acknowledgment of what changed and why before they'll engage with the simplified product on its own terms. Designing one arc and routing both audiences through it will not re-engage the returning cohort.

### Vision Exercises Are Useful Design Tools With a Known Bias

The feasibility-oriented view embraces vision exercises (the one-sentence App Store description, the fictional three-year review, the daily trigger interview) as concrete mechanisms for surfacing product direction quickly. A risk-oriented counterpoint notes that "what would they tell a friend?" systematically favors features with simple stories over features with deep value. App Store review sentiment skews toward new-user impressions rather than sustained relationship. The exercises are worth running, but the outputs should be supplemented. Replace "three-year App Store review" with "three-year private journal entry" to capture the sustained-relationship dimension the review format structurally misses.

---

## Recommended Actions

### Immediate (0-3 months)

- Run independent pride nominations: each team member privately names the one feature they're proudest of, then overlay nominations against the 90-day usage logs for the 8% retained cohort. Treat only the intersection (features nominated by team members *and* used meaningfully by retained users) as candidates. [convergent]
- Before the feature-selection meeting, distribute a written rule explicitly banning sunk-cost arguments, and name the person (PM or founder) with authority to rule those arguments out of order when they arise as operational concerns. [convergent]
- Apply the relevance filter to each pride candidate: "Is this feature directly connected to the core reason someone downloads a fitness app?" Features that pass the quality test but fail the relevance test are cut regardless of polish. [unique: risk]
- Run a two-week "quiet app" prototype: strip to a single candidate feature (the intersection winner), show it to ten churned users without explanation, and measure where they go and what they do. This de-risks the selection before the team commits to a full relaunch build. [unique: feasibility]

### Near-term (3-12 months)

- Design two distinct first-session experiences: one for new users (overwhelm-to-clarity arc, value within 90 seconds) and one for returning users from the 180K install base (skepticism-to-trust arc, explicit acknowledgment of what changed and why). A/B test both with cohorts before full relaunch. [trade-off: feasibility-oriented view prioritizes the new-user arc; risk-oriented view flags that the returning-user arc is the harder and more consequential design problem]
- Set a concrete performance benchmark: the first-session arc must deliver within 90 seconds of first open on devices representing the bottom quartile of the current install base, across degraded network conditions. Define this benchmark before design begins, not after. [unique: risk]
- Write the one-sentence App Store description and a fictional three-year private journal entry (not an App Store review, which biases toward onboarding impressions) as a team exercise, before finalizing feature selection. If the sentence requires "and," the core is not yet identified. [trade-off: feasibility view uses these as direction-finding tools; risk view flags the word-of-mouth framing's shallow-simplicity bias, hence the journal entry substitution]
- Run the vision exercise in two tracks: one for "what makes the 8% who stayed stay longer," one for "what would bring back a representative churned user." Convergence between the two tracks is the product direction; divergence flags a segmentation decision the team must make explicitly. [unique: risk]

### Long-term (1+ years)

- Once the stripped-down core product demonstrates retention improvement, build the "radical omission" narrative. Position the simplification as intentional invention rather than retreat. Sequence the narrative after the proof, not before. [convergent]
- Cross-reference any feature's engagement signal against its acquisition source before treating it as a durable product anchor; a viral or influencer-driven spike may not reflect organic product-market fit. [unique: risk]

---

## Key Considerations

**High-confidence items** (both lenses agreed):
- Team pride nominations are unreliable as standalone inputs. They must be cross-referenced against actual user engagement data from the retained cohort.
- Sunk-cost reasoning will enter the selection meeting disguised as operational or technical constraints. It must be banned explicitly, with a named enforcer.
- The 47-second average session reflects notification-driven empty opens. The relaunched product must deliver genuine first value within 90 seconds with no tutorial.
- Proof of product value must precede any "radical omission as creative act" narrative. The narrative is earned, not asserted.

**Trade-offs** (the two lenses disagreed):
- A feasibility-oriented case for running the three-year vision exercise using the App Store review format (concrete, relatable, fast to draft); a risk-oriented counterpoint that review sentiment structurally captures new-user impressions rather than sustained value, and that the private journal entry format surfaces the relationship dimension the review misses.
- A feasibility-oriented case for targeting the new-user first-session arc as the primary design problem, tested via a small A/B cohort before relaunch; a risk-oriented counterpoint that the 180,000 existing users face a structurally different arc (skepticism-to-trust) that will not be solved by the new-user design, and that failing to design for it leaves the largest available re-engagement cohort unaddressed.
- A feasibility-oriented case for committing to 3 features as the selection output of one structured 90-minute meeting; a risk-oriented counterpoint that 3 features may still be too many for a team of 7 under 8-month runway to execute to high quality, and that only the top 2 features should be fully funded from launch, with features 3-4 held conditional on core metrics.

**Blind-spot flags** (only one lens raised):
- The polished-but-irrelevant feature trap: a genuinely high-quality ancillary feature can pass pride and metric tests while failing the relevance filter entirely. The selection process needs an explicit relevance gate, not just a quality gate. [unique: risk]
- Acquisition source contamination: engagement spikes tied to viral moments or influencer posts don't represent durable product-market fit. Cross-reference engagement data against acquisition source before treating any feature's signal as anchor-worthy. [unique: risk]
- Build sequence matters: design the core daily loop first, then build the first-open screen to introduce only that loop. Teams that design the home screen first tend to introduce scope at the entry point, replicating the complexity they just cut. [unique: feasibility]
- Non-fitness daily-retention mechanics (weather, transit, messaging apps) offer reverse-engineerable models for "opens without prompting." The team should identify one analog and map its open-trigger mechanic onto the fitness core. [unique: feasibility]

**Neither-lens gaps** (what a different angle would have surfaced):
- Emotional/phenomenological (lived experience of the churned majority): Neither lens examined what the 92% who left within 30 days were emotionally experiencing. Not just what features they disliked, but what it felt like to open the app and fail to find what they came for. A lived-experience lens would ask churned users to narrate that moment, which would surface product failures that neither engagement data nor team pride nominations capture.
- Equity/access/distributional: Neither lens addressed which populations within the broader fitness-seeking audience the focused product would serve or structurally exclude. A product built around the daily rituals of the 8% retained cohort may be implicitly designed for a narrow demographic (younger, more motivated, already habituated to fitness tracking), leaving behind beginners, older adults, or users with disabilities for whom the app's fitness assumptions are mismatched.
- Lifecycle/fitness-journey stage: Neither lens considered whether the focused product should target a specific stage of the user's fitness journey (beginner, rebuilding after injury, maintenance phase) as a selection filter. The engagement signal from retained users likely reflects a particular journey stage, and building to that signal without naming it may produce a product that loses users as soon as they progress past the stage it serves.

---

**Questions addressed**: 5
**Source lenses**: risk-oriented (The Devil's Advocate) + feasibility-oriented (The Pragmatist)

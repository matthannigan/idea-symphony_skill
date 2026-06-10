---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/high"
datetime: 2026-06-09
effort: "high"
stage: "Phase 4: Response Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-8"
topic-cluster: "07_communicating-the-reset-to-existing-users"
synthesis-type: "summary"
central-tension: "Whether honest, dignified communication that names the loss can be funded and executed under an 8-month runway, or whether speed and cost pressure force a shallower 'focus' message that the team's most engaged users will read as abandonment."
---

# Summary: Communicating the Reset to Existing Users

## Executive Summary

The organizing tension of this cluster is whether the team can afford to communicate honestly and humanely under runway pressure, or whether cost and speed push it toward an upbeat "focus" message that its most engaged users will experience as abandonment. The seven perspectives converge on the answer: the dignified path is also the cheaper-than-it-looks path. The alternative—poisoned word-of-mouth from the 2% cohort, review-bombing in fitness communities, and a churn signal too noisy to learn from—costs more than the handful of customer conversations and weeks of engineering that respect requires.

A reframe runs through the cluster and reorders every priority: from the user's side, removing a feature they relied on is a broken promise from a product they trusted, not merely "churn." Communication cannot fix that promise, only dignify it. This flips the default messaging instinct. Aspirational "cleaner, simpler, better" framing reads as spin and punishment for engagement. Leading with honest triage ("we built too much and nothing works well") reads as accountability and lands as relief for the 92% who already felt overwhelmed.

Three execution commitments recur across nearly every perspective. First, reach the 2% power-user cohort and the passionate niche communities personally before the public announcement, mapping their specific workflow to what remains. Second, compress the discovery window so churn front-loads into a clean 30-day signal instead of dribbling out over 60 days. Pair that with cohort-level measurement so the team learns which cut actually drives departures. Third, treat every removed feature as a humane sunset with notice, a date, vetted alternatives by name, and data export. Mine the goodbye for the unmet need each feature really served.

The critical success factor is emotional authenticity the team genuinely feels. If the message sells relief but the simplified core still feels cluttered or janky, users detect the hollowness instantly. No framing repairs it. The first 60 seconds of the relaunch, not the press release, is where trust is won or lost.

---

## Key Themes

**Reframe: "churn" is the wrong word. This is a broken promise, and communication can only dignify it, not undo it.** An adversarial lens surfaces this; it corroborates across the cluster. This reframe reorders the cluster's priorities. It moves the team away from upbeat "focus" positioning and toward apology, named loss, and arranged migration as the load-bearing actions.

### Honesty as the credibility strategy
All seven perspectives agree: lead with admission of failure, not aspirational spin. Naming the mistake ("we built 15 features and did none well"), owning the broken original promise, and framing cuts as accountability reads as more trustworthy than a strategic-pivot narrative. It lands as relief for the large majority who found the app overwhelming.

### Personal, pre-announcement outreach to the people who hurt most
The 2% power-user cohort and the small passionate user bases churn from feeling unconsulted and erased, not from feature loss alone. The recurring move is direct contact two weeks before any public announcement (individual messages, surveys, even 1:1 calls). Brief trusted community voices so they contextualize the decision instead of reacting to it.

### Compress and segment the churn signal
Delayed churn 30-60 days out makes retention illegible. Front-load the discovery window (a tight 10-14 day announcement-to-relaunch window, clear lists of what's gone and when). Tag users by feature-usage cohort so the team reads a clean signal within 30 days and avoids iterating on the wrong features.

### The first 60 seconds, not the announcement, is where trust is repaired
The relaunch's opening minute is a referendum on whether the original overwhelm problem is fixed. One clear core action, zero navigation hunting, preserved history, acknowledgment of what's gone, and a felt performance win matter more than any email or onboarding tour.

### Dignified sunsets are also product research
A humane removal process (notice, a date, alternatives, export, a public wake) doubles as roadmap research. Small passionate user bases signal unmet needs. Listening to devoted users during the goodbye reveals that the real value was often the ritual, structure, or community the feature carried, not the feature itself.

---

## Recommended Next Steps

### Immediate (0-3 months)
- Pull telemetry to identify the heaviest users of each removed feature and the full 2% DAU/MAU cohort; build the segmented contact list before drafting any message.
- Draft the announcement to lead with honest admission of failure and a clear keep/cut list with one-line reasons per cut; A/B test the "focus" narrative against the "we failed and are fixing it" narrative on a ~1,000-user segment before the full 180K send.
- Reach the power-user cohort and passionate niche communities personally two weeks before the public announcement, mapping their workflow to what remains and offering vetted alternatives by name.
- Write all removal documentation at a 6th-grade reading level with a 2-3 minute captioned video, and pressure-test it by reading it aloud to below-median-tech-literacy users; rewrite wherever they ask questions.
- Stand up a lightweight data-export tool and a 30-60 day human support line (chat or phone) for users of removed features.

### Near-term (3-12 months)
- Run a humane staged sunset (30/60/90-day tiers) with a clear date, personal farewell to devoted users, arranged alternatives, and a day-1 sunset survey asking what the feature was for, what would make them stay, and their next tool.
- Design a relaunch-week-only "welcome-back" flow that acknowledges loss before celebrating, shows a before/after, and personalizes to features the user actually used; retire it after week 1.
- Tag users by feature-usage cohort at launch and track churn over 8 weeks; redefine the success metric from "reduce churn" to "retain users aligned with the new product."
- Brief trusted fitness-community leaders and assign clear org ownership of social/review monitoring with authority to respond to specifics within 24 hours.
- Send four weeks of "weekly wins" evidence to engaged users and publish a "grief permission" post on what users loved and what the team learned.

### Long-term (1+ years)
- Publish per-feature legacy post-mortems (and optionally a public "feature graveyard") so cuts read as evidence-based, then feed the documented unmet needs into the roadmap.
- Invite the top users of removed features into early-access co-design of next-generation versions of those categories, converting potential critics into roadmap collaborators.

---

## Key Considerations

**Opportunities**:
- Honest "we failed, we're fixing it" framing converts the 92% who found the app overwhelming into advocates who feel finally understood.
- A dignified sunset doubles as roadmap research, surfacing the real unmet need behind each beloved feature.
- Respectful, well-supported migration turns departing users into people who tell friends "they handled it with dignity." This protects reputation even amid churn.
- Optional paid extended-access plans for beloved features reveal whether vocal critics represent real demand.

**Risks & Challenges**:
- Review-bombing and negative sentiment seeded in fitness communities by small passionate user bases who feel erased.
- Hollow authenticity: selling relief or clarity while the simplified core still feels cluttered or janky, which users detect instantly.
- A noisy, illegible churn signal if removals are not flagged up front and users are not tagged by cohort, leading the team to iterate on the wrong features.
- A single generic email to 180K users that satisfies none of the betrayed, relieved, and lapsed segments.

**Trade-offs**:
- Dignity and language access (personal outreach, multi-language support, human support lines) cost time and money against an 8-month runway. Skipping them risks the word-of-mouth that matters most.
- Compressing the discovery window produces a cleaner signal and faster resolution. It also brings a more intense short-term churn spike.
- Preserving the single most-loved niche feature reassures engaged users but dents the simplification narrative and reintroduces some of the maintenance burden the reset was meant to shed.
- Recommending and even subsidizing competitor apps cedes some users now in exchange for being remembered as respectful later.

---

**Questions addressed**: 7
**Key insights synthesized**: 29

---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/high"
datetime: 2026-06-09
effort: "high"
stage: "Phase 4: Response Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-8"
topic-cluster: "08_equity-inclusion-and-whose-voice-shapes-the-decision"
synthesis-type: "summary"
central-tension: "The data you would use to choose 'core' features comes from the already-filtered 8% who stayed, so engagement-driven cuts risk narrowing the app to the most-resourced users while the 92% and non-users — who hold the real signal — stay invisible."
---

# Summary: Equity, Inclusion, and Whose Voice Shapes the Decision

## Executive Summary

All seven perspectives converge on one uncomfortable finding: the data the team would use to choose its "core" features comes almost entirely from the 8% who stayed, and that 8% is a filter, not a representative sample. Optimizing the simplification on those users quietly redefines "core" as "core for users with time, ability, gym access, and stable internet." Across a few relaunch cycles this compounds into an app built exclusively for the able-bodied, employed, gym-going user. The real signal lives with the 165K who deleted and with non-users who never downloaded, precisely the people who generate no analytics.

This produces a genuine reframe that several personas reach independently and that changes which actions get prioritized: the app may not be bloated so much as buried. A 47-second average session and "I don't know where to start" point less to too many features than to a first-open screen (six tabs plus a hamburger menu) that imposes cognitive load and breaks trust before a user can log a single workout. If users came for the meal planner but couldn't find it past a fitness onboarding, the fix is unburying it or splitting the onboarding path, not deleting it. That distinction matters because it puts navigation and progressive disclosure ahead of feature cuts on the priority list. Cutting features to solve what is actually an onboarding problem destroys value while leaving the real problem intact.

The cluster's other through-line is power: who gets to decide. Feedback channels over-sample the articulate and tech-confident, so the personas push hard for moving underserved users from informants to co-decision-makers with binding influence inside the prioritization room, paid for their time. The test is whether their dissent is surfaced and resolved together rather than overridden privately. Underneath the analytics is an emotional layer the team is urged to feel rather than rationalize away. "Overwhelming" usually means shame, disappointment, or betrayal, and the 92%'s silence is a signal, not normal churn.

A final discipline cuts across every question: audit before cutting. Map which features serve the most-constrained users, which drive acquisition versus retention, and which are coupled to install channels in ways no one is currently tracking. Test the simplified product in parallel before committing. The strategic stakes are clear: an engagement-only simplification could improve a vanity metric while shrinking the addressable market and severing acquisition the team did not know it depended on.

---

## Key Themes

**Categorical reframe:** The app may not be bloated, it's buried. The 47-second sessions and "overwhelming" feedback point to a first-open navigation and onboarding failure, not an excess of features. This moves progressive disclosure ahead of feature cuts as the first action to take.

### The filtered-8% trap and the invisible majority
Every persona treats the 92% churn and the non-users as the richest available signal, not noise. Retention metrics describe only users who already matched the app's unspoken assumptions. Building "core" from them risks designing for a phantom user. The recurring methods are a post-download funnel split by exit point, exit interviews with recent uninstallers, and outreach to non-users where they congregate.

### Constraint as the design filter, not an afterthought
Reframing core selection from "best for most users" to "works for users with the fewest resources" recurs across perspectives. An accessibility audit (who is served, who disappears if you cut to 3-4 features, what low-effort tweaks keep them) should precede any cut. Social features can be made asynchronous rather than deleted to serve irregular schedules at lower maintenance cost.

### From informants to co-decision-makers
The dominant prioritization move is seating a small, paid panel of underserved users inside the decision with binding power, not consulting them after the fact. The litmus test for whether it is real co-design: when their votes conflict with the strategic vision, that conflict is surfaced and resolved together. Multi-channel, format-specific feedback intake (SMS, Discord, WhatsApp audio, in-person) replaces a single survey that washes out hidden clusters.

### The emotional substrate of "overwhelming"
"Overwhelming" is decoded as shame, disappointment, betrayal, or fear rather than neutral complexity. Immediate deletion is read as the absence of any reason to stay. The personas urge the team to feel this rather than rationalize it, and to diagnose with behavior film of real first-time sessions instead of survey responses.

### Audit feature-to-acquisition coupling before cutting
Acquisition drivers and retention drivers are usually different features. The coupling is invisible because growth and product teams sit in separate silos. A feature-to-channel attribution map, a feature-ROI matrix, and a parallel acquisition test all guard against turning a feature cut into a silent acquisition cliff.

---

## Recommended Next Steps

### Immediate (0-3 months)
- Run behavior-film usability tests on 8-20 cold first-time users ("log a workout") plus session-replay on the live app to locate exactly where the 47-second sessions die; prototype a one-action, progressive-disclosure first-open before deciding any cuts.
- Conduct a post-download funnel analysis splitting the ~165K non-stayers by exit point (never opened / opened once / 2-3 sessions / weeks-then-dropped), and run exit interviews with 48-hour uninstallers asking which feature they came for and whether they found it.
- Build the feature-to-acquisition attribution map: 90 days of installs by channel, tagged to store-listing features and keywords, cross-referenced with session logs to separate acquisition drivers from retention drivers.
- Run an accessibility audit across all 15 features (who is served, who disappears if cut to 3-4, what low-effort tweaks keep them) before removing anything.

### Near-term (3-12 months)
- Recruit and pay a panel of 8-12 underserved users (non-English speakers, lower-literacy, 55+, mobile-only, bottom-quartile retention) and seat them inside a feature-prioritization sprint with binding influence; track what changes when they are in the room.
- Stand up multi-channel, format-specific feedback intake (in-app exit survey, SMS, Discord, WhatsApp audio, in-person) and aggregate by segment rather than averaging, so hidden user clusters surface.
- Run a parallel acquisition test: a simplified second store listing or landing page taking ~10% of traffic for 30 days, measuring install-to-3rd-session, 30-day retention, and cohort quality before committing to the full cut.
- For any feature genuinely cut, ship a migration path (data export plus a partner handoff) rather than a sudden sunset.

### Long-term (1+ years)
- Redefine success metrics around each segment's actual intent (a weekly logger who hits one workout a week is a success), replacing a single DAU/MAU lens that miscounts intentional low-frequency users as churn.
- Institutionalize a reach-before-engagement measure (what percent of each segment can use a feature) to break the "Success to the Successful" loop that narrows the user base across relaunch cycles.

---

## Key Considerations

**Opportunities**:
- The 92% churn and non-user population are an untapped, high-signal research source that current analytics structurally ignore.
- Much of the "overwhelm" may be fixable through onboarding and progressive disclosure faster and cheaper than through feature removal.
- Underserved users acting as co-designers tend to cut feature count faster than data analysis because they have no tolerance for friction.

**Risks & Challenges**:
- Engagement-only cuts narrow the addressable market to the most-resourced users and compound that narrowing across relaunch cycles.
- Cutting an acquisition-driving feature (for example, a meal-planner ranking for keyword installs) can silently crater organic acquisition.
- Solving an onboarding problem by deleting features destroys value while leaving the real problem intact.
- Co-design done as a focus group the PM then overrides is still design *for*. Asking labor from constrained users carries a real cost.

**Trade-offs**:
- Retention-optimized vs. acquisition-preserving feature sets can be different features, forcing repositioning or time-gating rather than a clean cut.
- Acquiring higher-match users via narrower store messaging means fewer total installs.
- Keeping a low-engagement accessibility feature costs maintenance but preserves reach and signals continued commitment to constrained users.
- Genuine power-sharing in prioritization is slower and messier than a PM deciding, but it is what surfaces the blind spots data hides.

---

**Questions addressed**: 5
**Key insights synthesized**: 23

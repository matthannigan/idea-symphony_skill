---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/low"
datetime: 2026-04-27
effort: "low"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
topic-cluster: "08_choosing-the-relaunch-path-and-communicating-the-change"
persona: "The Pragmatist"
---

# Choosing the Relaunch Path and Communicating the Change - The Pragmatist

---

## Incremental Simplification vs. Clean Relaunch

* **Build a decision scorecard before the meeting, not during it.** Assign point values to five measurable factors — churn risk, engineering weeks required, time-to-new-acquisition-baseline, team velocity gain, and App Store review risk — and score both paths against each. With 8 months of runway, clean relaunch needs to deliver a usable v1 in under 3 months; if the engineering estimate exceeds that, incremental wins by default. Make the decision clock explicit: agree on a cutoff date (suggest 2 weeks from now) after which you commit and stop relitigating.

* **Treat the paths as having different risk profiles, not different quality levels.** Incremental simplification risks "never feeling done" and keeping the team in triage mode for months — calculate how many engineer-weeks that maintenance drag costs per month, then multiply by 5 months of drift. Clean relaunch risks a churn spike in month 1 — estimate that spike using your 2% DAU/MAU as the retention floor. Whichever path has the lower expected cost in runway-equivalent terms is the practical choice.

* **Run a spike on the technical dependency map before deciding.** Spend one engineer for three days mapping which features share database tables, API endpoints, or UI components with your proposed core 3-4. If the features you want to cut are deeply entangled (shared auth, shared notification system, shared data models), clean relaunch is actually cheaper than surgical removal. If they're modular, incremental wins. This is a technical question that can be answered in days; don't make a 6-month strategic decision without it.

* **Use the team's burn rate as the decision clock.** At 8 months of runway with a team of 8, you're spending roughly $80-120K per month (conservative). Incremental simplification that takes 4 months to show retention lift costs ~$400K before you see signal. A clean relaunch that ships in 10 weeks costs ~$250K. Frame the decision in dollars spent before next measurable signal, not in abstract product philosophy.

* **Pilot the clean relaunch with a segment first.** Before committing the whole product, release the stripped-down version to 5% of new installs via an A/B test in TestFlight or Firebase. Run it for 3 weeks, measure 7-day and 30-day retention against the control group. If you see meaningful lift, you have data to justify the full switch AND a communication template that already worked on real users. This turns a binary bet into a staged decision.

---

## The Incremental-vs-Clean-Break False Dichotomy

* **Evaluate the separate-app path with a 30-day feasibility window, not a strategy offsite.** Assign one engineer to assess whether your existing backend can support a second app without a full fork — most fitness app backends can serve multiple clients from a single API layer. If yes, the marginal cost of a separate app is primarily frontend and App Store overhead (~4-6 weeks of one engineer), not a full rebuild. That changes the calculus significantly.

* **The real constraint on a separate app is acquisition cost, not build cost.** A new app in the App Store starts at zero organic installs. With 180K existing downloads, you have a notification and email channel to drive cross-installs. Model the funnel: if 5% of your existing base migrates to the new app (9K users) and new-app retention is 3x better (still modest at 24%), that's a stronger base than the current product provides. A practical approach: launch the new app quietly, drive 10K installs from your existing base, validate retention, then decide whether to sunset the old one.

* **The assumption that makes same-product relaunch the default is risk aversion, not logic.** Teams default to iterating the existing product because it feels less wasteful — "we already have 180K downloads." But App Store ratings are public. If your current rating reflects the chaotic experience, a new app lets you start with a clean slate on reviews. Check your current App Store rating; if it's below 3.5, the existing app is an anchor, not an asset.

* **A third path exists within the existing app: a "focus mode" toggle.** Ship a settings option that hides all non-core features behind an advanced menu, effectively giving users a simplified version of the existing app without removing anything from the codebase. This costs 1-2 weeks of engineering, preserves power users, and gives you real data on whether simplified navigation improves retention — before you commit to deleting anything permanently.

---

## Rebuilding Trust, Modeling Churn, and the Simplification Announcement Paradox

* **Segment your 180K by actual behavior before writing a single line of copy.** Users who opened the app once and never returned (likely 60-70% of downloads given your metrics) don't need churn communication — they've already left. Focus retention efforts on the ~14K monthly actives. Of those, identify which single feature they most recently used; that's your at-risk segment map. Users whose primary feature is being cut need a personal migration path, not a mass announcement.

* **Model the churn math explicitly: the announcement risk is probably smaller than it feels.** With 2% DAU/MAU, your daily actives are roughly 3,600 people. If a feature removal triggers 20% churn among the ~14K monthly actives (aggressive estimate), you lose ~2,800 users. At your current retention trajectory, those same users have a high probability of lapsing anyway within 60 days. The real question is whether the simplified product retains the remaining 11K better than the current product would. Run that projection before treating churn as a reason to avoid the cut.

* **Design the removal as a migration, not a deletion.** For each feature being cut, build a one-tap export: workout history to CSV, meal plans to PDF, social connections to an email list. This reduces loss aversion by giving users their data back. It also turns "you're removing my feature" into "you're giving me ownership of my data" — a reframe that costs 2-3 engineer-days per feature and significantly changes the emotional response.

* **Use in-app messaging timed to behavior, not a blast announcement.** Trigger the simplification message when a user opens the app, not via push notification. A user who opens the app is signaling intent; that's the moment to say "we've focused the app around [core feature] — here's what changed and why." Blast notifications about feature removals are how you manufacture the churn spike you're trying to avoid.

---

## Communication Built on Honesty and the Existing User's Grief

* **Write the announcement as a product postmortem, not a press release.** Users who gave the app a genuine try deserve a direct explanation: "We built too much, too fast, and none of it worked as well as it should. We're starting over with [core feature] done right." This framing respects the user's intelligence, acknowledges the team's actual experience, and positions the change as intentional correction rather than strategic pivot. It costs nothing and converts more skeptics than any polish-layer messaging.

* **Give users a 30-day advance notice window with a concrete opt-out.** Send the announcement 30 days before features go dark. Include a clear list of what's changing, a data export option, and a calendar invite for a live Q&A session the team hosts. This is operationally cheap (one calendar event, one support thread) and signals that the team is accountable. Users who churned after a heads-up are qualitatively different from users who churned because they felt blindsided — the former group is more likely to return when the simplified product matures.

* **Identify the top 20 power users of each cut feature and contact them directly.** For a 180K download base with 2% DAU/MAU, you likely have fewer than 50 users who are genuinely heavy users of any single niche feature. Email them personally, explain the decision, ask what they'd need to stay. Some will churn regardless; a few will become vocal advocates if they feel heard. The cost is 2-3 hours of PM time; the upside is converting potential detractors into participants in the rebuild story.

* **Frame the message around what the product is becoming, not what it's losing.** Lead with the concrete new promise: "Starting [date], [App Name] does one thing: [core value prop]. Every session, every notification, every screen is designed around that." Anchor the announcement to a specific date and a specific capability improvement — not a vague "we're focused now." Users who stayed through the chaos stayed because something in the original idea resonated; remind them what that was.

---

## Deliberate Amnesia / Feature Funeral

* **A feature funeral works if it's tied to a specific relaunch date and a real product commitment.** The ceremony is only credible if "here's what we're keeping and why it will be better" is as prominent as "here's what we're retiring." A practical implementation: a single landing page with a countdown to the simplified launch, a card for each deprecated feature with a one-sentence eulogy and a data export link, and a sign-up for the new version. Build time: 3-4 days. The page either goes viral in your niche (earned PR) or quietly converts 2-3% of your existing base — both outcomes are positive.

* **The viral upside requires social mechanics built into the ceremony.** If you want users to share their feature eulogies, give them a template: "I used [feature] to [specific habit]. RIP." Pre-fill it, add a share button, seed it with 5-10 team members posting first. The content is authentic because users' habits were real. Cost: 1 day of design, 1 day of frontend work. Risk: if the tone is off, it reads as mocking users' investment. Test the copy with 5 real users before publishing.

* **The funeral mechanic generates product signal beyond its PR value.** Which features get the most eulogies tells you something data analytics might miss — specifically, which features had emotional resonance even if their usage metrics were low. A feature used infrequently but mourned loudly might be a candidate for a dedicated integration or data export partnership rather than complete burial. Capture that data before the ceremony ends.

* **Keep the scope tightly bounded to avoid execution risk.** A feature funeral that tries to be a multi-week campaign with voting, epitaphs, and ceremonies will consume PM and design capacity that should be going toward the simplified product. A practical approach: one page, one week live, one social post seeding it. If it gains traction, extend. If it doesn't, it still served its purpose as honest communication and generated export leads.

---

## The Three-Body Problem

* **Solve for the binding constraint first, then check the others.** With 8 months of runway, funding is the gravitational center. Calculate the minimum viable team configuration that ships a simplified v1 in 10 weeks: likely 3 engineers, 1 designer, 1 PM in a focused sprint. The remaining 3 engineers handle technical debt cleanup and deprecation in parallel. This preserves runway without sacrificing quality on the core build. Retention will follow if the product is actually better; it can't be optimized directly.

* **Map the constraint interactions in a single spreadsheet before making decisions.** Column 1: feature cut decision. Column 2: estimated churn from that cut (use your segment data). Column 3: engineering weeks freed up by that cut. Column 4: runway extension from reduced maintenance burden. The spreadsheet makes the three-body coupling visible and testable. A practical approach: spend 4 hours building this model before the strategy meeting; it will surface which cuts have the best trade-off profile and end the debate faster than any framework discussion.

* **The team capacity constraint is the most underweighted factor.** A burned-out team maintaining 15 features will ship slower and with more bugs than a focused team owning 3-4. The runway calculation should include a productivity multiplier: a focused team of 8 is likely 30-40% more productive than the same team in maintenance mode. That's roughly equivalent to 2-3 extra months of effective runway — a material input that changes the decision math.

* **Set a single cross-constraint metric as the north star.** Retention per dollar of runway spent is more useful than optimizing retention and runway separately. Define it as: (30-day retention rate × monthly active users) / monthly burn. This single number forces every feature and communication decision through all three constraints simultaneously, and gives the team a shared scoreboard rather than three competing ones.

---

## The Urban Renewal Trap

* **Conduct a workflow audit with 10 heavy users before finalizing the cut list.** Ask each user to screen-record a typical session and narrate what they're doing. You're looking specifically for sequences that cross feature boundaries — someone who checks the workout tracker, then glances at the social feed to see what their friend did, then logs a meal. These cross-feature workflows often aren't visible in analytics because they look like separate sessions. Budget 2 hours per user interview; 10 interviews = 20 hours of PM time, a fraction of the cost of shipping the wrong simplified product.

* **Distinguish between features worth preserving and workflows worth preserving.** The goal isn't to keep the meal planner; it's to preserve the "accountability loop" that the meal planner + social feed combination was enabling. To make this feasible, redesign the core feature set around the workflow, not around the feature inventory. For example: if the workout-to-social-share sequence drives retention for your most engaged users, the simplified app needs a lightweight version of that loop even if the full meal planner and social feed are gone.

* **Navigation complexity itself may have become a feature.** Some users learned the hamburger menu and 6 tabs; that proficiency is a switching cost. A practical approach: keep the existing navigation available as a "classic mode" for 90 days post-relaunch, with an opt-in prompt to try the new simplified navigation. This reduces disruption for power users while driving new users toward the cleaner experience. Track classic mode usage weekly; if it drops below 10% of active users by day 60, deprecate it cleanly.

* **Map the informal social infrastructure specifically.** The fitness app's social dimension — friend connections, challenge completions, shared progress — represents accumulated social capital that users may not consciously value until it's gone. Before removing social features, export a connection graph: how many users have 3+ friends in-app, how many have participated in a challenge, how many have received a comment. If more than 20% of your monthly actives have social ties, the social layer is load-bearing infrastructure, not a dispensable feature, and should anchor the simplified product rather than be cut.

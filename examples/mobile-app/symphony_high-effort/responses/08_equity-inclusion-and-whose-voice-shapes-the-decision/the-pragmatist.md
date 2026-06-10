---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "08_equity-inclusion-and-whose-voice-shapes-the-decision"
persona: "The Pragmatist"
---

# Equity, Inclusion, and Whose Voice Shapes the Decision - The Pragmatist

---

## Accessibility Across User Circumstances

* **Summary.** Before cutting features, conduct a two-week accessibility audit across the current 15 features: map which features serve users with low gym access, irregular schedules, or limited mobility (home workouts, async check-ins, accessible progressions). Don't assume core = gym-focused. Practical first step: analyze user session data by geography, device type, and time-of-day patterns to identify which "secondary" features are actually core for underserved user segments. If home workouts or meditation drive retention in rural areas while gym tracking does in cities, the simplification strategy changes. Strip features by segment, not universally—keep the accessible versions, cut the redundant ones.

---

## Design With vs. Design For: Inclusion in Decision-Making

* **Summary.** User interviews are expensive and slow; structured surveys over-represent engaged users. Instead, embed lightweight feedback into the product itself: add a three-question in-app exit survey (shown to users who uninstall or churn) asking *why* they left and what one feature they'd keep. Simultaneously, recruit 8–12 "advisory users" from retention data's bottom quartile (lower-literacy, non-English, mobile-only, infrequent logins) and pay them $200–300 for structured one-hour sessions. This costs ~$2K–4K, takes 3 weeks, and gives direct voice to users the surveys miss. Frame it as co-design: show them wireframes, ask "does this work for you?" rather than "what do you want?"

---

## Who Is Not in the Data: The 92% and Beyond

* **Summary.** The 92% who didn't stick are not knowable from session data alone. Practical approach: purchase a small cohort of App Store review mining (or hire a contractor for $1K) to categorize the last 500 reviews and one-star feedback by theme (confusing, slow, too many features, ads, etc.). Then, audit the team's user assumption list: write down three to five profiles of "typical users" the product was built for, and honestly ask which profiles are missing (shift workers, non-English speakers, older adults, people with visual impairments). Where there's a gap between assumptions and market reality, run a targeted acquisition test in that segment (Reddit, Facebook groups, regional subreddits) and measure feature adoption differently for that cohort. This surfaces which features drive adoption in neglected segments and prevents invisible users from being ignored during simplification.

---

## The First-Open Moment: Cognitive Load and Emotional State

* **Summary.** Conduct a structured usability test with 6–8 new users (recruit from Respondent or similar, budget $500–800): give them the app cold, tell them "log a workout," and watch where they get stuck—which tab do they tap first, how long before they give up, do they try again? Record their narration. This takes one day to execute and reveals the exact moment hope collapses into confusion. If users open the app, see six tabs and a hamburger menu, and immediately close it, that's not a feature-prioritization problem—it's an onboarding problem. The practical fix might be: hide four tabs behind a "more" menu for first-time users, or gate features behind completion of an initial setup flow. The MVP isn't fewer features; it's a guided first experience. Pair this with session replay analytics (Hotjar, LogRocket) on the current app to see where 47-second sessions terminate.

---

## Feature-Dependent Acquisition Channels

* **Summary.** Before cutting any feature, run an acquisition audit: pull traffic and conversion data for the last 90 days by source (organic search, App Store keyword installs, referral, paid ads), and tag which features appear in the app store listing, which keywords drive traffic, and which features appear in App Store screenshots. If the meal planner drives 30% of organic installs because it ranks for "meal planning fitness app" keywords, cutting it silently drives acquisition down. Practical approach: build a simple spreadsheet mapping the 15 features to acquisition channels (organic search keywords, in-store screenshots, partnerships, referral mentions). Features with zero acquisition impact are free to cut. Features with significant channel dependency either need to stay, migrate to a partner integration, or be replaced with something that serves the same keyword space. This prevents a feature cut from being a silent acquisition cliff.

---
project-name: "Modern Habit Tracker Web App"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/habit-tracker/high"
date: 2026-04-22
effort: "high"
stage: "Phase 2 Step 2.2: Persona-Based Question Generation"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
persona: "The Questioner"
category: analytical
stream: synthesize
volume: 18
---

# Brainstorming Questions from The Questioner: Modern Habit Tracker Web App

## Hidden Assumptions About What "Better" Means

1. **Why do we assume the problem is the app?**: The PRD targets users who have "bounced" from previous habit apps — but what if the issue isn't the app design at all? What if those users simply weren't ready to change the habit, or chose habits misaligned with their actual values? How do we design for that possibility without slipping into coaching territory?

2. **What does "day 47 is easier than day 2" actually mean?**: The vision states the app should become easier to use over time — but easier for whom, and how? Is this about reduced friction in the interface, about habits becoming more automatic (and thus needing less reminding), or about the app learning to get out of the way? What are we really optimizing for as time passes?

3. **Why do we assume users want fewer notifications?**: The PRD commits to exactly two notification types — morning nudge and weekly review. Have we considered that the users who burned out on previous apps were over-notified, or that they simply received notifications at the wrong moments? What if some users' ideal notification model is radically different from the one we've chosen?

4. **What if "streak anxiety" is a feature we're removing that some users actually need?**: The PRD frames streak anxiety as a pain point to eliminate — but for some people, the psychological pressure of a streak is precisely what keeps them going. What if we're designing for one psychological profile while inadvertently alienating another?

## The Problem With the Target User's History

5. **What do we actually know about why previous apps failed these users?**: The primary target user has "bounced" from at least one prior habit app. Have we considered that different users bounced for entirely different reasons — one because of gamification overload, another because of notification fatigue, another simply because life got busy? What if designing for "the person who bounced" is designing for a ghost?

6. **Why do we assume the new app won't be abandoned for the same reasons?**: If we strip out gamification, aggressive notifications, and social features — but the user's core failure mode is motivation collapse after 3–4 weeks — have we actually addressed the problem? What does the app do for someone who stops opening it not because it's annoying, but because they've given up?

7. **What if "partial logging" is more important than it appears?**: The PRD lists partial logging as an open question about UI complexity, but what if the ability to log "I did 15 min instead of 30" is actually central to preventing quit behavior? What do we risk by treating it as a secondary concern rather than a core commitment the app makes to users?

## Differentiation and the Crowded Market

8. **Why do we assume our chosen differentiators are actually differentiable?**: The PRD names thoughtful UX, behavioral science, and sustainable engagement as the axes of differentiation. Have we verified that Habitica, Streaks, and HabitBull don't already claim exactly these things in their own marketing? What does differentiation mean in a market where every entrant says they're "science-backed" and "human-centered"?

9. **What if "minimal" is already what competitors are converging on?**: The PRD positions minimalism as a competitive advantage — but if every burned-out habit-app user is now being targeted by minimal-first competitors, what actually distinguishes this product? What does "minimal" have to mean that it doesn't currently mean in this market?

10. **Have we considered who the actual competition is?**: The PRD names Habitica, Streaks, and HabitBull as competitors — but what if the real competition is a plain notes app, a paper journal, or just a recurring calendar reminder? How does positioning change if we define the competitive set as "anything a person uses to track habits" rather than "other habit-tracking apps"?

## Monetization and Alignment

11. **What if the free tier's 3-habit limit creates the wrong kind of constraint?**: The free tier caps users at 3 active habits. Have we considered that someone trying to build 4 habits simultaneously is actually more likely to fail — and that the constraint we've labeled a monetization boundary might also function as genuine behavioral guidance? Or does it create a perception of artificial scarcity that undermines trust?

12. **Why do we assume subscription is the right alignment model for this product?**: The PRD rules out ads and data selling — but what if a one-time purchase (rather than subscription) better aligns with the user's psychological relationship to the product? A habit tracker isn't a service you consume monthly; it's a tool you use indefinitely. What does the monetization model signal about what kind of relationship the product is offering?

## The Weekly Review's Hidden Stakes

13. **Why do we assume the weekly review will be used?**: The PRD cites this as a potential wedge — competitors bury the review, so surfacing it on Sunday could differentiate. But have we considered whether the review itself, not its placement, is why users skip it? What specific design decisions would make a weekly review genuinely worth three minutes of a user's Sunday?

14. **What does the weekly review actually change?**: The PRD frames the weekly review as "adjust next week's intentions" — but intentions can be adjusted without a formal review prompt. What is the review doing that organic use of the app doesn't do? If we can't articulate a clear behavioral function it serves, are we building a feature or a ritual?

## Technical Posture and Real Constraints

15. **What do we risk by treating local-first as "feasible if possible"?**: The PRD lists local-first as a preference with cloud sync as enhancement — but the check-in speed requirement and offline scenario (subway use) may make this architectural choice load-bearing, not optional. What decisions would change if we committed to local-first now rather than treating it as a nice-to-have?

16. **Why do we assume web-first is compatible with the core loop's speed requirements?**: The PRD's core loop demands a check-in under 10 seconds on mobile, but the PRD also acknowledges "check-in speed requirement favors native." Have we fully examined what it would take to meet that bar on web — and what we'd be giving up if we settled for 15 seconds?

## Long-term Engagement and Absence

17. **What do we want to happen when someone disappears for 10 days?**: The PRD lists this as an open question — but the answer reveals a core design philosophy. "Silent wait" treats the app as a neutral tool; "gentle nudge" treats it as a supportive companion; "explicit pause" treats it as a commitment contract. Which of these relationships is the one we're actually trying to build, and does that match everything else we've committed to in the PRD?

18. **What if success looks different from what our metrics measure?**: The PRD's 30-day retention goal is >25% against a 15% benchmark — but have we considered that someone who uses this app consistently for 6 months and then stops because the habit is now automatic has succeeded completely? Are we measuring product success or user success, and are those the same thing?

---

**Total questions**: 18
**Topic clusters**: 5

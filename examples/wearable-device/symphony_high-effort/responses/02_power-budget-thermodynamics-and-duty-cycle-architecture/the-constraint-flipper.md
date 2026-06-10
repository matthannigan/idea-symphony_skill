---
project-name: "On-Device ML Health Monitoring Wearable"
session-dir: "test-runs/wearable-device/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "02_power-budget-thermodynamics-and-duty-cycle-architecture"
persona: "The Constraint Flipper"
---

# Power Budget, Thermodynamics, and Duty-Cycle Architecture - The Constraint Flipper

---

## Q1: Battery as Keystone Constraint and Zero-Based Budget

### Response 1A: The Design Clarity Reframe
The 7-day constraint is your competitive moat. Rather than fighting it, let it force ruthless prioritization: which anomalies matter most? This becomes a feature conversation with users. Instead of "our battery is weak," you're saying "we optimized for cardiac events you actually care about." A zero-based budget that kills continuous 100Hz sensor fusion *enables* you to ship something lean, clinically defensible, and fast—rather than designing an infinite feature list on a battery that never ships.

### Response 1B: The Regulatory Advantage
Three days of world-class detection beats seven days of mediocre noise. Flip the question: for FDA, does continuous monitoring actually strengthen your claim, or does it create liability (false positives during sleep)? Event-triggered inference with validated gaps actually looks *cleaner* on a 510(k) submission. Users sync nightly anyway—three-day batteries align with human sleep cycles. Your "limitation" becomes clinically smarter.

### Response 1C: The Feedback Loop Unlock
Seven-day battery targets force daily user interaction: docking, app sync, data review. That's not friction—it's a structured feedback loop. Users see trends, engage with their data, and you collect behavioral signals that improve your model. A seven-day device that ships in 12 months beats an ambitious 14-day device that launches in 30. Early market validation with real users *trumps* perfect specs.

### Response 1D: The Supply Chain Agility Play
Locking into NPU hardware for an unvalidated 7-day claim risks a $2M tooling gamble. Instead, start with proven components (off-the-shelf MCU + modest inference), prove the concept and power story with *real* wearables on real wrists, then custom-design the NPU knowing exactly where your bottleneck lives. Your battery target forces early validation that saves $5M downstream.

### Response 1E: The Unexpected User Win
Users secretly dread always-on wearables—they feel like surveillance. A device that monitors *intentionally* (docked at night, context-aware during day) feels qualitatively different. Seven days repositions your product from "obsessive tracking" to "clinically-timed wellness check-ins." Marketing loves that narrative, and it's true.

---

## Q2: Thermodynamic Lower Bound and Analog Gating

### Response 2A: The Hybrid Detection Strategy
Shannon's bound is liberating—it tells you where the real win lives. Instead of burning energy on continuous ML, invest in a dumb analog comparator watching R-R intervals. Ninety percent of normal rhythms sail past. Only the anomalous 10% wake the NPU. You've moved your classification boundary into the cheapest domain (analog). The NPU now runs warm inference, not idle waste. One simple threshold gate could halve inference energy.

### Response 2B: The Physics-First Design
Landauer's principle says you must spend minimum energy per decision bit. Flip it: what if you designed your anomaly definition *around* the minimum-energy computation, not the other way? Instead of asking "can our NPU detect X," ask "what's the most energetically efficient anomaly we can detect?" That might be simpler, more robust, and *more* clinically useful than what you'd originally designed.

### Response 2C: The Signal-Processing Win
A classical R-R interval irregularity detector costs milliwatts to run continuous. It filters 99% of normal rhythms. Only feed those rare anomalies to your quantized ML model. You've created a two-stage gate that's actually more reliable (analog path has no quantization error) and orders of magnitude more efficient. Your constraint forces elegant signal-flow architecture.

### Response 2D: The Energy Budget Transparency
Computing the theoretical minimum energy per bit of arrhythmia detection gives you a *target*, not a roadblock. If you're 10x above the bound, you know the gap is algorithmic (your model can be pruned or quantized further). If you're near-optimal, you've proven hardware efficiency and can sell on accuracy instead. Constraint clarity beats guessing.

---

## Q3: Forced Simplicity as a Feature

### Response 3A: The Intentionality Reframe
"We can't do continuous monitoring" becomes "we designed for *meaningful* monitoring." Users don't actually want 24/7 surveillance—they want peace of mind. Event-triggered sensing (exercise, sleep onset, elevated heart rate) gives them exactly that. The device becomes an attentive companion, not a paranoid watcher. Simplicity here is *premium* positioning, not compromise.

### Response 3B: The User Experience Win
Always-on devices breed notification fatigue. Intermittent sensing means fewer false alarms, less app-checking, less psychological burden. Clinical studies show users *prefer* intentional monitoring over passive streams. Your battery constraint forces you toward a device that users actually *like* living with—that's a feature nobody's optimizing for.

### Response 3C: The Privacy Story
Limited battery forces local processing, frequent data review cycles, and natural data-deletion windows (users sync, old data purges). Your constraint makes HIPAA compliance feel natural, not bolted-on. "Our device is so private it practically deletes itself" is a marketing dream your competitors can't match without identical constraints.

### Response 3D: The Reliability Play
Fewer sensor streams = fewer calibration points = more robust algorithm. Intermittent PPG is cleaner PPG (no motion artifact during sleep). You're not cutting corners—you're cutting noise. Simplicity here means higher confidence in your alerts, fewer false positives, and easier clinical validation.

---

## Q4: Stage Management and Power Budget Allocation

### Response 4A: The Physiological Choreography Strategy
Your body *is* a stage manager—it broadcasts cues through heart rate, motion, skin temp. Use those signals to orchestrate power across subsystems: sleeping device runs minimal inference; exercise detected → crank PPG sampling; anomaly detected → activate display and queue sync. You're not fighting the battery—you're choreographing it to the user's own physiology. The constraint forces elegant, user-aligned scheduling.

### Response 4B: The Graceful Degradation Strength
Design your firmware as a power pyramid: core detection at the base (always runs, 5mW), enhanced inference in the middle (kicks in if battery ≥60%), premium features at top (sync, display, only when docked). Rather than sudden cliffs, users get progressive capability. Battery anxiety vanishes because degradation is predictable. Your constraint forces fault-tolerance thinking.

### Response 4C: The Resource Reservation Win
Theater companies pre-book lighting cues; you can pre-book inference windows. At 8pm, reserve 50mW for sleep monitoring; at 6am, reserve 100mW for morning exercise detection. Predictable scheduling eliminates power spikes and lets you hit your 7-day target reliably. No surprises, no race conditions. The constraint forces you toward *deterministic* firmware, which is actually more maintainable.

### Response 4D: The Context-Aware Efficiency
Sleep detection (accelerometer + HR baseline) costs nearly nothing but unlocks 50% inference optimization: you switch to batch processing during sleep instead of streaming. Stillness detection gates continuous sensor fusion. Exercise triggers high-resolution sampling for 10 minutes, not all day. Your constraint *enables* AI-driven power management—responsive, smart scheduling that a 7-day battery naturally demands.

### Response 4E: The Competitive Moat
Competitors with bigger batteries *waste* them on always-on sensing. You're forced to build sophisticated power scheduling that reads context, anticipates user needs, and orchestrates subsystems. That's a firmware moat nobody ships with bloated power budgets. By year two, your power-management code is proprietary magic. Constraint breeds innovation.

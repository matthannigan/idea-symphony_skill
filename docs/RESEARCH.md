# Research Methodology: Analyzing Idea Symphony Test Runs

This document captures the approach used to analyze test runs and generate comprehensive findings in `test-runs/INDEX.md`. Use this as a runbook to re-run analysis after implementing improvements from `TODO.md`.

**Analysis Date**: February 3-4, 2026
**Analyst**: Claude Code (Sonnet 4.5)
**Test Runs Analyzed**: 6 sessions (Feb 1-3, 2026)
**Output**: 778-line INDEX.md with findings across 5 phases

---

## Overview: Analytical Framework

The analysis proceeded through 5 phases, matching the Idea Symphony pipeline structure:

1. **Phase 1**: Planning & Request Documents (PLAN.md, REQUEST.md)
2. **Phase 2**: Question Generation (QUESTIONS.md)
3. **Phase 3**: Multi-Persona Responses
4. **Phase 4**: Synthesis & Summaries
5. **Phase 5**: Final Output (BRAINSTORM.md)

For each phase, we extracted:
- **Quantitative metrics** (file sizes, counts, ratios)
- **Structural patterns** (template adherence, section presence)
- **Content quality indicators** (specificity, evidence, actionability)
- **Platform signatures** (model-specific behaviors)
- **Cross-session patterns** (what's consistent, what varies)

---

## Prerequisites

### Required Tools
```bash
# Standard Unix tools (all sessions used macOS)
wc          # Word/line/character counts
grep        # Pattern matching
find        # File discovery
awk         # Text processing
sed         # Stream editing
basename    # Path manipulation
dirname     # Path manipulation
```

### Directory Structure
```
test-runs/
├── Pittsburgh-Community-Garden_2026-02-01/
├── Fred-Andy-Grants_2026-02-02/
├── TOL-Digital-Parapet_2026-02-02/
├── factory-neighborhood-toolkit_2026-02-02_glm/
├── factory-neighborhood-toolkit_2026-02-02_manus/
├── Civic-250-Infrastructure-Corps_2026-02-03/
└── INDEX.md (output file)
```

---

## Phase 1 Analysis: Planning & Request Documents

### Objective
Understand how sessions begin—quality of initial problem framing, planning documentation, and configuration decisions.

### Data Collection Commands

#### Basic Statistics
```bash
# Get PLAN.md statistics across all sessions
for dir in test-runs/*/; do
  session=$(basename "$dir")
  if [ -f "$dir/PLAN.md" ]; then
    size=$(wc -c < "$dir/PLAN.md" | tr -d ' ')
    lines=$(wc -l < "$dir/PLAN.md" | tr -d ' ')
    echo "$session|$size|$lines"
  fi
done
```

#### Template Section Detection
```bash
# Check for standard PLAN.md sections
for dir in test-runs/*/; do
  plan="$dir/PLAN.md"
  if [ -f "$plan" ]; then
    echo "$(basename $dir):"
    grep -c "^## Session Configuration" "$plan" || echo "0"
    grep -c "^## Persona Selection" "$plan" || echo "0"
    grep -c "^## Phase" "$plan" || echo "0"
  fi
done
```

#### REQUEST.md Template Adherence
```bash
# Analyze REQUEST.md structure
for dir in test-runs/*/; do
  req="$dir/REQUEST.md"
  if [ -f "$req" ]; then
    session=$(basename "$dir")
    size=$(wc -c < "$req" | tr -d ' ')
    sections=$(grep -c '^##' "$req")

    # Check for standard vs extended sections
    has_objective=$(grep -c "Objective\|Goal\|Purpose" "$req" || echo "0")
    has_context=$(grep -c "Context\|Background" "$req" || echo "0")
    has_constraints=$(grep -c "Constraint\|Consideration" "$req" || echo "0")
    has_strategic=$(grep -c "Strategic\|Vision" "$req" || echo "0")

    echo "$session|$size|$sections|$has_objective|$has_context|$has_constraints|$has_strategic"
  fi
done
```

### Manual Analysis Steps

1. **Template Adherence Assessment**
   - Read each REQUEST.md and PLAN.md
   - Classify as "Standard" (follows template closely) vs. "Extended" (additional sections) vs. "Minimal" (missing sections)
   - Note organic extensions (sections added by practitioners beyond template)

2. **Quality Indicators**
   - Problem specificity: Vague vs. precisely scoped
   - Context provision: Generic vs. detailed institutional background
   - Success criteria: Present vs. absent
   - Configuration decisions: Documented reasoning vs. just settings

3. **Documentation Evolution**
   - Compare early sessions (Pittsburgh Feb 1) vs. later (Civic 250 Feb 3)
   - Note improvements in documentation practices over time

### Key Findings to Document
- Template adherence percentage
- Section count variance (min, max, average)
- Common extensions (sections added beyond template)
- Best practices examples
- Platform differences in documentation

---

## Phase 2 Analysis: Question Generation

### Objective
Assess question quality, quantity, clustering, and relationship to output quality.

### Data Collection Commands

#### Question Counts
```bash
# Count questions per session
for dir in test-runs/*/; do
  questions="$dir/QUESTIONS.md"
  if [ -f "$questions" ]; then
    session=$(basename "$dir")

    # Total questions (lines starting with numbers or dashes in question sections)
    total=$(grep -E "^[0-9]+\.|^- " "$questions" | wc -l | tr -d ' ')

    # Topic clusters (## Topic headers)
    topics=$(grep -c "^## " "$questions")

    # Calculate questions per topic
    if [ "$topics" -gt 0 ]; then
      per_topic=$(echo "scale=1; $total / $topics" | bc)
    else
      per_topic="0"
    fi

    echo "$session|$total|$topics|$per_topic"
  fi
done
```

#### Question Persona Analysis
```bash
# Identify which personas generated questions
for dir in test-runs/*/; do
  q_dir="$dir/questions/by-persona"
  if [ -d "$q_dir" ]; then
    session=$(basename "$dir")
    echo "$session:"
    ls "$q_dir" | sed 's/questions_//g' | sed 's/.md//g'
  fi
done
```

#### Topic Cluster Analysis
```bash
# Extract topic cluster titles and question counts
for dir in test-runs/*/; do
  questions="$dir/QUESTIONS.md"
  if [ -f "$questions" ]; then
    echo "=== $(basename $dir) ==="
    # Extract topic headers and count questions in each section
    awk '/^## [0-9]/ {
      if (topic) print topic, count
      topic = $0
      count = 0
      next
    }
    /^[0-9]+\./ || /^- / {
      count++
    }
    END {
      if (topic) print topic, count
    }' "$questions"
  fi
done
```

### Manual Analysis Steps

1. **Question Quality Assessment**
   - Read sample questions from each session
   - Classify by type:
     - Assumption-challenging (questions "why" or "what if not")
     - Implementation-focused (questions "how")
     - Stakeholder-focused (questions "who" or "for whom")
     - Risk-focused (questions "what could go wrong")
   - Rate specificity (vague vs. precisely scoped)
   - Check for redundancy (similar questions asked multiple ways)

2. **Topic Clustering Quality**
   - Assess logical flow (foundational → strategic → operational)
   - Check cluster cohesion (questions within cluster related?)
   - Note gaps (important areas not covered)

3. **Efficiency Analysis**
   - Later correlation: Question count vs. final output size
   - Calculate "efficiency ratio" (bytes of final output per input question)
   - Identify optimal question ranges

### Key Findings to Document
- Total questions generated (sum and per-session)
- Average questions per topic cluster
- Question count range (min, max)
- Persona participation (which personas selected for question generation)
- Quality over quantity evidence (efficiency ratios)

---

## Phase 3 Analysis: Multi-Persona Responses

### Objective
Measure response volume, persona distinctiveness, evidence density, and model behavioral signatures.

### Data Collection Commands

#### Response File Statistics
```bash
# Comprehensive response file analysis
for dir in test-runs/*/; do
  resp_dir="$dir/responses"
  if [ -d "$resp_dir" ]; then
    session=$(basename "$dir")

    # Count response files
    file_count=$(find "$resp_dir" -name "*.md" -type f | wc -l | tr -d ' ')

    # Total size
    total_size=$(find "$resp_dir" -name "*.md" -type f -exec wc -c {} + | tail -1 | awk '{print $1}')

    # Average file size
    if [ "$file_count" -gt 0 ]; then
      avg_size=$(echo "scale=1; $total_size / $file_count / 1024" | bc)
    else
      avg_size="0"
    fi

    # Topic count (directories under responses/)
    topic_count=$(find "$resp_dir" -mindepth 1 -maxdepth 1 -type d | wc -l | tr -d ' ')

    # Files per topic
    if [ "$topic_count" -gt 0 ]; then
      files_per_topic=$(echo "scale=1; $file_count / $topic_count" | bc)
    else
      files_per_topic="0"
    fi

    echo "$session|$file_count|$total_size|$avg_size|$topic_count|$files_per_topic"
  fi
done
```

#### Persona Performance Analysis
```bash
# Calculate average response size per persona across all sessions
declare -A persona_sizes
declare -A persona_counts

for dir in test-runs/*/; do
  resp_dir="$dir/responses"
  if [ -d "$resp_dir" ]; then
    for file in $(find "$resp_dir" -name "*.md" -type f); do
      persona=$(basename "$file" .md)
      size=$(wc -c < "$file")

      if [ -z "${persona_sizes[$persona]}" ]; then
        persona_sizes[$persona]=0
        persona_counts[$persona]=0
      fi

      persona_sizes[$persona]=$((persona_sizes[$persona] + size))
      persona_counts[$persona]=$((persona_counts[$persona] + 1))
    done
  fi
done

# Calculate and display averages
for persona in "${!persona_sizes[@]}"; do
  avg=$(echo "scale=1; ${persona_sizes[$persona]} / ${persona_counts[$persona]} / 1024" | bc)
  echo "$persona|${persona_counts[$persona]}|$avg KB"
done | sort -t'|' -k3 -n
```

#### Model Behavioral Fingerprints
```bash
# Compare response characteristics by model/agent
for dir in test-runs/*/; do
  plan="$dir/PLAN.md"
  resp_dir="$dir/responses"

  if [ -f "$plan" ] && [ -d "$resp_dir" ]; then
    session=$(basename "$dir")

    # Extract model from PLAN.md
    model=$(grep "Model:" "$plan" | head -1 | sed 's/.*Model: //' | sed 's/\*\*//')

    # Calculate average response size
    total_size=$(find "$resp_dir" -name "*.md" -type f -exec wc -c {} + | tail -1 | awk '{print $1}')
    file_count=$(find "$resp_dir" -name "*.md" -type f | wc -l)

    if [ "$file_count" -gt 0 ]; then
      avg_kb=$(echo "scale=1; $total_size / $file_count / 1024" | bc)
    else
      avg_kb="0"
    fi

    echo "$model|$session|$avg_kb KB"
  fi
done
```

### Manual Analysis Steps

1. **Response Content Quality**
   - Read samples from each persona type
   - Assess evidence density:
     - Count specific data points (numbers, percentages, costs)
     - Note citations or references to research
     - Identify concrete examples vs. abstract concepts
   - Evaluate actionability:
     - Presence of specific recommendations
     - Implementation guidance vs. conceptual ideas

2. **Persona Distinctiveness**
   - Compare responses from different personas on same topic
   - Look for:
     - Unique perspectives (different framing)
     - Disagreements (contradictory recommendations)
     - Complementary insights (building on each other)
   - Assess whether personas feel genuinely different or convergent

3. **Platform Signatures**
   - Note distinctive characteristics by model:
     - Formatting preferences (bullets vs. prose)
     - Length tendencies (verbose vs. concise)
     - Evidence use (quantitative vs. qualitative)
     - Language style (academic vs. conversational vs. marketing)

### Key Findings to Document
- Total response files and volume (MB)
- Average file size per session
- Files per topic (indicating effort level)
- Persona performance variance (longest/shortest average)
- Model behavioral fingerprints
- Evidence of persona distinctiveness preservation

---

## Phase 4 Analysis: Synthesis & Summaries

### Objective
Measure synthesis quality, compression behavior, information preservation, and platform-specific synthesis philosophies.

### Data Collection Commands

#### Synthesis Volume Tracking
```bash
# Compare response → synthesis compression
for dir in test-runs/*/; do
  session=$(basename "$dir")
  resp_dir="$dir/responses"
  synth_dir="$dir/synthesis"

  if [ -d "$resp_dir" ] && [ -d "$synth_dir" ]; then
    # Response total (input)
    resp_size=$(find "$resp_dir" -name "*.md" -type f -exec wc -c {} + | tail -1 | awk '{print $1}')

    # Synthesis total (output - excluding attributed)
    synth_size=$(find "$synth_dir" -maxdepth 1 -name "*_synthesis.md" -type f -exec wc -c {} + | tail -1 | awk '{print $1}')

    # Summary total
    summary_size=$(find "$synth_dir" -maxdepth 1 -name "*_summary.md" -type f -exec wc -c {} + | tail -1 | awk '{print $1}')

    # Calculate retention percentages
    if [ "$resp_size" -gt 0 ]; then
      synth_pct=$(echo "scale=0; $synth_size * 100 / $resp_size" | bc)
      summary_pct=$(echo "scale=0; $summary_size * 100 / $resp_size" | bc)
    else
      synth_pct="0"
      summary_pct="0"
    fi

    echo "$session|$resp_size|$synth_size|$summary_size|$synth_pct|$summary_pct"
  fi
done
```

#### Topic-Level Compression Analysis
```bash
# Analyze compression per topic (detailed view)
for dir in test-runs/*/; do
  session=$(basename "$dir")
  echo "=== $session ==="

  for topic_dir in "$dir/responses"/*/; do
    if [ -d "$topic_dir" ]; then
      topic=$(basename "$topic_dir")

      # Response size for this topic
      resp_size=$(find "$topic_dir" -name "*.md" -type f -exec wc -c {} + | tail -1 | awk '{print $1}')

      # Find corresponding synthesis
      synth_file="$dir/synthesis/${topic}_synthesis.md"
      if [ -f "$synth_file" ]; then
        synth_size=$(wc -c < "$synth_file")

        if [ "$resp_size" -gt 0 ]; then
          compression=$(echo "scale=0; $synth_size * 100 / $resp_size" | bc)
          echo "  $topic: $compression% retention"
        fi
      fi
    fi
  done
done
```

#### Expansion Case Detection
```bash
# Find topics where synthesis expanded (>100% retention)
for dir in test-runs/*/; do
  session=$(basename "$dir")

  for topic_dir in "$dir/responses"/*/; do
    if [ -d "$topic_dir" ]; then
      topic=$(basename "$topic_dir")
      resp_size=$(find "$topic_dir" -name "*.md" -type f -exec wc -c {} + | tail -1 | awk '{print $1}')

      synth_file="$dir/synthesis/${topic}_synthesis.md"
      if [ -f "$synth_file" ]; then
        synth_size=$(wc -c < "$synth_file")

        if [ "$resp_size" -gt 0 ]; then
          compression=$(echo "scale=0; $synth_size * 100 / $resp_size" | bc)

          # Flag expansions
          if [ "$compression" -gt 100 ]; then
            echo "$session|$topic|$compression% (EXPANSION)"
          fi
        fi
      fi
    fi
  done
done
```

### Manual Analysis Steps

1. **Information Preservation Assessment**
   - For each topic, read:
     - Original responses (sample 2-3)
     - Synthesis
     - Summary
   - Check for:
     - **Lost information**: Critical details missing from synthesis
     - **Preserved tensions**: Disagreements between personas maintained
     - **Added context**: Synthesis adding clarifying scaffolding
     - **Redundancy elimination**: Overlapping content consolidated

2. **Compression Philosophy Analysis**
   - Compare synthesis approaches across platforms:
     - **Aggressive compression** (Gemini): Distill to essence, may lose nuance
     - **Balanced compression** (Claude): Preserve key details while consolidating
     - **Minimal compression** (Manus): Anthology approach, comprehensive preservation
     - **Intelligent expansion** (GLM): Add context when topics require it
   - Assess appropriateness of compression level for each topic type

3. **Quality Indicators**
   - Synthesis should:
     - Consolidate redundancy (not just concatenate)
     - Preserve critical quantitative evidence
     - Maintain persona disagreements when substantive
     - Add connective tissue between ideas
     - Structure insights logically
   - Summary should:
     - Extract 3-5 key insights
     - Provide actionable next steps
     - Flag areas of consensus vs. debate

### Key Findings to Document
- Overall compression ratios (responses → synthesis, responses → summary)
- Range of compression (min to max percentage)
- Expansion cases (topics exceeding 100% retention)
- Platform compression philosophies
- Effort level impact on compression
- Topic type impact (which topics compress more/less)

---

## Phase 5 Analysis: Final Output (BRAINSTORM.md)

### Objective
Assess final output quality, actionability, template adherence, and evidence of multi-perspective value.

### Data Collection Commands

#### Final Output Statistics
```bash
# Comprehensive BRAINSTORM.md analysis
for file in test-runs/*/BRAINSTORM.md; do
  session=$(basename $(dirname "$file"))

  # Basic metrics
  size=$(wc -c < "$file")
  lines=$(wc -l < "$file")
  sections=$(grep -c '^##' "$file")

  # Executive summary length
  exec_sum_lines=$(awk '/^## Executive Summary/,/^## [^E]/ {
    if (!/^##/) print
  }' "$file" | wc -l | tr -d ' ')

  # Recommended actions count
  actions_count=$(grep -c '^[0-9]\.' "$file" 2>/dev/null || echo 0)

  # Size in KB
  size_kb=$(echo "scale=1; $size / 1024" | bc)

  echo "$session|$size_kb|$lines|$sections|$exec_sum_lines|$actions_count"
done | column -t -s'|'
```

#### Template Adherence Check
```bash
# Check for standard template sections
for file in test-runs/*/BRAINSTORM.md; do
  session=$(basename $(dirname "$file"))
  echo "=== $session ==="

  # Required sections
  grep -q "^## Executive Summary" "$file" && echo "  ✓ Executive Summary" || echo "  ✗ Executive Summary"
  grep -q "^## Session Overview" "$file" && echo "  ✓ Session Overview" || echo "  ✗ Session Overview"
  grep -q "^## Key Themes" "$file" && echo "  ✓ Key Themes" || echo "  ✗ Key Themes"
  grep -q "^## Topic Summaries" "$file" && echo "  ✓ Topic Summaries" || echo "  ✗ Topic Summaries"
  grep -q "^## Recommended Next Steps" "$file" && echo "  ✓ Recommended Next Steps" || echo "  ✗ Recommended Next Steps"
  grep -q "^## Session Index" "$file" && echo "  ✓ Session Index" || echo "  ✗ Session Index"
done
```

#### Quantitative Evidence Density
```bash
# Count specific numbers, costs, percentages in executive summary
for file in test-runs/*/BRAINSTORM.md; do
  session=$(basename $(dirname "$file"))

  # Extract executive summary
  exec_sum=$(awk '/^## Executive Summary/,/^## [^E]/' "$file")

  # Count quantitative evidence markers
  numbers=$(echo "$exec_sum" | grep -o '[0-9][0-9]*%\|$[0-9,]*\|[0-9][0-9]*x\|[0-9][0-9]* to [0-9][0-9]*' | wc -l | tr -d ' ')

  echo "$session: $numbers quantitative evidence markers"
done
```

#### Amplification Efficiency Calculation
```bash
# Calculate output per input question (efficiency ratio)
for dir in test-runs/*/; do
  session=$(basename "$dir")

  # Input: question count
  questions_file="$dir/QUESTIONS.md"
  if [ -f "$questions_file" ]; then
    question_count=$(grep -E "^[0-9]+\.|^- " "$questions_file" | wc -l | tr -d ' ')
  else
    question_count=0
  fi

  # Output: BRAINSTORM.md size
  brainstorm_file="$dir/BRAINSTORM.md"
  if [ -f "$brainstorm_file" ]; then
    output_size=$(wc -c < "$brainstorm_file")
  else
    output_size=0
  fi

  # Calculate efficiency (bytes per question)
  if [ "$question_count" -gt 0 ]; then
    efficiency=$(echo "scale=0; $output_size / $question_count" | bc)
    echo "$session|$question_count|$output_size|$efficiency"
  fi
done | sort -t'|' -k4 -rn
```

### Manual Analysis Steps

1. **Executive Summary Quality Assessment**
   - Read each executive summary
   - Rate on rubric (0-5 scale):
     - Opening insight (meta-insight or reframing present?)
     - Numbered insights (3-5 key findings identified?)
     - Quantitative evidence (specific numbers, costs, timelines?)
     - Tensions identified (trade-offs or contradictions surfaced?)
     - Strategic context (connected to broader goals?)
   - Note best practices (exemplar quotes)
   - Identify gaps (missing elements)

2. **Actionability Assessment**
   - Read "Recommended Next Steps" sections
   - Classify each action by specificity:
     - **Implementation-ready**: Who, what, budget, timeline specified
     - **Scoped**: Clear action, needs additional planning
     - **Conceptual**: Direction indicated, substantial work needed
   - Calculate percentage in each category per session

3. **Cross-Cutting Insights Detection**
   - Check for explicit "Cross-Cutting Insights" or similar section
   - If present:
     - Count insights identified
     - Note how well they synthesize across topics
     - Check citation of source topics
   - If absent, note as gap

4. **Evidence of Persona Diversity**
   - Search for phrases indicating preserved disagreement:
     - "tension emerged"
     - "consensus vs. debate"
     - "some personas argued... while others"
     - "contradiction between"
     - "Devil's Advocate challenged"
   - Assess whether final output feels like synthesis of perspectives or single viewpoint

5. **Platform Signature Detection**
   - Note distinctive characteristics by model:
     - **Gemini**: Compression, bullet-points, marketing language
     - **GLM**: Academic rigor, quantitative evidence, expansive
     - **Claude**: Balanced, conversational, actionable detail
     - **Manus**: Alternative formats, navigation-focused

### Key Findings to Document
- Final output statistics (size range, average, variance)
- Template adherence percentages
- Executive summary quality (scores, best practices)
- Actionability distribution (implementation-ready vs. conceptual)
- Cross-cutting insights presence (% of sessions)
- Evidence of persona diversity preservation
- Amplification efficiency (output per input question)
- Platform behavioral signatures

---

## Cross-Phase Analysis

### Comparative Questions

After analyzing all 5 phases individually, synthesize findings to answer:

1. **Pipeline Efficiency**
   - Does compression accumulate through phases?
   - Example: Gemini 2.5 KB responses → 19% Phase 4 retention → 4.1 KB final
   - Calculate total compression: Phase 2 questions → Phase 5 output

2. **Quality Correlation**
   - Do more questions produce better outputs? (Compare amplification efficiency)
   - Does effort level (Low/Medium) correlate with quality? (Compare within same domain)
   - Which phase has highest quality variance? (Identify optimization opportunities)

3. **Platform Fingerprints**
   - Are model behaviors consistent across phases?
   - Do tendencies amplify (Gemini compression at Phase 3 → more extreme at Phase 5)?
   - Which model best fits which use case?

4. **Template Evolution**
   - Where do practitioners extend templates? (Common additions across sessions)
   - Where do templates constrain? (Alternative formats adopted)
   - What's the 80/20? (Which template sections always present vs. optional)

5. **Multi-Perspective Value**
   - Is diversity preserved through pipeline? (Phase 3 disagreements → Phase 5 tensions)
   - What evidence proves multi-perspective approach adds value?
   - Where does synthesis over-smooth? (Important disagreements lost)

### Synthesis Commands

#### End-to-End Compression Tracking
```bash
# Track data volume through entire pipeline
for dir in test-runs/*/; do
  session=$(basename "$dir")

  # Phase 2: Questions (input size)
  q_size=$(wc -c < "$dir/QUESTIONS.md" 2>/dev/null || echo 0)

  # Phase 3: Responses (max expansion)
  r_size=$(find "$dir/responses" -name "*.md" -type f -exec wc -c {} + 2>/dev/null | tail -1 | awk '{print $1}')
  [ -z "$r_size" ] && r_size=0

  # Phase 4: Synthesis (first compression)
  s_size=$(find "$dir/synthesis" -maxdepth 1 -name "*_synthesis.md" -type f -exec wc -c {} + 2>/dev/null | tail -1 | awk '{print $1}')
  [ -z "$s_size" ] && s_size=0

  # Phase 5: Final output
  f_size=$(wc -c < "$dir/BRAINSTORM.md" 2>/dev/null || echo 0)

  # Calculate total compression ratio
  if [ "$r_size" -gt 0 ]; then
    total_compression=$(echo "scale=0; $f_size * 100 / $r_size" | bc)
  else
    total_compression=0
  fi

  echo "$session|$q_size|$r_size|$s_size|$f_size|$total_compression%"
done
```

---

## Documentation Template

When documenting findings in INDEX.md, use this structure for each phase:

```markdown
## Phase N: [Phase Name]

[Overview paragraph explaining what this phase does]

### [Metric Category 1]

**Key Statistics:**
- [Metric]: [Value] ([Range] across sessions)
- [Metric]: [Value]

**Observations:**
- [Pattern observed across multiple sessions]
- [Platform-specific behavior]
- [Quality indicator]

**Evidence:**
- [Specific example from Session X]
- [Quote or data point]

### [Metric Category 2]
[... repeat structure ...]

### Key Findings

✓ **What works well**: [Positive findings]
⚠️ **Areas of variance**: [Inconsistencies needing attention]
❌ **Gaps or issues**: [Problems to address]

### Best Practices

[Exemplar examples from sessions]
```

---

## Automation Opportunities

### Scripts to Create

For future iterations, create these automation scripts:

#### 1. `scripts/analyze-phase-1.sh`
```bash
#!/bin/bash
# Analyze Phase 1 (Planning & Request) across all sessions
# Output: CSV with PLAN.md and REQUEST.md statistics
```

#### 2. `scripts/analyze-phase-2.sh`
```bash
#!/bin/bash
# Analyze Phase 2 (Questions) across all sessions
# Output: CSV with question counts, topics, efficiency metrics
```

#### 3. `scripts/analyze-phase-3.sh`
```bash
#!/bin/bash
# Analyze Phase 3 (Responses) across all sessions
# Output: CSV with file counts, sizes, persona performance
```

#### 4. `scripts/analyze-phase-4.sh`
```bash
#!/bin/bash
# Analyze Phase 4 (Synthesis) across all sessions
# Output: CSV with compression ratios, preservation metrics
```

#### 5. `scripts/analyze-phase-5.sh`
```bash
#!/bin/bash
# Analyze Phase 5 (Final Output) across all sessions
# Output: CSV with BRAINSTORM.md statistics, quality scores
```

#### 6. `scripts/generate-index.sh`
```bash
#!/bin/bash
# Master script that runs all phase analyses and generates INDEX.md
# Calls phase-specific scripts, collects data, formats into INDEX.md structure
```

---

## Quality Control Checklist

Before finalizing INDEX.md, verify:

- [ ] All 6 sessions analyzed (no missing data)
- [ ] Statistics calculated consistently (same commands across sessions)
- [ ] Manual analysis completed for qualitative dimensions
- [ ] Best practices identified with specific examples
- [ ] Platform signatures documented with evidence
- [ ] Cross-phase patterns synthesized
- [ ] TODO items identified based on findings
- [ ] Findings linked to evidence (session references)
- [ ] Quantitative claims supported by data
- [ ] Variance explained (why sessions differ)

---

## Replication Instructions

To re-run this analysis after implementing TODO.md improvements:

### Step 1: Run New Test Sessions
```bash
# Conduct new test runs incorporating improvements
# Ensure variety in:
# - Models (Claude, Gemini, GLM, GPT-4o, o1)
# - Effort levels (Low, Medium, High)
# - Domains (diverse topics)
# - Template variants (Standard, Extended, Brief)
```

### Step 2: Data Collection
```bash
# From idea-symphony_skill/ directory
cd test-runs/

# Run phase-specific analysis scripts (once created)
../scripts/analyze-phase-1.sh > phase1-data.csv
../scripts/analyze-phase-2.sh > phase2-data.csv
../scripts/analyze-phase-3.sh > phase3-data.csv
../scripts/analyze-phase-4.sh > phase4-data.csv
../scripts/analyze-phase-5.sh > phase5-data.csv
```

### Step 3: Manual Analysis
- Review quality indicators (executive summaries, action specificity)
- Identify best practices (exemplar examples)
- Detect platform signatures (consistent behaviors)
- Note template adherence (variants being used)

### Step 4: Comparative Analysis
- Compare new findings to baseline (current INDEX.md)
- Calculate improvements:
  - Executive summary quality scores (+/- change)
  - Compression variance (reduced standard deviation?)
  - Template adoption (% using variants)
  - Actionability (% implementation-ready actions)

### Step 5: Update INDEX.md
- Append new session data to existing statistics
- Update "Key Findings" sections with new insights
- Revise recommendations based on new evidence
- Document what changed after TODO improvements

### Step 6: Update TODO.md
- Mark completed investigations as [x]
- Add new investigations based on findings
- Adjust priorities based on remaining gaps
- Iterate

---

## Lessons Learned from Initial Analysis

### What Worked Well

1. **Bash commands for quantitative metrics**
   - Fast, repeatable, objective
   - Easy to compare across sessions
   - Good for identifying outliers

2. **Manual reading for qualitative assessment**
   - Nuance that scripts can't capture
   - Pattern recognition across sessions
   - Exemplar identification

3. **Phase-by-phase structure**
   - Matches pipeline architecture
   - Clear progression of findings
   - Easy to locate specific analysis

### What Was Challenging

1. **Volume**: 3.4+ MB content, 227+ files
   - Manual reading time-consuming
   - Hard to maintain consistency across sessions
   - Need sampling strategy for large response sets

2. **Synthesis quality assessment**
   - Subjective (what's "good" compression?)
   - Context-dependent (appropriate for topic?)
   - Hard to automate

3. **Cross-session comparison**
   - Different domains not directly comparable
   - Platform differences confound effort level effects
   - Need controlled experiments (TODO #9)

### Recommendations for Next Iteration

1. **Create automation scripts first** (see Automation Opportunities above)
2. **Develop quality rubrics** for subjective assessments (make them scoreable)
3. **Sample strategically** (read all executive summaries, sample 20% of responses)
4. **Use controlled experiments** for specific questions (same topic, vary one parameter)
5. **Version control findings** (track how metrics change over time)

---

## Appendix: Full Command Reference

### Quick Statistics
```bash
# Total sessions
ls -d test-runs/*/ | wc -l

# Total files across all sessions
find test-runs/ -name "*.md" -type f | wc -l

# Total content volume
find test-runs/ -name "*.md" -type f -exec wc -c {} + | tail -1

# Sessions by date
ls -d test-runs/*/ | xargs -I {} basename {} | cut -d'_' -f3 | sort | uniq -c

# Sessions by model
for dir in test-runs/*/; do
  grep "Model:" "$dir/PLAN.md" 2>/dev/null | head -1
done | sort | uniq -c
```

### Deep Dive Commands
```bash
# Find longest response file
find test-runs/ -path "*/responses/*.md" -type f -exec wc -c {} + | sort -n | tail -1

# Find shortest executive summary
for f in test-runs/*/BRAINSTORM.md; do
  lines=$(awk '/^## Executive Summary/,/^## [^E]/ {if (!/^##/) print}' "$f" | wc -l)
  echo "$lines|$f"
done | sort -n | head -1

# Count specific personas used
find test-runs/ -path "*/responses/*" -name "*.md" -type f | xargs basename -a | sed 's/.md//' | sort | uniq -c | sort -rn

# Find expansion cases (synthesis > responses)
for dir in test-runs/*/; do
  for topic_dir in "$dir/responses"/*/; do
    topic=$(basename "$topic_dir")
    resp=$(find "$topic_dir" -name "*.md" -exec wc -c {} + | tail -1 | awk '{print $1}')
    synth_file="$dir/synthesis/${topic}_synthesis.md"
    [ -f "$synth_file" ] && synth=$(wc -c < "$synth_file") || continue
    [ "$synth" -gt "$resp" ] && echo "$(basename $dir)/$topic: $((synth*100/resp))%"
  done
done
```

---

**Document Version**: 1.0
**Last Updated**: 2026-02-04
**Maintainer**: Claude Code
**Status**: Production-ready methodology

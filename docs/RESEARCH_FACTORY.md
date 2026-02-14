# Research Methodology: Analyzing Idea Factory Test Runs

This document outlines the approach for analyzing early Idea Factory test runs. It mirrors the structure of `docs/RESEARCH_SYMPHONY.md` but adapts the analytical framework for Factory's distinct pipeline: Intake → Outline & Personas → Section Development (drafts + synthesis) → Integration.

**Analysis Date**: February 10, 2026
**Test Runs Analyzed**: 4 sessions (Feb 8-10, 2026)
**Sessions**:
- `250-tables-concept-paper_factory_2026-02-10` — Civic engagement concept paper (8 sections, 8 personas)
- `Civic-Design-Corps_factory_2026-02-08` — $600K civic R&D pilot (6 sections, 9 personas)
- `little-spoon-revised_factory_2026-02-09` — Upcycle art internship proposal (7 sections, 17 personas)
- `space-party-5yo_factory_2026-02-08` — Space-themed 5th birthday party (5 sections, 6 personas)

---

## Overview: Analytical Framework

Factory converts Symphony brainstorming output into structured action plans. The pipeline has 4 phases with distinct concerns:

1. **Phase 1**: Intake & Scope Definition (SCOPE.md, FACTORY-PLAN.md)
2. **Phase 2**: Outline & Persona Generation (OUTLINE.md, personas/)
3. **Phase 3**: Section Development
   - **3A**: Independent persona drafts (drafts/)
   - **3B**: Section synthesis (sections/)
4. **Phase 4**: Integration (ACTION-PLAN.md, FACTORY-SESSION.md)

For each phase, extract:
- **Structural fidelity** — Does output match the templates defined in SKILL.md?
- **Grounding in Symphony** — Does the output demonstrably build on brainstorming, not hallucinate new material?
- **Persona distinctiveness** — Do different personas provide genuinely different perspectives?
- **Synthesis quality** — Does 3B reconciliation preserve tensions or over-smooth?
- **Actionability** — Are recommendations specific enough to act on?

### Key Difference from Symphony Research

Symphony is a divergent process (generating ideas). Factory is a convergent process (selecting, prioritizing, and structuring ideas into plans). The quality criteria shift accordingly:

| Dimension | Symphony | Factory |
|-----------|----------|---------|
| Primary value | Breadth of perspectives | Grounded, actionable recommendations |
| Persona success | Distinctive voice | Distinct *advice* from same evidence |
| Synthesis goal | Preserve all insights | Identify convergence + genuine tensions |
| Final output | BRAINSTORM.md (comprehensive) | ACTION-PLAN.md (decision-ready) |

---

## Phase 1 Analysis: Intake & Scope Definition

### Objective
Assess how well Factory scopes the problem, separates content from context, and references the source Symphony session.

### Data Collection

#### File Statistics
```bash
for dir in test-runs/*_factory_*/; do
  session=$(basename "$dir")
  for file in SCOPE.md FACTORY-PLAN.md; do
    if [ -f "$dir/$file" ]; then
      size=$(wc -c < "$dir/$file" | tr -d ' ')
      lines=$(wc -l < "$dir/$file" | tr -d ' ')
      echo "$session|$file|$size|$lines"
    fi
  done
done
```

#### Scope Structure Check
```bash
for dir in test-runs/*_factory_*/; do
  scope="$dir/SCOPE.md"
  if [ -f "$scope" ]; then
    echo "=== $(basename $dir) ==="
    # Check for required sections
    grep -q "Symphony Session" "$scope" && echo "  Source reference: YES" || echo "  Source reference: NO"
    grep -q "Content" "$scope" && echo "  Content/Context split: YES" || echo "  Content/Context split: NO"
    grep -q "Deliverable" "$scope" && echo "  Deliverable type: YES" || echo "  Deliverable type: NO"
  fi
done
```

### Manual Analysis Steps

1. **Content/Context Separation Quality**
   - Read each SCOPE.md
   - Assess: Is the content/context boundary logical? Did Factory correctly identify which Symphony topics become plan sections vs. background?
   - Note: Did the scope match what was described in the source Symphony session's REQUEST.md?

2. **Symphony Grounding**
   - Does SCOPE.md reference specific Symphony insights or just summarize generically?
   - Are brainstorming highlights actually drawn from BRAINSTORM.md, or are they generic restatements?

3. **Effort Level Appropriateness**
   - What effort level was selected/suggested?
   - Does it match the scope complexity?

### Key Findings to Document
- SCOPE.md size range and structure consistency
- Content/context separation quality across sessions
- Whether Factory correctly identifies the deliverable type
- Effort level selection patterns

---

## Phase 2 Analysis: Outline & Persona Generation

### Objective
Assess outline quality (logical structure, appropriate section count, clear decision points) and persona design (domain-specificity, diversity, section assignment balance).

### Data Collection

#### Outline Statistics
```bash
for dir in test-runs/*_factory_*/; do
  outline="$dir/OUTLINE.md"
  if [ -f "$outline" ]; then
    session=$(basename "$dir")
    size=$(wc -c < "$outline" | tr -d ' ')
    sections=$(grep -cE "^##+ (Section |[0-9]+)" "$outline" 2>/dev/null || echo "0")
    echo "$session|$size|$sections sections"
  fi
done
```

#### Persona Pool Statistics
```bash
for dir in test-runs/*_factory_*/; do
  persona_dir="$dir/personas"
  if [ -d "$persona_dir" ]; then
    session=$(basename "$dir")
    # Count persona files (exclude architecture docs)
    persona_count=$(find "$persona_dir" -maxdepth 1 -name "*.md" ! -name "PERSONA*" ! -name "README*" | wc -l | tr -d ' ')
    # Average persona file size
    total_size=$(find "$persona_dir" -maxdepth 1 -name "*.md" ! -name "PERSONA*" ! -name "README*" -exec wc -c {} + | tail -1 | awk '{print $1}')
    if [ "$persona_count" -gt 0 ]; then
      avg_size=$(echo "scale=1; $total_size / $persona_count / 1024" | bc)
    else
      avg_size="0"
    fi
    echo "$session|$persona_count personas|avg ${avg_size}KB each"
  fi
done
```

#### Section-Persona Assignment Matrix
```bash
# Map which personas are assigned to which sections via draft directories
for dir in test-runs/*_factory_*/; do
  session=$(basename "$dir")
  echo "=== $session ==="
  for section_dir in "$dir/drafts"/*/; do
    if [ -d "$section_dir" ]; then
      section=$(basename "$section_dir")
      personas=$(ls "$section_dir"/*.md 2>/dev/null | xargs -I{} basename {} .md | tr '\n' ', ')
      count=$(ls "$section_dir"/*.md 2>/dev/null | wc -l | tr -d ' ')
      echo "  $section: $count personas ($personas)"
    fi
  done
done
```

### Manual Analysis Steps

1. **Outline Quality Assessment**
   - Does the outline reorganize Symphony topics into action-oriented sections (not just mirror topic clusters)?
   - Are decision points clearly identified per section?
   - Does each section reference its Symphony source inputs?
   - Are sections scoped narrowly enough to be tractable, broadly enough to be meaningful?

2. **Persona Design Quality**
   - Are personas genuinely project-specific (not generic like "project manager")?
   - Do persona definitions include clear priorities, advocacy positions, and pushback areas?
   - Is there meaningful diversity in the persona pool (different expertise domains, different value priorities)?
   - How do persona pools compare across sessions — does Factory adapt to domain?

3. **Assignment Balance**
   - Are personas well-matched to sections (relevant expertise)?
   - Do any personas appear in too many sections (diluted focus) or too few (wasted)?
   - Is the persona-per-section count consistent with effort level?

### Key Findings to Document
- Section count range (min, max, average)
- Persona pool sizes and naming quality
- Section-persona assignment patterns
- Whether outlines meaningfully reorganize Symphony content
- Whether PERSONA-ARCHITECTURE.md appears and what it adds

---

## Phase 3A Analysis: Independent Persona Drafts

### Objective
Assess draft quality, template adherence, persona distinctiveness, grounding in Symphony evidence, and actionability.

### Data Collection

#### Draft File Statistics
```bash
for dir in test-runs/*_factory_*/; do
  session=$(basename "$dir")
  draft_dir="$dir/drafts"
  if [ -d "$draft_dir" ]; then
    file_count=$(find "$draft_dir" -name "*.md" -type f | wc -l | tr -d ' ')
    total_size=$(find "$draft_dir" -name "*.md" -type f -exec wc -c {} + | tail -1 | awk '{print $1}')
    if [ "$file_count" -gt 0 ]; then
      avg_kb=$(echo "scale=1; $total_size / $file_count / 1024" | bc)
      min_kb=$(find "$draft_dir" -name "*.md" -type f -exec wc -c {} + | grep -v total | awk '{print $1}' | sort -n | head -1)
      max_kb=$(find "$draft_dir" -name "*.md" -type f -exec wc -c {} + | grep -v total | awk '{print $1}' | sort -n | tail -1)
      min_kb=$(echo "scale=1; $min_kb / 1024" | bc)
      max_kb=$(echo "scale=1; $max_kb / 1024" | bc)
    else
      avg_kb="0"; min_kb="0"; max_kb="0"
    fi
    echo "$session|$file_count drafts|avg ${avg_kb}KB|range ${min_kb}-${max_kb}KB"
  fi
done
```

#### Template Adherence (YAML Frontmatter + Required Sections)
```bash
for dir in test-runs/*_factory_*/; do
  session=$(basename "$dir")
  total=0; has_frontmatter=0; has_core=0; has_alt=0; has_scaling=0; has_grounding=0
  for file in $(find "$dir/drafts" -name "*.md" -type f 2>/dev/null); do
    total=$((total + 1))
    grep -q "^---" "$file" && has_frontmatter=$((has_frontmatter + 1))
    grep -qi "Core Recommendation" "$file" && has_core=$((has_core + 1))
    grep -qi "Alternative" "$file" && has_alt=$((has_alt + 1))
    grep -qi "Scaling" "$file" && has_scaling=$((has_scaling + 1))
    grep -qi "Grounding in Brainstorming" "$file" && has_grounding=$((has_grounding + 1))
  done
  echo "$session|$total|fm:$has_frontmatter|core:$has_core|alt:$has_alt|scale:$has_scaling|ground:$has_grounding"
done
```

#### Grounding Quality (Symphony Citation Density)
```bash
# Count references to Symphony topics/personas in drafts
for dir in test-runs/*_factory_*/; do
  session=$(basename "$dir")
  echo "=== $session ==="
  for file in $(find "$dir/drafts" -name "*.md" -type f 2>/dev/null); do
    fname=$(basename "$file" .md)
    section=$(basename $(dirname "$file"))
    # Count references to "Topic", "brainstorm", or "Symphony"
    refs=$(grep -ciE "topic [0-9]|brainstorm|symphony|summary|synthesis" "$file")
    echo "  $section/$fname: $refs Symphony references"
  done
done
```

### Manual Analysis Steps

1. **Template Adherence**
   - Sample 2-3 drafts per session
   - Check: YAML frontmatter present? All required sections? Correct heading levels?
   - Note deviations — are they harmful or neutral?

2. **Grounding in Brainstorming (Critical)**
   - This is the key quality indicator for Factory.
   - Read the "Grounding in Brainstorming" section from sampled drafts
   - Assess: Are citations specific ("Topic 03 noted that...") or generic ("the brainstorming revealed...")?
   - Cross-reference: Spot-check 2-3 cited claims against the actual Symphony output — are they accurate?
   - Note: Any evidence of hallucinated recommendations (ideas not present in Symphony)?

3. **Persona Distinctiveness**
   - For 2-3 sections, read all persona drafts side by side
   - Assess: Do personas provide genuinely different recommendations, or do they converge on the same advice with different framing?
   - Look for: Different priorities emphasized, different alternatives proposed, different risks flagged
   - Key question: Would the synthesis step lose information if we dropped to fewer personas?

4. **Actionability**
   - Are core recommendations specific enough to implement?
   - Do alternatives represent real choices (not "do it well" vs "do it poorly")?
   - Are scaling notes concrete (dollar amounts, headcounts, timelines) or vague?

### Key Findings to Document
- Total drafts produced (across all sessions)
- Template adherence rates per section
- Grounding quality (citation density and accuracy)
- Persona distinctiveness assessment
- Draft size variance (within session, across sessions)
- Actionability rating

---

## Phase 3B Analysis: Section Synthesis

### Objective
Assess how well synthesis reconciles persona perspectives — preserving genuine tensions while identifying convergence.

### Data Collection

#### Synthesis File Statistics
```bash
for dir in test-runs/*_factory_*/; do
  session=$(basename "$dir")
  sections_dir="$dir/sections"
  if [ -d "$sections_dir" ]; then
    # Count section files (exclude README, summary docs)
    section_count=$(find "$sections_dir" -maxdepth 1 -name "[0-9]*.md" -type f | wc -l | tr -d ' ')
    total_size=$(find "$sections_dir" -maxdepth 1 -name "[0-9]*.md" -type f -exec wc -c {} + | tail -1 | awk '{print $1}')
    if [ "$section_count" -gt 0 ]; then
      avg_kb=$(echo "scale=1; $total_size / $section_count / 1024" | bc)
    else
      avg_kb="0"
    fi
    echo "$session|$section_count sections|total $(echo "scale=1; $total_size / 1024" | bc)KB|avg ${avg_kb}KB"
  fi
done
```

#### Compression Ratio: Drafts → Synthesis
```bash
for dir in test-runs/*_factory_*/; do
  session=$(basename "$dir")
  echo "=== $session ==="
  for section_dir in "$dir/drafts"/*/; do
    if [ -d "$section_dir" ]; then
      section=$(basename "$section_dir")
      # Total draft size for this section
      draft_size=$(find "$section_dir" -name "*.md" -type f -exec wc -c {} + | tail -1 | awk '{print $1}')
      # Find corresponding synthesis file
      synth_file=$(find "$dir/sections" -maxdepth 1 -name "${section}*" -type f 2>/dev/null | head -1)
      if [ -n "$synth_file" ] && [ -f "$synth_file" ]; then
        synth_size=$(wc -c < "$synth_file")
        if [ "$draft_size" -gt 0 ]; then
          ratio=$(echo "scale=0; $synth_size * 100 / $draft_size" | bc)
          echo "  $section: ${ratio}% (${draft_size}B drafts -> ${synth_size}B synthesis)"
        fi
      fi
    fi
  done
done
```

#### Synthesis Template Adherence
```bash
for dir in test-runs/*_factory_*/; do
  session=$(basename "$dir")
  total=0; has_frontmatter=0; has_core=0; has_alt=0; has_scaling=0; has_debate=0; has_notes=0
  for file in $(find "$dir/sections" -maxdepth 1 -name "[0-9]*.md" -type f 2>/dev/null); do
    total=$((total + 1))
    grep -q "^---" "$file" && has_frontmatter=$((has_frontmatter + 1))
    grep -qi "Core Recommendation" "$file" && has_core=$((has_core + 1))
    grep -qi "Alternative" "$file" && has_alt=$((has_alt + 1))
    grep -qi "Scaling" "$file" && has_scaling=$((has_scaling + 1))
    grep -qi "Key Debate" "$file" && has_debate=$((has_debate + 1))
    grep -qi "Synthesis Notes" "$file" && has_notes=$((has_notes + 1))
  done
  echo "$session|$total|fm:$has_frontmatter|core:$has_core|alt:$has_alt|scale:$has_scaling|debate:$has_debate|notes:$has_notes"
done
```

#### Convergence Level Distribution
```bash
# Check convergence_level from YAML frontmatter
for dir in test-runs/*_factory_*/; do
  session=$(basename "$dir")
  echo "=== $session ==="
  for file in $(find "$dir/sections" -maxdepth 1 -name "[0-9]*.md" -type f 2>/dev/null); do
    section=$(basename "$file" .md)
    convergence=$(grep -i "convergence" "$file" | head -1)
    echo "  $section: $convergence"
  done
done
```

### Manual Analysis Steps

1. **Tension Preservation (Critical)**
   - For 2-3 sections per session, compare synthesis output against the persona drafts
   - Key question: Where personas genuinely disagreed, does the synthesis preserve both sides as "Key Debate Points," or does it pick a winner and drop the losing argument?
   - Look for: Named persona attribution ("Equity Analyst argued X while Implementation Pragmatist argued Y")
   - Red flag: Synthesis that reads like a single-author document with no evidence of multiple inputs

2. **Convergence/Divergence Assessment**
   - Is the `convergence_level` in YAML frontmatter accurate?
   - Does the synthesis correctly weight convergent recommendations (multiple personas agreed) more heavily?
   - Are "unique insights" from single personas preserved when valuable?

3. **Compression Quality**
   - What's the typical compression ratio (drafts → synthesis)?
   - Is compression appropriate — too aggressive (losing important detail) or too loose (not consolidating)?
   - Do synthesis files add organizational value beyond concatenation?

4. **Bonus Outputs**
   - Does PHASE-3B-SYNTHESIS-SUMMARY.md appear? What does it contain?
   - Does sections/README.md appear? Is it useful?

### Key Findings to Document
- Compression ratios per section and per session
- Template adherence rates
- Convergence level distribution
- Tension preservation quality
- Whether synthesis adds genuine analytical value vs. reformatted concatenation
- Bonus output patterns

---

## Phase 4 Analysis: Integration (ACTION-PLAN.md)

### Objective
Assess the final deliverable for coherence, actionability, faithful representation of section work, and value as a standalone document.

### Data Collection

#### ACTION-PLAN.md Statistics
```bash
for dir in test-runs/*_factory_*/; do
  session=$(basename "$dir")
  ap="$dir/ACTION-PLAN.md"
  if [ -f "$ap" ]; then
    size=$(wc -c < "$ap" | tr -d ' ')
    lines=$(wc -l < "$ap" | tr -d ' ')
    sections=$(grep -c '^## ' "$ap")
    size_kb=$(echo "scale=1; $size / 1024" | bc)
    echo "$session|${size_kb}KB|$lines lines|$sections sections"
  fi
done
```

#### ACTION-PLAN.md Section Inventory
```bash
for dir in test-runs/*_factory_*/; do
  session=$(basename "$dir")
  ap="$dir/ACTION-PLAN.md"
  if [ -f "$ap" ]; then
    echo "=== $session ==="
    grep -n '^## ' "$ap" | head -20
  fi
done
```

#### End-to-End Pipeline Volume
```bash
# Track data volume through entire Factory pipeline
for dir in test-runs/*_factory_*/; do
  session=$(basename "$dir")

  scope_size=$(wc -c < "$dir/SCOPE.md" 2>/dev/null | tr -d ' ' || echo 0)
  outline_size=$(wc -c < "$dir/OUTLINE.md" 2>/dev/null | tr -d ' ' || echo 0)

  persona_size=$(find "$dir/personas" -maxdepth 1 -name "*.md" ! -name "PERSONA*" ! -name "README*" -exec wc -c {} + 2>/dev/null | tail -1 | awk '{print $1}')
  [ -z "$persona_size" ] && persona_size=0

  draft_size=$(find "$dir/drafts" -name "*.md" -type f -exec wc -c {} + 2>/dev/null | tail -1 | awk '{print $1}')
  [ -z "$draft_size" ] && draft_size=0

  section_size=$(find "$dir/sections" -maxdepth 1 -name "[0-9]*.md" -type f -exec wc -c {} + 2>/dev/null | tail -1 | awk '{print $1}')
  [ -z "$section_size" ] && section_size=0

  ap_size=$(wc -c < "$dir/ACTION-PLAN.md" 2>/dev/null | tr -d ' ' || echo 0)

  echo "$session|scope:${scope_size}|outline:${outline_size}|personas:${persona_size}|drafts:${draft_size}|sections:${section_size}|plan:${ap_size}"
done
```

#### FACTORY-SESSION.md Check
```bash
for dir in test-runs/*_factory_*/; do
  session=$(basename "$dir")
  fs="$dir/FACTORY-SESSION.md"
  if [ -f "$fs" ]; then
    size=$(wc -c < "$fs" | tr -d ' ')
    echo "$session|FACTORY-SESSION.md|${size} bytes"
  else
    echo "$session|FACTORY-SESSION.md|MISSING"
  fi
done
```

### Manual Analysis Steps

1. **Executive Summary Quality**
   - Read the executive summary from each ACTION-PLAN.md
   - Does it capture the essential scope and key recommendations?
   - Is it standalone-readable (someone unfamiliar could understand the plan)?
   - Does it surface key debate points and decisions the user needs to make?

2. **Section Faithfulness**
   - For 2-3 sections, compare ACTION-PLAN.md section content against the corresponding `sections/` file
   - Is integration faithful or does it introduce new material?
   - Is it appropriately compressed (ACTION-PLAN excerpts the section work)?
   - Are alternatives and debate points preserved or dropped?

3. **Actionability Assessment**
   - Classify each major recommendation:
     - **Implementation-ready**: Specific actions, responsible parties, timelines, costs
     - **Scoped**: Clear action but needs further planning
     - **Conceptual**: Direction indicated but vague
   - Calculate the distribution across categories

4. **Structural Coherence**
   - Does the ACTION-PLAN read as a unified document, or as loosely connected section pastes?
   - Are there cross-section connections (Section 3 recommendation depends on Section 1)?
   - Is there an implementation timeline that sequences across sections?
   - Does it include resource/budget rollup across sections?

5. **Deliverable-Type Alignment**
   - Does the format match the stated deliverable type (concept paper, proposal, action plan)?
   - Is the tone appropriate for the intended audience?

### Key Findings to Document
- ACTION-PLAN.md sizes and section counts
- Executive summary quality ratings
- Section faithfulness assessment
- Actionability distribution
- End-to-end pipeline volume (expansion → compression pattern)
- Deliverable-type alignment

---

## Cross-Phase Analysis

After analyzing individual phases, synthesize findings across these dimensions:

### 1. Symphony Grounding Pipeline
Track how Symphony brainstorming flows through the Factory pipeline:
- **Phase 1**: Does SCOPE.md accurately represent Symphony insights?
- **Phase 3A**: Do persona drafts cite specific Symphony evidence?
- **Phase 3B**: Does synthesis preserve Symphony-grounded reasoning?
- **Phase 4**: Does ACTION-PLAN still trace to original brainstorming?

This is the core value proposition of Factory — it should demonstrably build on Symphony output, not just use it as a jumping-off point for generic planning.

### 2. Persona Value Assessment
- Does the multi-persona approach produce better plans than a single-author approach would?
- Evidence: sections where persona disagreement surfaced a genuine trade-off that a single author might have missed
- Counter-evidence: sections where all personas converged and multiple drafts added overhead without insight

### 3. Volume Flow Pattern
```
Symphony → SCOPE → OUTLINE → Personas → Drafts → Sections → ACTION-PLAN
           (4-9KB)  (8-20KB)  (1-3KB×N)  (7-44KB×N) (10-26KB×N) (32-76KB)
```
- Where does the pipeline expand (generating new content)?
- Where does it compress (synthesizing)?
- Is the expansion/compression ratio appropriate?

### 4. Session Complexity vs. Output Quality
- Does a larger persona pool (17 in little-spoon vs. 6 in space-party) produce better output?
- Does more sections (8 in 250-tables vs. 5 in space-party) correlate with better plans?
- Is there an optimal section count or persona pool size?

### 5. Naming and Organization Consistency
- Are file naming conventions consistent across sessions?
  - Note: little-spoon uses underscores in section slugs; others use hyphens
- Are all expected files present in every session?
- Are bonus outputs (PHASE-3B-SYNTHESIS-SUMMARY.md, PERSONA-ARCHITECTURE.md) valuable?

---

## Quality Rubric

### Draft Quality (Phase 3A) — Score 1-5

| Score | Description |
|-------|-------------|
| 1 | Generic advice unrelated to brainstorming; no citations |
| 2 | Loosely connected to brainstorming; vague citations |
| 3 | References brainstorming but recommendations could stand without it |
| 4 | Clearly grounded; specific citations; recommendations flow from evidence |
| 5 | Deep engagement with brainstorming; novel synthesis of multiple topics; actionable |

### Synthesis Quality (Phase 3B) — Score 1-5

| Score | Description |
|-------|-------------|
| 1 | Concatenated drafts with minimal integration |
| 2 | Merged but lost persona distinctiveness; no debate points |
| 3 | Reasonable merge; some convergence/divergence noted; debate points surface-level |
| 4 | Clear convergence weighting; genuine tensions preserved; persona attribution maintained |
| 5 | Adds analytical insight beyond individual drafts; debate points illuminate real decisions |

### ACTION-PLAN Quality — Score 1-5

| Score | Description |
|-------|-------------|
| 1 | Section dump with executive summary; not actionable |
| 2 | Structured but generic; reads like boilerplate planning |
| 3 | Solid structure; some actionable recommendations; limited cross-section coherence |
| 4 | Coherent plan; specific recommendations; alternatives and trade-offs preserved |
| 5 | Decision-ready document; clear next steps; resource estimates; timeline; audience-appropriate |

---

## Execution Plan

### Step 1: Quantitative Data Collection
Run all bash commands from Phases 1-4 above. Collect into a working data file.

### Step 2: Template Adherence Sweep
Check every file against expected templates. Document deviations.

### Step 3: Grounding Audit (Sample-Based)
For each session, read:
- 1 draft per section (rotating personas) — check "Grounding in Brainstorming"
- Spot-check 2-3 cited claims against actual Symphony output
- All synthesis files' "Key Debate Points" sections

### Step 4: Side-by-Side Persona Comparison
Pick 2 sections (1 civic/complex, 1 space-party/simple). Read all persona drafts for each. Assess distinctiveness.

### Step 5: Integration Faithfulness
Read ACTION-PLAN.md executive summaries (all 4). For 2 sessions, compare 2 section summaries against their `sections/` source.

### Step 6: Cross-Phase Synthesis
Answer the 5 cross-phase questions. Calculate pipeline volume flow.

### Step 7: Document Findings
Write up findings in a structured INDEX or findings document, following the documentation template from RESEARCH_SYMPHONY.md.

---

## Known Structural Variations

From initial exploration, these inconsistencies are already apparent:

| Feature | 250-tables | Civic-Design | little-spoon | space-party |
|---------|-----------|--------------|--------------|-------------|
| Sections | 8 | 6 | 7 | 5 |
| Personas | 8 | 9 | 17 | 6 |
| Personas/section | 3 | 3 | 3 | 3-4 |
| Section slug style | hyphens | hyphens | underscores | hyphens |
| PERSONA-ARCHITECTURE.md | No | No | Yes | No |
| PHASE-3B-SYNTHESIS-SUMMARY.md | No | No | Yes | No |
| PHASE-2-SUMMARY.md | No | No | Yes | No |
| ACTION-PLAN.md size | 41.5KB | 43.3KB | 75.7KB | 32.4KB |

The little-spoon session has several bonus outputs not present in other sessions — worth investigating whether these add value or represent inconsistent behavior.

---

**Document Version**: 1.0
**Last Updated**: 2026-02-10
**Status**: Research plan ready for execution

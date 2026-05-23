# Reverse-Engineering Analysis - 13-String Greek Yoke Lyre

Subject: LUTHIEROS-style 13-string Wandering Lyre as modern reference evidence,
with ancient Greek chelys/yoke-lyre sources as the design grammar for Tony's
own original build.

Analyst: Codex using reverse-engineer discipline with repo handoff context.
Date: 2026-05-17.
Intake mode: photo/object observation + named-object + user concept brief.

## Input Inventory

| Input | Source | Reliability | Notes |
|---|---|---:|---|
| Inspiration photos | `images/inspiration/03.jpg`, `06.jpg`, `07.jpg`, `10.jpg`, `11.jpg`, `12.jpg`, `ThanasisLyre.jpg` | high for visible features | Good topology references; no hard scale. |
| Repo handoff brief | `INSTRUMENT-MAKER-HANDOFF-PROMPT.md` | high | Strong design-direction context. |
| Existing repo design notes | `design.md`, `family-spec.csv`, `cad/LYR-000_master-equations.txt` | medium-high | First-pass target values, not measured fabrication truth. |
| User concept request | user message | high | Primary source for torii, joinery, inlay, ergonomic, pickup, and strap requirements. |

## Observed Facts

| ID | Fact | Evidence | Claim type | Confidence | Notes |
|---|---|---|---|---|---|
| O-001 | Correct target topology is a Greek yoke lyre/chelys-like instrument. | photo set + repo brief | observed | high | Not a modern enclosed lyre-harp. |
| O-002 | Reference instrument has 13 strings. | photo set + project notes | observed | high | Count is visually and textually supported. |
| O-003 | Instrument has rounded bowl/shell back with flat soundboard. | `03.jpg`, `07.jpg`, `11.jpg` | observed | high | Core family-defining geometry. |
| O-004 | Two cylindrical arms rise from the body and support a cylindrical yoke. | `03.jpg`, `06.jpg`, `10.jpg` | observed | high | Ancient yoke-lyre grammar remains clear. |
| O-005 | Visible black lashing is present at the yoke ends. | `03.jpg`, `06.jpg`, `10.jpg` | observed | high | Strong visual and structural cue. |
| O-006 | A dark bridge with lighter witness/saddle line is present. | `07.jpg`, `12.jpg`, `ThanasisLyre.jpg` | observed | high | Important for tonal and visual modeling. |
| O-007 | A lower anchor/tailpiece zone is present near the bottom of the body. | `07.jpg`, `11.jpg`, `ThanasisLyre.jpg` | observed | medium-high | Fine details partly obscured by strings. |
| O-008 | Offset circular soundhole appears on the upper part of the soundboard. | `07.jpg`, `ThanasisLyre.jpg` | observed | high | Not centered in the string field. |
| O-009 | The instrument is shown supported on a separate stand in some photos. | `03.jpg`, `ThanasisLyre.jpg` | observed | medium | Confirms stand can carry stronger stylistic signature. |
| O-010 | In performance photos, the lower area of the instrument can rest against the seated player's left thigh. | project handoff prompt + user direction | observed | medium | Current evidence is descriptive in repo notes, not yet annotated to a measured photo. |
| O-011 | A padded or cushioned interface between player and instrument is reported in the observed holding style. | project handoff prompt | observed | medium | Needs photo callout capture in future documentation. |

## Inferred Facts

| ID | Inference | Basis | Claim type | Confidence | Verification |
|---|---|---|---|---|---|
| I-001 | Equal or near-equal speaking lengths remain appropriate for the family. | lyre topology + repo acoustic notes | inferred | high | Confirm with final tension table. |
| I-002 | Hidden registration at yoke/arm or arm/body joints may be necessary even if visible lashing remains traditional. | modern durability needs + joinery brief | inferred | high | Validate through CAD and mule testing. |
| I-003 | The lower-left or lower-center body zone can become a formal lap-contact surface without visually breaking the front silhouette. | performance observation + ergonomic goal | inferred | medium-high | Validate with prototype and silhouette review. |
| I-004 | The upper rear edge can carry a subtle non-dominant wrist/thumb guide for backside playing. | playing technique + user request | inferred | medium-high | Test reach, comfort, and strength. |
| I-005 | An acoustic pickup can be integrated discreetly if mass and cable routing are controlled. | modern performance requirement | inferred | medium | Needs pickup prototype and jack/block study. |
| I-006 | A lightweight strap is most realistic as a carry/support accessory rather than the primary historical playing mode. | load path concerns + lyre ergonomics | inferred | medium-high | Confirm with temporary anchors and live handling tests. |
| I-007 | Broinwood-style CNC art belongs more safely on side/back zones, stand, and removable accents than in dense soundboard fields. | top-mass sensitivity + design intent | inferred | high | Confirm after first voicing tests. |

## Assumptions

| ID | Assumption | Why it is being used | Risk if wrong | How to retire it |
|---|---|---|---|---|
| A-001 | Main design target remains a historically informed 13-string build. | Consistent across repo and user brief. | Could bias layout before a lower-tension direction is chosen. | Revisit after tension studies. |
| A-002 | Seated playing is primary even if a strap is offered. | Best fit for evidence and ergonomics. | Strap hardware could be underdeveloped if standing use matters more. | Build temporary strap mock and test. |
| A-003 | Ergonomic shaping should be subtle from the front view. | Historical silhouette is a hard constraint. | Comfort gain may be too small if shaping is too timid. | Compare multiple mock profiles. |
| A-004 | Pickup integration should default to reversible. | Protects historical and acoustic integrity. | May limit options for the cleanest amplified rig. | Review after prototype gig use. |
| A-005 | Torii language is best expressed by proportion and detail, not literal outline. | Avoids novelty drift. | Concept could feel too understated if not carefully executed. | Test several yoke and stand sketches. |

## Unknowns

| ID | Unknown | Why it matters | Blocking? | Best next evidence |
|---|---|---|---|---|
| U-001 | Final overall dimensions and body/yoke proportions | CAD scale and player fit | yes for final CAD | measured reference or full-size mock |
| U-002 | Final string material and tension schedule | structural load and voice | yes | string/tension study |
| U-003 | Best lap saddle radius/depth and pad stack | comfort and stability | yes for ergonomic variant | mockup trials on seated player |
| U-004 | Best rear-hand guide geometry | comfort versus shell strength | yes for ergonomic variant | shaped mockups and handling test |
| U-005 | Whether strap support is transport-only or performance-capable | anchor loads and hardware design | partial | temporary anchor test |
| U-006 | Which pickup path is acceptable acoustically and visually | routing and removable hardware plan | partial | A/B prototype with contact transducer |
| U-007 | How bold the side/back inlay can be without overwhelming the instrument | visual balance and fabrication time | partial | concept renders and sample boards |

## Ergonomic Observation Ledger

### Seated thigh interface

- Observed: the instrument can be supported at the lower body/lower-corner zone
  against the player's thigh rather than suspended only by the hands.
- Inferred: a shaped lap-contact zone can improve stability, reduce rotation,
  and free the hands for more precise right-hand attack and left-hand damping.
- Assumed: a removable or replaceable soft pad may improve comfort and grip
  during longer playing sessions.

### Non-dominant wrist and hand interface

- Observed: the left hand needs access to the back of the string plane for
  damping and expressive interaction.
- Inferred: the upper rear edge can act as a tactile guide surface for thumb
  and wrist placement.
- Assumed: the best geometry will be a shallow blended relief rather than a
  deep carved notch.

### Strap and mobility

- Observed: no strong evidence in the current photo set establishes the strap
  as a historical baseline.
- Inferred: a lightweight removable strap may still be useful for carrying and
  limited standing support.
- Assumed: the safest structural zones are near the lower anchor block and a
  reinforced upper side interface rather than directly through thin shell walls.

## Builder Readiness

| Gate | Status | Notes |
|---|---|---|
| Functional goal is clear | pass | Original Greek yoke lyre with ergonomic and modern-performance options. |
| Critical dimensions are measured or bounded | partial | Concept ranges exist, measured truth does not. |
| Ergonomic requirements are explicit | pass | Lap, wrist/hand, pickup, and strap are now named interfaces. |
| Materials/processes are known or substitutable | partial | Good first-pass options; still needs sourcing and tests. |
| Interfaces and tolerances are documented | partial | CAD variables exist but still need full rebuild/testing. |
| Unknowns are assigned follow-up actions | pass | Validation matrix and shotlist can now retire risk systematically. |

Status: ready for concept design, CAD skeleton work, mockups, and prototype
planning; not ready for production drawings or final joinery lock.

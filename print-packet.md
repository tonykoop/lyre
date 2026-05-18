# Lyre Build Packet Print Packet

Generated: 2026-05-18
Packet folder: repository root

## Readiness Boundary

This is a prototype-planning scaffold for a compact 10-string plucked lyre. It supports design review, sourcing review, string schedule review, and first CAD layout. It is not build-ready and does not claim measured tuning data, reviewed CAD/DXF authority, verified sourcing, or a shop-validated frame under string load.

## File Map

| File | Purpose |
| --- | --- |
| `design.md` | Design narrative and readiness boundary. |
| `string-schedule.csv` | String target schedule and unresolved gauge/tension fields. |
| `bridge-soundboard-load-register.csv` | Bridge, soundboard, tuning pin, yoke, and joinery load gates. |
| `visual-output-register.csv` | Visual authority register. |
| `bom.csv` | Starter bill of materials. |
| `sourcing.csv` | Supplier/search tracker. |
| `cut-list.csv` | Stock and cut plan. |
| `drawing-brief.md` | Drawing authority brief. |
| `cad/README.md` | CAD skeleton notes. |
| `drawings/README.md` | Drawing queue notes. |
| `assembly-manual.md` | Shop-facing sequence. |
| `validation.csv` | Measurement and validation gates. |
| `supplier-rfq.md` | Supplier RFQ template. |
| `visual-bom-brief.md` | Visual BOM brief. |
| `photo-shotlist.md` | Documentation shot list. |
| `risks.md` | Risk register. |
| `README.md` | Repository overview. |
| `wolfram-starter.wl` | Local Wolfram starter. |

<div class="page-break"></div>

## design.md

Design narrative and readiness boundary.

# Lyre Design

## Intent

Create a small bench-buildable lyre packet that can move from concept to a
first shop prototype without hiding the important string-load unknowns. The
baseline is a compact 10-string plucked instrument with a flat soundboard,
two arms, a crossbar/yoke, and individual tuning pins.

## Readiness

Prototype-planning scaffold. This is suitable for design review, sourcing
review, and first CAD layout. It is not ready for unattended fabrication.

## Governing Model

Strings use the Mersenne-Taylor relationship:

```text
f = (1 / (2 L)) * sqrt(T / mu)
mu = density * pi * (diameter / 2)^2
```

Use A4 = 440 Hz equal temperament for targets. Treat all string tensions as
unknown until the actual string material, gauge, and measured or supplier
density/breaking strength are recorded in `string-schedule.csv`.

## Baseline Assumptions

| Parameter | Baseline | Notes |
| --- | ---: | --- |
| String count | 10 | Diatonic C4-D4-E4-F4-G4-A4-B4-C5-D5-E5 |
| Scale length | 21 in nominal | May be fanned 18-23 in for ergonomics and tension |
| String material | Nylon or fluorocarbon | Gut is possible but not the first prototype default |
| Soundboard | 0.125-0.160 in spruce, cedar, or birch ply | Final thickness requires tap and deflection checks |
| Frame stock | 0.75 in hardwood | Grain must run continuously through arms where possible |
| Tuning hardware | Zither pins | Pilot holes and pin torque need validation |
| Target total tension | 80-120 lbf | Design frame with margin before stringing |

## String Schedule Boundary

`string-schedule.csv` names the C4-E5 target set and holds the fields that must
be resolved before the frame is treated as structurally reviewed:

- `gauge_or_diameter_in`
- `linear_density_source`
- `estimated_tension_lbf`
- `percent_breaking`
- `risk_flags`

Rows with `status=TBD` or blank tension fields are placeholders. They are
useful for layout discussion, but they are not a stringing recipe or a load
proof.

## Bridge, Soundboard, And Joinery Gates

`bridge-soundboard-load-register.csv` is the load-path checklist for the first
prototype. It keeps bridge downbearing, soundboard deflection, pin hold,
crossbar/yoke grain direction, and arm-to-yoke joinery visible as separate
gates. Do not drill final pin holes, cut final bridge/nut slots, or publish CNC
toolpaths until these rows have measured or reviewed evidence.

## Tension Safety Notes

- Keep the first prototype below 70 percent of estimated breaking load for all
  treble monofilament strings.
- Confirm the crossbar/yoke is not loaded in short grain.
- Bring strings to pitch gradually, alternating across the frame.
- Stop the build if the soundboard crowns, the yoke twists, or tuning pins
  creep under static load.

## Known Gaps

- No measured string-gauge schedule yet.
- No CAD frame deflection check yet.
- No bridge downbearing measurement yet.
- No joinery load-path drawing or proof-load coupon yet.
- No supplier price or stock verification yet.
- No prototype tuning data.

<div class="page-break"></div>

## string-schedule.csv

String target schedule and unresolved gauge/tension fields.

| string_id | target_note | target_hz | scale_length_in | material_family | gauge_or_diameter_in | linear_density_source | estimated_tension_lbf | percent_breaking | retuning_factor | status | risk_flags | next_action | notes |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| LYR-S01 | C4 | 261.63 | 21.0 | nylon_or_fluorocarbon | TBD | measurement_required |  |  | 1.000 | TBD | unknown_gauge;unknown_tension | Select supplier string data or measure sample diameter/density before pitch-up | Bass-side first article row; do not drill final bridge/nut slots from this placeholder. |
| LYR-S02 | D4 | 293.66 | 21.0 | nylon_or_fluorocarbon | TBD | measurement_required |  |  | 1.122 | TBD | unknown_gauge;unknown_tension | Select supplier string data or measure sample diameter/density before pitch-up |  |
| LYR-S03 | E4 | 329.63 | 21.0 | nylon_or_fluorocarbon | TBD | measurement_required |  |  | 1.260 | TBD | unknown_gauge;unknown_tension | Select supplier string data or measure sample diameter/density before pitch-up |  |
| LYR-S04 | F4 | 349.23 | 21.0 | nylon_or_fluorocarbon | TBD | measurement_required |  |  | 1.335 | TBD | unknown_gauge;unknown_tension | Select supplier string data or measure sample diameter/density before pitch-up |  |
| LYR-S05 | G4 | 392.00 | 21.0 | nylon_or_fluorocarbon | TBD | measurement_required |  |  | 1.498 | TBD | unknown_gauge;unknown_tension | Select supplier string data or measure sample diameter/density before pitch-up |  |
| LYR-S06 | A4 | 440.00 | 21.0 | nylon_or_fluorocarbon | TBD | measurement_required |  |  | 1.682 | TBD | unknown_gauge;unknown_tension | Select supplier string data or measure sample diameter/density before pitch-up | A4 reference row; tuner calibration must be logged before acceptance. |
| LYR-S07 | B4 | 493.88 | 21.0 | nylon_or_fluorocarbon | TBD | measurement_required |  |  | 1.888 | TBD | unknown_gauge;unknown_tension | Select supplier string data or measure sample diameter/density before pitch-up |  |
| LYR-S08 | C5 | 523.25 | 21.0 | nylon_or_fluorocarbon | TBD | measurement_required |  |  | 2.000 | TBD | unknown_gauge;unknown_tension | Select supplier string data or measure sample diameter/density before pitch-up |  |
| LYR-S09 | D5 | 587.33 | 21.0 | nylon_or_fluorocarbon | TBD | measurement_required |  |  | 2.245 | TBD | unknown_gauge;unknown_tension | Select supplier string data or measure sample diameter/density before pitch-up |  |
| LYR-S10 | E5 | 659.25 | 21.0 | nylon_or_fluorocarbon | TBD | measurement_required |  |  | 2.520 | TBD | unknown_gauge;unknown_tension | Select supplier string data or measure sample diameter/density before pitch-up | Treble-side row; keep below 70 percent breaking load after gauge selection. |

<div class="page-break"></div>

## bridge-soundboard-load-register.csv

Bridge, soundboard, tuning pin, yoke, and joinery load gates.

| check_id | area | artifact_or_member | claim_status | evidence_required | acceptance_gate | next_action | notes |
| --- | --- | --- | --- | --- | --- | --- | --- |
| LOAD-001 | string_schedule | string-schedule.csv | measurement_required | supplier density/breaking strength or measured sample diameter and mass | each string has gauge, estimated_tension_lbf, percent_breaking, and risk flags resolved before full pitch-up | Choose a real string set or measure sample strings | Current rows are pitch targets and placeholders, not a final load table. |
| LOAD-010 | total_frame_load | crossbar/yoke | measurement_required | summed string tensions from resolved schedule plus safety factor | total estimated load is recorded and reviewed against yoke grain direction and joint design | Update after string schedule is resolved | Do not drill the pin row until this check is complete. |
| LOAD-020 | tuning_pin_hold | tuning pin scrap block | measurement_required | scrap-block pilot-hole torque test and 24-hour creep observation | pins hold three retune cycles with <=5 cents drift per hour | Drill a scrap coupon with selected pin and wood species | Blocks trust in pitch-up data. |
| LOAD-030 | bridge_downbearing | bridge and nut | measurement_required | bridge height, break angle, slot radius, and downbearing estimate | bridge/nut slots are polished and do not cut strings during pitch-up | Make a bridge/nut coupon after string gauge selection | No final slot spacing until string gauges are chosen. |
| LOAD-040 | soundboard_deflection | soundboard/top | measurement_required | flatness before stringing, half-tension deflection, full-tension deflection, and 24-hour recheck | permanent movement is <=0.030 in and no crown/crack develops | Record deflection with straightedge or dial indicator | Soundboard thickness remains a prototype assumption. |
| LOAD-050 | joinery_load_path | arms-to-yoke and body joints | measurement_required | full-size drawing or CAD notes showing long-grain load path, glue area, and pin edge distance | no loaded member depends on short grain; pin holes meet edge-distance gate | Add drawing/CAD detail before cutting final frame | This is the main structural review gate. |
| LOAD-060 | prototype_pitchup | assembled first article | measurement_required | pitch-up log with before/after yoke distance, arm spread, bridge height, and tuning drift | no visible frame movement and pitch drift is documented after 24 hours | Fill validation.csv and photo-shotlist evidence after first pitch-up | Prototype evidence required before readiness promotion. |

<div class="page-break"></div>

## visual-output-register.csv

Visual authority register.

| artifact_id | path | artifact_kind | role | authority | derived_from | dimension_claim | fabrication_required | notes |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| IMG-001 | images/P-Lyre-Harp-1200x1200-1_1080xinspiration.webp | photo_reference | photo_reference | reference_only |  | none | false | Inspiration/reference image only; does not control string scale, bridge placement, soundboard thickness, joinery, or toolpaths. |
| HTML-001 | explorer.html | render_preview | story | concept_only |  | none | false | Studio review surface for packet navigation; not fabrication authority. |
| PDF-001 | print-packet.pdf | render_preview | story | concept_only |  | none | false | Printable packet export for review; dimensions remain subject to string schedule and drawing authority gates. |
| PPT-001 | capstone-deck.pptx | render_preview | story | concept_only |  | none | false | Presentation export only; does not control fabrication geometry. |

<div class="page-break"></div>

## bom.csv

Starter bill of materials.

| item | qty | unit | material_or_spec | estimated_cost_usd | notes |
| --- | --- | --- | --- | --- | --- |
| Frame hardwood blank | 1 | ea | maple, cherry, walnut, or similar clear hardwood, 0.75 in nominal | 45 | Avoid knots and short grain through arms |
| Soundboard panel | 1 | ea | spruce, cedar, or birch aircraft ply, 0.125-0.160 in | 25 | Prototype thickness to be validated by deflection and tone |
| Back or rim spacer stock | 1 | set | hardwood or plywood strips | 15 | Supports soundbox depth if boxed body is selected |
| Zither tuning pins | 10 | ea | 0.197 in or compatible lyre/harp pin | 18 | Pilot-hole fit and torque must be tested on scrap |
| Bridge and nut stock | 2 | ea | hard maple, bone, or dense hardwood | 8 | Round contact points to reduce string breakage |
| String set | 1 | set | nylon or fluorocarbon monofilament gauges TBD | 35 | Gauge schedule must be calculated and tested |
| Adhesive | 1 | lot | wood glue suitable for instrument joints | 8 | Use fresh adhesive and full clamp coverage |
| Finish | 1 | lot | shellac, oil-varnish, or waterborne clear finish | 15 | Do not finish string contact surfaces until fit is final |

<div class="page-break"></div>

## sourcing.csv

Supplier/search tracker.

| item | required_spec | search_terms | supplier_candidates | date_checked | unit_price_usd | lead_time | substitution_risk | notes |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Zither pins | 10 matching pins with compatible wrench and pilot recommendations | zither tuning pins harp lyre 0.197 inch | music hardware suppliers; luthier suppliers | TBD | TBD | TBD | Medium | Pin diameter and wood species affect holding torque |
| Monofilament strings | nylon or fluorocarbon gauges from calculated schedule | nylon monofilament harp strings fluorocarbon music string | harp string suppliers; fishing leader only if specs are documented | TBD | TBD | TBD | High | Density and breaking strength must be known |
| Soundboard stock | quarter-sawn softwood or stable thin ply | spruce soundboard blank cedar soundboard birch aircraft plywood | luthier suppliers; specialty plywood suppliers | TBD | TBD | TBD | Medium | Tone and deflection vary by material |
| Frame hardwood | clear straight-grain hardwood, 0.75 in nominal or thicker | instrument hardwood maple cherry walnut blank | local hardwood dealer; luthier tonewood supplier | TBD | TBD | TBD | Low | Avoid runout at arms |
| Bridge/nut stock | dense wear-resistant string contact material | hard maple bridge blank bone nut blank | luthier suppliers | TBD | TBD | TBD | Low | Must polish smooth to prevent string cuts |

<div class="page-break"></div>

## cut-list.csv

Stock and cut plan.

| part | qty | rough_dimensions_in | final_dimensions_in | material | grain_or_orientation | operation | notes |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Left arm | 1 | 1.0 x 2.0 x 22.0 | 0.75 x profile x 21.0 | clear hardwood | grain follows arm curve | bandsaw/CNC profile then rasp/sand | Leave extra at yoke joint until fitted |
| Right arm | 1 | 1.0 x 2.0 x 22.0 | 0.75 x profile x 21.0 | clear hardwood | grain follows arm curve | bandsaw/CNC profile then rasp/sand | Mirror left arm |
| Crossbar/yoke | 1 | 1.0 x 1.5 x 16.0 | 0.75 x 1.0 x fitted length | clear hardwood | long grain end to end | drill pin row after layout verification | No short-grain load path |
| Soundboard | 1 | 0.160 x 13.0 x 18.0 | 0.125-0.160 x body profile | spruce/cedar/ply | long grain vertical | template trim and brace if needed | Final thickness TBD |
| Bridge | 1 | 0.5 x 0.5 x 12.0 | profile TBD | hard maple or bone | long grain along string row | shape, slot, polish | Confirm spacing before slots |
| Nut | 1 | 0.375 x 0.5 x 12.0 | profile TBD | hard maple or bone | long grain along string row | shape, slot, polish | Slots must match final gauges |

<div class="page-break"></div>

## drawing-brief.md

Drawing authority brief.

# Lyre Drawing Brief

Required first drawings:

- Full-size front elevation with string fan, bridge, nut, yoke, and pin row.
- Side section through body/soundboard showing bridge height and downbearing.
- Crossbar/yoke detail with pin spacing, pilot diameter, and edge distance.
- Arm joint detail showing grain direction and glue surface.
- Soundboard bridge patch, brace or reinforcement zones, and no-cut/no-carve
  zones around loaded areas.
- Explicit datum from `string-schedule.csv` so bridge, nut, and pin row update
  from the string paths rather than from decoration.

All drawings should label dimensions in inches, include metric equivalents for
hardware, and mark TBD dimensions that depend on final string gauges. Drawing
outputs remain draft review artifacts until the string schedule and load
register have selected-string and prototype evidence.

<div class="page-break"></div>

## cad/README.md

CAD skeleton notes.

# CAD Starter Notes

Model the lyre as separate frame, soundboard, bridge, nut, and pin components.
Expose parameters for string count, string spacing, nominal scale length, yoke
width, soundboard thickness, and bridge height. Add construction planes for
each string path so the bridge and pin row can be regenerated from the string
table.

Minimum skeleton parameters:

- `string_count`
- `scale_length_in`
- `string_spacing_bridge_in`
- `string_spacing_pin_row_in`
- `bridge_height_in`
- `soundboard_thickness_in`
- `pin_edge_distance_in`
- `yoke_section_height_in`
- `arm_section_width_in`
- `bridge_patch_length_in`

The CAD model is a source scaffold until `string-schedule.csv` and
`bridge-soundboard-load-register.csv` have enough evidence to declare a
reviewed fabrication authority.

<div class="page-break"></div>

## drawings/README.md

Drawing queue notes.

# Drawings

Starter folder for lyre drawings. The first deliverable should be a dimensioned
front elevation tied to `string-schedule.csv`, `design.md`, and
`wolfram-starter.wl`.

Required first views:

- front elevation with all string paths, bridge, nut, yoke, pin row, and loaded
  grain direction;
- side section through the bridge/soundboard showing bridge height, break angle,
  bridge patch, and soundboard thickness;
- arm-to-yoke joinery detail with glue area, grain direction, and pin-row edge
  distance;
- bridge and nut slot detail after final gauges are selected.

Drawings are draft review artifacts until the schedule and load register are
filled with selected string and prototype evidence.

<div class="page-break"></div>

## assembly-manual.md

Shop-facing sequence.

# Lyre Assembly Manual

## Tools

Bandsaw or CNC router, drill press, brad-point bits, clamps, rasps/files,
sanding blocks, tuner, calipers, straightedge, and stringing wrench.

## Build Sequence

1. Make a full-size layout with string path, bridge, nut, yoke, and pin row.
2. Cut frame arms and crossbar oversize, keeping grain continuous through the
   loaded members.
3. Dry-fit the frame and mark the actual speaking lengths.
4. Cut and fit the soundboard or soundbox panel.
5. Glue the frame and soundboard with flat cauls and full clamp support.
6. Shape and polish the bridge and nut. Do not cut final slots until the gauge
   schedule is confirmed.
7. Drill pin pilot holes in scrap first, then in the yoke after torque testing.
8. Install strings gradually, moving across the set instead of loading one side
   fully before the other.
9. Tune in stages over 24 hours and record movement in `validation.csv`.

## Safety

Wear eye protection when stringing. Stand out of the string plane during first
pitch-up. If a frame member moves visibly, detune before inspecting.

<div class="page-break"></div>

## validation.csv

Measurement and validation gates.

| check_id | area | target | method | tolerance | measured | result | evidence | next_action |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| VAL-001 | String tuning | C4 through E5 target pitches at A4=440 | chromatic tuner after 24 hour settle | +/- 10 cents | TBD | TBD | string-schedule.csv plus pitch-up log | Adjust gauge, scale length, or bridge compensation |
| VAL-002 | String safety | all strings below 70 percent estimated break | calculate from supplier density and break strength | <=70 percent | TBD | TBD | string-schedule.csv | Change gauge/material before full pitch |
| VAL-003 | Frame deflection | no permanent yoke or arm movement under full tension | measure before stringing, half tension, full tension, and after 24 hours | <=0.030 in movement | TBD | TBD | bridge-soundboard-load-register.csv | Increase section, add lamination, or reduce total tension |
| VAL-004 | Tuning pin hold | pins hold pitch through three retune cycles | mark pin angle and pitch drift on a scrap-block coupon | <=5 cents drift per hour | TBD | TBD | bridge-soundboard-load-register.csv | Revise pilot hole or pin spec |
| VAL-005 | Ergonomics | comfortable lap/bench playing reach | player mockup photos and reach notes | no wrist strain | TBD | TBD | photo-shotlist.md plus mockup notes | Revise body width/string fan |
| VAL-006 | Finish clearance | finish does not bind pins or string slots | dry fit after finish cure | free movement | TBD | TBD | assembly log | Mask or rework contact areas |
| VAL-007 | Bridge and soundboard load | bridge/nut slots and soundboard tolerate first pitch-up | record bridge height, slot radius, break angle, top flatness, and deflection | no string cutting; no visible top crown or cracking | TBD | TBD | bridge-soundboard-load-register.csv | Rework bridge/nut or soundboard thickness before continuing |
| VAL-008 | Joinery load path | arms, yoke, body, and pin row avoid short-grain failure | review full-size drawing or CAD detail before cutting final frame | loaded grain direction and pin edge distance explicitly shown | TBD | TBD | drawing-brief.md and bridge-soundboard-load-register.csv | Revise yoke/arm joint, pin row, or lamination strategy |

<div class="page-break"></div>

## supplier-rfq.md

Supplier RFQ template.

# Supplier RFQ Draft

Hello,

I am sourcing parts for a 10-string prototype lyre. Please quote the following
items or recommend substitutions that meet the same use case:

- 10 matching zither or harp tuning pins with recommended pilot-hole size.
- Nylon or fluorocarbon monofilament strings suitable for C4 through E5 at
  approximately 18-23 in speaking length.
- Optional matching tuning wrench.

Please include material specifications, breaking strength or rated tension,
unit price, minimum order quantity, lead time, and shipping options.

Thank you.

<div class="page-break"></div>

## visual-bom-brief.md

Visual BOM brief.

# Visual BOM Brief

Create a one-page visual BOM with the assembled lyre at top, then callouts for
frame hardwood, soundboard, tuning pins, strings, bridge, nut, adhesive, and
finish. Use real photos or CAD renders when available. Mark any concept images
as placeholders until replaced by shop or supplier images.

<div class="page-break"></div>

## photo-shotlist.md

Documentation shot list.

# Photo Shotlist

- Orthographic front view of full-size layout before cutting.
- Close-up of grain direction through arms and yoke.
- Pin pilot-hole test block with bit sizes labeled.
- Dry-fit frame before glue.
- Bridge and nut blank before and after slotting.
- First stringing with safety setup visible.
- Tuner readings for all 10 strings after 24 hour settle.

<div class="page-break"></div>

## risks.md

Risk register.

# Lyre Risks

## Safety

- String breakage during first pitch-up can injure eyes or hands.
- Tuning pins may release suddenly if pilot holes are oversized.

## Structural

- The yoke and arms carry the full string load and must avoid short-grain
  failure.
- Soundboard thickness is not validated; excessive bridge load may crown or
  crack the board.
- Arm-to-yoke joinery and pin-row edge distance are not yet backed by a reviewed
  drawing or proof-load coupon.

## Acoustic

- Gauge schedule is not measured yet, so tone balance may be uneven.
- Bridge and nut slot quality can dominate sustain and string life.

## Sourcing

- Live prices, availability, and lead times are not checked.
- Fishing-line substitutions are risky unless density and breaking strength are
  documented.

## Readiness

Remain at prototype-planning scaffold status until the CAD layout, string
schedule, bridge/soundboard load register, and first prototype validation rows
are complete.

<div class="page-break"></div>

## README.md

Repository overview.

# Lyre

Root-mode build packet scaffold for a small plucked lyre, aligned with the
instrument-maker packet shape.

## Readiness

Prototype-planning scaffold. The packet now has a design basis, first-pass
string assumptions, BOM, sourcing, cut list, validation plan, risks, photo plan,
drawing brief, CAD notes, and Wolfram starter. It is not build-ready because no
shop prototype, measured tuning data, reviewed CAD/DXF authority, sourceability
check, or string-load proof has been completed.

## Packet Contents

- `explorer.html` - studio overview linking the packet evidence, validation gates,
  print packet, Wolfram starter, CAD/drawing queues, and learn-to-play material.
- `design.md` - design intent, physics model, assumptions, and known gaps.
- `bom.csv` - first-pass parts and estimated costs.
- `sourcing.csv` - source specifications and search terms.
- `cut-list.csv` - rough and final stock plan.
- `string-schedule.csv` - C4-E5 target schedule with gauge/tension fields left
  measurement-required until supplier or sample-string data exists.
- `bridge-soundboard-load-register.csv` - bridge, soundboard, yoke, pin, and
  joinery load gates.
- `visual-output-register.csv` - records the reference image and review exports
  as non-authoritative visuals.
- `validation.csv` - tuning, load, ergonomic, and finish checks.
- `assembly-manual.md` - staged build notes for the first prototype.
- `drawing-brief.md` and `drawings/README.md` - drawing starter notes.
- `cad/README.md` - CAD starter notes.
- `wolfram-starter.wl` and `wolfram/README.md` - string model starter.
- `risks.md` - safety, structural, sourcing, and readiness risks.
- `photo-shotlist.md` - documentation image plan.

## String-Scale Assumptions

Baseline: 10 strings, C4 through E5 diatonic, 21 in nominal speaking length,
nylon or fluorocarbon monofilament, and a conservative prototype target below
70 percent of estimated breaking load. The exact gauge schedule remains a
validation task in `string-schedule.csv`; empty tension fields are intentional
and must not be treated as final load data.

## Build Review Checklist

Before this packet moves beyond scaffold status, review the string chart
against real supplier data. The lyre frame looks simple, but the crossbar and
arms carry the entire string load continuously. The first review should confirm
that no loaded member depends on short grain, that tuning pins have enough edge
distance, and that the bridge/nut contact surfaces are smooth enough to avoid
cutting monofilament strings.

CAD should start from a full-size front elevation. Keep the string paths as
reference geometry, then derive the bridge, nut, yoke, and pin row from those
paths. Do not hand-place the pin row independently from the string schedule.

## Validation Boundary

This packet supports design review and prototype planning only. The following
evidence is still required before claiming build-ready or validated status:

- Calculated gauge schedule using measured or supplier-provided density and
  breaking strength.
- Scrap-block tuning pin torque and creep test.
- CAD or full-size drawing that shows the string fan, yoke, bridge, nut, and
  loaded grain direction.
- First pitch-up log showing frame movement and tuning drift after 24 hours.
- Prototype photos that match the photo shotlist.

## Shop Notes

Bring strings up to pitch in several passes rather than tuning one string to
final pitch before the others. Record the before/after yoke distance, arm
spread, and bridge height. If the frame moves visibly or a pin rotates under
load, detune and revise the structure before continuing.

## License

[CC BY 4.0](LICENSE) - see LICENSE for details.

<div class="page-break"></div>

## wolfram-starter.wl

Local Wolfram starter.

```wolfram
(* Lyre string schedule starter. Values are first-pass assumptions. *)
ClearAll["Global`*"];
a4 = 440;
freqFromMidi[m_] := a4*2^((m - 69)/12);
stringTension[f_, scaleIn_, linearDensity_] := (2*scaleIn*f)^2*linearDensity;
percentBreak[scaleIn_, f_, densityLbIn3_, breakPsi_] :=
  densityLbIn3*4*scaleIn^2*f^2/(breakPsi*386.4)*100;

notes = <|"C4" -> 60, "D4" -> 62, "E4" -> 64, "F4" -> 65, "G4" -> 67,
  "A4" -> 69, "B4" -> 71, "C5" -> 72, "D5" -> 74, "E5" -> 76|>;
scaleLengthIn = 21;
nylonDensityLbIn3 = 0.04155;
nylonBreakPsi = 44600;

Dataset[
  KeyValueMap[
    <|"note" -> #1, "frequencyHz" -> N[freqFromMidi[#2]],
      "percentBreakIdeal" -> N[percentBreak[scaleLengthIn, freqFromMidi[#2],
        nylonDensityLbIn3, nylonBreakPsi]]|> &,
    notes
  ]
]
```

# Lyre Build Packet Print Packet

Generated: 2026-05-09
Packet folder: `/tmp/lyre-codex-gina-r2-build-packet`

## File Map

| File | Purpose |
| --- | --- |
| `design.md` | Project intent, catalog metadata, assumptions, and validation plan. |
| `bom.csv` | Starter bill of materials with part categories, quantities, drawing refs, and notes. |
| `sourcing.csv` | Supplier/search tracker with specs, price/date fields, lead time, substitutes, and risks. |
| `cut-list.csv` | Rough/final stock sizes, material, grain/orientation, operations, yield, and offcuts. |
| `drawing-brief.md` | Manufacturing drawing and technical product sketch brief. |
| `assembly-manual.md` | Shop-facing sequence, tools, fixtures, safety, tuning, finishing, and maintenance notes. |
| `validation.csv` | Target/measured values, tolerance, environment, result, and tuning/build action log. |
| `supplier-rfq.md` | Supplier email/request-for-quote starter. |
| `visual-bom-brief.md` | Art direction for an image-forward visual BOM. |
| `wolfram-starter.wl` | Wolfram starter for physics, optimization, visualization, and validation. |
| `README.md` | Project artifact. |
| `photo-shotlist.md` | Project artifact. |
| `risks.md` | Project artifact. |

<div class="page-break"></div>

## design.md

Project intent, catalog metadata, assumptions, and validation plan.

# Lyre Design

## Intent

Create a small bench-buildable lyre packet that can move from concept to a
first shop prototype without hiding the important string-load unknowns. The
baseline is a compact 10-string plucked instrument with a flat soundboard,
two arms, a crossbar/yoke, and individual tuning pins.

## Readiness

L2 scaffold. This is suitable for design review, sourcing review, and first CAD
layout. It is not ready for unattended fabrication.

## Governing Model

Strings use the Mersenne-Taylor relationship:

```text
f = (1 / (2 L)) * sqrt(T / mu)
mu = density * pi * (diameter / 2)^2
```

Use A4 = 440 Hz equal temperament for targets. Treat all string tensions as
first-order estimates until the actual string material, gauge, and measured
density are recorded.

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
- No supplier price or stock verification yet.
- No prototype tuning data.

<div class="page-break"></div>

## bom.csv

Starter bill of materials with part categories, quantities, drawing refs, and notes.

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

Supplier/search tracker with specs, price/date fields, lead time, substitutes, and risks.

| item | required_spec | search_terms | supplier_candidates | date_checked | unit_price_usd | lead_time | substitution_risk | notes |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Zither pins | 10 matching pins with compatible wrench and pilot recommendations | zither tuning pins harp lyre 0.197 inch | music hardware suppliers; luthier suppliers | TBD | TBD | TBD | Medium | Pin diameter and wood species affect holding torque |
| Monofilament strings | nylon or fluorocarbon gauges from calculated schedule | nylon monofilament harp strings fluorocarbon music string | harp string suppliers; fishing leader only if specs are documented | TBD | TBD | TBD | High | Density and breaking strength must be known |
| Soundboard stock | quarter-sawn softwood or stable thin ply | spruce soundboard blank cedar soundboard birch aircraft plywood | luthier suppliers; specialty plywood suppliers | TBD | TBD | TBD | Medium | Tone and deflection vary by material |
| Frame hardwood | clear straight-grain hardwood, 0.75 in nominal or thicker | instrument hardwood maple cherry walnut blank | local hardwood dealer; luthier tonewood supplier | TBD | TBD | TBD | Low | Avoid runout at arms |
| Bridge/nut stock | dense wear-resistant string contact material | hard maple bridge blank bone nut blank | luthier suppliers | TBD | TBD | TBD | Low | Must polish smooth to prevent string cuts |

<div class="page-break"></div>

## cut-list.csv

Rough/final stock sizes, material, grain/orientation, operations, yield, and offcuts.

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

Manufacturing drawing and technical product sketch brief.

# Lyre Drawing Brief

Required first drawings:

- Full-size front elevation with string fan, bridge, nut, yoke, and pin row.
- Side section through body/soundboard showing bridge height and downbearing.
- Crossbar/yoke detail with pin spacing, pilot diameter, and edge distance.
- Arm joint detail showing grain direction and glue surface.

All drawings should label dimensions in inches, include metric equivalents for
hardware, and mark TBD dimensions that depend on final string gauges.

<div class="page-break"></div>

## assembly-manual.md

Shop-facing sequence, tools, fixtures, safety, tuning, finishing, and maintenance notes.

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

Target/measured values, tolerance, environment, result, and tuning/build action log.

| check_id | area | target | method | tolerance | measured | result | action |
| --- | --- | --- | --- | --- | --- | --- | --- |
| VAL-001 | String tuning | C4 through E5 target pitches at A4=440 | chromatic tuner after 24 hour settle | +/- 10 cents | TBD | TBD | Adjust gauge, scale length, or bridge compensation |
| VAL-002 | String safety | all strings below 70 percent estimated break | calculate from supplier density and break strength | <=70 percent | TBD | TBD | Change gauge/material before full pitch |
| VAL-003 | Frame deflection | no permanent yoke or arm movement under full tension | measure before stringing and after 24 hours | <=0.030 in movement | TBD | TBD | Increase section, add lamination, or reduce total tension |
| VAL-004 | Tuning pin hold | pins hold pitch through three retune cycles | mark pin angle and pitch drift | <=5 cents drift per hour | TBD | TBD | Revise pilot hole or pin spec |
| VAL-005 | Ergonomics | comfortable lap/bench playing reach | player mockup photos and reach notes | no wrist strain | TBD | TBD | Revise body width/string fan |
| VAL-006 | Finish clearance | finish does not bind pins or string slots | dry fit after finish cure | free movement | TBD | TBD | Mask or rework contact areas |

<div class="page-break"></div>

## supplier-rfq.md

Supplier email/request-for-quote starter.

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

Art direction for an image-forward visual BOM.

# Visual BOM Brief

Create a one-page visual BOM with the assembled lyre at top, then callouts for
frame hardwood, soundboard, tuning pins, strings, bridge, nut, adhesive, and
finish. Use real photos or CAD renders when available. Mark any concept images
as placeholders until replaced by shop or supplier images.

<div class="page-break"></div>

## wolfram-starter.wl

Wolfram starter for physics, optimization, visualization, and validation.

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

<div class="page-break"></div>

## README.md

Project artifact.

# Lyre

Root-mode build packet scaffold for a small plucked lyre, aligned with the
instrument-maker v4.3 Mode A packet shape.

## Readiness

L2 scaffold. The packet now has a design basis, first-pass string assumptions,
BOM, sourcing, cut list, validation plan, risks, photo plan, drawing brief,
CAD notes, and Wolfram starter. It is not L3 because no shop prototype,
measured tuning data, rendered CAD, sourceability check, or string-load proof
has been completed.

## Packet Contents

- `design.md` - design intent, physics model, assumptions, and known gaps.
- `bom.csv` - first-pass parts and estimated costs.
- `sourcing.csv` - source specifications and search terms.
- `cut-list.csv` - rough and final stock plan.
- `validation.csv` - tuning, load, ergonomic, and finish checks.
- `assembly-manual.md` - staged build notes for the first prototype.
- `drawing-brief.md` and `drawings/README.md` - drawing starter notes.
- `cad/README.md` - CAD starter notes.
- `wolfram-starter.wl` and `wolfram/README.md` - string model starter.
- `risks.md` - safety, structural, sourcing, and readiness risks.
- `photo-shotlist.md` - documentation image plan.

## String-Scale Assumptions

Baseline: 10 strings, C4 through E5 diatonic, 21 in nominal speaking length
for the mid strings, nylon or fluorocarbon monofilament, and a conservative
prototype target below 70 percent of estimated breaking load. The exact gauge
schedule remains a validation task.

## License

[CC BY 4.0](LICENSE) - see LICENSE for details.

<div class="page-break"></div>

## photo-shotlist.md

Project artifact.

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

Project artifact.

# Lyre Risks

## Safety

- String breakage during first pitch-up can injure eyes or hands.
- Tuning pins may release suddenly if pilot holes are oversized.

## Structural

- The yoke and arms carry the full string load and must avoid short-grain
  failure.
- Soundboard thickness is not validated; excessive bridge load may crown or
  crack the board.

## Acoustic

- Gauge schedule is not measured yet, so tone balance may be uneven.
- Bridge and nut slot quality can dominate sustain and string life.

## Sourcing

- Live prices, availability, and lead times are not checked.
- Fishing-line substitutions are risky unless density and breaking strength are
  documented.

## Readiness

Remain at L2 until the CAD layout, string schedule, and first prototype
validation rows are complete.

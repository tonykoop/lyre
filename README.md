# Lyre

Root-mode build packet scaffold for a small plucked lyre, aligned with the
instrument-maker packet shape.

**Status:** L2 V5 build-packet candidate

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
- `cad/README.md` and `cad/lyre.scad` - CAD starter notes plus the parametric
  OpenSCAD master (string-count-derived pin row and bridge fan); authority
  `pending_measurement`.
- `lyre-starter.wl`, `wolfram/lyre-wolfram-model.wl`, and `wolfram/README.md` -
  string tension model starter (source-only, L2 evidence).
- `evolution/` - evolution-pipeline Stage 0 intake: master manifest,
  design-intent, and revision register (Gate A not yet run).
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

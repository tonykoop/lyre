# Instrument-Maker Handoff Prompt - Greek Yoke Lyre

Use this prompt with the `instrument-maker-v4` skill. The project repo is:

`/mnt/c/Users/Tony/Documents/GitHub/lyre`

## Prompt For Next Agent

You are continuing Tony Koop's lyre project. Use the `instrument-maker-v4`
skill and produce the next design deliverables for a historically informed,
beautiful-sounding, 13-string Greek yoke lyre / chelys-inspired lyre.

Work in the existing repo:

`/mnt/c/Users/Tony/Documents/GitHub/lyre`

Use Mode A from `instrument-maker-v4`: this is a single-instrument project repo,
not a nested `build-packets/` folder.

## Current Context

This project is now correctly scoped as a Greek yoke lyre / chelys-like lyre:

- shell-like rounded bowl or soundbox;
- flat soundboard;
- two rising arms;
- cylindrical crossbar/yoke;
- visible black cord lashing at the yoke;
- wooden friction pegs;
- bridge and lower string anchor/tailpiece;
- gut-like or sugarcane/Nylgut strings;
- plectrum-compatible playing.

Do not use the old image `images/P-Lyre-Harp-1200x1200-1_1080xinspiration.webp`
as CAD or design reference. It is the wrong topology.

Correct inspiration/reference files:

- `images/inspiration/03.jpg`
- `images/inspiration/06.jpg`
- `images/inspiration/07.jpg`
- `images/inspiration/10.jpg`
- `images/inspiration/11.jpg`
- `images/inspiration/12.jpg`
- `images/inspiration/ThanasisLyre.jpg`
- `reverse-engineering.md`
- `design.md`
- `family-spec.csv`
- `cad/LYR-000_master-equations.txt`
- `cad/README.md`
- `learn-to-play/README.md`

LUTHIEROS' Wandering Lyre of Thanasis Kleopas is a modern reference and
evidence source, not a design to clone. Keep the design traceable to public
ancient Greek lyre grammar plus Tony's own ergonomic, visual, and joinery ideas.

## Historical Accuracy Stance

Tony wants "historically accurate yet beautiful sounding." Treat this as:

1. Historically grounded visual/construction language.
2. Honest documentation of where evidence is strong, weak, or modernized.
3. A 13-string modern performance extension, not a claim that 13 strings is the
   most conservative ancient Greek baseline.
4. A 7-string `LYR-07-HERMES` reference configuration kept in the family so the
   ancient evidence remains visible.

Preserve and document:

- chelys/yoke-lyre architecture;
- wooden yoke and arms;
- visible lashing;
- wooden pegs;
- gut/sugarcane/Nylgut string options;
- plectrum playing;
- ancient Greek mode/tuning notes;
- tortoise-shell origin story as design grammar, not literal tortoise use.

Modernize only where useful:

- 13-string chromatic range;
- controlled soundboard thickness and bracing;
- repeatable SolidWorks parametric design;
- hidden structural reinforcement;
- ergonomic thigh saddle and left-hand guide surfaces;
- CNC/laser inlay.

## Tony's Personal Design Inspiration

Integrate these as first-class design requirements, not afterthoughts:

### Japanese Torii Gate

Use torii-gate inspiration subtly in the yoke/crossbar and stand language:

- yoke proportions can have a quiet torii-like dignity;
- yoke end caps can subtly echo torii crossbeam ends;
- stand can more openly reference torii architecture;
- do not let the instrument become a Japanese gate-shaped object. The primary
  silhouette must remain an ancient Greek yoke lyre.

### Japanese Joinery

Use Japanese joinery principles where they improve structure, serviceability,
and beauty:

- arm-to-body sockets: wedged round tenons, keyed collars, or hidden drawbore
  pins;
- yoke-to-arm: shallow saddle seats plus visible cord lashing, with hidden
  positive registration if needed;
- stand/cradle: good place for visible keyed scarf, dovetail, or housed joinery;
- make joints parametric in SolidWorks and assign practical tolerances;
- keep the acoustic body repairable, not permanently trapped by decorative
  joinery.

### Inlay Direction

Use the Second Brain clipping ideas but merge them into one coherent instrument
identity:

- "Torii Lattice": kumiko-like linework reserved for yoke ends, peg heads,
  back edge details, or stand.
- "Acoustic Geography": contour-line inlay around the soundhole and upper
  soundboard, moving with the imagined flow of sound.
- "Kinetic Waveform Tessellation": optional side/back inlay or stand detail.
- "Celestial Bridge": 13 string-aligned star/dot or wire traces, one per string,
  near the bridge or tailpiece.
- Tortoise-shell geometry: polygon/scute pattern around the bowl rim or
  soundboard perimeter, referencing Hermes' lyre origin.

Keep soundboard inlay shallow and low mass.

## Ergonomics Insight To Add

Tony observed how Thanasis Kleopas holds the instrument:

- the bottom or lower corner of the lyre rests on top of the player's left
  thigh;
- this gives the right hand easy access to the front face/soundboard;
- the left hand can reach and play/damp from the backside;
- a photo shows padding between the instrument and the thigh;
- the instrument is supported at a bottom/bottom-corner load-bearing surface,
  not only by the hands.

Turn that observation into a design feature:

### Thigh Saddle / Lap Contact Surface

Design a concave downward load-bearing surface on the lower body or lower-left
corner of the lyre so it naturally follows the curvature of the player's thigh.

Requirements:

- It should make the lyre less likely to slide or rotate while seated.
- It should not visibly corrupt the ancient Greek front silhouette.
- It should not weaken the bowl or lower string anchor.
- It may be a carved integral concavity, a detachable padded saddle, or a
  replaceable leather/felt pad mounted to a shallow concave hard surface.
- It should be parametric and configurable: visible historical version vs
  ergonomic performance version.

Add SolidWorks globals such as:

- `thigh_saddle_enabled`
- `thigh_saddle_radius_in`
- `thigh_saddle_width_in`
- `thigh_saddle_depth_in`
- `thigh_saddle_x_offset_in`
- `thigh_saddle_y_from_lower_in`
- `thigh_pad_thickness_in`
- `thigh_pad_durometer_shore_a` or material note if not numeric
- `seated_tilt_angle_deg`
- `lap_contact_patch_len_in`

### Top Back Edge / Left-Hand Guide

Shape the top back edge of the lyre body so it naturally positions the left
hand for backside playing and damping.

Requirements:

- Add a soft thumb/hand relief along the upper back edge of the soundbox.
- The relief should guide the left hand without creating a sharp stress riser.
- It should not interfere with bowl strength, arm sockets, or soundboard rim.
- It should be subtle from the front.
- It can be a sculpted bevel, shallow scallop, or polished tactile register.

Add SolidWorks globals such as:

- `left_hand_relief_enabled`
- `left_hand_relief_radius_in`
- `left_hand_relief_width_in`
- `left_hand_relief_depth_in`
- `back_edge_bevel_deg`
- `back_edge_roundover_in`
- `left_thumb_register_y_in`

### Ergonomic Validation

Add validation rows/tests:

- seated stability test at several tilt angles;
- right-hand access clearance;
- left-hand backside reach/damping clearance;
- thigh pressure comfort after 20 minutes;
- slip resistance with and without pad;
- check that the thigh saddle does not damp the soundboard excessively;
- check that the left-hand relief does not reduce shell strength near arm
  sockets.

## Requested Deliverables

Produce a complete next-stage design packet in this repo. At minimum:

1. Update `README.md` with the new design direction and ergonomic features.
2. Update `reverse-engineering.md` with the new ergonomic photo observations,
   marked as observed/inferred/assumed using the reverse-engineer discipline.
3. Expand `design.md` into a build-ready concept brief:
   - historical stance;
   - design grammar;
   - ergonomics;
   - acoustic model;
   - inlay program;
   - joinery plan;
   - materials;
   - prototype path.
4. Expand `family-spec.csv` with ergonomic fields and any needed variants:
   - historical 7-string;
   - main 13-string;
   - low-tension mule;
   - ergonomic performance variant if useful.
5. Update `cad/LYR-000_master-equations.txt` with:
   - thigh saddle variables;
   - left-hand relief variables;
   - joinery variables;
   - yoke/peg/bridge variables;
   - string/tuning variables;
   - inlay variables.
6. Update `cad/README.md` with a SolidWorks master-layout sketch and feature
   plan that includes ergonomics.
7. Add or update:
   - `bom.csv`
   - `sourcing.csv`
   - `cut-list.csv`
   - `validation.csv`
   - `risks.md`
   - `assembly-manual.md`
   - `drawing-brief.md`
   - `photo-shotlist.md`
   - `visual-bom-brief.md`
   - `cnc/cnc-plan.md`
   - `wolfram/lyre-acoustics-starter.wl`
8. Include a `supplier-rfq.md` if material or hardware choices need quotes.
9. If feasible, create a concise `print-packet.md` that collects the build
   intent and first prototype plan.

Keep unknowns explicit. Do not invent measured values. Absolute dimensions in
the current files are first-pass targets, not final fabrication dimensions.

## CAD / SolidWorks Requirements

Follow Tony's SolidWorks convention from the Sambuca repo:

- master sketch / top-down layout first;
- all driving values are global equations;
- snake_case variable names;
- units in inches for SolidWorks equations;
- design table columns should match global names;
- no raw hand-entered dimensions in final feature sketches.

Primary master sketches:

- `SK_MASTER_FRONT`
- `SK_MASTER_TOP`
- `SK_BOWL_SECTION`
- `SK_STRING_PLANE`
- `SK_BRIDGE_PATH`
- `SK_TAILPIECE`
- `SK_PEG_LAYOUT`
- `SK_JOINERY`
- `SK_THIGH_SADDLE`
- `SK_LEFT_HAND_RELIEF`
- `SK_INLAY_LAYOUT`

Add CAD notes for how the thigh saddle and left-hand relief should be modeled:

- integrated carved shell geometry vs detachable pad;
- datum planes and offsets;
- split lines or projected curves;
- surface/loft strategy;
- minimum wall thickness;
- fillet radii;
- inspection dimensions.

## Acoustic / Structural Requirements

Use the strings model from `instrument-maker-v4`:

```text
f = (1 / 2L) * sqrt(T / mu)
```

For this lyre, keep string lengths equal or near-equal. Do not accidentally
turn the instrument into a harp with strongly frequency-driven string lengths.

Model or document:

- E4-E5 chromatic 13-string option;
- D4-D5 warmer 13-string option;
- 7-string historical mode option;
- string material tradeoff: gut, sugarcane, Nylgut, fluorocarbon;
- target total string tension;
- yoke bending/deflection risk;
- arm socket load path;
- bridge downbearing and soundboard deflection;
- effect of thigh saddle/pad on resonance and comfort.

## Risks To Surface

- 13 strings may be musically useful but historically less conservative.
- Friction pegs need stable taper, wood pairing, and humidity management.
- Yoke and arms may creep under total string tension.
- Concave thigh saddle could remove too much shell material if not bounded.
- Soft pad may damp bowl resonance or hide wear/moisture.
- Left-hand relief near upper back edge could weaken the rim or arm socket.
- Decorative inlay can add mass to the soundboard and reduce response.
- Torii/joinery inspiration can overpower Greek identity if too literal.
- Avoid exact copying of LUTHIEROS product-specific dimensions and ornament.

## Quality Bar

The result should read like a serious maker packet, not a brainstorm dump:

- design decisions trace back to observed evidence, historical precedent, or
  Tony's stated intent;
- every fabrication-sensitive unknown remains marked `TBD` or assigned to a
  prototype test;
- SolidWorks variables are usable as a real starting point;
- ergonomics are integrated into the body design, not just a paragraph;
- Japanese joinery and torii inspiration are present but subordinate to the
  ancient Greek lyre identity;
- output is ready for the next step: CAD skeleton build and low-tension mule.

Before finishing, run basic checks:

- CSV column consistency;
- markdown links and file paths;
- no accidental dependence on the wrong lyre-harp image;
- no claims that inferred dimensions are measured;
- `git status --short` summary in final response.

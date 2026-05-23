# Lyre Design Notes

## Design Intent

Build a beautiful, historically informed Greek chelys/yoke lyre that keeps the
ancient public-domain grammar legible while becoming unmistakably Tony's own
instrument.

The main build is a 13-string modern performance lyre inspired by ancient
Greek examples and informed by the LUTHIEROS reference photos, but not cloned
from them. This design adds Japanese joinery discipline, quiet torii influence,
Broinwood-style CNC inlay, seated ergonomics, optional pickup support, and an
optional lightweight strap-carry system.

## Design Pillars

1. Ancient grammar: shell-like soundbox, flat soundboard, two arms, cylindrical
   yoke, visible lashing, wooden pegs, gut-like strings, plectrum-friendly
   spacing, no fingerboard.
2. Honest modernization: 13-string playable range, hidden alignment features,
   repeatable CAD, controlled soundboard/bracing, ergonomic shaping, pickup
   allowance, and optional strap points.
3. Tony-specific identity: torii-inspired yoke restraint, joinery-informed
   structure, contour/scute/celestial inlay language, and strong stage-worthy
   usability.
4. Repairability: no decorative decision should trap the acoustic core or
   prevent service of pegs, strings, saddle, pickup, or pads.

## Target Family

| ID | Purpose | Strings | Tuning concept | Notes |
|---|---|---:|---|---|
| `LYR-07-HERMES` | historically conservative reference | 7 | E Dorian / ancient mode study | Keeps the ancient seven-string story visible. |
| `LYR-13-MULE` | prototype/mule | 13 | E4-E5 or D4-D5 test set | Prioritize structure, voicing, and ergonomics over ornament. |
| `LYR-13-WANDERER` | main build | 13 | E4-E5 chromatic | Core visual and acoustic target. |
| `LYR-13-WANDERER-ERG` | performance variant | 13 | E4-E5 chromatic | Enables lap saddle, hand guide, pickup channel, and strap. |

## Historical Stance

The project should be described as historically informed, not as a literal
ancient reconstruction. That framing gives room to be accurate about what is
old, what is inferred, and what is deliberately modern.

Preserve:

- chelys/yoke-lyre architecture;
- rounded shell/bowl logic;
- wooden yoke and arms;
- visible lashing;
- wooden friction pegs;
- gut, Nylgut, or similar low-mass string vocabulary;
- plectrum use and backside damping technique;
- the tortoise-shell origin story as design grammar rather than literal
  material prescription.

Modernize:

- 13-string chromatic playing range;
- repeatable SolidWorks master-layout workflow;
- hidden yoke registration and arm reinforcement where needed;
- controlled ergonomic shaping;
- optional acoustic pickup;
- optional strap points;
- CNC and laser-assisted inlay execution.

## Design Grammar

### Overall silhouette

The front silhouette must still read first as an ancient Greek yoke lyre. The
body should remain rounded and shell-like, the arms should rise clearly from
the shoulders, and the yoke should feel like a restrained cylindrical crossbar.

### Torii influence

Torii influence should be subtle and architectural rather than literal:

- yoke proportions should carry calm horizontal authority;
- yoke finials or end caps may echo softened torii beam terminations;
- the stand can show the strongest torii reference because it is separable;
- the instrument itself must never become a gate-shaped novelty silhouette.

### Joinery language

Japanese joinery influence should appear where it improves structural clarity:

- arm-to-body sockets: wedged round tenons, hidden drawbore logic, or keyed
  collars;
- yoke-to-arm interface: shallow saddle seat plus visible lashing, with hidden
  anti-rotation registration if required;
- stand/cradle: visible keyed scarf, housed dovetail, or wedged cross-lap can
  become a more explicit signature detail.

### Inlay language

Use a merged visual language rather than unrelated decorative motifs:

1. Tortoise scute geometry around rim zones or perimeter fields.
2. Acoustic contour lines radiating around the soundhole and upper top.
3. Celestial bridge markers aligned to the 13 strings.
4. Kumiko/torii lattice reserved for yoke ends, peg heads, stand faces, or
   bowl side accents.
5. Broinwood-style CNC artistry in side/back zones and removable stand parts
   where more depth and layering are safe.

Soundboard inlay must remain shallow, sparse, and outside the highest-motion
bridge field.

## Parametric Family Strategy

This is not a one-off CAD model. The family should be robust enough to support:

- different string counts;
- smaller and larger body sizes;
- alternate arm joinery;
- alternate yoke registration/lashing strategies;
- alternate shell construction methods.

### Family controls

The family is driven by a base configuration plus configuration-level toggles.
The governing design pattern is:

- one master layout part;
- one design table row per family member;
- one set of global equations shared by every downstream part;
- suppression states used only for optional features, not for core geometry
  dimensions.

### Scaling policy

For this string instrument family, body scaling is structural and ergonomic
first, not purely acoustic. Unlike a vessel flute or bar idiophone, the family
does not follow one dominant acoustic scaling law. Use these rules instead:

- string count changes primarily affect yoke span, peg count, string field
  width, and bridge/tailpiece spacing;
- body-size changes primarily affect bowl volume, stability, and visual weight;
- speaking lengths should remain near-equal within each configuration, with
  only mild bass-to-treble taper;
- larger variants may allow lower tuning or lower string tension without
  overloading the yoke.

## Ergonomics

### Thigh interface

The instrument should naturally seat on the player's left thigh without
constant hand effort. This becomes a designed interface rather than an
afterthought.

Requirements:

- lower body or lower-left corner shaped for a stable lap contact patch;
- anti-slip behavior with or without a replaceable leather/felt pad;
- no obvious corruption of the front ancient silhouette;
- no weakening of the lower anchor region or bowl shell.

Recommended implementations:

- shallow integral concavity in the contact zone;
- removable pad on concealed fasteners or reversible adhesive system;
- configuration toggle between historical-clean and ergonomic-performance
  variants.

### Non-dominant wrist and left-hand guide

The upper rear edge of the body should invite backside playing and damping
without creating a stress riser.

Requirements:

- soft bevel, scallop, or polished thumb register on the upper back edge;
- enough tactile definition to help placement without looking bulky from front;
- protection of bowl strength near the shoulder blocks and arm sockets.

### Strap concept

The lyre should be carryable with an optional lightweight strap, primarily for
transport and potentially for standing support if testing proves viable.

Requirements:

- detachable anchor points;
- no visually dominant metal hardware on the front face;
- no concentrated loads that crack the bowl shell or shoulder area;
- safe default assumption that seated playing remains primary.

Candidate anchor zones:

- hidden or semi-hidden lower anchor near the tailpiece block;
- removable upper anchor at an arm base collar or yoke/arm junction fixture on
  the non-playing side.

### Pickup concept

Allow an acoustic pickup path without forcing electronics into the baseline
historical build.

Requirements:

- pickup option should be reversible;
- cable routing should avoid the player's hands and the primary visual face;
- transducer mass on the soundboard should stay low;
- pickup access should not require destroying inlay or shell work.

Candidate paths:

- removable bridge-area contact transducer;
- internal miniature transducer with discreet jack/block at the lower rear;
- tailpiece-adjacent removable clamp-on prototype before committing to onboard
  hardware.

## Acoustic Model

Use the standard string relationship:

```text
f = (1 / 2L) * sqrt(T / mu)
mu = density * pi * (diameter / 2)^2
```

Unlike a harp, the lyre should keep equal or near-equal speaking string
lengths. Pitch should be driven mostly by string tension, gauge, and material,
with only mild length variation across the set.

Acoustic priorities:

- compare `E4-E5` against `D4-D5` for load and warmth;
- keep yoke and arm loads within comfortable creep limits;
- tune break angle conservatively;
- validate bridge height against right-hand comfort and top loading;
- keep decorative mass out of the highest-radiation top zones;
- confirm the lap saddle and any pad do not choke the soundboard.

## SolidWorks Strategy

### Model shape

Use a top-down master assembly with `LYR-000_MasterLayout` as the geometric
source of truth. The assembly should be driven by:

- global equations for dimensions and toggles;
- a design table generated from `family-spec.csv`;
- derived sketches and reference geometry propagated to parts.

### Recommended assembly structure

1. `LYR-000_MasterLayout.SLDPRT`
2. `LYR-100_MainAssembly.SLDASM`
3. `LYR-101_Shell.SLDPRT`
4. `LYR-102_Soundboard.SLDPRT`
5. `LYR-103_LeftArm.SLDPRT`
6. `LYR-104_RightArm.SLDPRT`
7. `LYR-105_Yoke.SLDPRT`
8. `LYR-106_Bridge.SLDPRT`
9. `LYR-107_Tailpiece.SLDPRT`
10. `LYR-108_Pegs.SLDPRT`
11. `LYR-109_Lashing.SLDPRT`
12. `LYR-110_Stand.SLDASM`

### Joinery variants to support

Define joinery as configurable families, not ad hoc rebuilds:

- arm socket family:
  `round_tenon_wedge`, `hidden_drawbore`, `keyed_collar`
- yoke seat family:
  `saddle_lash_only`, `saddle_plus_pin`, `saddle_plus_hidden_key`
- shell family:
  `carved_shell`, `laminated_shell`, `staved_shell`

Use text identifiers in `family-spec.csv` and corresponding suppression or
dimension rules in the SolidWorks assembly.

## Materials

| Part | First-pass choice | Why |
|---|---|---|
| Bowl/shell | walnut or cherry | warm visual language, carve/laminate friendly, good contrast with pale top |
| Soundboard | spruce | light, responsive, historically sympathetic appearance |
| Arms | maple or mulberry | stiffness, clean round sections, traditional feel |
| Yoke | maple or mulberry | peg-hole integrity and visual continuity with arms |
| Pegs | ebony, rosewood, or mulberry | durable friction peg language |
| Bridge | dark hardwood with pale saddle | visual clarity and clean string witness point |
| Lashing | black waxed linen or leather | visible traditional cue |
| Saddle pad | leather/felt/cork composite | comfort and slip resistance |
| Pickup | removable contact transducer or miniature internal system | acoustic flexibility without default visual penalty |
| Strap | lightweight leather or woven textile | stage-friendly carry option without heavy hardware |

## Prototype Path

1. Build the SolidWorks master layout and family parameters.
2. Generate string/tension studies for `LYR-13-WANDERER` and `LYR-13-LOW`.
3. Make a low-risk mule with simplified decoration and serviceable joints.
4. Test seated lap stability with several saddle radii and pad materials.
5. Test left-hand backside access with mock edge bevels/scallops.
6. Validate bridge height, break angle, and yoke deflection at staged tension.
7. Prototype pickup mounting non-destructively.
8. Add refined inlay only after acoustic and ergonomic behavior are accepted.

## Open Decisions

- Whether the primary voice target should stay `E4-E5` or shift lower.
- Whether the shell reads as organic chelys-inspired form or cleaner modern
  bowl with tortoise geometry concentrated in ornament.
- Whether strap support remains transport-only or becomes a standing-play aid.
- Which pickup path is worth accommodating in the production layout.
- Which joinery family should anchor the mule build.
- How bold the Broinwood-style side/back inlay should be before it competes
  with the ancient silhouette.

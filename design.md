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

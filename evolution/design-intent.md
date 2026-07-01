# Design Intent — lyre rev A

- Master CAD: `cad/lyre.scad` (sha256: 2760db812c399f69bcfdb16c2e684f71b73a4f6577de3df653686a0123a89dfb), driven by `design.md` + `string-schedule.csv` (no design-table xlsx for this product).
- Function: Compact 10-string plucked lyre. Ten nylon/fluorocarbon monofilament strings (C4-D4-E4-F4-G4-A4-B4-C5-D5-E5) carry static tension from a bridge on a flat soundboard up to a tuning-pin row on a crossbar/yoke spanning two arms. The frame arms and yoke are the continuous load path; the soundboard is a resonating flat plate.
- Environment: indoor instrument; solid-wood plates and frame move with humidity. Total string pull (80-120 lbf target, design.md) is a sustained structural load on the yoke and arm-to-yoke joinery.
- Target qty: 1 (prototype). Deadline: TBD. Budget/unit ceiling: TBD.

## Critical dimensions (carry tolerances)

| Feature | Nominal | Tolerance | Why critical | Source |
| --- | --- | --- | --- | --- |
| String count | 10 | fixed by tuning | pitch set / pin-row layout | design.md Baseline Assumptions |
| Scale length | 21.0 in (fan 18-23) | fan set at layout, caliper-checked | pitch / tension | design.md Baseline Assumptions |
| Total frame load | 80-120 lbf | summed from resolved schedule + safety factor | frame/yoke survival | bridge-soundboard-load-register.csv LOAD-010 (measurement_required) |
| Soundboard thickness | 0.125-0.160 in | tap + deflection, permanent movement <=0.030 in | structure vs. tone | design.md / LOAD-040 (prototype_assumption) |
| Tuning-pin hold | pilot + torque | <=5 cents/hr drift over 3 retune cycles | tuning stability | LOAD-020 (measurement_required) |
| Bridge downbearing | TBD | slots polished, do not cut strings | string survival / tone | LOAD-030 (measurement_required) |
| Joinery load path | long-grain | no loaded member on short grain | frame survival | LOAD-050 (measurement_required) |

## Incidental (free for DFM)

- Body outline styling, arm curve/sweep aesthetics, headpiece shape, rosette/soundhole cosmetics, non-mating surface finish, string spacing within ergonomic bounds.

## Must-nots (DFM may never violate)

- Do not drill the final pin row or cut final bridge/nut slots from placeholder string-schedule rows — real gauge/tension data required first (string-schedule.csv, LOAD-001).
- No loaded frame member may depend on short grain; keep long grain continuous through the arms (risks.md / LOAD-050).
- Do not thin the soundboard below validated deflection values (LOAD-040).
- Keep first-prototype treble monofilament below 70% of estimated breaking load (design.md Tension Safety Notes).

## Material intent

- Preferred: spruce/cedar/birch-ply soundboard; 0.75 in hardwood frame per bom.csv. Strings nylon or fluorocarbon monofilament. Zither/tuning pins.
- Acceptable subs: per sourcing.csv (spec-first; live prices unverified).
- Forbidden: none recorded.

## Stage status

Stage 0 intake complete 2026-07-01. Gate A (Alpha shop compile) NOT yet run — no concessions logged, nothing presented as shippable.

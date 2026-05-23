# Print Packet

## Cover

Project: `LYR-13-WANDERER`
Repo: `/mnt/c/Users/Tony/Documents/GitHub/lyre`
Packet mode: `instrument-maker` Mode A
Status: concept-complete, CAD-starter-complete, fabrication dimensions not yet
measured.

## Project Summary

Build an original Greek yoke lyre that preserves ancient chelys grammar while
adding subtle torii proportion, Japanese joinery logic, Broinwood-style CNC
ornament, seated ergonomic support, and optional modern performance features.

## Quick Start

1. Read `README.md` and `design.md`.
2. Build the SolidWorks master layout using `cad/LYR-000_master-equations.txt`
   and `cad/LYR-000_sw-design-table.csv`.
3. Choose the first mule configuration from `family-spec.csv`.
4. Use `validation.csv` and `risks.md` to stage prototype tests.

## File Map

- `design.md`: design intent, historical stance, family strategy, SW approach.
- `reverse-engineering.md`: evidence and unknowns ledger.
- `family-spec.csv`: variant rows for historical, mule, main, and ergonomic builds.
- `cad/`: equations, design-table fallback, SW workflow.
- `bom.csv`, `sourcing.csv`, `cut-list.csv`: procurement and stock planning.
- `assembly-manual.md`: prototype assembly order.
- `validation.csv`: test matrix.
- `cnc/`: pre-CAM planning.
- `wolfram/`: tension and acoustic scaffolds.

## Prototype Priorities

1. Structural confidence in arms, yoke, and string load path.
2. Comfortable seated support on the thigh.
3. Clean backside reach for the non-dominant hand.
4. Acoustic quality before decoration.
5. Reversible pickup and strap experiments only after the acoustic baseline is
   established.

## First Build Order

1. CAD skeleton and configuration cleanup.
2. Tension study.
3. Mule build with minimal ornament.
4. Ergonomic A/B tests.
5. Joinery comparison.
6. Main build with final inlay and stand language.

## Notes For Print Production

This environment did not emit a binary PDF. Use `print-packet.html` as the
print-friendly source if you want a browser-generated PDF locally.

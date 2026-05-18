# Lyre Build Packet

- Prototype-planning scaffold for a compact 10-string plucked lyre.
- No build-ready, measured, or validated fabrication claims yet.
- Round 31 focus: string schedule, bridge/soundboard load, joinery, and visual
  authority gates.

---

# Readiness Boundary

- `string-schedule.csv` names the C4-E5 target set but leaves gauge, tension,
  and percent-breaking fields measurement-required.
- `bridge-soundboard-load-register.csv` keeps yoke, pin, bridge, soundboard,
  and joinery load claims evidence-bound.
- CAD and drawing files are starter notes until a reviewed drawing, CAD/DXF, or
  measured template is declared as fabrication authority.
- Visual outputs are reference/review surfaces only.

---

# Governing Model

```text
f = (1 / (2 L)) * sqrt(T / mu)
mu = density * pi * (diameter / 2)^2
```

- A4 = 440 Hz equal temperament.
- No final load claim until real string material, gauge, density, and breaking
  strength are selected or measured.

---

# Validation Gates

- Resolve string stock and complete the string schedule.
- Run a scrap-block tuning pin torque and creep test.
- Record soundboard flatness/deflection at no load, half tension, full tension,
  and after 24 hours.
- Review full-size drawing or CAD detail for string fan, yoke, bridge, nut,
  soundboard patch, joinery, loaded grain direction, and pin row.

---

# Next Actions

1. Choose or measure real string stock.
2. Fill `string-schedule.csv`.
3. Fill `bridge-soundboard-load-register.csv`.
4. Update CAD/drawings from the resolved schedule.
5. Pitch up gradually and log movement before any readiness promotion.

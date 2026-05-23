# CNC Plan

## Intent

Use CNC where it improves repeatability, joinery accuracy, and artistic
execution, while keeping the instrument from feeling machine-authored.

## Good CNC Candidates

- soundboard inlay pockets with tight depth control;
- yoke-end lattice details;
- side/back decorative relief fields;
- stand/cradle joinery components;
- repeatable bridge and tailpiece prototype blanks;
- drill/locating fixtures for peg and joinery accuracy.

## Use With Restraint

- active soundboard field near bridge;
- final hand-feel surfaces for lap saddle and rear hand guide;
- surfaces where toolpath regularity would erase the handcrafted character.

## Datum Strategy

- Datum A: soundboard centerline / string plane center.
- Datum B: lower anchor/tailpiece reference face.
- Datum C: yoke axis reference for peg and string alignment work.

These datums should stay consistent across shell, soundboard, bridge, and
fixture drawings so the top-down assembly and the CNC fixtures agree.

## Prototype Strategy

1. Cut test coupons for soundboard inlay depth and line width.
2. Make a side/back Broinwood-style sample board before touching the lyre body.
3. Use CNC to create repeatable yoke and peg-layout fixtures.
4. Hand-finish all player-contact surfaces after machine shaping.
5. Keep the first mule's shell shaping intentionally conservative.

## Output Files

- `operations.csv`: staged operation list.
- `setup-sheet.md`: workholding, tools, and release checks.
- future CAM and G-code stay out of scope for this packet.

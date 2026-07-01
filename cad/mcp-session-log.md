# MCP / External-Tool Session Log

V5 provenance record for artifacts generated or modified by external tools.
Required before claiming any artifact came from OpenSCAD, Blender, Illustrator,
Photoshop, Fusion, SketchUp, or similar tooling.

| session_id | tool | input_authority | outputs | role | authority_result | review_status | notes |
|---|---|---|---|---|---|---|---|
| fable-v5-refresh-2026-07-01 | claude-code (Fable 5) + OpenSCAD CLI | design.md, string-schedule.csv, bridge-soundboard-load-register.csv | cad/lyre.scad | cad_authoring | pending_measurement | self_checked | Parametric master: 10-string fan, tuning-pin row and bridge derived from string_count; soundboard/frame envelope from design.md baseline table (geometry not in a design table is marked prototype_assumption). OpenSCAD render check: pass (openscad -o STL, exit 0). Not fabrication authority until reviewed against string-schedule/load-register gates. |
| fable-v5-refresh-2026-07-01 | claude-code (Fable 5) | design.md, string-schedule.csv | bom.csv, sourcing.csv, cut-list.csv, validation.csv, bridge-soundboard-load-register.csv | packet_refresh | fabrication | self_checked | V5 refresh pass; tabular packet data reviewed against design.md baseline. Provenance rows added to satisfy V5 fabrication-artifact logging. No dimension changes made. |
| fable-v5-refresh-2026-07-01 | claude-code (Fable 5) | design.md | wolfram/lyre-wolfram-model.wl, lyre-starter.wl | analysis_source | derived_preview | unreviewed | Wolfram string-tension model — source-only (not executed); L2 evidence. |

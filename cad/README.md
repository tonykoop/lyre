# cad/ - Lyre SolidWorks Notes

This folder follows Tony's preferred SolidWorks pattern: global equations +
design table + master sketch. The external equations file is the source of
truth for named globals, and the master-layout part drives all downstream parts
and configurations.

## File Map

| File | Status | Purpose |
|---|---|---|
| `LYR-000_master-equations.txt` | starter | Paste into SolidWorks Equations Manager for the first master layout. |
| `LYR-000_sw-design-table.csv` | starter | CSV fallback source for a SolidWorks design table; convert/import into `.xlsx` as needed. |
| `LYR-000_MasterLayout.SLDPRT` | to create | Top-down skeleton part. |
| `LYR-100_MainAssembly.SLDASM` | to create | Top-level assembly driven from the master layout. |
| `LYR-000_ALL_CONFIGS_dimensions.csv` | to generate | Output from the SolidWorks dimension-extract macro after CAD exists. |

## Configuration Strategy

The family should be configuration-driven, not file-fragmented. Each row in
`../family-spec.csv` maps to one configuration in the design table:

- `LYR-07-HERMES`
- `LYR-13-MULE`
- `LYR-13-WANDERER`
- `LYR-13-WANDERER-ERG`

Use suppression or derived sketch states only for optional features:

- thigh saddle;
- left-hand relief;
- pickup-ready hardware;
- strap anchors;
- stand variations.

Core geometry should always remain equation-driven.

## MasterLayout Sketch Order

1. `SK_MASTER_FRONT`: overall silhouette, body height, shoulder height, arm
   lean, yoke centerline.
2. `SK_MASTER_TOP`: body width, bowl footprint, arm socket spacing, pad/strap
   keep-out zones.
3. `SK_BOWL_SECTION`: bowl depth, wall thickness, rim ledge, thigh saddle
   profile, rear hand-relief profile.
4. `SK_STRING_PLANE`: yoke string line, bridge string line, tailpiece line,
   break-angle references.
5. `SK_BRIDGE_PATH`: bridge crown, saddle path, feet, pickup keep-out region.
6. `SK_TAILPIECE`: lower anchor geometry, optional pickup/jack service path,
   optional lower strap interface.
7. `SK_PEG_LAYOUT`: peg centers, stagger, hole angles, head clearance, yoke-end
   torii detail keep-out.
8. `SK_INLAY_LAYOUT`: tortoise scutes, acoustic geography, celestial dots,
   kumiko/torii banding, Broinwood-style side/back fields.
9. `SK_JOINERY`: arm tenons, shoulder sockets, hidden keys/drawbore logic,
   yoke saddles, lashing grooves.
10. `SK_ACCESSORIES`: detachable lap pad, strap anchors, pickup mount patterns.

## Downstream Part Plan

| Component | Role |
|---|---|
| `LYR-101_Shell.SLDPRT` | Bowl/shell body with optional lap interface geometry. |
| `LYR-102_Soundboard.SLDPRT` | Top plate, soundhole, bridge footprint, safe inlay zones. |
| `LYR-103_LeftArm.SLDPRT` | Left arm with joinery-controlled root geometry. |
| `LYR-104_RightArm.SLDPRT` | Right arm with mirrored joinery-controlled root geometry. |
| `LYR-105_Yoke.SLDPRT` | Cylindrical crossbar, peg holes, lashing grooves, finials. |
| `LYR-106_Bridge.SLDPRT` | Bridge, saddle cap, optional pickup-coupling variants. |
| `LYR-107_Tailpiece.SLDPRT` | Lower anchor/tailpiece and optional serviceable jack block. |
| `LYR-108_Pegs.SLDPRT` | Friction pegs with head variants. |
| `LYR-109_Lashing.SLDPRT` | Visual/fit reference. |
| `LYR-110_Pad.SLDPRT` | Optional thigh pad. |
| `LYR-111_StrapKit.SLDASM` | Optional removable strap hardware study. |
| `LYR-112_Stand.SLDASM` | Separate cradle/stand with stronger joinery signature. |

## Joinery Variant Strategy

Control joinery with a small named family rather than ad hoc model forks.

### Arm socket variants

- `round_tenon_wedge`
- `hidden_drawbore`
- `keyed_collar`

### Yoke seat variants

- `saddle_lash_only`
- `saddle_plus_pin`
- `saddle_plus_hidden_key`

### Shell construction variants

- `carved_shell`
- `laminated_shell`
- `staved_shell`

Represent these as free-text bookkeeping columns in `family-spec.csv`, then map
them to suppression states and configuration-specific part selections in the
assembly.

## Design Table Guidance

Use `LYR-000_sw-design-table.csv` as the direct starter for SolidWorks. The CSV
intentionally mirrors SolidWorks `"$VALUE@...@Equations"` headers so you can:

1. open it in Excel;
2. save as `lyre-design-table.xlsx`;
3. import it with `Insert > Tables > Design Table > From Existing File`.

## CAD Gates

- Every global variable in SolidWorks must map back to the equations file or
  design table.
- No final part feature should rely on a hand-entered dimension.
- Configurations rebuild cleanly for all four starting family members.
- String plane must clear pegs, yoke, bridge, soundhole, and pickup hardware.
- Lap saddle and rear hand relief must remain optional, suppressible features.
- Strap anchors and pickup features must remain removable or reversible in the
  ergonomic variant.
- All configuration rows should survive a future string-count expansion without
  renaming the global namespace.

## Important Boundary

Do not use `images/P-Lyre-Harp-1200x1200-1_1080xinspiration.webp` as CAD
reference. It is the wrong instrument family for this project.

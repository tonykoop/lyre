# CAD Starter Notes

Model the lyre as separate frame, soundboard, bridge, nut, and pin components.
Expose parameters for string count, string spacing, nominal scale length, yoke
width, soundboard thickness, and bridge height. Add construction planes for
each string path so the bridge and pin row can be regenerated from the string
table.

Minimum skeleton parameters:

- `string_count`
- `scale_length_in`
- `string_spacing_bridge_in`
- `string_spacing_pin_row_in`
- `bridge_height_in`
- `soundboard_thickness_in`
- `pin_edge_distance_in`
- `yoke_section_height_in`
- `arm_section_width_in`
- `bridge_patch_length_in`

The CAD model is a source scaffold until `string-schedule.csv` and
`bridge-soundboard-load-register.csv` have enough evidence to declare a
reviewed fabrication authority.

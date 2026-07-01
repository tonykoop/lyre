// Lyre parametric master — 10-string plucked lyre, prototype baseline.
//
// Authority: pending_measurement. NOT fabrication authority until reviewed
// against measured string-schedule / load-register gates (see
// visual-output-register.csv CAD-001, bridge-soundboard-load-register.csv,
// and cad/mcp-session-log.md).
//
// Dimension sources (do not edit values without updating the source record):
//   - string_count, scale_length_in, tuning: design.md "Baseline Assumptions"
//     table (10 strings, C4-E5 diatonic, 21 in nominal speaking length).
//   - soundboard_thick_in: design.md (0.125-0.160 in) — modeled at 0.140 in
//     midpoint, prototype_assumption; final value is a tap/deflection result
//     (bridge-soundboard-load-register.csv LOAD-040).
//   - frame_stock_in: design.md (0.75 in hardwood, grain continuous through
//     arms — see LOAD-050 joinery gate).
//   - string spacing, arm sweep, body outline: NOT in the design table;
//     prototype_assumption geometry for layout only. Pin row is DERIVED from
//     the string schedule (never hand-placed — README Build Review Checklist).
//
// Units: inches.

/* [Strings] */
string_count      = 10;    // design.md: C4-D4-E4-F4-G4-A4-B4-C5-D5-E5
scale_length_in   = 21.0;  // design.md nominal speaking length (fan 18-23 in)
string_spacing_in = 0.55;  // prototype_assumption (not in design table)
string_dia_in     = 0.030; // nominal monofilament; gauge is measurement_required

/* [Soundboard / body] */
soundboard_thick_in = 0.140; // design.md 0.125-0.160 midpoint (assumption)
body_margin_in      = 0.90;  // soundboard edge past outer strings (assumption)
body_depth_in       = 2.25;  // resonating box depth (prototype_assumption)
side_thick_in       = 0.25;  // box wall (prototype_assumption)

/* [Frame — arms + crossbar/yoke] */
frame_stock_in   = 0.75;  // design.md hardwood frame stock
arm_length_in    = 20.0;  // nut-to-yoke arm run (prototype_assumption)
arm_splay_in     = 2.0;   // each arm leans outboard over its run (assumption)
yoke_thick_in    = 1.00;  // crossbar depth; long-grain load path (LOAD-010)

/* [Bridge / nut / tuning pins] */
bridge_height_in = 0.55;  // downbearing set empirically (LOAD-030, assumption)
nut_height_in    = 0.35;  // prototype_assumption
pin_dia_in       = 0.230; // zither/tuning-pin shank; pilot + torque = LOAD-020
pin_row_pitch_in = 0.60;  // pin spacing along yoke; >= edge-distance gate

// ---------------------------------------------------------------------------
// Derived geometry (formulas, not baked values)
// ---------------------------------------------------------------------------

string_fan_in    = (string_count - 1) * string_spacing_in; // outer-to-outer
soundboard_w_in  = string_fan_in + 2 * body_margin_in;
soundboard_l_in  = scale_length_in + 2 * body_margin_in;

// String x-positions centered on the soundboard centerline (bass -> treble).
function string_x(i) = -string_fan_in / 2 + i * string_spacing_in;
// Pin x-positions derived from the SAME spacing (never independent).
function pin_x(i) = -( (string_count - 1) * pin_row_pitch_in ) / 2
                    + i * pin_row_pitch_in;

module soundbox() {
  difference() {
    cube([soundboard_w_in, soundboard_l_in, body_depth_in], center = true);
    // Hollow the resonating cavity, leaving the soundboard on top (+z).
    translate([0, 0, -(body_depth_in - (body_depth_in - soundboard_thick_in)) / 2
                     - soundboard_thick_in / 2])
      cube([soundboard_w_in - 2 * side_thick_in,
            soundboard_l_in - 2 * side_thick_in,
            body_depth_in - soundboard_thick_in],
           center = true);
  }
}

module arm(side) {
  // side = -1 (bass) or +1 (treble). Arm rises from the body top toward the
  // yoke, splaying outboard. Long grain must run the length (LOAD-050).
  x0 = side * (soundboard_w_in / 2 - frame_stock_in / 2);
  translate([x0, soundboard_l_in / 2 - frame_stock_in / 2, body_depth_in / 2])
    rotate([0, 0, 0])
      hull() {
        cube([frame_stock_in, frame_stock_in, 0.01], center = true);
        translate([side * arm_splay_in, 0, arm_length_in])
          cube([frame_stock_in, frame_stock_in, 0.01], center = true);
      }
}

module yoke() {
  // Crossbar spanning the two arm tops; holds the tuning-pin row.
  span = soundboard_w_in + 2 * arm_splay_in;
  translate([0, soundboard_l_in / 2 - frame_stock_in / 2,
             body_depth_in / 2 + arm_length_in])
    difference() {
      cube([span, frame_stock_in, yoke_thick_in], center = true);
      // Tuning-pin holes derived from the string count.
      for (i = [0 : string_count - 1])
        translate([pin_x(i), 0, 0])
          cylinder(h = yoke_thick_in * 2, d = pin_dia_in, center = true, $fn = 32);
    }
}

module bridge() {
  translate([0, -soundboard_l_in / 2 + body_margin_in + 2.5,
             body_depth_in / 2])
    cube([string_fan_in + 0.5, 0.30, bridge_height_in], center = true);
}

module nut() {
  translate([0, soundboard_l_in / 2 - body_margin_in - 0.4, body_depth_in / 2])
    cube([string_fan_in + 0.5, 0.25, nut_height_in], center = true);
}

module string_reference() {
  // Reference geometry only: bridge (low y) to nut (high y) speaking lengths.
  y_bridge = -soundboard_l_in / 2 + body_margin_in + 2.5;
  y_nut    =  soundboard_l_in / 2 - body_margin_in - 0.4;
  for (i = [0 : string_count - 1])
    translate([string_x(i), (y_bridge + y_nut) / 2,
               body_depth_in / 2 + bridge_height_in])
      cube([string_dia_in, y_nut - y_bridge, string_dia_in], center = true);
}

module lyre_assembly() {
  soundbox();
  arm(-1);
  arm(1);
  yoke();
  bridge();
  nut();
  string_reference();
}

lyre_assembly();

// Echo the derived string layout so `openscad` runs double as a fan check.
echo(str("string_fan_in=", string_fan_in,
         " soundboard_w_in=", soundboard_w_in,
         " soundboard_l_in=", soundboard_l_in));
for (i = [0 : string_count - 1])
  echo(str("string_", i + 1, "_x_in=", string_x(i)));

(* Lyre parametric acoustic model.
   Plucked monofilament strings via the Mersenne-Taylor relation, physically
   grounded in this repo's design.md (governing model: f = (1/(2L)) Sqrt[T/mu],
   mu = density * pi * (d/2)^2) and string-schedule.csv (10-string diatonic
   C4-E5, 21 in nominal scale, nylon/fluorocarbon). All gauges and tensions are
   first-pass estimates; string-schedule.csv rows are status=TBD pending measured
   or supplier data. reference_only, not a stringing recipe or load proof. *)

ClearAll["Global`*"];

lyreMetadata = <|
   "instrument" -> "Lyre",
   "packet" -> "Wolfram interactive acoustic model",
   "modelName" -> "Plucked-string tension and percent-breaking estimate model",
   "authority" -> "reference_only",
   "calibrationStatus" -> "uncalibrated estimates; string-schedule.csv rows are TBD"
   |>;

(* ---- Nominal estimates (from design.md / string-schedule.csv, SI) ---- *)
scaleLengthEstimate = 0.5334;     (* m; 21 in nominal scale *)
stringDiameterEstimate = 0.0008;  (* m; 0.8 mm first-pass monofilament gauge *)
densityEstimate = 1150.;          (* kg/m^3; nylon (design.md 0.04155 lb/in^3) *)
tensileStrengthEstimate = 300.*^6;(* Pa; nylon ~300 MPa (design.md 44600 psi) *)
safeFractionEstimate = 0.70;      (* design.md: keep treble below 70% breaking *)

minScale = 0.40; maxScale = 0.65;       (* 18-23 in fan band from design.md *)
minDiameter = 0.0004; maxDiameter = 0.0016;
minDensity = 1000.; maxDensity = 1900.; (* nylon ~1150, fluorocarbon ~1780 *)
minTensile = 150.*^6; maxTensile = 500.*^6;

(* diatonic string set C4-E5 from string-schedule.csv *)
stringMidi = <|"C4" -> 60, "D4" -> 62, "E4" -> 64, "F4" -> 65, "G4" -> 67,
   "A4" -> 69, "B4" -> 71, "C5" -> 72, "D5" -> 74, "E5" -> 76|>;
midiToHz[m_] := 440.*2^((m - 69)/12);

linearDensity[diameterM_, density_] := density*Pi*(diameterM/2)^2;
requiredTensionN[freqHz_, scaleM_, diameterM_, density_] :=
  linearDensity[diameterM, density]*(2*scaleM*freqHz)^2;
stressPa[tensionN_, diameterM_] := tensionN/(Pi*(diameterM/2)^2);
percentBreaking[freqHz_, scaleM_, diameterM_, density_, tensile_] :=
  100.*stressPa[requiredTensionN[freqHz, scaleM, diameterM, density], diameterM]/tensile;

stringScheduleEstimate[scaleM_, diameterM_, density_, tensile_] :=
  Dataset[
   KeyValueMap[
    <|"note" -> #1, "targetHz" -> N[midiToHz[#2]],
      "requiredTension_N" -> requiredTensionN[midiToHz[#2], scaleM, diameterM, density],
      "requiredTension_lbf" -> requiredTensionN[midiToHz[#2], scaleM, diameterM, density]/4.4482,
      "percentBreaking" -> percentBreaking[midiToHz[#2], scaleM, diameterM, density, tensile]|> &,
    stringMidi]];

lyreNominalEstimate = <|
   "totalTension_lbf" ->
    Total[requiredTensionN[midiToHz[#], scaleLengthEstimate, stringDiameterEstimate, densityEstimate] & /@
       Values[stringMidi]]/4.4482,
   "trebleE5_percentBreaking" ->
    percentBreaking[midiToHz[76], scaleLengthEstimate, stringDiameterEstimate, densityEstimate, tensileStrengthEstimate],
   "schedule" ->
    stringScheduleEstimate[scaleLengthEstimate, stringDiameterEstimate, densityEstimate, tensileStrengthEstimate]
   |>;

lyreExplorer =
  Manipulate[
   Column[{
     Style["Lyre string-tension estimate model (uniform gauge)", 14, Bold],
     "Reference_only; string-schedule.csv rows are TBD pending measured gauge/density. Not a load proof.",
     <|"totalTension_lbf" ->
        Total[requiredTensionN[midiToHz[#], scaleM, diameterM, density] & /@ Values[stringMidi]]/4.4482,
       "trebleE5_percentBreaking" ->
        percentBreaking[midiToHz[76], scaleM, diameterM, density, tensile],
       "safeLimitPercent" -> 100.*safeFractionEstimate|>,
     Plot[
      percentBreaking[midiToHz[76], scaleM, d, density, tensile],
      {d, minDiameter, maxDiameter},
      AxesLabel -> {"string diameter (m)", "E5 percent breaking"},
      Epilog -> {Red, Dashed, InfiniteLine[{0, 100.*safeFractionEstimate}, {1, 0}]},
      PlotRange -> All],
     stringScheduleEstimate[scaleM, diameterM, density, tensile]
     }],
   {{scaleM, scaleLengthEstimate, "scale length (m)"}, minScale, maxScale},
   {{diameterM, stringDiameterEstimate, "string diameter (m)"}, minDiameter, maxDiameter},
   {{density, densityEstimate, "material density (kg/m^3)"}, minDensity, maxDensity},
   {{tensile, tensileStrengthEstimate, "tensile strength (Pa)"}, minTensile, maxTensile},
   SaveDefinitions -> True
   ];

lyreModel = <|
   "metadata" -> lyreMetadata,
   "nominalEstimate" -> lyreNominalEstimate,
   "explorer" -> lyreExplorer
   |>

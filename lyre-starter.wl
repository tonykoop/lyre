(* Lyre string schedule starter. Values are first-pass assumptions. *)
ClearAll["Global`*"];
a4 = 440;
freqFromMidi[m_] := a4*2^((m - 69)/12);
stringTension[f_, scaleIn_, linearDensity_] := (2*scaleIn*f)^2*linearDensity;
percentBreak[scaleIn_, f_, densityLbIn3_, breakPsi_] :=
  densityLbIn3*4*scaleIn^2*f^2/(breakPsi*386.4)*100;

notes = <|"C4" -> 60, "D4" -> 62, "E4" -> 64, "F4" -> 65, "G4" -> 67,
  "A4" -> 69, "B4" -> 71, "C5" -> 72, "D5" -> 74, "E5" -> 76|>;
scaleLengthIn = 21;
nylonDensityLbIn3 = 0.04155;
nylonBreakPsi = 44600;

Dataset[
  KeyValueMap[
    <|"note" -> #1, "frequencyHz" -> N[freqFromMidi[#2]],
      "percentBreakIdeal" -> N[percentBreak[scaleLengthIn, freqFromMidi[#2],
        nylonDensityLbIn3, nylonBreakPsi]]|> &,
    notes
  ]
]

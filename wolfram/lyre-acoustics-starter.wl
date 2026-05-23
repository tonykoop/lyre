(* Lyre acoustics starter scaffold.
   First-pass study tool for near-equal speaking lengths and tension planning.
   Values are concept targets, not measured fabrication dimensions. *)

ClearAll[freqHz, speakingLenIn, speakingLenM, estimateTensionN];

freqHz = <|
  1 -> 329.63, 2 -> 349.23, 3 -> 369.99, 4 -> 392.00, 5 -> 415.30,
  6 -> 440.00, 7 -> 466.16, 8 -> 493.88, 9 -> 523.25, 10 -> 554.37,
  11 -> 587.33, 12 -> 622.25, 13 -> 659.25
|>;

speakingLenIn = <|
  1 -> 22.50, 2 -> 22.33, 3 -> 22.17, 4 -> 22.00, 5 -> 21.83,
  6 -> 21.67, 7 -> 21.50, 8 -> 21.33, 9 -> 21.17, 10 -> 21.00,
  11 -> 20.83, 12 -> 20.67, 13 -> 20.50
|>;

speakingLenM[n_Integer] := speakingLenIn[n] * 0.0254;

estimateTensionN[f_, lengthM_, mu_] := (2 lengthM f)^2 mu;

(* Replace mu values with material-specific linear density data when sourced. *)
placeholderMu = AssociationThread[Range[13], ConstantArray[0.00035, 13]];

firstPassTension = AssociationMap[
  estimateTensionN[freqHz[#], speakingLenM[#], placeholderMu[#]] &,
  Keys[freqHz]
];

firstPassTension

(* Instrument Maker fallback Wolfram packet for the lyre family.
   Constrained-environment source file; update with measured string data later. *)

ClearAll[freqHz, speakingLenIn, speakingLenM, estimateTensionN, familyRows];

familyRows = {
  <|"member_id" -> "LYR-07-HERMES", "string_count" -> 7, "speaking_len_mid_in" -> 20.98|>,
  <|"member_id" -> "LYR-13-MULE", "string_count" -> 13, "speaking_len_mid_in" -> 21.50|>,
  <|"member_id" -> "LYR-13-WANDERER", "string_count" -> 13, "speaking_len_mid_in" -> 21.50|>,
  <|"member_id" -> "LYR-13-WANDERER-ERG", "string_count" -> 13, "speaking_len_mid_in" -> 21.50|>
};

freqHz = <|
  1 -> 329.63, 2 -> 349.23, 3 -> 369.99, 4 -> 392.00, 5 -> 415.30,
  6 -> 440.00, 7 -> 466.16, 8 -> 493.88, 9 -> 523.25, 10 -> 554.37,
  11 -> 587.33, 12 -> 622.25, 13 -> 659.25
|>;

speakingLenIn[n_Integer] := Association[
  1 -> 22.50, 2 -> 22.33, 3 -> 22.17, 4 -> 22.00, 5 -> 21.83, 6 -> 21.67,
  7 -> 21.50, 8 -> 21.33, 9 -> 21.17, 10 -> 21.00, 11 -> 20.83,
  12 -> 20.67, 13 -> 20.50
][n];

speakingLenM[n_Integer] := speakingLenIn[n] * 0.0254;

estimateTensionN[f_, lengthM_, mu_] := (2 lengthM f)^2 mu;

placeholderMu = AssociationThread[Range[13], ConstantArray[0.00035, 13]];

familyRows

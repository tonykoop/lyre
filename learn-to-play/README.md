# Lyre — Learn to Play

Starter songbook for Tony Koop's lyre build.

## Tuning

Classical Greek-style Dorian tetrachord tuning. A common 7-string arrangement:

| String | Pitch | Solfège |
|--------|-------|---------|
| 1 (highest) | E5 | mi |
| 2 | D5 | re |
| 3 | C5 | do |
| 4 | B4 | ti |
| 5 | A4 | la |
| 6 | G4 | sol |
| 7 (lowest) | E4 | mi |

This gives you the **E Dorian** mode (E F♯ G A B C D E). Adjust tuning pins
to match this layout before playing.

## Range

E4 – E5 (one octave, first position). The E Dorian scale uses the same key
signature as D major (two sharps: F♯ and C♯).

## Repertoire

| Folder | Tune | Difficulty |
|--------|------|------------|
| `00-warmup-scales/` | E Dorian Scale Walk | Warmup |
| `01-easy/epitaph-of-seikilos/` | Epitaph of Seikilos | Easy |
| `01-easy/greensleeves/` | Greensleeves | Easy |
| `02-intermediate/sakura/` | Sakura | Intermediate |
| `03-original/aegean-shore/` | Aegean Shore | Intermediate |

## Reading the files

Each tune folder contains:
- `tune.abc` — canonical source (open with EasyABC or abcjs)
- `notes.md` — provenance, range check, practice tips
- `tune.mid`, `tune.ly`, `tune.musicxml` — generated from `tune.abc`
  (run `scripts/render_pipeline.py` from the sheet-music repo to regenerate)

## Technique notes

- Pluck strings downward toward the soundboard with the right hand.
- Damp with the left-hand heel after each phrase to prevent ring buildup.
- In Dorian mode, the characteristic note is the natural 6th (C♯ in E Dorian).
  Lean into it — it's what makes the scale sound Greek.

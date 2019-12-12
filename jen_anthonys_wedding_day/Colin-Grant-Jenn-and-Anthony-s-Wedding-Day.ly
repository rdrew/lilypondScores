\version ""

\header {
  title = "Jenn and Anthony‘s Wedding Day"
  instrument = "Guitar"
  composer = "Colin Grant"
  arranger = "Rob Drew"
  piece = "waltz"
  % Remove default LilyPond tagline
  tagline = ##f
}

global = {
  \key d \major
  \override Staff.TimeSignature #'style = #'()
  \time 3/4
  \partial 4.
}

classicalGuitar = \relative c' {
  \global
  % Music follows here.
  
}

\score {
  \new Staff { \clef "treble_8" \classicalGuitar }
  \layout { }
}

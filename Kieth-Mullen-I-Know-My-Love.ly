\version ""

\header {
  title = "I Know My Love"
  composer = "Kieth Mullen"
}

\paper {
  #(set-paper-size "letter")
}

\layout {
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
}

global = {
  \key g \major
  \time 4/4
  \partial 4.
}

chordNames = \chordmode {
  \global
  % Chords follow here.
  
}

melody = \relative c'' {
  \global
  % Music follows here.
  
}

verseOne = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.
  
}

verseTwo = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.
  
}

verseThree = \lyricmode {
  \set stanza = "3."
  % Lyrics follow here.
  
}

verseFour = \lyricmode {
  \set stanza = "4."
  % Lyrics follow here.
  
}

\score {
  <<
    \new ChordNames \chordNames
    \new Staff { \melody }
    \addlyrics { \verseOne }
    \addlyrics { \verseTwo }
    \addlyrics { \verseThree }
    \addlyrics { \verseFour }
  >>
  \layout { }
}

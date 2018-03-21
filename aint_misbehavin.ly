\version "2.16.1"
\require "lilyjazz"

\paper { indent = #10 }




theChords = \chordmode {
  % insert chords for chordnames and fretboards here
   \repeat volta 2 {
    g2:7 gis:dim7 | 
    a:min7 bes:dim7 |
    g/b b:aug7 |
    c f |
    g e |
    a d |
    b e |
    a d |
  }
}

staffMelody = \relative c'' {
  %\jazzOn
   \key g \major
   \clef treble
   % Type notes for melody here
   \repeat volta 2 {
   r8 g a g d' d4. |
   r8 a b a e'2 |
   r8 d e d g ~ g4 g8 |
   a8 g e b ~ b bes a4 |
   r8 g a g d' d4. |
   r8 a b a e'8 ~ e4 d8 |
   b1 ~ |
   b1 |
   }
}

\score {
  <<
    \context ChordNames { \theChords }
    \new Staff {
      \context Voice = "voiceMelody" { \staffMelody }
    }
  >>
 \header { piece = \markup { \fontsize #3 \override #'(font-name . "LilyJAZZ Text") "Beginning of a Bill Evans Solo Transcription — “Time Remembered”" } }
  \layout { indent = 0 }
  \midi { }
}

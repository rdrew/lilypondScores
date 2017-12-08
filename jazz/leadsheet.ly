\version "2.16.1"

\include "LilyJAZZ.ily"

\paper { indent = #10 }

theChords = \chordmode {
  \jazzOn
  % insert chords for chordnames and fretboards here
  c2 g4 c
}

staffMelody = \relative c' {
  \jazzOn
  \set Staff.instrumentName = "Trumpet"
  \clef treble
  \key es \major
  \time 4/4
  \tempo "Medium Swing"
   r8 es4->\mf f8-. g--  as4-^ bes8-^  |
   r4. b8\trill\fff ~ b2 |
   bes?16-> r as4\mp r8 g4( \times 2/3 { es8 f e\pp ~ } |
   e1) \fermata |
   \bar "||"
   \mark \markup \jazzglyph #"scripts.varsegnojazz" 
   \clef bass
   \time 5/4
   \key g \major
   geses,4_"Various Accidentals" ges g gis gisis |

  %\jazzOn
   %\key c \major
   %\clef treble
   %\time 4/4
   %\tempo "Medium Swing"
   %% Type notes for melody here
   %c4 d8 e f4 g
   %\bar "|."
}

\score {
  <<
    \context ChordNames { \theChords }
    \context FretBoards { \theChords }
    \new Staff {
      \context Voice = "voiceMelody" { \staffMelody }
    }
  >>
  \layout { }
  \midi { }
}

\version "2.16.1"
\require "lilyjazz"

\paper { indent = #10 }




theChords = \chordmode {
  % insert chords for chordnames and fretboards here
  \repeat volta 2 {
  a1:m6 | d:m6 | a:m6 | d:m6 | a:m6 | d:m6 | e:7 | e:7 | }


  a:m6 |a:m6 |d:m6 |d:m6 | e:7 | e:7 | a:m6 | a:7| 
  d:m6 | g:7 | c:maj7 | f:maj7 | fis  | e:7 | a:m6 | e:7 |
  }

staffMelody = \relative c' {
  %\jazzOn
   \key a \minor
   \clef treble
   % Type notes for melody here
   \repeat volta 2 { e4 a c ~ c8 d16 (c | b4) d8 fis8 ~ fis2 |e,4 a c ~ c8 d16 (c | b4) d8 fis8 ~ fis2 | \break
   e,4 a c ~ c8 d16 (c | b4) d8 fis8 ~ fis2 |r1 | r1 | \break
   }
   |r1 | r1 |r1 | r1 |r1 | r1 |r1 | r1 | \break
   |r1 | r1 |r1 | r1 |r1 | r1 |r1 | r1
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

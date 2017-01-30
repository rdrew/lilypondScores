
\version "2.18.2"
\header {
  title = "The Golden Castle"
  composer = "Robert Drew"
}


\paper {

  markup-system-spacing #'basic-distance = #20
  system-system-spacing #'basic-distance = #18
}

melody = \relative c' {
  \clef treble
  \key g \dorian
  \time 4/4

  \repeat volta 2 {

    d8[g g f] g4  \tuplet 3/2 {a8[b c]} |  % 1
    d8[c d e] f4 g8[a] |                   % 2
    g8[f d c] a8[d c a] |                  % 3
    d,8[g g e] f8[e d c] |                 % 4
    d8[g g f] g4  \tuplet 3/2 {a8[b c]}  | % 5
    d8[c d e] f4 g8[a] |                   % 6
    g8[e d c] a8[d c a] |                  % 7
  }
  \alternative {
    {g4 g8 [f] g4 g8 [f] }                 % 8a
    {g4 g8 [f] g4 \tuplet 3/2 {a8[b c]} }  % 8b

  }
  %====================
  \repeat volta 2 {

    d8[ g g a ] bes4 a8[g] |                  % 1
    g8[f d e] f4 g8 [a] |                     % 2
    g8[e d c] a8[d c a] |                     % 3
    d,8[g g e] f8[e d c] |                    % 4
    d8[g g f] g4  \tuplet 3/2 {a8[b c]}  |    % 5
    d8[c d e] f4 g8[a] |                      % 6
    g8[e d c] a8[d c a] |}                    % 7
    \alternative {                                
      {g4 g8 [f] g4 \tuplet 3/2 {a8[b c]} }   % 8a    
      {g4 g8 [f] g4 g8 [f] }                  % 8b
                                              

    }
  }

  text = \lyricmode {
    Ho -ly crap this works

  }

  harmonies = \chordmode {

    g1:m |%1
    d1:m |%2
    g1:m |%3
    f1    %4
          %5
          %6
          %7
             
          %8a
          %8b


  }

  \score {
    <<
      \new ChordNames {
        \set chordChanges = ##t
        \harmonies
      }
      \new Voice = "one" { \autoBeamOff \melody }
      \new Lyrics \lyricsto "one" \text
    >>
    \layout { }
    \midi { }
  }


\version "2.18.2"
\header {
  title = "The Flax in Bloom"
  composer = "Arranged by Rob Drew"
}


\paper {

  markup-system-spacing #'basic-distance = #20
  system-system-spacing #'basic-distance = #18
}

melody = \relative c {
  \clef "treble_8"
  \key d \major
  \time 4/4

  \repeat volta 2 {

    d4 e8 [ d ]  fis [ a a fis' ] |% 1
    g [e fis  d ]  e [ d b d ]|% 2
    a4 fis8 [ a ]  d [ fis a fis ]|% 3
    g4 fis8 [ d ]  e [ d b d ]|% 4
    d,4 e8 [ d ]  fis [ a a fis' ]|% 5
    g [e fis  d ]  e [ d b d ]|% 6
    a4 fis8 [ b ]  a [ b d fis ] % 7

  }
  \alternative {
    {a8 [ fis e g ] fis [ d ] d4}                 % 8a
    {a8 [ fis e g ] fis [ d d e ]}  % 8b

  }
  %====================
  \repeat volta 2 {

    fis'4 d8 [ fis ] e [ d cis e ] |      % 1
    d4 cis8 [ d ] b [ a fis a ] |      % 2
    d, [ fis a d ] fis, [ a d fis ] |      % 3
    \tuplet 3/2 {g8 [ fis e ]} fis [ d ] e [ d b d ] |  % 4
    fis4 d8 [ fis ] e [ d cis e ] |      % 5
    d4 cis8 [ d ] b [ a fis a ] |         % 6
    d, [e fis g] a [ b d fis ]       % 7
  }
  \alternative {                                
    {a8 [ fis e g ] fis [d d e]}                 % 8a
    {a8 [ fis e g ] fis [ d ] d4  \bar "|." } % 8b
  }
}

text = \lyricmode {
  %Ho -ly crap this works

}

harmonies = \chordmode {

  %1
  %2
  %3
  %4
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
    \new Voice = "one" { 
      \autoBeamOff 
      \melody 
    }
    \new Lyrics \lyricsto "one" \text
    \new TabStaff {
      \override Stem #'transparent = ##t
      \override Beam #'transparent = ##t
      \melody
    }
  >>
  \layout { }
  \midi { }
}


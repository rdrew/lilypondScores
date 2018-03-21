%@format
%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
% Score info
%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
title = "The Farley Bridge"
subtitle = ""
instrumentName = "Guitar"
composerName = "Duncan Chisolm"
opusNumber = "arranged by Rob Drew" 
#(set-default-paper-size "letter")
#(set-global-staff-size 18.8)
scoreDetails = {
  \set Staff.midiInstrument = "acoustic guitar (nylon)"
  \time 4/4
  \key d \major
  \clef "treble_8"
}
%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
% Treble Voice
%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
trebleVoice = \relative c {
  \repeat volta 2 {
    %this sets the position of the fingerings
    %@@@@@@@@@@@@@@@@@@@
    %--> A Section
    %@@@@@@@@@@@@@@@@@@@
    <a'-1>8 <d-3> d fis e d e fis \bar "|"
    g fis fis4 d8 a8 a8 g8        \bar "|"
    a8 d d a fis' fis  a,8 e' ~   \bar "|"
    e d d fis g b, b a            \bar "|" \break
    %=====================
    fis d' d a d e e fis          \bar "|"
    g fis fis4 d8 g, g a          \bar "|"
    e' d b e  ~ e fis e d
  }
  \alternative {
    %--> 1st ending
    {   b a   a2.  }
    %--> 2nd ending
    {   b8 a a2 e'8 fis         \bar "|"  }
  }
  \repeat volta 2 {
    %@@@@@@@@@@@@@@@@@@@
    %--> B Section
    %@@@@@@@@@@@@@@@@@@@
    g8 fis fis d d d b g' ~     \bar "|"
    g fis fis d d d a g         \bar "|"
    a d d a fis' fis a, e'      \bar "|"
    e d d e ~ e fis fis g       \bar "|"
    %====================
    g fis fis d d d b g' ~      \bar "|"
    g fis fis d  d d b a        \bar "|"
    e' d b e ~ e fis e d        \bar "|"
  }
  \alternative {
    %--> 1st ending
    {   b8 a a2 e'8 fis         \bar "|"  }
    %--> 2nd ending
    {   b, a   a2.  }
  }
}
%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
% Bass Voice
%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
bassVoice = {
  \repeat volta 2 {
    %this sets the position of the fingerings
    %@@@@@@@@@@@@@@@@@@@
    %--> A Section
    %@@@@@@@@@@@@@@@@@@@
    <d'-0>2 a                       \bar "|"
    g fis                           \bar "|"
    d' b                            \bar "|"
    a g                             \bar "|"
    %==============
    d'2 a                           \bar "|"
    g fis                           \bar "|"
    e fis4 g                        \bar "|"
  }
  \alternative {
    %--> 1st ending
    { a1 }
    %--> 2nd ending
    { a1 }
  }
  \repeat volta 2 {
    %@@@@@@@@@@@@@@@@@@@
    %--> B Section
    %@@@@@@@@@@@@@@@@@@@
    e1                    \bar "|"
    g1                    \bar "|"
    d'2 b                 \bar "|"
    a a                   \bar "|"
    %====================
    e1                    \bar "|"
    g1                    \bar "|"
    e2 fis4 g4            \bar "|"
  }
  \alternative {
    %--> 1st ending
    { a2 a }
    %--> 2nd ending
    { a2 a }
  }
}
%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
% Chords
%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
\version "2.16.1"
\header{
  title = \title
  subtitle = \subtitle
  opus = \opusNumber
  composer = \composerName
  instrument= \instrumentName
  date = "ca.1740-41"
  style = "Baroque"
  copyright = "Public Domain"
  footer = "Mutopia-2013/02/17-50"
}
Treble = {
  \scoreDetails
  \set fingeringOrientations = #'(left)
  \voiceOne
  \slurDown

  \trebleVoice
}
Bass = {
  \scoreDetails
  \set fingeringOrientations = #'(left)
  \voiceTwo

  \bassVoice
}
GuitarStaff = \new Staff = GuitarStaff <<
  \set Staff.midiInstrument = "acoustic guitar (nylon)"

  \Treble
  \transpose c' c \Bass
>>

\score {
  <<
    \GuitarStaff
  >>
  \layout {
  }
  \midi {
    \tempo 4 = 60
  }
}

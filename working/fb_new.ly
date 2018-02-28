%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
% Score info
%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
title = "The Farley Bridge"
subtitle = "subtitle"
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
    %@@@@@@@@@@@@@@@@@@@
    %--> A Section
    %@@@@@@@@@@@@@@@@@@@
    a'8 d d fis e d e fis       \bar "|"
    g fis fis4 d8 a8 a8 g8      \bar "|"
    a8 d d a fis' fis  a,8 e' ~ \bar "|"
    e d d fis g b, b a          \bar "|"
    %=====================
    fis d' d a d e e fis        \bar "|"
    g fis fis4 d8 g, g a        \bar "|"
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
    b a a2 e8 fis
  }
}
%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
% Bass Voice
%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
bassVoice = {

  d'2 a
  g fis
  d' b
  a g
 %==============
  d'2 a
  g fis
  e fis4 g
  a2
 %==============
}

%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
% Chords
%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

\version "2.16.1"

\header{

  title = \title
  subtitle = \subtitle
  opus = "opus #"
  composer = "composer name"
  instrument= "instrument name"
  date = "ca.1740-41"
  style = "Baroque"
  copyright = "Public Domain"

  footer = "Mutopia-2013/02/17-50"

}


#(set-default-paper-size "letter")

#(set-global-staff-size 18.8)

Treble = {
  \scoreDetails
  \voiceOne
  \slurDown

  \trebleVoice
}
Bass = {
  \scoreDetails
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

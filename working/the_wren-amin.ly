%@format
%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
% Score info
%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
title = "The Wren"
subtitle = ""
instrumentName = "Guitar"
composerName = "Composer"
opusNumber = "arranged by Rob Drew"
#(set-default-paper-size "letter")
#(set-global-staff-size 18.8)
scoreDetails = {
  \set Staff.midiInstrument = "acoustic guitar (nylon)"
  \time 4/4
  \key c \major
  \clef "treble_8"
}

%<a'-1>8 <d-3> d fise d e fis                           \bar "|"
%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
% Treble Voice
%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
trebleVoice = \relative c' {
  \repeat volta 2 {
    %this sets the position of the fingerings
    %@@@@@@@@@@@@@@@@@@@
    %--> A Section
    %@@@@@@@@@@@@@@@@@@@
    a4 e' e d8 e                                        \bar "|"
    f4 d d8 c b c                                       \bar "|"
    d g, b d d e d c                                    \bar "|"
    b4 b c8 b a g                                       \bar "|" \break
    %=====================
    a4 e' e d8 e                                        \bar "|"
    f4 d d8 c b c                                       \bar "|"
    d g, b d d e d c                                    \bar "|"
    b4 a a8 g e g                                       \bar "|"
  }
  \repeat volta 2 {
    %@@@@@@@@@@@@@@@@@@@
    %--> B Section
    %@@@@@@@@@@@@@@@@@@@
    a4. g8 a b c b                                      \bar "|"
    a4 a b4. c8                                         \bar "|"
    d g, b d d e d c                                    \bar "|"
    b4 b  c8 b a g                                      \bar "|" \break
    %=====================
    a4. g8 a b c b                                      \bar "|"
    a4 a b4. c8                                         \bar "|"
    d g, b d d e d c                                    \bar "|"
    b4 a a g                                            \bar "|" \break
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
    a1                                                  \bar "|"
    a1                                                  \bar "|"
    a1                                                  \bar "|"
    a1                                                  \bar "|" \break
    %=====================
    a1                                                  \bar "|"
    a1                                                  \bar "|"
    a1                                                  \bar "|"
    a1                                                  \bar "|"
  }
  \repeat volta 2 {
    %@@@@@@@@@@@@@@@@@@@
    %--> B Section
    %@@@@@@@@@@@@@@@@@@@
    a1                                                  \bar "|"
    a1                                                  \bar "|"
    a1                                                  \bar "|"
    a1                                                  \bar "|" \break
    %=====================
    a1                                                  \bar "|"
    a1                                                  \bar "|"
    a1                                                  \bar "|"
    a1                                                  \bar "|"
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
  %\transpose bes bes, \Bass
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

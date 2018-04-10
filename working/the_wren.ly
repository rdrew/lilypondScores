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
  \key d \major
  \clef "treble_8"
}

%<a'-1>8 <d-3> d fise d e fis \bar "|"
%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
% Treble Voice
%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
trebleVoice = \relative c' {
  \repeat volta 2 {
    %this sets the position of the fingerings
    %@@@@@@@@@@@@@@@@@@@
    %--> A Section
    %@@@@@@@@@@@@@@@@@@@
    b4 fis' fis e8 fis \bar "|"
    g4 e e8 d cis d \bar "|"
    e a, cis e e fis e d  \bar "|"
    cis4 cis d8 cis b a  \bar "|" \break
    %=====================
    b4 fis' fis e8 fis \bar "|"
    g4 e e8 d cis d \bar "|"
    e a, cis e e fis e d  \bar "|"
    cis4 b b8 a fis a \bar "|"
  }
  \repeat volta 2 {
    %@@@@@@@@@@@@@@@@@@@
    %--> B Section
    %@@@@@@@@@@@@@@@@@@@
    b4. a8 b cis d cis \bar "|"
    b4 b cis4. d8  \bar "|"
    e a, cis e e fis e d  \bar "|"
    cis4 cis  d8 cis b a \bar "|" \break
    %=====================
    b4. a8 b cis d cis \bar "|"
    b4 b cis4. d8  \bar "|"
    e a, cis e e fis e d  \bar "|"
    cis4 b b a \bar "|" \break
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
    b1 \bar "|"
    b1 \bar "|"
    b1 \bar "|"
    b1 \bar "|" \break
    %=====================
    b1 \bar "|"
    b1 \bar "|"
    b1 \bar "|"
    b1 \bar "|"
  }
  \repeat volta 2 {
    %@@@@@@@@@@@@@@@@@@@
    %--> B Section
    %@@@@@@@@@@@@@@@@@@@
    b1 \bar "|"
    b1 \bar "|"
    b1 \bar "|"
    b1 \bar "|" \break
    %=====================
    b1 \bar "|"
    b1 \bar "|"
    b1 \bar "|"
    b1 \bar "|"
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

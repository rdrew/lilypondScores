%@format
%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
% Score info
%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
title = "Template"
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
trebleVoice = \relative c {
  \repeat volta 2 {
    %this sets the position of the fingerings
    %@@@@@@@@@@@@@@@@@@@
    %--> A Section
    %@@@@@@@@@@@@@@@@@@@
    a'1 \bar "|"
    a1 \bar "|"
    a1 \bar "|"
    a1 \bar "|" \break
    %=====================
    a1 \bar "|"
    a1 \bar "|"
    a1 \bar "|"
  }
  \alternative {
    %--> 1st ending
    {   a1 \bar "|"  }
    %--> 2nd ending
    {   a1 \bar "|" \break }
  }
  \repeat volta 2 {
    %@@@@@@@@@@@@@@@@@@@
    %--> B Section
    %@@@@@@@@@@@@@@@@@@@
    a1 \bar "|"
    a1 \bar "|"
    a1 \bar "|"
    a1 \bar "|" \break
    %=====================
    a1 \bar "|"
    a1 \bar "|"
    a1 \bar "|"
  }
  \alternative {
    %--> 1st ending
    {   a1 \bar "|"  }
    %--> 2nd ending
    {   a1 \bar "|"  }
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
    a1 \bar "|"
    a1 \bar "|"
    a1 \bar "|"
    a1 \bar "|" \break
    %=====================
    a1 \bar "|"
    a1 \bar "|"
    a1 \bar "|"
  }
  \alternative {
    %--> 1st ending
    {   a1 \bar "|"  }
    %--> 2nd ending
    {   a1 \bar "|"  }
  }
  \repeat volta 2 {
    %@@@@@@@@@@@@@@@@@@@
    %--> B Section
    %@@@@@@@@@@@@@@@@@@@
    a1 \bar "|"
    a1 \bar "|"
    a1 \bar "|"
    a1 \bar "|" \break
    %=====================
    a1 \bar "|"
    a1 \bar "|"
    a1 \bar "|"
  }
  \alternative {
    %--> 1st ending
    {   a1 \bar "|"  }
    %--> 2nd ending
    {   a1 \bar "|"  }
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

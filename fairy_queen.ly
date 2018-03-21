%@format
%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
% Score info
%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
title = "The Fairy Queen"
subtitle = ""
instrumentName = "Guitar"
composerName = "Turloch O'Carolan"
opusNumber = "arranged by Rob Drew" 
#(set-default-paper-size "letter")
#(set-global-staff-size 18.8)
scoreDetails = {
  \set Staff.midiInstrument = "acoustic guitar (nylon)"
  \time 3/4
  \key g \major
  \clef "treble_8"
}
%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
% Treble Voice
%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
trebleVoice = \relative c' {
  \repeat volta 2 {
    %@@@@@@@@@@@@@@@@@@@
    %--> A Section
    %@@@@@@@@@@@@@@@@@@@
    g2 ~g8d \bar "|"
    g2 ~g8d \bar "|"
     \bar "|"
     \bar "|" \break
    
     \bar "|"
     \bar "|"
    
  }
  %\alternative {
    %%--> 1st ending
    %{ g2. }
    %%--> 2nd ending
    %{}
  %}
  \repeat volta 2 {
    %@@@@@@@@@@@@@@@@@@@
    %--> B Section
    %@@@@@@@@@@@@@@@@@@@
         \bar "|"
         \bar "|"
         \bar "|"
         \bar "|"
    %====================
        \bar "|"
        \bar "|"
        \bar "|"
  }
  \alternative {
    %--> 1st ending
    {}
    %--> 2nd ending
    {}
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
            \bar "|"
            \bar "|"
            \bar "|"
            \bar "|"
    
            \bar "|"
            \bar "|"
            \bar "|"
  }
  \alternative {
    %--> 1st ending
    {}
    %--> 2nd ending
    {}
  }
  \repeat volta 2 {
    %@@@@@@@@@@@@@@@@@@@
    %--> B Section
    %@@@@@@@@@@@@@@@@@@@
                     \bar "|"
                     \bar "|"
                     \bar "|"
                     \bar "|"
    %====================
                \bar "|"
                \bar "|"
                \bar "|"
  }
  \alternative {
    %--> 1st ending
    {}
    %--> 2nd ending
    {}
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

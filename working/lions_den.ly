%@format
%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
% Score info
%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
title = "The Lion's Den"
subtitle = ""
instrumentName = "Guitar"
composerName = "Composed by Ward MacDonald"
opusNumber = "Guitar arrangement by Rob Drew"
#(set-default-paper-size "letter")
#(set-global-staff-size 18.8)
scoreDetails = {
  \set Staff.midiInstrument = "acoustic guitar (nylon)"
  \time 2/2
  \key a \dorian
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
    c'8 b a c  b a g b \bar "|"
    a e' d e c a a c  \bar "|"
    d4 b8 d g, d' b d  \bar "|"
    g, d' g e d g, b d \bar "|" \break
    %=====================
    c8 b a c  b a g b \bar "|"
    a e' d e c a a c  \bar "|"
    d4 b8 d g, d' b d  \bar "|"
  }
  \alternative {
    %--> 1st ending
    {   e d c b a2 \bar "|"  }
    %--> 2nd ending
    {   e'8 d c b a4 a8 b \bar "|"  }
  }
  \repeat volta 2 {
    %@@@@@@@@@@@@@@@@@@@
    %--> B Section
    %@@@@@@@@@@@@@@@@@@@
    c e d e g e d e \bar "|"
    c e d e c a a c \bar "|"
    d4 b8 d g, d' b d  \bar "|"
    g, d' g e d g, b d \bar "|" \break
  }
  \alternative {
    %--> 1st ending
    {
      c e d e g e d e \bar "|"
      c d e d c a a c \bar "|"
      d4 b8 d g, d' b d  \bar "|"
      e d c b a4 a8 b \bar "|"
    }
    %--> 2nd ending
    {
      c8 b a c  b a g b \bar "|"
      a e' d e c a a c  \bar "|"
      d4 b8 d g, d' b d  \bar "|"
      e d c b a4 a8 b \bar "|"
    }
  }
  \repeat volta 2 {
    %@@@@@@@@@@@@@@@@@@@
    %--> B Section
    %@@@@@@@@@@@@@@@@@@@
    e4 c a c8 d \bar "|"
    c8 d c g' e d b c \bar "|"
    d4 b g b8 d ~ \bar "|"
    d c b g' d g, c d \bar "|"

    e4 c a c8 d \bar "|"
    e8 d c g' e d b c \bar "|"
    d g, g' e d g, b d \bar "|"
    d c b c a2 \bar "|"
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
    a2 g \bar "|"
    a2 f \bar "|"
    g b \bar "|"
    d' b \bar "|"
    %=====================
    a2 g \bar "|"
    a2 f \bar "|"
    g b \bar "|"
  }
  \alternative {
    %--> 1st ending
    {   e a \bar "|"  }
    %--> 2nd ending
    {   e a \bar "|"  }
    %--> 2nd ending
  }
  \repeat volta 2 {
    %@@@@@@@@@@@@@@@@@@@
    %--> B Section
    %@@@@@@@@@@@@@@@@@@@
    c' e' \bar "|"
    c' f \bar "|"
    g b \bar "|"
    d' b \bar "|" \break
  }
  \alternative {
    %--> 1st ending
    {
    c' e' \bar "|"
    c' f \bar "|"
    g b \bar "|"
    e a \bar "|" \break
    }
    %--> 2nd ending
    {
    c' e' \bar "|"
    c' f \bar "|"
    g b \bar "|"
    d' b \bar "|" \break
    }
  }
  \repeat volta 2 {
    %@@@@@@@@@@@@@@@@@@@
    %--> C Section
    %@@@@@@@@@@@@@@@@@@@
    a1 \bar "|"
    a \bar "|"
    g \bar "|"
    g \bar "|"

    a1 \bar "|"
    a \bar "|"
    g \bar "|"
    g2 a \bar "|"
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

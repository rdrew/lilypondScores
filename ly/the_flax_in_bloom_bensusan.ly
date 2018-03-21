
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


  d4 d8 fis  a b a fis |                   % 1
  a4 fis'8 d e d b cis |                   % 2
  d d,16 d d8 fis a b a fis |              % 3
  g fis e fis g a b a |                    % 4
  \break
  d d,16 d d8 fis a b d e |                % 5
  \tuplet 3/2 { fis e d } e fis e d b a  | % 6
  a4\prall fis8 a a b d g |                      % 7
  fis d e g fis d d4 |                     % 8
  \break
  a4 fis8 a a b d a'|                      % 9
  g a g fis e d b a|                       % 10
  a4\prall fis8 a a b d fis|                     % 11
  e16 fis e d e8 fis e d b a|              % 12
  a4 fis8 a a b d a'|                      % 13
  g a g fis e d b a|                       % 14
  a4\prall fis8 a a b d e|                       % 15
  \tuplet 3/2 { fis e d } e cis d4 d8 g|   % 16

  \repeat volta 2 {
    fis8  a, d fis e a, cis e  |           % 17
    d cis d a b a fis a  |                 % 18
    d, cis d fis a d fis a  |              % 19
    g a g fis e d b a |                    % 20
    fis'4 fis8 d e d e cis   |             % 21
    d cis d a a4 fis8 a |                  % 22
    d, d16 e fis8 a d e fis g |            % 23
    a g16 fis e8 fis d4. g8 |              % 24
  }
}

text = \lyricmode {
  %Ho -ly crap this works

}

harmonies = \chordmode {

\override ChordName.font-family = #'roman

d1        % 1
d         % 2
d         % 3
g2 a2     % 4
d1        % 5
d1        % 6
d2 d/fis  % 7
b4:m a d2 % 8
d2 d/fis % 9
g2 a2     % 10
d2 d/fis % 11
e2:m a4 g % 12
d2 d/fis % 
g2 a2     % 10
d2 d/fis % 11
e4:m a g2 % 12
d2 a/cis  % 14
b:m a     % 15
d d/fis   % 16
g a       % 17
d2 a/cis  % 14
b:m a     % 15
d d/fis   % 18
g4 a d2   % 19
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Voice = "one" { 
      %\autoBeamOff 
      \melody 
    }
    \new Lyrics \lyricsto "one" \text
    %\new TabStaff {
      %\override Stem #'transparent = ##t
      %\override Beam #'transparent = ##t
      %\melody
      %}
    >>
    \layout { }
    \midi { }
  }


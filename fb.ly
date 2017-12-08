
\version "2.18.2"
\header {
  title = "Farley Bridge"
  composer = "Arranged by Rob Drew"
}


\paper {

  markup-system-spacing #'basic-distance = #20
  system-system-spacing #'basic-distance = #18
}

melody = \relative c {
  \clef "treble_8"
  \key e \major
  \time 4/4


  \repeat volta 2 {
    b'8 e e gis  fis e fis gis |
    a gis gis gis  e b b a |
    b e e b  gis' gis b fis |
    fis e e gis  a cis, cis b |

    b e e b  e fis fis gis |
    a gis gis gis  e a, a b |
    fis' e cis fis4    gis8 fis e |
  }
  \alternative {
    {
      a gis gis e  e e cis a |
    }
    {
      a' gis gis e  e e b a |
    }
  }


  \repeat volta 2 {
b e e b  gis' gis b fis |
fis e e fis4 gis8 gis a |
a gis gis  e e e cis a |
a gis gis  e e e cis b |

fis e c fis4    gis8 fis e |
cis b  b4 fis gis |
}

%Beeg fefg|aggg eBBA|BeeB ggBf-|feeg accB|
%BeeB effg|aggg eAAB|fecf- fgfe|1 cB B6:|2 cB B4fg |
%|: agge eeca-|agge eeBA|BeeB ggBf|feef- fgga|
%agge eeca-|agge eecB|fecf- fgfe|cB B4fg:|


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


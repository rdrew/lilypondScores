\version "2.7.40"
\header {
  crossRefNumber = "1"
  footnotes = ""
  tagline = "Lily was here 2.18.2 -- automatically converted from ABC"
  title = "Caisleán An Óir"
}
voicedefault =  {
  \set Score.defaultBarType = ""

  \time 4/4 \key g \dorian   \repeat volta 2 {
    g'8    f'8    \bar "|"   d'8
    g'8    g'8    f'8    g'4    \times 2/3 {   a'8    b'8    c''8  }   \bar "|"
    d''8    c''8    d''8    e''8    f''4    g''8    a''8    \bar "|"   g''8    e''8
    d''8    c''8    a'8    d''8    c''8    a'8    \bar "|"   d'8    g'8    g'8
    e'8    f'8    e'8    d'8    c'8    \bar "|"     d'8    g'8    g'8    f'8
    g'4    \times 2/3 {   a'8    b'8    c''8  }   \bar "|"   d''8    c''8    d''8
    e''8    f''4    g''8    a''8    \bar "|"   g''8    f''8    d''8    c''8    a'8
    d''8    c''8    a'8    \bar "|"   g'4    g'8    f'8    g'4
  }
  \repeat volta 2 {
    \times 2/3 {   a'8    b'8    c''8  }   \bar "|"   d''8
    g''8    g''8    a''8    bes''!4    a''8    g''8    \bar "|"   g''8    f''8
    d''8    e''8    f''4    g''8    a''8    \bar "|"   g''8    f''8    d''8    c''8
    a'8    d''8    c''8    a'8    \bar "|"   d'8    g'8    g'8    e'8    f'8
    e'8    d'8    c'8    \bar "|"     d'8    g'8    g'8    f'8    g'4
    \times 2/3 {   a'8    b'8    c''8  }   \bar "|"   d''8    c''8    d''8    e''8
    f''4    g''8    a''8    \bar "|"   g''8    f''8    d''8    c''8    a'8
    d''8    c''8    a'8    \bar "|"   g'4    g'8    f'8    g'4
  }
}

\score{
  <<

    \context Staff="default"
    {
      \voicedefault
    }

  >>
  \layout {
  }
  \midi {}
}

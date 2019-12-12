\version "2.7.40"
\header {
  crossRefNumber = "1"
  footnotes = ""
  title = "Jenn And Anthony's Wedding Day"
}
voicedefault =  {
  \set Score.defaultBarType = ""

  \time 3/4 \key d \major   \repeat volta 2 {
    a8 a[  b ] \bar "|"
    d'2 ^"D" b'8  [ a' ] \bar "|"
    a'8 ^"D/F\#" fis'8  d'4  e'16  fis'16 e'8    \bar "|"
    e'4. ^"Em"   g'8    fis'16    e'16    d'8    \bar "|"
    b4. ^"G"   a8    a8    cis'8    \bar "|"
    d'4. ^"Bm"   d''8    d''8    a'8    \bar "|"
    b'4. ^"G"   d''8    d''8    cis''8    \bar "|"
    cis''8 ^"D"   b'8    b'8    a'8    a'8    fis'8    \bar "|"
    e'2 ^"A"   d''8
    e''8    \bar "|"
    \time 9/8   fis''8 ^"Bm"   b'8    d''8      e''8 ^"A"   a'8
    cis''8      d''8 ^"D"   a'8    fis'8    \bar "|" \time 3/4   b'4. ^"G"   a'8
    a'8    b'8    \bar "|"     a'4. ^"D"   a8    b16    d'8.    \bar "|"     e'4.
    ^"A"   fis'16    g'16    g'16    fis'16    e'8    \bar "|"       fis'4. ^"Bm"
    e'8    fis'8    d'8    \bar "|"     b4. ^"G"   fis'8    e'16    d'16    b8
    \bar "|"     a8 ^"A"   b8    d'4    d'8    cis'8    \bar "|"     d'4. ^"D"
  }
  \repeat volta 2 {
    d''8  \grace {    d''16    e''16  }   d''8    cis''8
    \bar "|"   b'4. ^"G"   a'8    b'8    d''8    \bar "|"     fis'8. ^"D"   e'16
    d'4    b'16    d''8.    \bar "|"     e''4. ^"A"   a'8    e''8    fis''16
    g''16    \bar "|"     fis''8. ^"D"   e''16    d''4    d''8    cis''8
    \bar "|"       cis''8 ^"G"   b'8    b'8    a'8    a'8    d''8    \bar "|"
    fis'8. ^"D"   e'16    d'4    b'8    a'8    \bar "|"     a'4. ^"D/F\#"   a8
    b16    d'8.    \bar "|"     e'4. ^"A"   \bar "||"
  } \alternative{
    {
      d''8
      d''8    cis''8    \bar "|"   b'4. ^"G"   a'8    b'8    d''8    \bar "|"
      fis'8 ^"D"   e'8    d'4    fis'16    a'8.    \bar "|"     b'4. ^"G"   a'8
      a'8    fis'8    \bar "|"     e'4. ^"A"   fis'16    g'16    g'16    fis'16
      e'8    \bar "|"       fis'4. ^"Bm"   e'8    fis'8    d'8    \bar "|"     b4.
      ^"G"   fis'8    e'16    d'16    b8    \bar "|"     a8 ^"A"   b8    d'4    d'8
      cis'8    \bar "|"     d'4. ^"D"
    }
  }      \bar "|"   d''8    d''8    e''8
  \bar "|" \time 9/8   fis''8 ^"Bm"   b'8    d''8      e''8 ^"A"   a'8    cis''8
  d''8 ^"D"   a'8    fis'8    \bar "|" \time 3/4   b'4. ^"G"   a'8    a'8
  b'8    \bar "|"     a'4. ^"D"   a8    b16    d'8.    \bar "|"     e'2 ^"A"
  fis'16    g'16    e'8    \bar "|"       fis'4. ^"Bm"   e'8    fis'8    d'8
  \bar "|"     b4. ^"G"   fis'8    e'16    d'16    b8    \bar "|"     a8 ^"A"
  b8    d'4    e'16    fis'16    e'8    \bar "|"     d'4. ^"D"   \bar "|."
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

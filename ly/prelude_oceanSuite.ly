\version "2.18.2"

\header {
  title = "Ocean Suite: Prelude"
  composer = "Rob Drew"

}
global = {
  \clef treble
  \key d \minor
  \time 4/4
}
melody =\relative d' {

    \clef "treble_8" \key d \minor \time 4/4 
	<d a f>2 <d a e>4 cis8. [ d16 ] | % 2
    d8 [ a8 d8 e8 ] f8 [ g8 f8 e8 ] | % 3
    d8 [ e8 f8 d8 ] c8 [ bes8 ] <a c>4 | % 4
    f'8 [ e8 d8 e8 ] g8 [ f8 e8 d8 ] | % 5
    cis8 [ d8 e8 cis8 ] d8 [ a8 d8 e8 ] | % 6
    f8 [ g8 f8 e8 ] d8 [ e8 ] f16 [ e16 f8 ] | % 7
    c8 [ bes8 ] <a c>4 f'8 [ e8 ] d16 [ e16 f8 ] | % 8
    g8. [ f16 ] e8 [ d8 ] cis16 [ d16 e16 d16 ] e8 [ cis8 ] | % 9
    d8 [ a8 ] f'16 [ e16 d8 ] e8 [ a,8 ] g'16 [ f16 e8 ] |
    \barNumberCheck #10
    f8 [ a8 ] bes16 [ g16 e8 ] a8 [ g16 a16 ] bes8 [ cis,8 ] | % 11
    d8 [ a8 ] d16 [ e16 f8 ] e8 [ g8 ] f16 [ e16 d8 ] | % 12
    f8 [ a8 ] e16 [ f16 g8 ] a8 [ g16 a16 ] bes8 [ cis,8 ] | % 13
    d8 [ a8 ] f8 [ a16 d16 ] e8 [ f8 g8 d8 ] | % 14
    f8 [ d16 e16 ] f8 [ d8 ] c8 [ f,16 bes16 ] <a c>4 | % 15
    e'8 [ f16 e16 ] d8 [ e8 ] d8 [ c16 b16 ] c8 [ d8 ] | % 16
    dis8 [ e16 dis16 ] a8 [ dis8 ] e8 [ b8 ] g'16 [ fis16 e8 ] | % 17
    fis8 [ b,8 ] a'16 [ g16 fis8 ] g8 [ b8 ] fis16 [ g16 a8 ] | % 18
    b8 [ a16 b16 ] a8 [ dis,8 ] e8 [ b8 ] e16 [ fis16 g8 ] | % 19
    fis8 [ a8 ] g16 [ fis16 e8 ] g8 [ b8 ] fis16 [ g16 a8 ] |
    \barNumberCheck #20
    b8 [ a16 b16 ] a8 [ dis,8 ] e8 [ b8 ] g8 [ b16 e16 ] | % 21
    fis8 [ a8 g8 e8 ] g8 [ e16 fis16 ] g8 [ e8 ] | % 22
    d8 [ g,16 c16 ] d4 <a d fis>8 [ g'16 fis16 ] e8 [ fis8 ] | % 23
    e8 [ d16 cis16 ] d8 [ e8 ] cis8 [ d16 cis16 ] g8 [ cis8 ] | % 24
    d2 d4 cis8. [ d16 ] | % 25
    d8 [ a8 d8 e8 ] f8 [ g8 f8 e8 ] | % 26
    d8 [ e8 ] f16 [ e16 f8 ] c8 [ bes8 ] <a c>4 | % 27
    f'8 [ e8 ] d16 [ e16 f8 ] g8. [ f16 ] e8 [ d8 ] | % 28
    cis16 [ d16 e16 d16 ] e8 [ cis8 ] d2 ~ | % 29
    d1 \bar "|."
}

bass =\relative d, {
    \clef "treble_8" \key d \minor \time 4/4 d2 a'2 | % 2
    d,2 d'2 | % 3
    bes2 ^"J.R. Barrett-Drew" f2 | % 4
    d'2 g,2 | % 5
    a2 d,2 | % 6
    d'2 bes2 | % 7
    f2 d'2 | % 8
    g,2 a2 | % 9
    d,2 a'2 | \barNumberCheck #10
    d2 a2 | % 11
    d,2 a'2 | % 12
    d2 a2 | % 13
    d,2 c'2 | % 14
    bes2 a2 | % 15
    c2 g2 | % 16
    b2 e2 | % 17
    b2 e2 | % 18
    b2 e2 | % 19
    b2 e2 | \barNumberCheck #20
    b2 e,2 | % 21
    d2 c'2 | % 22
    b2 d2 | % 23
    a2 a2 | % 24
    d,2 a'2 | % 25
    d,2 d'2 | % 26
    bes2 f2 | % 27
    d'2 g,2 | % 28
    a2 d,2 ~ | % 29
    d2 s2 \bar "|."
}

\score {
  \new Staff <<
	\melody 
	\\
	\bass
>>
\layout {}
\midi {}
}


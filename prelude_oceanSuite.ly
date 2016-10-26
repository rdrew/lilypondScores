\version "2.18.2"

\header {
  title = "Title"
  composer = "Rob Drew"

}
global = {
  \clef treble
  \key d \minor
  \time 4/4
}
melody =\relative c'' {
  \global

  <d a f>2 <d a e>4 cis8 d | d a d e f g f e | d e f d c bes <c a>4

}

bass =\relative c' {
  \global

  d,2 d' | d,2 d' | bes2 f

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


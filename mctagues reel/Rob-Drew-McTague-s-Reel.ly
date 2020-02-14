\version "2.18.0"

\header {
  dedication = "for my love"
  title = "McTague's Reel"
  composer = "Rob Drew"
  meter = "4/4"
  piece = "Reel"
  % Remove default LilyPond tagline
  tagline = ##f
}

\paper {
  #(set-paper-size "letter")
}

\layout {
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
}

global = {
  \key d \minor
  \time 4/4
}

upper = \relative c' {
  \global
  \repeat volta 2 {
 d,8 a' a g f a c e, \bar "|" 
 d8 a' a g f16 e d8 e c \bar "|" 
 d8 a' a g f a c e \bar "|" 
 d c a g a g f e  \bar "|" 

 d8 a' a g f a c e, \bar "|" 
 d8 a' a g f16 e d8 e c \bar "|" 
 d8 a' a g f a c e \bar "|" 
 f e d c d c d e   \bar "|" \break 
  }
  \repeat volta 2 {
 f e d e f a g f \bar "|"
 e c g c e g f e \bar "|"
 d bes f bes d f e d  \bar "|"
 cis b a b cis d e d  \bar "|"

 f e d e f a g f \bar "|"
 e c g c e g f e \bar "|"
 d bes f bes d f e d  \bar "|"
 cis b a g a g f e  \bar "|"
 
  }
}

lower = \relative c' {
  \global
  % Music follows here.
  
}

\score {
  \new Staff { \clef "treble_8" << \upper \\ \lower >> }
  \layout { }
}

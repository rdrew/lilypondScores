\version "2.18.2"

\header {
  title = "Castlerock Road"
  composer = "Damien O'Kane"
}

global = {
	\key d \major
	\time 4/4
	%\partial 4.
	\language "english"
}
\paper {
	#(set-paper-size "letter")
	ragged-last-bottom = ##t % turns of verticle justify
	line-width = 12.5\in % these four lines are for margins
	left-margin = 0.45\in
	bottom-margin = 0.25\in
	top-margin = 0.25\in
}
#(set-global-staff-size 18) % set staff size to 18


chordNames = \chordmode {
  \global
  \partial 4.
  s4. c1 d
}

tune = \relative c'' {
  \global
  % Music follows here.
  \repeat volta 2 {
    a4 a8 g a b d fs \bar"|"
    e d e fs d a b d \bar"|"
    g b, d g fs a, d fs \bar"|"
    e e e  d cs b a g \bar"|" \break

    a4 a8 g a b d fs \bar"|"
    e d e fs d a b d \bar"|"
    g b, d g fs a, d fs \bar"|"
    e d e fs d g, b d  \bar"|"\break
  } 
  \repeat volta 2 {
    g b, d g fs a, d fs \bar"|"
    e d e fs d a b d \bar"|"
    g b, d g fs e d4 \bar"|"
    d8 d cs g a b d fs \bar"|"\break
    
    g b, d g fs a, d fs \bar"|"
    e d e fs d a b d \bar"|"
    g b, d g fs e d4~ \bar"|"
    d8 d cs g a b d fs \bar"|"\break
  } 
  \repeat volta 2 {
    cs8 d a'8 fs  d a' fs d \bar"|"
    e d a' fs d a' fs d \bar"|"
     cs8 d8 b g' d b g'  d 
     cs d a' cs, d a' cs, d  

    b4 b8 a b cs d e \bar"|"
    fs a, fs' a, fs'16 e d8 b g \bar"|"
    a b d e fs g a fs  \bar"|"
    e d e g d4 d8 b \bar"|"
    \bar"|"
  } 
}



\score {
  <<
    %\new ChordNames \chordNames
    \new Staff { \tune }
  >>
  \layout { }
}

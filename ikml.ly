%{
v-v-ch-solo(v)-v-ch-ch

  comment block
%}
\version "2.18.2"

\header {
  title = "I Know My Love"
  composer = "Kieth Mullen"
}

global = {
	\key g \major
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

melody_verse = \relative c'' {
  \global
  \partial 4.
  % Music follows here.
  \repeat volta 2 {
    g8 g fs \bar"|" e4 r4 r8 e16 e e8 fs \bar"|"
    fs2. g8 a \bar"|" b4. b8 a4.  fs8 \bar"|"
    g4 r4 r8 g8 g fs \bar"|" e4 r4 r8 e16 e e8 fs \bar"|"
    fs2. g8 a \bar"|" b4. b8 a4. fs8 \bar"|"
    g4 r4 
  } 
}

melody_verse_last = \relative c'' {
  % Music follows here.
  g8 g fs \bar"|" e4 r4 r8 e16 e e8 fs \bar"|"
  fs2. g8 a \bar"|" b4. b8 a4.  fs8 \bar"|"
  g4 r4 r8 g8 g fs \bar"|" e4 r4 r8 e16 e e8 fs \bar"|"
  fs2. g8 a \bar"|" b4. b8 a4. fs8 \bar"|"
  g4 r4 
}

melody_chorus = \relative c'' {
  % Music follows here.
  r8 d8 d c \bar"|" b4 r4 r8 g16 g a8 b  \bar"|" a4 r4 r4 g8 a 
  b4 r8 b8 a4 g8 fs g2. b8 a g4 b d b' a2. g8 a | b4 r8    b8 a4 g8 fs \bar"|" g2 r4 }

verseOne = \lyricmode {
  \set stanza = "1."
  I know my \bar"|" love by her deep brown \bar"|" hair, 
  %      G.     D/F#.    Em
  I -- n si -- lver frost a -- dorned.
  %      C                       D/F#
  I know my love by her skin so fair,
  %       Em     D.      C
  A -- nd waist so slen -- der formed


}

verseTwo = \lyricmode {
  \set stanza = "2."
  I’ll know my love by his eyes so blue
  Tha -- t spar -- kle when I’m near 
  I’ll know my love by his voice so soft,
  Tha -- t sings to me so clear.
}

verseThree = \lyricmode {
  \set stanza = "3."
  I know my love by her smile so sweet,
  That sets the world aglow.
  I’ll know my love by his foot so fleet,
  swinging as we go.
}

chorus = \lyricmode {
  %\set stanza = "4."
  I know my love does my love know me
  Bu -- t time’s a fi -- i -- ckle foe
  Fo -- r lo -- vers we can’t be,
  Though I know my lo -- ve is you,
  If I knew your love was me.
}

\score {
  <<
    \new ChordNames \chordNames
    %\new Staff { \autoBeamOff \melody_verse \melody_chorus \melody_verse_last \melody_chorus }
    \new Staff { \autoBeamOff \melody_verse \melody_chorus  }
    \addlyrics { \verseOne \chorus \verseThree \chorus }
    \addlyrics { \verseTwo }
    %\addlyrics { \verseThree }
    %\addlyrics { \verseFour }
  >>
  \layout { }
}

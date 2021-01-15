\version "2.18.2"

\header {
  title = "Lament of the Gael"
  composer = "Kieth Mullen"
}

global = {
	\key e \minor
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

melody_verse = \relative c'' {
  \global
  \partial 8
  % Music follows here.
  \repeat volta 2 {
b8 
e4 e8 e4 fs4. e8 d4 b r4 b8 e4 e4 fs g g4 r2.\break
a4 a8 a4. a4 
fs4 e8 d4 r8 a4 d4. d8 e4 e fs4 r2 r8 b,8 e4. e8 fs4. d8 g4 r2 r8 b
b,4 a g  b a g fs4 r8 fs8  g4. g8 fs4 d e2 r2
e4 e fs fs 
g4 a8 b4. b4
a4 a g d e2 r2
a4 a g d e2


  } 
}
verseOne = \lyricmode {
	\set stanza = "1."

	%Em        
	I had a dream, three sis -- ters fair,		
	%C          D         Em
	the Ra -- ven Gods of old.
	%Am                  D/F#
	Wea -- ving fate of song and time
	%A            B          C
	With wings as black as coal,
	%C           Bm      Em
	With wings as black as coal.

	%G                 D/F#
	Each o -- ’er field of re -- gal green,
	%Em      D(or B) C
	with each a ro -- yal wing,
	%C            D         Em    Bm
	dark and grace -- ful on the air,
	%Am                  B           C
	And each one was a queen,
	%C           Bm        Em
	each one was a queen
}

verseTwo = \lyricmode {
	\set stanza = "2."
	Then came up -- on the sis -- ters three
	a wolf of grey and guile,
	come_down said he from out the sky
	and dine with me a -- while
	and dine with me a -- while

	For when I feast, this old wolf cried,
	the boun -- ty is too great,
	And I will share with sisters three,
	that which I cannot eat
	that which I cannot eat
}

verseThree = \lyricmode {
	\set stanza = "3."
	So down they flew to feast and dine
	till they had got their fill
	then pounced the wolf, all hate and teeth
	and did the ravens kill
	and did the ravens kill

	What have you done the sisters cried,
	wings black and red on snow.
	You are flesh, and I am wolf
	how can you not know
	how can you not know
}

verseFour = \lyricmode {
	\set stanza = "4."
	Your woven songs of time and fate
	I’ll weave them for myself
	A raven song's not yours to sing
	they can not fit a wolf
	they can not fit a wolf

	There are three sisters still I know
	Ravens fierce and fair
	the songs they sing are woven still
	in Wales, and Scot, and Eire
	in Wales, and Scot, and Eire
}

\score {
  <<
    %\new ChordNames \chordNames
    %\new Staff { \autoBeamOff \melody_verse \melody_chorus \melody_verse_last \melody_chorus }
    \new Staff { \autoBeamOff \melody_verse  }
		\addlyrics { \verseOne }
    \addlyrics { \verseTwo }
    \addlyrics { \verseThree }
    \addlyrics { \verseFour }
  >>
  \layout { }
}

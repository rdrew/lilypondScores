\version "2.18.2"

\header {
  title = "Nancy O"
  composer = "Kieth Mullen"
}

\paper {
	#(set-paper-size "letter")
	ragged-last-bottom = ##t % turns of verticle justify
	line-width = 12.5\in % these four lines are for margins
	left-margin = 0.45\in
	bottom-margin = 0.25\in
	top-margin = 0.25\in
  markup-system-spacing #'basic-distance = #16
  system-system-spacing #'basic-distance = #24
}
#(set-global-staff-size 18) % set staff size to 18


\layout {
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
}

global = {
  \key d \major
  \time 3/4
  \partial 8
}

chordNames = \chordmode {
  \global
\override ChordName.font-family = #'roman
  % Chords follow here.
  s8 | d2 g4 | d2.|d2.|g2.
  b2.:m | g2. 
  \time 4/4
  | g2 a2 | g4 a d2 |
  \time 3/4 
  | d2 g4 | d2.|d2.|g2.
  b2.:m | g2. 
  \time 4/4
  | g2 a2 | g4 a d2 |
%chorus
  \time 6/8
  g4. a4. d2.
  g4. a4. b2.:m
  d4. a4. g2.:maj9
  d4. a4. g2.:maj9
}

melody = \relative c'' {
  \global
  % Music follows here.
  \repeat volta 2 {

  a,8 | d8. e16 fis8 d8 b d | a2 r8 a8 | d4 fis8 d fis a | b2 r8 g8 |
  | b8. cis16 d8 a fis e | d2 r8 a8 |
  \time 4/4
  fis'8 fis e d cis a4 a8
  fis'8 fis e  d d4 r8 d8 |
  \time 3/4
  | d8. e16 fis8 d8 b d | a2 r8 a8 | d8 d fis8 d fis a | b2 r8 g8 |
  | b8. cis16 d8 a fis e | d2 r8 a8 |
  \time 4/4
  fis'8 fis e d cis a4 a8
  fis'8 fis e  d d4 r8 d16 d |
  %chorus
  \time 6/8
  | b'8. b16 b8 a4 g8 | fis4. r4 d16 d |
   | b'8. b16 b8  a4 g8 | fis4. r4 d8 | b'8. b16 b8  a4 g8 |
   | fis4. r4 } 

   \repeat volta 2 {
     d8 |
     | b'8. b16 b8  a4 g8 |
     | fis2  
   }
}

verse = \lyricmode {
  % Lyrics follow here.
  One sum -- mer morn I took the air, to see all that I can see
  I saw a wal -- king maid so fair,       
  It was the love -- ly Nan -- cy The love -- ly Nan -- cy -- -O
  Says I the shade is love -- ly here, the co -- ffee is so i -- i -- cy
  I’ll trade a cup for your good cheer, 
  and so I cour -- ted Nan -- cy, The love -- ly Nan -- cy -- -O
}
verse_two = \lyricmode {
  % Lyrics follow here.
 the day I met my Nan -- cy -- -O, wouldn’t trade-it for a -- no -- - -- ther
I rue the lads that know her not, 
- but that they would love her, The love -- ly Nan -- cy -- -O

Her walls are thick but made of glass, as kind as she is fi -- es -- ty
I ne -- ver stood a fight -- ing chance,     
 and so I fell for Nan -- cy, the love -- ly Nan -- cy -- -O
}
verse_three = \lyricmode {
  % Lyrics follow here.
I par -- ted then with Nan -- cy -- -O, know not if a -- gain I’ll see
We’d walked as far as we could go,         
I turned my back to Nan -- cy, the love -- ly Nan -- cy- -- O

But still he haunts me in my dreams, and makes me smile all the of day
As I re -- call our bri -- ef meet,
It makes me long for Nan -- cy, the love -- ly Nan -- cy -- -O

}

chorus = \lyricmode {
  And I’ll walk with my Nan -- cy -- -O
  Yes I’ll walk with my Nan -- cy -- -O
  I’ll walk with my Nan -- cy -- -O
}
chorus_two = \lyricmode {
  And I’ll sing to my Nan -- cy -- -O
  Yes I’ll sing to my Nan -- cy -- -O
  I’ll sing to my Nan -- cy -- -O
}
chorus_three = \lyricmode {
  And I’ll wait for my Nan -- cy -- -O
  Yes I’ll wait for my Nan -- cy -- -O
  I’ll wait for my Nan -- cy -- -O
}

coda = \lyricmode {
  I’ll wait for my Nan -- cy -- -O
}
accRight = \relative c' {
  \global
  % Music follows here.
  
}

accLeft = \relative c {
  \global
  % Music follows here.
  
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
}


\score {
  <<
    \new ChordNames \chordNames
    \new ChoirStaff <<
      \new Staff <<
        \new Voice { \voiceOne \melody }
        \addlyrics { \verse 
                     \chorus }
        \addlyrics { \verse_two 
                     \chorus_two }
        \addlyrics { \verse_three 
                     \chorus_three 
                     \coda }
        \new Voice { \voiceTwo \accRight }
      >>
      \new Staff { \clef treble \accLeft }
    >>
  >>
  \layout { }
}

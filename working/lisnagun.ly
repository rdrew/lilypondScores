%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
% Score info
%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
title = "The Lisnagun"
subtitle = "subtitle"
scoreDetails = {
	\set Staff.midiInstrument = "acoustic guitar (nylon)"
	\time 6/8
	\key a \dorian
	\clef "treble_8"
}

%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
% Treble Voice
%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
trebleVoice = {

	e''8 a, a b c d
    e a e fis e d
}
%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
% Bass Voice
%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
bassVoice = {

	a2.
	a2.
}

%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
% Chords
%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

\version "2.16.1"

\header{

	title = \title
	subtitle = \subtitle
	opus = "opus #"
	composer = "composer name"
	instrument= "instrument name"
	date = "ca.1740-41"
	style = "Baroque"
	copyright = "Public Domain"

 footer = "Mutopia-2013/02/17-50"

}


#(set-default-paper-size "letter")

#(set-global-staff-size 18.8)

Treble = \relative c {
	\scoreDetails
	\voiceOne
	\slurDown

	\trebleVoice
}
Bass = {
	\scoreDetails
	\voiceTwo

	\bassVoice
}

GuitarStaff = \new Staff = GuitarStaff <<
	\set Staff.midiInstrument = "acoustic guitar (nylon)"

	\transpose c' c \Treble
	\transpose c' c \Bass
>>

\score {
	<<
		\GuitarStaff
	>>
	\layout {
	}
	
  \midi {
    \tempo 4 = 60
    }
}

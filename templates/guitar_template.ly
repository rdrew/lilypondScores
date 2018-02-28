%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
% Score info
%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
title = "Guitar Template"
subtitle = "subtitle"
scoredetails = {
	\set staff.midiinstrument = "acoustic guitar (nylon)"
	\time 6/8
	\key a \dorian
	\clef "treble_8"
}

%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
% treble voice
%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
treblevoice = {

	e''8 a, a b c d
    e a e fis e d
}
%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
% bass voice
%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
bassvoice = {

	a2.
	a2.
}

%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
% chords
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
	style = "baroque"
	copyright = "public domain"

 footer = "mutopia-2013/02/17-50"

}


#(set-default-paper-size "letter")

#(set-global-staff-size 18.8)

treble = \relative c {
	\scoredetails
	\voiceone
	\slurdown

	\treblevoice
}
bass = {
	\scoredetails
	\voicetwo

	\bassvoice
}

guitarstaff = \new staff = guitarstaff <<
	\set staff.midiinstrument = "acoustic guitar (nylon)"

	\transpose c' c \treble
	\transpose c' c \bass
>>

\score {
	<<
		\guitarstaff
	>>
	\layout {
	}
	
  \midi {
    \tempo 4 = 60
    }
}

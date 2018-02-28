\version "2.16.1"

\header{

	title = "Guitar Template"
	subtitle = "subtitle"
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

Treble = {
	\set Staff.midiInstrument = "acoustic guitar (nylon)"
	\time 4/4
	\key a \minor
	\clef "treble_8"
	\voiceOne
	\slurDown

	a4 a a a
}
Bass = {
	\set Staff.midiInstrument = "acoustic guitar (nylon)"
	\time 4/4
	\key a \minor
	\clef "treble_8"
	\voiceTwo

	a4 a a a
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

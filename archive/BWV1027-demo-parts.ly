%!TEX TS-program = Lilypond
%!TEX encoding = UTF-8 Unicode
%
% This is the basic Bassclarinet file for Johann Sebastian Bach's Gamba Sonate - BWV 1027.
%
% Created by Wim van Dommelen, The Netherlands, september 18, 2012.
%
% No copyright exists on this material. J.S. Bach's beautifull creations are in the public domain and
% this typesetting was all done by myself.
%

\version "2.16.0"

% Language used to interpret notes, this is added to avoid any confusion and Yes, I'm proud to be Dutch:
\language "nederlands"

% Define a variable to hold the formatted date:
date = #(strftime "%d-%m-%Y" (localtime (current-time)))
% fix the date on when I finished this:
date = "18-09-2012"

\paper {
    indent = 2.0\cm
}

\header {
    title = "Sonata Nr. 1 (A-dur)"
    instrument = \markup { "B" \smaller \flat " Bass Clarinet" }
    composer = "Johann Sebastian Bach (1685-1750)"
    opus = "BWV 1027"
    tagline = \markup{ \concat { "Engraved by Wim van Dommelen" \bold \date " with" \with-url #"http://lilypond.org/" "LilyPond " \simple #(lilypond-version) " (http://lilypond.org/)." } }
    maintainer = "Wim van Dommelen"
    maintainerEmail = "n0spamm (AT) wimvd.nl"		% obfuscated, this one will not work :-)
}

GambaAdagio = {
		% page 175, bar 1, tenor clef
    \tag #'Gamba \clef tenor
    \tag #'BCL \clef treble
    \key g\major
    \time 12/8
	\transpose f c' { %start special transpose for tenor clef!
	    \relative c {
	      %page 175, bar 1:
		e=8^\markup { \huge \bold "Adagio" } g16( f) e( d) e8-. c-. d16( e32 f) \appoggiatura f8 e8 g16( f) e( d) e c g'8-. a16( b32 c) |
		b8 c16( b) a( g) c8-. g-. g16( a32 bes) \appoggiatura bes8 a8 bes16( a) g( f) g8-. c-. e,16( f32 g) |
	    }
	} %end special transpose!
    \bar "|."
}

GambaAllegro = {
		% page 178, bar 1, tenor clef
    \tag #'Gamba \clef tenor
    \tag #'BCL \clef treble
    \key g\major
    \time 3/4
	\transpose f c' { %start special transpose!
	    \relative c {
	      %page 178, bar 1:
		r2.^\markup { \huge \bold "Allegro ma non tanto" } |
		r2. |
	    }
	} %end special transpose!
    \bar "|."
}

GambaAndante = {
		% page 183, bar 1, tenor clef
    \tag #'Gamba \clef tenor
    \tag #'BCL \clef treble
    \key g\major
    \time 4/4
	\transpose f c' { %start special transpose!
	    \relative c {
	      %page 183, bar 1:
		r2^\markup { \huge \bold "Andante" } a'16( cis) d( f) a,( cis) d( f) |
		b,( a) b( d) b( a) b( d) e,( gis) a( c) e,( gis) a( c) |
	    }
	} %end special transpose!
    \bar "|."
}

GambaAllegroModerato = {
		% page 184, bar 1, bass clef
    \tag #'Gamba \clef bass
    \tag #'BCL \clef treble
    \key g\major
    \time 2/2
	    \relative c {
		\partial 4 r4 |
	      %page 184, bar 1:
		r1^\markup { \huge \bold "Allegro moderato" } |
		r1 |
		    }
    \bar "|."
}

\book {

	% part 1: Adagio
    \score {
      {% start musical expression
	\new Staff \with {
	    instrumentName = \markup { \column { "Bass" \line { "Clarinet" } } }
	    midiInstrument = #"clarinet"
	}
	\keepWithTag #'BCL \transpose bes c' { \GambaAdagio }
      }% end musical expression
      \layout {
      }
      \midi {
	\context {
	    \Score tempoWholesPerMinute = #(ly:make-moment 66 8)
	}
      }
    }

	% part 2: Allegro ma non tanto
    \score {
      {% start musical expression
	\new Staff \with {
	    instrumentName = \markup { \column { "Bass" \line { "Clarinet" } } }
	    midiInstrument = #"clarinet"
	}
	\keepWithTag #'BCL \transpose bes c' { \GambaAllegro }
      }% end musical expression
      \layout {
      }
      \midi {
	\context {
	    \Score tempoWholesPerMinute = #(ly:make-moment 120 4)
	}
      }
    }

	% part 3: Andante
    \score {
      {% start musical expression
	\new Staff \with {
	    instrumentName = \markup { \column { "Bass" \line { "Clarinet" } } }
	    midiInstrument = #"clarinet"
	}
	\keepWithTag #'BCL \transpose bes c' { \GambaAndante }
      }% end musical expression
      \layout {
      }
      \midi {
	\context {
	    \Score tempoWholesPerMinute = #(ly:make-moment 80 4)
	}
      }
    }

	% part 4: Allegro Moderato
    \score {
      {% start musical expression
	\new Staff \with {
	    instrumentName = \markup { \column { "Bass" \line { "Clarinet" } } }
	    midiInstrument = #"clarinet"
	}
	\keepWithTag #'BCL \transpose bes c' { \GambaAllegroModerato }
      }% end musical expression
      \layout {
      }
      \midi {
	\context {
	    \Score tempoWholesPerMinute = #(ly:make-moment 120 4)
	}
      }
    }
}


\version "2.18.2"
% automatically converted by musicxml2ly from D minor suite _Ocean_ Courante asv.xml

\header {
    encodingsoftware = "Finale 2014 for Mac"
    encodingdate = "2016-10-27"
    composer = "J.R. Barrett-Drew"
    title = Courante
    }

#(set-global-staff-size 20.4765948425)
\paper {
    paper-width = 21.0\cm
    paper-height = 29.0\cm
    top-margin = 1.28\cm
    bottom-margin = 1.28\cm
    left-margin = 1.28\cm
    right-margin = 1.28\cm
    between-system-space = 2.09\cm
    page-top-space = 0.59\cm
    }
\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative a {
    \repeat volta 2 {
        \repeat volta 2 {
            \clef "treble_8" \key d \minor \time 3/4 \partial 4. a8 [ b8
            ] cis8 \repeat volta 2 {
                | % 1
                d4 d8 [ f8 ] e8 ( [ d8 ) ] | % 2
                cis4 a8 [ g'8 ] f8 ( [ e8 ) ] | % 3
                f4 d8 [ a'8 ] g8 ( [ f8 ) ] \break | % 4
                g8 ( [ f8 ) ] e8 [ c8 ] d8 [ e8 ] | % 5
                d4. f8 e8 ( [ d8 ) ] | % 6
                cis4. g'8 f8 [ e8 ] }
            \alternative { {
                    | % 7
                    f8 ( [ e8 ) ] f8 [ d8 ] e8 ( [ f8 ) ] }
                } | % 8
            g8 ( [ e8 ) ] cis8 [ a8 ] b8 [ cis8 ] \break | % 9
            d4. a8 b8 ( [ cis8 ) ] }
        \alternative { {
                | \barNumberCheck #10
                f8 ( [ e8 ) ] f8 [ d8 ] a8 [ c8 ] }
            } | % 11
        b8 [ a8 ] b8 ( [ cis8 ) ] d8 [ b8 ] | % 12
        a8 ( [ gis8 ) ] a8 [ c8 ] e8 [ a8 ] \break \repeat volta 2 {
            | % 13
            f8 ( [ e8 ) ] d8 [ f8 ] e8 [ \[ d8 ] | % 14
            bes8 ( [ \] \[ a8 ) ] bes8 [ d8 ] g8 [ f8 ] | % 15
            e8 ( [ d8 ) ] c8 [ e8 ] d8 [ c8 ] | % 16
            a8 ( [ \] g8 ) ] a8 [ \[ c8 ] f8 [ c8 ] \break | % 17
            d8 ( [ c8 ) ] bes8 [ d8 ] c8 [ bes8 ] | % 18
            a8 ( [ \] gis8 ) ] a8 [ cis8 ] e8 [ cis8 ] | % 19
            <a d>4. a8 b8 [ cis8 ] | \barNumberCheck #20
            d4. e8 f8 [ d8 ] | % 21
            e4. g8 f8 ( [ e8 ) ] \break | % 22
            f4. g8 a8 [ f8 ] | % 23
            g8 ( [ f8 ) ] e8 [ c8 ] d8 [ e8 ] | % 24
            d4. e8 f8 [ d8 ] | % 25
            e4. g8 f8 [ e8 ] }
        \alternative { {
                | % 26
                f8 ( [ e8 ) ] f8 [ d8 ] a8 [ c8 ] }
            } \break | % 27
        b8 [ a8 ] b8 [ cis8 ] d8 [ b8 ] | % 28
        a8 ( [ gis8 ) ] a8 [ c8 ] e8 [ a8 ] }
    \alternative { {
            | % 29
            f8 ( [ e8 ) ] f8 [ d8 ] e8 [ f8 ] }
        } | \barNumberCheck #30
    g8 ( [ e8 ) ] cis8 [ a8 ] b8 [ cis8 ] | % 31
    <a d>2. \bar "|."
    }

PartPOneVoiceThree =  \relative d' {
    \repeat volta 2 {
        \repeat volta 2 {
            \clef "treble_8" \key d \minor \time 3/4 \partial 4. s4.
            \repeat volta 2 {
                s4*9 \break s2. | % 5
                d4 a2 | % 6
                cis4 a2 }
            \alternative { {
                    s2. }
                } s2. \break s2. }
        \alternative { {
                s2. }
            } s1. \break \repeat volta 2 {
            s8*5 \[ s8 | % 14
            s8 \] \[ s8*11 s4. \] \[ s4. \break s2. s1. \] |
            \barNumberCheck #20
            d4 a2 | % 21
            e'4 a,2 \break | % 22
            f'4 a,2 s2. | % 24
            d4 a2 | % 25
            e'4 a,2 }
        \alternative { {
                s2. }
            } \break s1. }
    \alternative { {
            s2. }
        } s1. \bar "|."
    }

PartPOneVoiceTwo =  \relative d, {
    \repeat volta 2 {
        \repeat volta 2 {
            \clef "treble_8" \key d \minor \time 3/4 \partial 4. s4.
            \repeat volta 2 {
                | % 1
                d2. | % 2
                a'2. | % 3
                d2. \break | % 4
                c2. | % 5
                d,2. | % 6
                a'2. }
            \alternative { {
                    | % 7
                    d2. }
                } | % 8
            a2. \break | % 9
            d,2. }
        \alternative { {
                | \barNumberCheck #10
                d'2. }
            } | % 11
        e2. | % 12
        a,2. \break \repeat volta 2 {
            s8*5 | % 13
            \[ d,2. | % 14
            \[ g2. \] | % 15
            c2. | % 16
            \[ f,2. \] \break | % 17
            bes2. | % 18
            a2. \] | % 19
            d,2. | \barNumberCheck #20
            d2 | % 21
            a'2. \break | % 22
            d2. | % 23
            c2. | % 24
            d,2. | % 25
            a'2. }
        \alternative { {
                | % 26
                d2. }
            } \break | % 27
        e2. | % 28
        a,2. }
    \alternative { {
            | % 29
            d2. }
        } | \barNumberCheck #30
    a2. | % 31
    d,2. \bar "|."
    }


% The score definition
\score {
    <<
        \new Staff <<
            \context Staff << 
                \context Voice = "PartPOneVoiceOne" { \voiceOne \PartPOneVoiceOne }
                \context Voice = "PartPOneVoiceThree" { \voiceTwo \PartPOneVoiceThree }
                \context Voice = "PartPOneVoiceTwo" { \voiceThree \PartPOneVoiceTwo }
                >>
            >>
        
        >>
    \layout {}
    % To create MIDI output, uncomment the following line:
    %  \midi {}
    }



\version "2.18.2"
% automatically converted by musicxml2ly from D minor suite _Ocean_ Bouree asv.xml

\header {
    encodingsoftware = "Finale 2014 for Mac"
    encodingdate = "2016-10-27"
    composer = "J.R. Barrett-Drew"
    title = Bouree
    }

#(set-global-staff-size 21.681)
\paper {
    paper-width = 20.99\cm
    paper-height = 28.99\cm
    top-margin = 1.28\cm
    bottom-margin = 1.28\cm
    left-margin = 1.28\cm
    right-margin = 1.28\cm
    between-system-space = 2.21\cm
    page-top-space = 0.63\cm
    }
\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative a' {
    \repeat volta 2 {
        \repeat volta 2 {
            \repeat volta 2 {
                \repeat volta 2 {
                    \clef "treble_8" \key d \minor \time 4/4 \partial 4
                    a8 [ g8 ] | % 1
                    f4 e8 [ d8 ] e4 d8 [ cis8 ] | % 2
                    d4 a4 a4 g8 [ a8 ] | % 3
                    c8 [ b8 c8 d8 ] e8 [ d8 e8 f8 ] | % 4
                    d4 a4 a4 a'8 [ g8 ] \break | % 5
                    f4 e8 [ d8 ] e4 d8 [ cis8 ] | % 6
                    d4 a4 a4 g8 [ a8 ] | % 7
                    c8 [ b8 c8 d8 ] e8 [ d8 c8 b8 ] | % 8
                    a8 [ e8 g8 e8 ] a4 }
                s4 \break | % 9
                e'8 [ d8 ] s2. | \barNumberCheck #10
                c8 [ b8 a8 b8 ] c8 [ d8 e8 f8 ] | % 11
                e8 [ d8 c8 d8 ] e8 [ f8 g8 e8 ] | % 12
                f8 [ e8 d8 c8 ] bes8 [ d8 bes8 a8 ] | % 13
                gis8 [ a8 bes8 gis8 ] e4 e'8 [ d8 ] \break | % 14
                c8 [ b8 a8 b8 ] c8 [ d8 e8 f8 ] | % 15
                e8 [ d8 c8 d8 ] e8 [ f8 g8 e8 ] | % 16
                f8 [ e8 d8 c8 ] bes8 [ d8 bes8 a8 ] | % 17
                gis8 [ a8 bes8 gis8 ] a4 a'8 [ g8 ] | % 18
                f4 e8 [ d8 ] e4 d8 [ cis8 ] \break | % 19
                d4 a4 a4 g8 [ a8 ] | \barNumberCheck #20
                c8 [ b8 c8 d8 ] e8 [ d8 e8 f8 ] | % 21
                d4 a4 a4 a'8 [ g8 ] | % 22
                f4 e8 [ d8 ] e4 d8 [ cis8 ] \break | % 23
                d4 a4 a4 g8 [ a8 ] }
            \alternative { {
                    | % 24
                    c8 [ b8 c8 d8 ] e8 [ d8 c8 b8 ] }
                } | % 25
            a8 [ e8 g8 e8 ] a4 }
        s4 }
    \alternative { {
            | % 26
            c8 [ b8 c8 d8 ] e8 [ d8 e8 f8 ] }
        } | % 27
    d8 [ a8 c8 a8 ] d2 \bar "|."
    }

PartPOneVoiceTwo =  \relative c {
    \repeat volta 2 {
        \repeat volta 2 {
            \repeat volta 2 {
                \repeat volta 2 {
                    \clef "treble_8" \key d \minor \time 4/4 \partial 4
                    c4 \rest | % 1
                    d,2 a'2 | % 2
                    d2. c4 \rest | % 3
                    a2 c2 | % 4
                    d2 ~ d4 c4 \rest \break | % 5
                    d,2 a'2 | % 6
                    d2. c4 \rest | % 7
                    a2 c2 | % 8
                    a4 e4 <a e'>4 }
                s4 \break s1 | \barNumberCheck #10
                a2 ~ a2 | % 11
                c2 ~ c2 | % 12
                d2 ~ d2 | % 13
                e,2 ~ e2 \break | % 14
                a2 ~ a2 | % 15
                c2 ~ c2 | % 16
                d2 ~ d2 | % 17
                e,2 <a e'>2 | % 18
                d,2 a'2 \break | % 19
                d2. c4 \rest | \barNumberCheck #20
                a2 c2 | % 21
                d2 ~ d4 c4 \rest | % 22
                d,2 a'2 \break | % 23
                d2. c4 \rest }
            \alternative { {
                    | % 24
                    a2 c2 }
                } | % 25
            a4 e4 <a e'>4 }
        s4 }
    \alternative { {
            | % 26
            a2 c2 }
        } | % 27
    d,4 a'4 d,2 \bar "|."
    }


% The score definition
\score {
    <<
        \new Staff <<
            \context Staff << 
                \context Voice = "PartPOneVoiceOne" { \voiceOne \PartPOneVoiceOne }
                \context Voice = "PartPOneVoiceTwo" { \voiceTwo \PartPOneVoiceTwo }
                >>
            >>
        
        >>
    \layout {}
    % To create MIDI output, uncomment the following line:
    %  \midi {}
    }


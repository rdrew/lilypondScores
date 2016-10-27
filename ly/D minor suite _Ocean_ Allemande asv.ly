
\version "2.18.2"
% automatically converted by musicxml2ly from D minor suite _Ocean_ Allemande asv.xml

\header {
    encodingsoftware = "Finale 2014 for Mac"
    encodingdate = "2016-10-27"
    composer = "J.R. Barrett-Drew"
    title = Allemande
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
PartPOneVoiceOne =  \relative a' {
    \repeat volta 2 {
        \clef "treble_8" \key d \minor \time 4/4 \partial 4. a8 g8 [ a8
        ] \repeat volta 2 {
            | % 1
            f4 d4 d8 [ f8 e8 d8 ] | % 2
            cis4 a4 a4 cis4 | % 3
            d4 d8 [ e8 ] f4 f8 [ g8 ] \break | % 4
            a4 e4 ~ e8 [ a8 g8 a8 ] | % 5
            f4 d4 d8 [ f8 e8 d8 ] | % 6
            cis4 cis8 [ bes8 ] cis8 [ a8 bes8 cis8 ] \break }
        \alternative { {
                | % 7
                d8 [ f8 e8 d8 ] cis8 [ a8 b8 cis8 ] }
            } | % 8
        d2 ~ d8 a'8 g8 [ a8 ] }
    \alternative { {
            | % 9
            d,8 [ f8 e8 d8 ] cis8 [ a8 b8 gis8 ] }
        } \break | \barNumberCheck #10
    a2 ~ a8 e'8 d8 [ e8 ] \repeat volta 2 {
        | % 11
        cis4 a4 a8 [ a'8 g8 a8 ] | % 12
        f4 d4 d8 [ d8 c8 d8 ] \break | % 13
        b4 g4 g8 [ g'8 f8 g8 ] | % 14
        e4 c4 c8 [ c8 bes8 c8 ] | % 15
        a4 f'4 f4 a,4 | % 16
        d4 f4 f4 bes,4 \break | % 17
        a'8 \rest cis,8 [ e8 cis8 ] e4 a,4 | % 18
        a'8 \rest d,8 [ f8 e8 ] f8 [ d8 a8 f8 ] | % 19
        a'8 \rest e8 [ g8 f8 ] g8 [ e8 cis8 a8 ] \break |
        \barNumberCheck #20
        a'8 \rest f8 [ a8 g8 ] a8 [ f8 d8 a8 ] | % 21
        a'8 \rest bes,8 [ d8 g8 ] a8 \rest a,8 [ c8 e8 ] }
    \alternative { {
            | % 22
            d8 [ a8 f8 a8 ] a'8 \rest e8 [ d8 e8 ] }
        {
            | % 23
            d8 [ a8 f8 a8 ~ ] a2 ^\fermata }
        } }

PartPOneVoiceTwo =  \relative c {
    \repeat volta 2 {
        \clef "treble_8" \key d \minor \time 4/4 \partial 4. c8 \rest c4
        \rest \repeat volta 2 {
            | % 1
            d,2 d'2 | % 2
            a2 s2 | % 3
            d4 d,4 d'4 d,4 \break | % 4
            a'2 ~ a2 | % 5
            d,2 d2 | % 6
            a'2 ~ a2 \break }
        \alternative { {
                | % 7
                d2 a2 }
            } | % 8
        d,4 a''4 d,2 }
    \alternative { {
            | % 9
            d2 a4 e'4 }
        } \break | \barNumberCheck #10
    a,4 e'4 a,2 \repeat volta 2 {
        | % 11
        a2 ~ a2 | % 12
        d,2 ~ d2 \break | % 13
        g2 ~ g2 | % 14
        c2 ~ c2 | % 15
        f2 ~ f2 | % 16
        bes,2 ~ bes2 \break | % 17
        a2 ~ a2 | % 18
        d,2 ~ d2 | % 19
        a'2 ~ a2 \break | \barNumberCheck #20
        d,2 ~ d2 | % 21
        g2 a2 }
    \alternative { {
            | % 22
            d,2 ~ d2 }
        {
            | % 23
            d2 d'2 }
        } }


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


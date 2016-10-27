
\version "2.18.2"
% automatically converted by musicxml2ly from D minor suite _Ocean_ Sarabande asv.xml

\header {
    encodingsoftware = "Finale 2014 for Mac"
    encodingdate = "2016-10-27"
    composer = "J.R.Barrett-Drew"
    title = Sarabande
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
PartPOneVoiceOne =  \relative d' {
    \repeat volta 2 {
        \repeat volta 2 {
            \repeat volta 2 {
                \clef "treble_8" \key d \minor \time 3/4 d4 d4. e8 | % 2
                e8 [ d8 ] e4. e8 | % 3
                f4 f4. g8 | % 4
                a8 [ g8 ] a4. g8 \break | % 5
                f8 [ d8 ] d8 [ f8 ] a8 [ f8 ] | % 6
                c'8 [ a8 ] a8 [ e8 ] bes'8 [ gis8 ] | % 7
                a4. a8 e4 | % 8
                cis4 a2 }
            \break | % 9
            c4 c8 [ b8 ] c8 [ a8 ] | \barNumberCheck #10
            b4 b8 [ a8 ] b8 [ g8 ] | % 11
            d'4 d8 [ e8 ] f8 [ g8 ] | % 12
            e8 [ d8 ] c4 g'4 \break | % 13
            a8 [ g8 ] f8 [ e8 ] d8 [ a'8 ] | % 14
            g8 [ f8 ] e8 [ d8 ] c8 [ g'8 ] | % 15
            f8 [ e8 ] d8 [ c8 ] b8 \startTrillSpan [ a16 \stopTrillSpan
            b16 ] | % 16
            c8 [ g'16 f16 ] e8 [ d8 ] <c e>4 ^\fermata \break | % 17
            c4 c8 [ b8 ] c8 [ a8 ] | % 18
            b8 [ e8 ] b8 [ a8 ] b8 [ g8 ] | % 19
            d'8 [ g,8 ] d'8 [ e8 ] f8 [ d8 ] | \barNumberCheck #20
            e8 [ d8 ] c8 [ e8 ] g8 [ e8 ] \break }
        \alternative { {
                | % 21
                a8 [ g8 ] a8 [ f8 ] e8 [ d8 ] }
            } | % 22
        g8 [ f8 ] g8 [ e8 ] d8 [ c8 ] | % 23
        f8 [ e8 ] f8 [ d8 ] a8 [ c8 ] | % 24
        b8 [ a8 ] b8 [ c8 ] d8 [ b8 ] \break | % 25
        a2. }
    \alternative { {
            | % 26
            a'8 [ g8 ] g8 [ f8 ] f8 [ e8 ] }
        } | % 27
    a,8 [ c8 ] d8 [ e8 ] f8 [ d8 ] | % 28
    cis8 [ a8 ] b8 [ cis8 ] d8 [ e8 ] | % 29
    d2. \bar "|."
    }

PartPOneVoiceThree =  \relative a {
    \repeat volta 2 {
        \repeat volta 2 {
            \repeat volta 2 {
                \repeat volta 2 {
                    \clef "treble_8" \key d \minor \time 3/4 a4 <f a>2 | % 2
                    a2 s4 | % 3
                    <a d>4 <d, a' d>2 | % 4
                    <a' c e>2. \break | % 5
                    d4 s4 <d f>4 | % 6
                    a'4 s2 | % 7
                    <c, e>2. s2. }
                \break | % 9
                a4 a2 | \barNumberCheck #10
                g4 g4 s4 | % 11
                g4 <d g>2 | % 12
                c'4 c4 b4 \break | % 13
                c2. | % 14
                c2 s4 | % 15
                b2 s1 \break | % 17
                a4 a2 | % 18
                g2 s4 | % 19
                d2. | \barNumberCheck #20
                <g c>2 <g b>4 \break }
            \alternative { {
                    | % 21
                    c2. }
                } | % 22
            c2. | % 23
            b4 s2 | % 24
            gis4 s2 \break | % 25
            e4 e4 }
        s4 }
    \alternative { {
            | % 26
            c'4 c4 b4 }
        } | % 27
    a8 [ c8 ] bes2 s2. | % 29
    a4 a4 \bar "|."
    }

PartPOneVoiceTwo =  \relative d {
    \repeat volta 2 {
        \repeat volta 2 {
            \repeat volta 2 {
                \clef "treble_8" \key d \minor \time 3/4 d4 <d, a'>2 | % 2
                cis'2. | % 3
                d4 <d, a'>2 | % 4
                a'2. \break | % 5
                <d a'>2 d4 | % 6
                a2 e'4 | % 7
                a,2. ~ | % 8
                a2. }
            \break | % 9
            a4 a2 | \barNumberCheck #10
            e'4 e2 | % 11
            b4 b2 | % 12
            c2 e4 \break | % 13
            f2. | % 14
            e2. | % 15
            d2 g,4 | % 16
            c2. \break | % 17
            a4 a2 | % 18
            e'2. | % 19
            b2. | \barNumberCheck #20
            c2 e4 \break }
        \alternative { {
                | % 21
                f2. }
            } | % 22
        e2. | % 23
        d2. | % 24
        e2. \break | % 25
        a,2 a4 ^\fermata }
    \alternative { {
            | % 26
            f'4 e4 d4 }
        } | % 27
    f4 bes,2 | % 28
    a2 s4 | % 29
    d,2 d'4 ^\fermata \bar "|."
    }

PartPOneVoiceFour =  \relative cis' {
    \repeat volta 2 {
        \repeat volta 2 {
            \repeat volta 2 {
                \repeat volta 2 {
                    \clef "treble_8" \key d \minor \time 3/4 s1 cis2 s1.
                    \break s2. | % 6
                    <c e>2 b4 s1. }
                \break s4*9 | % 12
                g2 g4 \break s1*3 \break s1*3 \break }
            \alternative { {
                    s2. }
                } s4*9 \break s2 }
        s4 }
    \alternative { {
            s2. }
        } s1. | % 29
    <a, f'>2 \bar "|."
    }


% The score definition
\score {
    <<
        \new Staff <<
            \context Staff << 
                \context Voice = "PartPOneVoiceOne" { \voiceOne \PartPOneVoiceOne }
                \context Voice = "PartPOneVoiceThree" { \voiceTwo \PartPOneVoiceThree }
                \context Voice = "PartPOneVoiceTwo" { \voiceThree \PartPOneVoiceTwo }
                \context Voice = "PartPOneVoiceFour" { \voiceFour \PartPOneVoiceFour }
                >>
            >>
        
        >>
    \layout {}
    % To create MIDI output, uncomment the following line:
    %  \midi {}
    }


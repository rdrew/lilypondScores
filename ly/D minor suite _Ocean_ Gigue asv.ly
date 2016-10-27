
\version "2.18.2"
% automatically converted by musicxml2ly from D minor suite _Ocean_ Gigue asv.xml

\header {
    encodingsoftware = "Finale 2014 for Mac"
    encodingdate = "2016-10-27"
    composer = "J.R. Barrett- Drew"
    title = Gigue
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
PartPOneVoiceOne =  \relative d' {
    \repeat volta 2 {
        \clef "treble_8" \key d \minor \time 6/8 \partial 8 d8 | % 1
        d8 [ a8 d8 ] c8 [ a8 e'8 ] | % 2
        f8 [ e8 d8 ] c8 [ a8 c8 ] | % 3
        d8 [ f16 e16 d8 ] c8 [ a8 e'8 ] | % 4
        d8 [ a16 d16 e8 ] f8 [ e8 d8 ] | % 5
        d8 [ a8 d8 ] c8 [ a8 e'8 ] \break | % 6
        f8 [ e8 d8 ] c8 [ a8 c8 ] | % 7
        d8 [ f16 e16 d8 ] c8 [ a8 c8 ] | % 8
        b8 [ g8 b8 ] a4 }
    s8 | % 9
    a8 s8*5 | \barNumberCheck #10
    a8 [ e8 a8 ] b8 [ g8 b8 ] | % 11
    c8 [ b8 c8 ] d8 [ g,8 f'8 ] \break | % 12
    e8 [ d8 c8 ] b8 [ c8 d8 ] | % 13
    gis,8 [ a8 b8 ] a4 a8 | % 14
    a8 [ e8 a8 ] b8 [ g8 b8 ] | % 15
    c8 [ b8 c8 ] d8 [ g,8 f'8 ] | % 16
    e8 [ d8 e8 ] f8 [ e8 d8 ] | % 17
    bes8 [ d8 gis8 ] a8 [ e8 c8 ] \break | % 18
    a8 [ c8 e8 ] f8 [ e8 d8 ] | % 19
    b8 [ c8 d8 ] e8 [ d8 c8 ] | \barNumberCheck #20
    a8 [ b8 c8 ] d8 [ c8 b8 ] | % 21
    gis8 [ a8 b8 ] a4 a8 | % 22
    a8 [ e8 a8 ] b8 [ a8 b8 ] | % 23
    c8 [ a8 c8 ] d8 [ c8 d8 ] \break | % 24
    e8 [ d8 e8 ] f8 [ d8 f8 ] | % 25
    gis8 [ fis8 gis8 ] a8 [ e8 a8 ] | % 26
    a,8 [ e8 a8 ] b8 [ a8 b8 ] | % 27
    c8 [ a8 c8 ] d8 [ c8 d8 ] | % 28
    e8 [ d8 e8 ] f8 [ d8 f8 ] | % 29
    gis8 [ fis8 gis8 ] a8 [ e8 a8 ] \break | \barNumberCheck #30
    a8 [ e8 a8 ] b8 [ g8 b8 ] | % 31
    c8 [ fis,8 c'8 ] cis8 [ e,8 cis'8 ] | % 32
    d8 [ a8 d8 ] c8 [ a8 e'8 ] | % 33
    f8 [ e8 d8 ] c8 [ a8 c8 ] | % 34
    d8 [ f16 e16 d8 ] c8 [ a8 e'8 ] | % 35
    d8 [ a16 d16 e8 ] f8 [ e8 d8 ] \break | % 36
    d8 [ a8 d8 ] c8 [ a8 e'8 ] | % 37
    f8 [ e8 d8 ] c8 [ a8 c8 ] | % 38
    d8 [ f16 e16 d8 ] c8 [ a8 c8 ] | % 39
    d8 [ a8 f8 ] e8 [ c8 c16 ( d16 ) ~ ] | \barNumberCheck #40
    d2. \bar "|."
    }

PartPOneVoiceTwo =  \relative c {
    \repeat volta 2 {
        \clef "treble_8" \key d \minor \time 6/8 \partial 8 c8 \rest | % 1
        d4. a4. | % 2
        d,4. a'4. | % 3
        bes4. a4. | % 4
        d4. d,4. | % 5
        d'4. a4. \break | % 6
        d,4. a'4. | % 7
        bes4. a4. | % 8
        f4. <a e'>4 }
    s8 | % 9
    c8 \rest s8*5 | \barNumberCheck #10
    <a e'>4. e4. | % 11
    a4. bes4. \break | % 12
    c4. d4. | % 13
    e,4. <a e'>4. | % 14
    <a e'>4. e4. | % 15
    a4. bes4. | % 16
    c4. d4. | % 17
    e4. c4. \break | % 18
    a4. d4. | % 19
    g,4. c4. | \barNumberCheck #20
    a4. d4. | % 21
    e,4. <a e'>4. | % 22
    a4. a4. | % 23
    a4. a4. \break | % 24
    a4. a4. | % 25
    a4. a4. | % 26
    a4. a4. | % 27
    a4. a4. | % 28
    a4. a4. | % 29
    a4. a4. \break | \barNumberCheck #30
    a4. a4. | % 31
    a4. a4. | % 32
    d,4. a'4. | % 33
    d,4. a'4. | % 34
    bes4. a4. | % 35
    d4. a4. \break | % 36
    d4. a4. | % 37
    d,4. a'4. | % 38
    bes4. a4. | % 39
    d4. a4. | \barNumberCheck #40
    d,8 [ a'8 d8 ] d,4. _\fermata \bar "|."
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


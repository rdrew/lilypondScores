\version "2.7.40"
\header {
	crossRefNumber = "1"
	footnotes = ""
	tagline = "Lily was here 2.18.2 -- automatically converted from ABC"
	title = "Garech's Wedding"
}
voicedefault =  {
\set Score.defaultBarType = ""

\time 9/8 \key e \minor   b'8  \repeat volta 2 {   e'4. ^"~"    e''4    b'8    
g'4    b'8  \bar "|"   a'4    a'8    a'4    g'8    a'4    b'8  \bar "|"   e'4. 
^"~"    g'4    b'8    e''4    fis''8  } \alternative{{   g''8    fis''8    e''8 
   fis''8    e''8    d''8    b'4    e''8  } {   g''8    fis''8    e''8    
fis''8    e''8    d''8    e''4    fis''8  \bar "||"     g''4    b'8    b'8    
a'8    b'8    g''4    e''8  \bar "|"   fis''4    a'8    a'8    g'8    a'8    
fis''4    a''8  \bar "|"   g''4    b'8    b'8    a'8    b'8    g''4    e''8  
\bar "|"   fis''8    d''8    d''8    a''8    d''8    d''8    fis''8    g''8    
a''8  \bar "|"     g''4    b'8    b'8    a'8    b'8    g''4    e''8  \bar "|"   
fis''4    a'8    a'8    g'8    a'8    fis''4    a''8  \bar "|"   g''8    fis''8 
   e''8    fis''8    e''8    d''8    e''8    fis''8    g''8  \bar "|"   b'8    
c''8    b'8    a'8    g'8    fis'8    e'4  \bar "||"   }}
}

\score{
    <<

	\context Staff="default"
	{
	    \voicedefault 
	}

    >>
	\layout {
	}
	\midi {}
}

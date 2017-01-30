\version "2.7.40"
\header {
	crossRefNumber = "1"
	footnotes = ""
	tagline = "Lily was here 2.18.2 -- automatically converted from ABC"
	title = "The Humours Of Tullycrine"
}
voicedefault =  {
\set Score.defaultBarType = ""

\time 4/4 \key a \dorian   \repeat volta 2 {   g'8  \bar "|"   e'8    a'8    
a'8    b'8    c''8    b'8    c''8    d''8  \bar "|"   e''8    a''8    a''8    
g''8    e''4    d''8    b'8  \bar "|"   c''4    a'8    c''8    b'8    a'8    
g'8    a'8  \bar "|"   b'8    d''8    d''8    e''8    d''8    b'8    a'8    g'8 
 \bar "|"     e'8    a'8    a'8    b'8    c''8    b'8    c''8    d''8  \bar "|" 
  e''8    a''8    a''8    g''8    e''4    d''8    b'8  \bar "|"   c''4    a'8   
 c''8    b'8    a'8    g'8    a'8  } \alternative{{   b'8    a'8    a'8    g'8  
  a'4.  } {   b'8    a'8    a'8    g'8    a'4    b'8    d''8  \bar "||"     
\repeat volta 2 {   e''8    a''8    a''8    b''8    a''8    g''8    e''8    
d''8  \bar "|"   e''8    a''8    a''8    b''8    a''8    g''8    e''8    d''8  
\bar "|"   e''8    g''8    g''8    a''8    g''8    e''8    d''4  \bar "|"   
d''8    g''8    g''8    a''8    g''8    e''8    d''8    b'8  \bar "|"     a'4.  
  b'8    b'4.    d''8  \bar "|"   e''8    a''8    a''8    g''8    e''4    d''8  
  b'8  \bar "|"   c''4    a'8    c''8    b'8    a'8    g'8    a'8  
} \alternative{{   b'8    a'8    a'8    g'8    a'4    b'8    d''8  } {   b'8    
a'8    a'8    g'8    a'4.  \bar "||"   }}
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

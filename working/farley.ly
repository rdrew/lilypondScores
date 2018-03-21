\version "2.7.40"
\header {
	footnotes = ""
	tagline = "Lily was here 2.18.2 -- automatically converted from ABC"
	title = "The Farley Bridge"
}
voicedefault =  {
\set Score.defaultBarType = ""

\time 4/4 \key d \major   \repeat volta 2 {   a'8    d''8    d''8    fis''8    
e''8    d''8    e''8    fis''8  \bar "|"   g''8    fis''8    fis''4    d''8    
a'8    a'8    g'8  \bar "|"   fis'8    d''8    d''8    a'8    fis''8    fis''8  
  a'8    e''8   ~    \bar "|"   e''8    d''8    d''8    fis''8    g''8    b'8   
 b'8    a'8  \bar "|"     fis'8    d''8    d''8    a'8    d''8    e''8    e''8  
  fis''8  \bar "|"   g''8    fis''8    fis''4    d''8    g'8    g'8    a'8  
\bar "|"   e''8    d''8    b'8    e''8   ~    e''8    fis''8    e''8    d''8  
} \alternative{{   b'8    a'8    a'2.  } {   b'8    a'8    a'2    e''8    
fis''8    \bar "|"     \repeat volta 2 {   g''8    fis''8    fis''8    d''8    
d''8    d''8    b'8    g''8   ~    \bar "|"   g''8    fis''8    fis''8    d''8  
  d''8    d''8    a'8    g'8  \bar "|"   fis'8    d''8    d''8    a'8    fis''8 
   fis''8    a'8    e''8  \bar "|"   e''8    d''8    d''8    e''8   ~    e''8   
 fis''8    fis''8    g''8  \bar "|"     g''8    fis''8    fis''8    d''8    
d''8    d''8    b'8    g''8   ~    \bar "|"   g''8    fis''8    fis''8    d''8  
  d''8    d''8    b'8    a'8  \bar "|"   e''8    d''8    b'8    e''8   ~    
e''8    fis''8    e''8    d''8  \bar "|"   b'8    a'8    a'2    e''8    fis''8  
} }    
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

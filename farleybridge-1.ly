\version "2.7.40"
\header {
	footnotes = ""
	tagline = "Lily was here 2.18.2 -- automatically converted from ABC"
}
voicedefault =  {
\set Score.defaultBarType = ""

    e''8    c''8      f''8            }                 f''8 
   b'''1    a'''1      b''8    a''8      f''8      c''8      f''8    
  a'''1    b'''1      b''8    a''8      g''8      b'''1    b'''4    f''8      
g''8      g''8      e''''1    b'''1    g''8      e''''1    f''8      g''8      
a''''1    g''8      f''8        b''8    a''8      }             c''8      
\grace {            }           }         }   
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

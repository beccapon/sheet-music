\version "2.18.2"


\include "bagpipe.ly"
\include "..\LilyFiles\format.ly"
\include "..\LilyFiles\neededShit.ly"
\include "..\LilyFiles\bagpipe_extra.ly"
\include "../LilyFiles/format.ly"
\include "../LilyFiles/neededShit.ly"
\include "../LilyFiles/bagpipe_extra.ly"

#(set-global-staff-size 20)
#(set-default-paper-size "a4" 'portrait)

\score {%open Score

  {%opern music


    \override Score.BarNumber.break-visibility = #end-of-line-invisible
    \new StaffGroup
    \bagpipeKey %fucks off the sharps and shit

  %music goes here
 \time 4/4
 \bar ".|"
\partial 4 \grg f8. e16 |
\grg c8. e16 \grg c8 b \dblc c4 \grg a8 c |
\grg e8. f16 \grg e8 c \dble e4 \grg c8e |
\grg f8. e16 \grg f8 A f4 \grg e8 c |
\grg f8. e16 \grg c8 a \grip b4 \grg f8. e16 | \break
\grg c8. e16 \grg c8 \gre b \dblc c4 \grg a8 c |
\grg e8. f16 \grg e8 c \dblA A4 a8. b16 |
\grip c4 A8. e16 c4 \grg b8. c16 |
\grG a2 \grG a4 | \break \bar "||"

\partial 4 \grg a8 c|
\grg e 4 \grg a8 c \dblA A4 a8 c |
\grg e8. f16 \grg e8 c \dble e4 \grg a8 c |
\dblA A4 a8 c\dble e4 \grg c8 e |
\grg f8. e16 \grg c8 a \grip b4 \grg f8. e16 | \break
\grg c8. e16 \grg c8 b \dblc c4 \grg a8 c |
\grg e8. f16 \grg e8 c \dblA A4 \grg a8. b16 |
\grip c4 A8. e16 c4 \grg b8. c16 |
\grG a2 \grG a2 | \break \bar "|."


 
 
 
 
 
 
 
 
 
 
  
  
 
   
   
   
   
   
   
  }%close music


  \header {%open header
    meter = "March"
    title = "Flett from Flotta"
    arranger = "Traditional"
  }%close header

}%close score
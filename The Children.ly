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
\partial 8 f8 |
a4 \taor a8 A f4 \grg e8 d |
\grg b16 d8. \grg G8 b \grG a4~ a8 b |
\grg a4 \grG a8 A \grf g8. f16 \grg e8 d |
\grg f16 A8. \grf g8 f \grg e4~e8 f |\break
a4 \taor a8 A f4 \grg e8 d |
\grg b16 d8. \grg G8 b \grG a4~a8f |
g8. f16 \grg e8 d \grg c8 a \grg c16 e8. |
\grg f16 A8. \grf g8 e \thrwd d4~d8 | \break \bar"||"

\partial 8 a8
\grg f16 A8. f8 a \grg a8. g16 e8 a |
\grg b16 d8. \grg G8 b \grG a4~a8 d |
\grg b16 \gre G8. \grg b16 d8. \dblg g8. f16 \grg e8 d |
\grg f16 A8. \grf g8 f \grg e4~e8 a |\break
\grg f16 A8. f8 a \grg a8. g16 \grg e8 a |
\grg b16 d8. \grg G8 b \grG a4~a8 f |
\dblg g8. f16 \grg e8 d \grg c a \grg c16 e8.|
\grg f16 A8. \grf g8 e \thrwd d4~d8 \break \bar "|."




 
 
 
 
 
 
 
 
 
 
  
  
 
   
   
   
   
   
   
  }%close music


  \header {%open header
    meter = "March"
    title = "The Children"
    arranger = "Traditional"
  }%close header

}%close score
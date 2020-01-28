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
\partial 8 a8 |
\grg f4 \grg f8 A \thrwd d4 \grg a8 d |
\grg d16 \gre a8. \grg c d16 \dble e4. a8 |
\grg e4 \gra e8. f16 \dblg g8 e \grg c a |
\grg a16 d8. \slurd d8. e16 \grg f4 a4 |\break
\grg f4 \grg f8 A \thrwd d4 \grg a8 d |
\grg d16 \gre a8. \grg c d16 \dble e4. a8 |
\dblA A8. g16 \grA f8 A \grf g e \grg c a |
\grg a8. g16 \grA f8. e16 \thrwd d4. | \break \bar "||"

\partial 8 f8 |
\grG a4 \grg b8 a \thrwd d4 \gre a8 d |
\grg d16 a8. \grg c d16 \dble e4. a8 | 
\grG a4 \grg b8 a \grg e4 a8 e|
\grg e8. d16 \slurd d8. e16 \grg f4 a4 |\break
\grG a4 \grg b8 a \grg f4 \thrwd d8. e16 |
\grg f8 d \grg f 16 A 8. \grg g4 \grA f8. g16 |
\dblA A8. g16 \grA f8 A \grf g e \grg c a |
\grg a8. g16 \grA f8. e16 \thrwd d4. | \break \bar "|."

 
 
 
 
 
 
 
 
 
 
  
  
 
   
   
   
   
   
   
  }%close music


  \header {%open header
    meter = "March"
    title = "Mrs. Flora Duncan"
    arranger = "Traditional"
  }%close header

}%close score
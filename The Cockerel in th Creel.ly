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
 \time 2/2
 \bar ".|"
 \grg a8 e \gra e d \grg d e \gra e d |
 \grg b \grd G\gre G \grd b \grg e G \grg d b |
 \grg a8 e \gra e d \grg d e \gra e d |
 \grg b \grd a \gre a \grd b e \grg e \gra e g |\break
 \grA e A \grg A g A e \gra e f |
 g e \grg f d \grg e f g e |
 \thrwd d4 \grg b8 d \grg e a \gbirl a4 |
 \grg b8 a \grg b d \grg e4. f8 | \bar "|." \break
 
 
 \dblg g4 \grA g8 f \grg e f g e |
 \grg f A e f g f \grg e d |
 \grg a A \birl a A \grg  A a A f |
 g e \grg f d \grg e4 \gra e8 f |\break
  \dblg g4 \grA g8 f \grg e f g e |
 \grg f A e f \grg f e d b |
 \grg d b \gra b d \grg e a \gbirl a4 |
 \grg b8 a grg b d \grg e2 | \bar "|."
 
 
 
 
  
  
 
   
   
   
   
   
   
  }%close music


  \header {%open header
    meter = "Reel"
    title = "The Cockerel in the Creel"
    arranger = "Donald Macleod"
  }%close header

}%close score

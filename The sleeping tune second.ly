\version "2.18.2"


\include "bagpipe.ly"
\include "..\Lily\format.ly"
\include "..\LilyFiles\neededShit.ly"
\include "..\LilyFiles\bagpipe_extra.ly"
\include "../LilyFiles/format.ly"
\include "../LilyFiles/neededShit.ly"
\include "../LilyFiles/bagpipe_extra.ly"

#(set-global-staff-size 16)
#(set-default-paper-size "a4" 'portrait)

\score {%open Score

  {%opern music


    \override Score.BarNumber.break-visibility = #end-of-line-invisible
    \new StaffGroup
    \bagpipeKey %fucks off the sharps and shit
    
    \time 4/4
    
  \grg e16 f g8 \grA f8 d  \grg b4 \grg c16 b8.~ 
  
  b4~ b8 c \grA e16 d8.~ d4 
   \grg e16 f g8 \grA f8 d  \grg b4 \grg c16 b8.~ 
  
  b4~ b8 c \grA e16 d8.~ d4 

  \grg e16 f g8 \grA f8 d  \grg b4 \grg a16 c8.~ 
  
  c4 d \dblc e~ e8 \grg e16 f~
  f4 d \dblb d~ d
  f \dblb f8 e \grip f4~ f4 
  
  
  e8 f \grg f e \dblc d4 b 
    \dblf f4~ f8 b \grg b g \grA g f
   \grg f e \dblc c b \dblb b4 a 
   \dble e4~ e 8 a \grg a e \grg e d 
   \grg e f \grg d c \dblc b4 G
   \dbld d4~ d8 e \grg e d \grg d  c
    \grg d e \grg c 
   d \dble e4~ e4
   e8 f \grg e f g4~ g
  
  
    

  %music goes here
    
    
  }%close music


  \header {%open header
    meter = "Style (eg. Jig)"
    title = "Title"
    arranger = "Composer/arranger"
  }%close header

}%close score

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
  \time 6/8
  \bar ".|:"
   \grg a8 \grd c e \dble e c e | 
   \grg f8 e c \dble e c \grG a | 
   \grg a8 \grd c e \dble e d c |
   \grg d8 b \grG b \grg G4 \grd b8 | \break
   \grg a8 \grd c e \dble e c e | 
   \grg f8 e c \dble e c \grG a |  
   \grg b8 \grd b \gre b \grg c e \gra e |
   \grg f8 b \grG b \gbirl a4. | \bar ":|.:" \break
   

   \grg a8 f \gre f \grg a e \gra e |
   \grg a8 d \grG d \shaked d4 a8 |
  \grg b8 d \grG d \grg b e \gra e |
 \grg d8 b \grG b \grg G4 \grd b8 | \break
   \grg a8 f \gre f \grg a e \gra e |
   \grg a8 d \grG d \grg a8 c \grG c |
   \grg b8 \grd b \gre b \grg c e \gra e |
   \grg f8 b \grG b \gbirl a4. | \bar ":|.:" \break
   
   \grg a8 e \gra e \dble e c e |
   \grg a8  \grd a \gre a \dre e4 f8 |
    \grg a8 e \gra e \dble e c e |
   \grg f8 b \grG b \grg G4 \grd b8 | \break
    \grg a8 e \gra e \dble e c e |
   \grg a8  \grd a \gre a \dre e4 f8 |
   \grg b8 \grd b \gre b \grg c e \gra e |
   \grg f8 b \grG b \gbirl a4. | \bar ":|.:" \break
   
   \grg e8 A \grg A g A \grg A |
   d8 A \grg A f4 c8 |
   \tuplet 3/2 {\grg b c d } c8~ c \tuplet 3/2 {\grg c d e } | 
   \grg f8 b \grG b \grg G4 \grd b8 | \break
  \grg e8 A \grg A g A \grg A |
   d8 A \grg A f A \grg A |
   \grg b8 \grd b \gre b \grg c e \gra e |
    \grg f8 b \grG b \gbirl a4. | \bar ":|.:" \break
    
   
   
   
   
   
   
     
    
  }%close music


  \header {%open header
    meter = "Jig"
    title = "Nanna's 90th"
    arranger = "Owen Capon and Rebecca Capon"
  }%close header

}%close score

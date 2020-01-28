\version "2.18.2"


\include "bagpipe.ly"
\include "..\Lily\format.ly"
\include "..\LilyFiles\neededShit.ly"
\include "..\LilyFiles\bagpipe_extra.ly"
\include "../LilyFiles/format.ly"
\include "../LilyFiles/neededShit.ly"
\include "../LilyFiles/bagpipe_extra.ly"

#(set-global-staff-size 20)
#(set-default-paper-size "a4" 'portrait)

\score {%open Score

  {%open music


    \override Score.BarNumber.break-visibility = #end-of-line-invisible
    \new StaffGroup
    \bagpipeKey %fucks off the sharps and shit

 \time 4/4
 \bar ".|:" 
 \grg c16 e8. \gra e d16 \dbld d c8. \grG c4 |
 \grg c16 \grd a8. \dbld d c16 \grg a16 b8. \grG b4 |
  \grg c16 e8. \gra e d16 \dbld d c8. \grG c4 |
  \grg c16 \grd a8. \grg G \grd b16 \grg a 4 \wbirl a | \break
  
 \grg c16 e8. \gra e d16 \dbld d c8. \grG c4 |
 \grg c16 \grd a8. \dbld d c16 \grg a16 b8. \grG b4 |
 \grg c16 e8. \grg f e16 \grg c a8. \dble e4 |
 \grg c16 \grd a8. \grg G \grd b16 \grg a 4 \wbirl a | \break
 \bar ":|."
  
 \bar ".|:" 
\partial 8 b8 |
\birl a16 A8. \grg A g16 \grA g f8. \gre f4 |
\grg f16 d8. G f16 \grg f e8. \gra e b16 |
\birl a A8. \grg A g16 \hdble e d8. \dblc c4 |
\grg c16 \grd a8. \grg G \grd b16 \grg a 4 \wbirl a8. b16 | \break

\birl a16 A8. \grg A g16 \grA g f8. \gre f4 |
\grg f16 d8. G f16 \grg f e8. \gra e b16 |
\birl a A8. g \grA e16 d \grd c8. \dbld d4 |
\grg c16 \grd a8. \grg G \grd b16 \grg a 4 \wbirl a8. b16 |  \bar ":|."
 
  
  
  
  

   
  }%close music


  \header {%open header
    meter = "Strathspey"
    title = "Calum Campbell of Benbecula"
    arranger = "Fred Morrison"
  }%close header

}%close score
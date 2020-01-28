\version "2.18.2"


\include "bagpipe.ly"
\include "..\LilyFiles\format.ly"
\include "..\LilyFiles\neededShit.ly"
\include "..\LilyFiles\bagpipe_extra.ly"
\include "../LilyFiles/format.ly"
\include "../LilyFiles/neededShit.ly"
\include "../LilyFiles/bagpipe_extra.ly"

#(set-global-staff-size 16)
#(set-default-paper-size "a4" 'portrait)

\score {%open Score

  {%open music


    \override Score.BarNumber.break-visibility = #end-of-line-invisible
    \new StaffGroup
    \bagpipeKey %fucks off the sharps and shit

  %music goes here
  \time common
   \bar ".|"
  \partial 16 A16 |
  e8. f16 \dble e8. d16 \dbld d16 c8.  \grip c8. b16 |
  \grg a8. b16 \dblc c16 \gre a 8. \grg c16 e8. \gra e4 |
  \grg f8. g16 \dblf f8. e16 \grg f16 A8. \grA A8. f16 |
  \grg e8. f16 \dble e8. c16 \dblf f4 \dblA A8. f16 | \break
   \grg e8. f16 \dble e8. d16 \dbld d16 c8.  \grip c8. b16 |
  \grg a8. b16 \dblc c16 \gre a 8. \grg c16 e8. \gra e8. f16 |
  \dblA A8. e16 \grg \tuplet 3/4 { f g A } \hdble e8. A16 \thrwd d16 A8. |
  \hdblc c8. A16 \hdblb b16 A8. a4 \taor a8. | \bar "|."\break
  
   \bar ".|"
  \partial 16 \grg c16 |
  \dble e4 \gra e8. f16 c16 e8. \gra e8. c 16 | 
  \grg a8. b16 \dblc c16 \gre a 8. \grg c16 e8. \dblc c16 \gre a8. |
  \grg f4 \dblf f8. e16 \grg d16 f8. \gre f8. g16   \dblA A8. e16 \grg \tuplet 3/4 { f g A } \hdble e8. A16 \hdblc c16 A8. |\break 
  \tuplet 3/4 { f16 e c } \grg e8. f16 \grg c16 e8. \gra e8. c16 |
   \grg a8. b16 \dblc c16 \gre a 8. \grg c16 e8. \dblc c16 \gre a8. |
     \dblA A8. e16 \grg \tuplet 3/4 { f g A } \hdble e8. A16 \thrwd d16 A8. |
  \hdblc c8. A16 \hdblb b16 A8. a4 \taor a8. | \bar "|."\break
     
  
  }%close music


  \header {%open header
    meter = "Strathspay"
    title = "Susan MacLeod"
    arranger = "P.M Donald MacLeod"
  }%close header
  
}%close score

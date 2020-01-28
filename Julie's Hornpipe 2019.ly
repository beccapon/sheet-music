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

  {%open music


    \override Score.BarNumber.break-visibility = #end-of-line-invisible
    \new StaffGroup
    \bagpipeKey %fucks off the sharps and shit

 \time 2/4
 \bar ".|:" 
\partial f8 |
 \birl a8 \grc d \gre a \shaked d |
 \grg f8  A16.  f32  \thrwd d8 e16. f32 |
 \dblg g8 c16. e32 \dble e8  \tuplet 3/2 {b16 c d } |
 \dblc c8 \grg e16. c32 \grg a8 \grd a16 \gre a | \break
 
  \tuplet 3/2 {e8 f g} \grA d32 f16. \grg a d32 |
   \grg f8  A16.  f32  \thrwd d8 16. d32 |
   \slurb b8 g16 e \slurc c8 \grg b16 c |
 \slurd d8 \grg d16 c \slurd d8  | \break
   
 

   
  }%close music


  \header {%open header
    meter = "Hornpipe"
    title = "Julie's Hornpipe"
    arranger = "Donald Patrickr"
  }%close header

}%close score
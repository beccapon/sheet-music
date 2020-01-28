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
  \time 2/4
  \bar ".|:"
  \partial 8 e8
  \gbirl a4 \grip e8. f16 |
  \grA g16. A32 g16. e32 \thrwd d8 f |
  \grg e8 \birl a \grg e16. f32 g16. e32 |
  \grg d16. b32 \grg G16. a32 \dblb b8 e | \break
  
  \gbirl a4 \grip e8. f16 |
  \grA g16. A32 g16. e32 \thrwd d8 f |
  \grg e16. f32 g16. e32 |
  \grg d16. b32 \grg G16. a32 |
  \dblb b8 \gre a8 \birl a |  \bar ":|.:" \break
  
\repeat volta 2{
  \bar ".|:" 
\partial 8  \grg e16. f32 |
 \dblg g 4 \grip g 8. e16 |
 \grg f16. g32 A16. f32 \thrwd d8  \grg e16. f32 |
 \dblg g8 \birl a \grg e16. f32 g16. e32 |
  \grg d16. b32 \grg G16. a32 
   }
  \alternative {
    {\dblb b8 \grg e16. f32}{\partial 8 f8 \break}
  
  %close music


  \header {%open header
    meter = "March"
    title = "Coppermill"
    arranger = "Michael Grey"
  }%close header

}%close score

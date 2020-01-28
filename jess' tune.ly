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

 \time 2/4
 \bar ".|:" 
 \grg a8 \taor a16. b32 \grg c8 \taor c16. d32 |
 \grg e16. f32 \grg e16. c32 \dblb b4 |
 \grg e16. f32 \grg e16. c32 \dblb b8 \grG a |
 \tuplet 3/2 { \grg c16 d e } \grg d16. c32 \dblb b4 |\break
 
  \grg a8 \taor a16. b32 \grg c8 \taor c16. d32 |
 \grg e16. f32 \grg e16. c32 \dblb b4 |
 A8 \grip A e16  \tuplet 3/2 { \grg c16 d e } \grg e |
 \tuplet 3/2 { \grg e16 d c } \grg b16. \grd c32 \grG a4 | \bar ":|.:" \break

 
 
 
 \bar ".|:"
 \grg e8 \grip e16. f32  \grg f8 \grip f16. e32 |
 \grg e8 \grip e16. b32 \grip c4 |
 \grg e16. f32 \grg e16. c32 \dblb b8 \grG a |
 \tuplet 3/2 { \grg c16 d e } \grg d16. c32 \dblb b4 |\break
 
 \grg e8 \grip e16. f32  \grg f8 \grip f16. e32 |
 \grg e8 \grip e16. b32 \grip c4 |
 A8 \grip A e16  \tuplet 3/2 { \grg c16 d e } \grg e |
 \tuplet 3/2 { \grg e16 d c } \grg b16. \grd c32 \grG a4 |  \bar ":|.:"\break

 
 
 
\bar ".|:" 
\grg G8 a16 \gbirl a \grg b8 a16 \gbirl a |
\grg e16. f32 \grg e16. c32 \dblA A8. e16 |
\grg e16. f32 \grg e16. c32 \dblb b8 \grG a |
 \tuplet 3/2 { \grg c16 d e } \grg d16. c32 \dblb b4 |\break
 
 \grg G8 a16 \gbirl a \grg b8 a16 \gbirl a |
\grg e16. f32 \grg e16. c32 \dblA A8. e16 |
 A8 \grip A e16  \tuplet 3/2 { \grg c16 d e } \grg e |
 \tuplet 3/2 { \grg e16 d c } \grg b16. \grd c32 \grG a4 | \bar ":|.:" \break
 
 
 
\bar ".|:" 
 \repeat volta 2{
A8\grip A16. f32  \tuplet 3/2 { \grg e16 f e } \grg c8 |
 \tuplet 3/2 { \grg b16 c b } A16. e32 \grg f4 |
 \grg e16. f32 \grg e16. c32 \dblb b8 \grG a |
 \tuplet 3/2 { \grg c16 d e } \grg d16. c32 \dblb b4 |\break
 

 }
  \alternative{
{A8\grip A16. f32  \tuplet 3/2 { \grg e16 f e } \grg c8 |
 \tuplet 3/2 { \grg b16 c b } A16. e32 \grg f4 |
 A8 \grip A e16  \tuplet 3/2 { \grg c16 d e } \grg e  \tuplet 3/2 { \grg e16 d c } \grg b16. \grd c32 \grG a4 |}
{ \grg G8 a16 \gbirl a \grg b8 a16 \gbirl a |
\grg e16. f32 \grg e16. c32 \dblA A8. e16 |
 A8 \grip A e16  \tuplet 3/2 { \grg c16 d e } \grg e |
 \tuplet 3/2 { \grg e16 d c } \grg b16. \grd c32 \grG a4 }
  }
  \bar "|."
 
  }%close music


  \header {%open header
    meter = "Polka"
    title = "Jess' Tune"
    arranger = "Owen Capon"
  }%close header

}%close score
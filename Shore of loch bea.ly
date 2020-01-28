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
 \grg a4 \taor a8 c \grg e8. c16  b8 \grG a |
 \grg a4 \taor a8 c \dble e 4~ e8 c16 e |\break
 \grg f8 e16 f A8. e16 \grg f8 A e f16 e |
 \grg c8 a \grg c e16 c \dblb b4~ b8 e | \break
 \grg a4 \taor a8 c \grg e8. c16  b8 \grG a |
 \grg a4 \taor a8 c \dble e 4~ e8 c16 e |\break
  \grg f8 e16 f A8. e16 \grg f8 A e f16 e |
 \grg c8 a \grg c b16 c \dbla a4~ a8 e | \break \bar "||"
 
 \grg f4 \grip f8 e \grg f A \grA A c |
 \grg e8. f16 \grg e8 c \dble e4~e8 c16 e|\break
 \grg f8 e16 f \dblA A8. e16 \grg f8 A e8 f16 e16|
 \grg c8 a \grg c e16 c \dblb b4~ b8 \grg c16 e| \break
 \grg f4 \grip f8 e \grg f A \grA A c |
 \grg e8. f16 \grg e8 c \dble e4~e8 \grg c16 e|\break
 \grg f8 e16 f \dblA A8. e16 \grg f8 A e8 f16 e16|
 \grg c8 a \grg c b16 c \grG a2 \break \bar "|."
 
 
 
 
 
 
 
 
 
 
  
  
 
   
   
   
   
   
   
  }%close music


  \header {%open header
    meter = "March"
    title = "Shore of Loch Bea"
    arranger = "Traditional"
  }%close header

}%close score
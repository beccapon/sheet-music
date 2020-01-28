\version "2.18.2"


\include "bagpipe.ly"
\include "..\Lily\format.ly"
\include "..\LilyFiles\neededShit.ly"
\include "..\LilyFiles\bagpipe_extra.ly"
\include "../LilyFiles/format.ly"
\include "../LilyFiles/neededShit.ly"
\include "../LilyFiles/bagpipe_extra.ly"

voltaAdLib = \markup { 2 of 2}
\score {%open Score

  {%opern music


    \override Score.BarNumber.break-visibility = #end-of-line-invisible
    \new StaffGroup
    \bagpipeKey %fucks off the sharps and shit

  \time 6/8
  \repeat volta 2{
  \bar ".|:" 
  \grg a4 \taor a8 \grg a16 \grd G8. \grd a8 | \thrwd d4 e8 \grg f4 A8 |
  \grf g4 e8 \dblf f4 d8 | \grg e8. f16 d8 \grg b8. c16 d8 | 
  \grg a4 \taor a8 \grg a16 \grd G8. \grd a8 | \thrwd d4 e8 \grg f4 \hdblg g8 |
  A8. f16 \grg d8 \grg e8. f16 \grg e8 | \thrwd d4.
  
  }
  \alternative{
    {\dbld d8. c16 b8}{\partial 4. \slurd d8. e16 f8 \break}
  }
  \repeat volta 2{
    \hdblg g4 \grip g8 \grA g8. A16 g8 | \grA f4 \grip f8 \grg f16 A8. f8 | 
    \grg e4 \grip e8 \grg e8. f16 g8 | \hdblf f8. e16 d8 \grg b8. c16 d8 |
    \grg a4 \taor a8 \grg a16 \grd G8. \grd a8 | \thrwd d4 e8 \grg f4 \hdblg g8 |
  A8. f16 \grg d8 \grg e8. f16 \grg e8 | \thrwd d4.
  }
  \alternative{
  {\slurd d8. e16 f8}{\partial 4. \slurd d4. \break}
  }
  }
  
  }%close music

%{
\header {
 

  subtitle = "March"
  
  arranger = "Composed by Robert Mathieson"


  opus = "Arranged by Chris McLeish"
  piece = "Glensanda"
 
 

}

  \header {%open header
    meter = "Jig"
    title = "The Gold Ring"
    arranger = "Traditional"
  }%close header %}

}%close score

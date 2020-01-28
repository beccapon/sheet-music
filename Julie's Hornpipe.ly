\version "2.18.2"


\include "bagpipe.ly"
\include "..\LilyFiles\format.ly"
\include "..\LilyFiles\neededShit.ly"
\include "..\LilyFiles\bagpipe_extra.ly"
\include "../LilyFiles/format.ly"
\include "../LilyFiles/neededShit.ly"
\include "../LilyFiles/bagpipe_extra.ly"

#(set-global-staff-size 21)
#(set-default-paper-size "a4" 'portrait)

\score {%open Score

  {%opern music


    \override Score.BarNumber.break-visibility = #end-of-line-invisible
    \new StaffGroup
    \bagpipeKey %fucks off the sharps and shit

  %music goes here
    \time 2/4
    \repeat volta 2 {
 \partial 8 f8 |
 \gbirl a8 d \slurd d \grg a16 d |
 \grg f 16 A f \thrwd d~ d8 \grg e16 f |
 \dblg g8 c16 d \dble e8 \grg a16 b |
 \dblc c16 e c \grG a~ a8 f |
 \gbirl a8 d \grg d16 f  \gbirl a d |
 \grg f16 A \grg A f \thrwd d8 \grg f16 d |
 \slurb b8 g16 e \slurc c8 \grg b16 c |
 \slurd d8 \grg d16 c \slurd d8  | \break
  
  }
  
  \repeat volta 2 {
  \partial 8 \grg a16 d |
  \slurf f8 \grg e16 f \slurd d8 \grg a16 d |
  \grg f16 A \grg A f \slurd d8 \grg f16 d |
  \slure e8 g16 c \slure e8 \grg a16 b |
  \slurc c8 \grg e16 c \grG a8 \grg d16 e |
  \slurf f8 \grg e16 f \slurd d8 \grg a16 d |
  \grg f16 A \grg A f \slurd d8 \grg f16 d |
   \slurb b8 g16 e \slurc c8 \grg b16 c |
 \slurd d8 \grg d16 c \slurd d8  | \break
  }
  
  \repeat volta 2 {
  \partial 8 A16 g |
  f16 \grg f \gre f a \shaked d8 \grg f16 d |
  \grg a16 f \grg f d \dblA A8 g16 f |
  \grg e16 a \gbirl a8 \grg c16 a \gbirl a8 |
  \grg e16 c \gra c e \dblg g8 A16 g |
  f16 \grg f \gre f a \shakeb b8 G16 b |
  \grg a f \grg f d \dblA A8 f16 d |
  \slurb b8 g16 e \slurc c8 \grg b16 c |
 \slurd d8 \grg d16 c \slurd d8  | \break
  }
  
  \repeat volta 2{
  \partial 8 f16 g |
  \tripleA A8 g \hdblf f8  a16 g |
  f16 A \grg A f \slurd d8 \grg e16 f |
  \slurg g8 \grA g16 f \slure e8 g16 e |
  \slurc c8 \grg e16 c \grG a8 \grg f16 g |
   \tripleA A8 g \hdblf f8  a16 g |
   \grg f16 A \grg A f \slurd d8 \grg f16 d |
   \slurb b8 g16 e \slurc c8 \grg b16 c |
 \slurd d8 \grg d16 c \slurd d8  | \break
  }
  
  \repeat volta2{
  \partial 8 A16 g |
  f16 \grg f \gre f d g e \grg f d |
  e16 \grg e \gra e c f d \grg e c |
  d16 \grg d \gra d b e c \grg d b |
  \dblc c16 b c d \dble e8 A16 g |
  f16 \grg f \gre f d g e \grg f d |
  e16 \grg e \gra e c f d \grg e c |
   \slurb b8 g16 e \slurc c8 \grg b16 c |
 \slurd d8 \grg d16 c \slurd d8  | \break
  }
  
  \repeat volta2{
  \partial 8 f16 g |
  \tripleA A8 g A16 g \grA f A |
  f16 g \grf g f \grA g f \grg e g | 
  e16 f \gre f e \grg f e \grg d f | 
  \dble e16 a f \dblg g16~ g8 \grA f16 g | 
  
  }
  \alternative
  {{
  A16 g f A g f \grg e g |
  \grA f16 e d f e d c e | 
  \slurb b8 g16 e \slurc c8 \grg b16 c |
 \slurd d8 \grg d16 c \slurd d8  | \break
   }
   
   {
   \partial 8 \grA f16 g |
   A16 f d g e c f d |
   b16  e c a d b G a | 
   \slurb b8 g16 e \slurc c8 \grg b16 c |
 \slurd d8 \grg d16 c \slurd d8  | \break
   }
  }
   
 
  }%close music


  \header {%open header
    meter = "Hornpipe"
    title = "Julie's Hornpipe"
    arranger = "Donald Patric Sargent"
  }%close header

}%close score

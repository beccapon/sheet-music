\version "2.18.2"


\include "bagpipe.ly"
\include "..\LilyFiles\format.ly"
\include "..\LilyFiles\neededShit.ly"
\include "..\LilyFiles\bagpipe_extra.ly"
\include "../LilyFiles/format.ly"
\include "../LilyFiles/neededShit.ly"
\include "../LilyFiles/bagpipe_extra.ly"


#(set-default-paper-size "a4" 'portrait)

\score {

  {%opern music


   \override Score.BarNumber.break-visibility = #end-of-line-invisible

    \new StaffGroup

    \new Staff \with {
      instrumentName = #"1st"
        shortInstrumentName = #"1st"


      }

    \bagpipeKey %fucks off the sharps and shit


    \bar ".|:"%adds first repeat sign
  
  \time 2/2
  
  \repeat volta 2 {
    \bar ".|:"
    
    \grip c4 \grg a8 c d b \dblc c4 | \grg c8 e \gra e c \grg d b G b | 
    \grip c4 \grg a8 c d b \dblc c4 |
    \grg c8 e \grg d b \grG a4 
  }
  \alternative {
  {\grg a8 b |}
  {\partial 2 \grG a2 |\break }
  }
  
  \repeat volta 2 {
    \grip b4 f8 e \grg f b \grG b a | \grg b g \grA f e \grg f b \grG b a |
    \grg b g \grA f e \grg f b \grG b a | \grg c e \grg d c \dblb b4 \grg b8 a |\break
  }
  
  
  
  <<%Double Staff
%firsts----------------------------
{
      \repeat volta 2 {
        \grip c8~c a d~ d a \grg e a | \grg c e \gra e c \grg d b G b | 
        \grip c8~c a d~ d a \grg e a | \grg c e \grg d b 
      }
      \alternative{
        {\grG a4 \grg a8 b |}
        {\partial 2 \grG a2 | \break}
      }
      
      \grip b4 f8 e \grg f b \grG b a | \grg b g \grA f e \grg f b \grG b a |
      \grg b g \grA f e \grg f b \grG b a | \grg c a \grd a d a \grd a e a |
      \grip b4 f8 e \grg f b \grG b a | \grg b g \grA f e \grg f b \grG b a |
      \grg b g \grA f e \grg f b \grG b a | \grg c e \grg d c \dblb b4 \grg b8 a | \bar "||" \break
      
      \repeat volta 2 {\bar ".|:"
      \grg c a \grd a d a \grd a e a | \grg c e \gra e c \grg d b G b |
      \grg c a \grd a d a \grd a e a | \grg c e \grg d b
      }
      
      \alternative{
      {\grG a4 \grg a8 b}
      {\partial 2 \grG a2 | \break}
      }
      
}
%firsts----------------------------

%seconds----------------------------
      \new Staff \with {
        shortInstrumentName = #"2nd"
  \once \omit Staff.TimeSignature
  


      }
      
      
      {
      \repeat volta 2 {

 \bar "" \once \override Score.BarNumber.stencil = ##f %Hides shitty bar and number 
        \bagpipeKey
     
       %seconds
       \grg e8~ e c f~ f d A f | \grg e A \grg A e \grg f d b d |
       \grg e8~ e c f~ f d A f | \grg e c \grg f e
       

      }
      \alternative{
      {\grg c4 \grg c8 d |}
      {\partial 2 \grg c2  | }
      }
      
      
      \bar "" \once \override Score.BarNumber.stencil = ##f %Hides shitty bar and number 
      
      \grg c8 d~ d4~ d8 f \grg f e | \grg c8 d~ d4~ d8 f \grg f e | 
      \grg c d~ d c d c d c | \grg e4~ e8 f~ f4 g|
      \grg c8 d~ d4~ d8 f \grg f e | \grg c8 d~ d4~ d8 f \grg f e | 
      \grg c d~ d c d c d c | \grg e c g f \grg f4 \grg f| \break
      
      \repeat volta 2 {
      \grg e8 c \grG c f d \grG d A f | \grg e A \grg A e \grg f d \grg b d |
      \grg e8 c \grG c f d \grG d A f | \grg e c f e 
      }
      
      \alternative{
      {\grg c4 \grg c8 d |}
      {\partial 2 \grg c2  | \break}
      
      }
      
      }
%seconds----------------------------







    >>
    
    
  <<{
    \bagpipeKey
%firsts----------------------------   

%firsts----------------------------    
    \grip b4 f8 e \grg f b \grG b a | \grg c e \grG e c \grg c e c a |
    \grip b4 f8 e \grg f b \grG b a | \dble e4 \gra e8 d \grg e f \grg d c |
    \dblb b4 f8 e \grg f b \grG b a | \grg c e \grG e c \grg c e c a | 
    
    \grg b f \gre f e \grg c e c a | \grg b c b a \grip b2  \bar"|."
    }
    \new Staff \with {
        shortInstrumentName = #"2nd"
  \once \omit Staff.TimeSignature
      } {
%seconds----------------------------
\bagpipeKey
\grg d 4 b8 c \grg d f \grg f e | \grg e c \grg c e \grg e c e c |
\grg d 4 b8 c \grg d f \grg f e | \grg c4 \grg c8 b \grg c d f e | 
\grg d 4 b8 c \grg d f \grg f e | \grg e c \grg c e \grg e c e c |

\grg d b \grg b c \grg e c e c | \grg d e \grg d c \grg f2

%seconds----------------------------
        
        }
   \new Staff \with {
        shortInstrumentName = #"3rd"
  \once \omit Staff.TimeSignature
      }{ 
%thirds----------------------------   
\bagpipeKey
\grg c8 d8~ d4~ d2 | \grG a~ a |
d~ d | \grG a~ a |
\grg c8 d8~ d4~ d2 | \grG a~ a |

d2 a | f4 \grg f8 e \grg f2 |

%thirds---------------------------- 
      }
  >>

  
  
  
    
  }%close music




}%close score

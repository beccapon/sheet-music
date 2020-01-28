\version "2.18.2"
% heading shit-----------------------
#(use-modules (srfi srfi-19))
today = #(date->string (current-date) "~B ~e, ~Y")
\paper {
	print-page-number
    raggedbottom = ##t
    tagline = \markup {
        \line {
            ""
            \concat { "Revised " \today  }
        }
    }
    scoreTitleMarkup = \markup {
        \override #'(baseline-skip . 3)
        \column {
            \fill-line {
                \column {
                    \large \bold \fromproperty #'header:title
                    \bold \fromproperty #'header:subtitle
                }
                \fromproperty #'header:meter
                \line { \fromproperty #'header:composer " " \italic \fromproperty #'header:arranger }
            }
            #(ly:export (if (not (ly:get-option 'without-comment))
                         (markup #:justify-field 'header:comment)
                         (markup)))
        }
    }
}
% end heading shit --------------------


% Bagpipe music is written in something like D major. If we use
% flattened notes, the flat should be shown on all instances.
bagpipeKey = {
    \key d \major
    #(set-accidental-style 'forget)
}
\layout {
  indent = 0.0
  \context {
    \StaffGroup
%    between-system-space = #0.1
%    between-system-padding = #0.0
    extraNatural = ##f
    \override KeySignature #'stencil = ##f
  }

  \context {
    \Staff

    extraNatural = ##f
    midiInstrument = #"bagpipe"

    \override KeySignature #'stencil = ##f
  }
}

% Sets the autobeamer to span quarter notes only. Use for fast music.
quarterBeaming = {
    \set Staff.beamExceptions = #'()
}
halfBeaming = {
    \set Staff.beamExceptions = #'((end . (((1 . 8) . (4 4))
                                          ((1 . 12) . (3 3)))))
}

% Reels are in allabreve time with half note beaming.
reelTime = {
  \time 2/2
  \halfBeaming
}

% 4/4 marches are written with numerical time signature and with quarter beaming.
marchTime = {
  \time 4/4
  \numericTimeSignature
  \quarterBeaming
}

% Add appropriate tweaks needed for piping grace notes to look great.
stemspace = #(define-music-function (parser location extent) (pair?) #{
    \once \override Staff.Stem #'X-extent = #$extent
#})
pgrace = #(define-music-function (parser location notes) (ly:music?) #{
   \override Score.GraceSpacing #'spacing-increment = #0
   \override Score.Stem #'beamlet-max-length-proportion = #'(0.5 . 0.5)
   \override Score.Stem #'direction = #up
   \revert Score.Beam #'positions
   \override Beam #'beam-thickness = #0.5
   \override Stem  #'length = #5.5
   \override Stem #'(details beamed-lengths) = #'(1.5)
%   \override Beam  #'space-function = #(lambda (beam mult) (* 0.6 (Beam::space_function beam mult)))
   \tiny \grace $notes \normalsize
%   \revert Beam #'space-function
   \revert Stem #'(details beamed-lengths)
   \revert Stem #'length
   \revert Score.Stem #'beamlet-default-length
   \override Score.Beam #'positions = #'(-4 . -4)
   \override Beam #'beam-thickness = #0.3
   \override Stem #'direction = #down
#})


%{
    Locally customized stuff and helper macros.
%}

\version "2.12.0"
\include "bagpipe.ly"

#(define (scoop-stencil grob) 
  (ly:stencil-add 
    (ly:note-head::print grob) 
    (grob-interpret-markup grob 
      (markup #:with-dimensions '(0 . 0) '(0 . 0) 
              #:translate '(-0.2 . -0.5) 
              #:path 0.25 '((moveto 0 0) 
                            (curveto 0 -1 -1 -1.5 -1.5 -1.5)))))) 

scoop = \once \override NoteHead #'stencil = #scoop-stencil 



% Use \nudge before a single grace note between two major notes
% if you want to move the grace to a more centered position. Tweak the
% \nudgeFactor to get the grace note to where you want it.
nudgeFactor = #'(-1 . 0)
nudge = {
  \once \override Staff.NoteHead #'extra-offset = \nudgeFactor
  \once \override Staff.Stem #'extra-offset = \nudgeFactor
}

% Use \space to put extra space between two notes to, for instance get a
% glissando to be more visible. Tweak the \spaceFactor to get the space
% you want.
spaceFactor = #1.5
space = \once \override Score.SeparationItem #'padding = \spaceFactor

% Make room for a low A or low G gracenote.
lowerBeam = #(define-music-function (parser location left right) (number? number?)
  #{ \once \override Beam #'positions = #(cons (- 0 $left) (- 0 $right)) #})

% Used when substituting a single bar or just a few notes to show alternative.
altBracket = #(define-music-function (parser location tag) (string?)
  #{ \set Score.repeatCommands = #(list (list 'volta (markup #:text $tag))) #})

% End previous altBracket thingy.
altBracketEnd = { \set Score.repeatCommands = #'((volta #f)) }

droll = { \pgrace { d32[ c d c d c d c] } }

ahshakea = { \pgrace { a32[ d a G] } }
ahshakeb = { \pgrace { b32[ d b G] } }
ahshakec = { \pgrace { c32[ e c G] } }
ahshaked = { \pgrace { d32[ e d G] } }
ahshakee = { \pgrace { e32[ f e a] } }
ahshakef = { \pgrace { f32[ g f a] } }
ahshakeg = { \pgrace { g32[ f g a] } }
ahshakeA = { \pgrace { A32[ g A a] } }
dtob = {\pgrace{d32[c]}}















%Start regular score--------------------

#(set-global-staff-size 20)
#(set-default-paper-size "a4" 'portrait)

\score {%open Score

  {%opern music


    \override Score.BarNumber.break-visibility = #end-of-line-invisible
    \new StaffGroup
    \bagpipeKey %fucks off the sharps and shit

  %music goes here
  
    \time 4
    \grg f4 \grg f8 \gre f \grg e4 \gra e |
    \grg d8. e16 \grg f8 d \grg b c \thrwd d4 |
    \grg a4 \grg d8 f A4 \grg A |
    

   
   
   
   
   
   
     
    
  }%close music


  \header {%open header
    meter = "March"
    title = "Waltzing Matilda"
    arranger = ""
  }%close header

}%close score

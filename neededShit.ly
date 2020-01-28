\version "2.18.2"

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

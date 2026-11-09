\version "2.26.0"

\include "hel-arabic.ly"
\language "english"

\paper {
  indent = 0\mm
  ragged-right = ##f
  ragged-last = ##f
  system-system-spacing.basic-distance = 15
}

\header {
  title = "Yā Yaḥid Ram leʿOlam (WIP)"
  % composer = \markup { \fontsize #-2 "" }
  % piece = \markup { \fontsize #-2 "" }
  poet = \markup { \fontsize #-2 "Maqam: Bayati(?) on D" }
}

\score {
  <<
    \new Staff \with {
      midiInstrument = "oboe" % Oboe is more voice-like than guitar, piano, or oud
    } {
      \new Voice = "melody" {
        \relative d' {
          \key d \bayati
          \time 2/4
          \tempo 4 = 120

          % Portamento line appearance
          \override Glissando.style = #'line
          % \override Glissando.style = #'dashed-line
          % \override Glissando.style = #'trill
          \override Glissando.bound-details.left.padding = #0.5
          \override Glissando.bound-details.right.padding = #0.1

          % Bar 1
          c4 d8 d8 |

          % Bar 2
          c2 |

          % Bar 3
          d8 eqf8 f8 eqf8 |

          % Bar 4
          d4 d8 c8 |

          % Bar 5
          d4 eqf8 f8 |

          % Bar 6
          g8 a8 f8 g8 |

          % Bar 7
          eqf8 f8 d8 eqf8|

          % Bar 8
          c8 r8 d8 d8 |
          \break

          % Bar 9

          d4  d8 eqf8 |

          % Bar 10
          f8 g8 eqf8 f8 |

          % Bar 11
          g4 g8 g8 |

          % Bar 12
          a4 a8 g8 |

          % Bar 13
          g8 a8 g8 f8 |

          % Bar 14
          f8 g8 eqf8 d8|

          % Bar 15
          f8 g8 f8 eqf8|

          % Bar 16
          d4 r4 |
          \break

          % Bar 17
          c4 d8 d8 |

          % Bar 18
          c2 |

          % Bar 19
          d8 eqf8 f8 eqf8 |

          % Bar 20
          d4 d8 c8 |

          % Bar 21
          d4 eqf8 f8 |

          % Bar 22
          g8 a8 f8 g8 |

          % Bar 23
          eqf8 f8 d8 eqf8|

          % Bar 24
          c8 r8 d'8 d8 |
          \break

          % % Bar 25
          % d2 r8  d8 d8 |

          % % Bar 26
          % d4 c8 f8 |
        }
      }
    }

    % \new Lyrics \lyricsto "melody" {
    %   % Add the syllables here, separated by spaces.

    %   % System 1
    %   Yah ri- bon ʿa- lam we ʿal- ma- ya
      
    %   % System 2
    %   Ant hu mal- ka me- lekh mal- kha- ya

    %   % System 3
    %   ՙO- va- dei ge- vur- takh we- tim- ha- ya
      
    %   % System 4
    %   She- far- ko- da- mai le- ha- ha- wa- ya

    %   %System 5
    %   Yah ri- bon ʿa- lam we ʿal- ma- ya
      
    %   % System 2
    %   Ant hu mal- ka me- lekh mal- kha- ya

    % }
  >>

  \layout {}
  \midi {}
}

% \markup {
%   \fontsize #-1
%   \column {
%     \vspace #1
%     % \justify {
%     %   STUDENT NOTES: This is draft of an excerpt of the recording starting at 0:41.79 and ending at 1:29.12.
%     %   I started at this point in order to capture the melody of the basic chorus and the first verse.
%     % }
%     % \vspace #1
%     % \justify {
%     %   Next steps will be to add staves for the oud accompaniment so I can transcribe the introduction, which is
%     %   played in a slower, 3-beat rhythm and then switches to a faster 4 beat rhythm oud intro before the the first
%     %   chorus is sung. 
%     % }
%     % \vspace #1
%     % \justify {
%     %   Lyrics transcription is my own interpretation of how I heard it sung in Dalal's Judeo-Iraqi pronunciation
%     %   rather than the more common pronunciations you'd find in most printed sources.
%     % }
%     % \vspace #1
%     % \justify {
%     %   Code repository: https://github.com/lexa-koszegi-std/lilypond-musical-scores
%     % }
%   }
% }
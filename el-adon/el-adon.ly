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
  title = "El Adon"
  % misusing header fields until I can figure out how to code custom ones in Lilypond
  composer = \markup { \fontsize #-2 "Piyyut (author unknown)" }
  piece = \markup { \fontsize #-2 "Music by Levana Ronit Koszegi" }
  poet = \markup { \fontsize #-2 "Maqam: Rast (or maybe Sikah" }
}

\score {
  <<
    \new Staff \with {
      midiInstrument = "oboe"
    } {
      \new Voice = "melody" {
        \relative c' {
          \key c \rast

          % Portamento line appearance
          \override Glissando.style = #'line
          % \override Glissando.style = #'dashed-line
          % \override Glissando.style = #'trill
          \override Glissando.bound-details.left.padding = #0.5
          \override Glissando.bound-details.right.padding = #0.1

          \cadenzaOn

          % El adon
        
          c4 d4 eqf!2 c8([ d8 eqf!8]) f4 f4 eqf!4 d4 eqf!2\prall



          \cadenzaOff

        %   \bar "||"
        %   \time 6/8


          % Bar 1


        }
      }
    }

    \new Lyrics \lyricsto "melody" {
      % Add the syllables here, separated by spaces.

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

    }
  >>

  \layout {}
  \midi {}
}

% \markup {
%   \fontsize #-1
%   \column {
%     \vspace #1
%     \justify {
%       STUDENT NOTES: This is draft of an excerpt of the recording starting at 0:41.79 and ending at 1:29.12.
%       I started at this point in order to capture the melody of the basic chorus and the first verse.
%     }
%     \vspace #1
%     \justify {
%       Next steps will be to add staves for the oud accompaniment so I can transcribe the introduction, which is
%       played in a slower, 3-beat rhythm and then switches to a faster 4 beat rhythm oud intro before the the first
%       chorus is sung. 
%     }
%     \vspace #1
%     \justify {
%       Lyrics transcription is my own interpretation of how I heard it sung in Dalal's Judeo-Iraqi pronunciation
%       rather than the more common pronunciations you'd find in most printed sources.
%     }
%     \vspace #1
%     \justify {
%       Code repository: https://github.com/lexa-koszegi-std/lilypond-musical-scores
% %     }
%   }
% }
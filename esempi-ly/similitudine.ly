\version "2.24.3"

\include "lilypond-book-preamble.ly"

#(ly:set-option 'separate-page-formats 'png)
#(ly:set-option 'resolution 600)

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

\score {
  \new Staff \with { 
    \remove "Time_signature_engraver" 
  }
  \relative c' {
    \hide Stem
    \cadenzaOn
    g'4 a f b a g2 \breathe
    g4 a g e f d2 \breathe
    g4 a d, b' a g2 \breathe
    e4 g d a' g f2
    
    \bar "|."
  }
}

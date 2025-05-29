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
    g4 a b8 b a4 g2 \breathe
    b16 b16 a4 g2 \breathe
    b16 b16 a4 g des'16-. des16-. \breathe
    des16-. des-. des-. s16 s8 des!16-. des-. des-. s16 s8 s4 des!8-.
    \bar "|."
  }
}

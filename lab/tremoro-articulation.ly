\version "2.24.2"

music = {
  \relative c' {
    a4:8_\markup {
      \center-align{
        \musicglyph "scripts.staccato"
        \musicglyph "scripts.staccato"
      }
    }
    a4:16_\markup {
      \center-align{
        \musicglyph "scripts.staccato"
        \musicglyph "scripts.staccato"
        \musicglyph "scripts.staccato"
        \musicglyph "scripts.staccato"
      }
    }
    a4:16_\tweak X-offset #0.5 _. _\tweak X-offset #0.5 _.
  }
}

\score {
  \music
  \layout {}
}

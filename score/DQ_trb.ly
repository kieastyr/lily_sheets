\version "2.24.0"
\header {
  title = \markup {
    \fill-line {
      \medium{
        \line{""}
        \line{
          \override #'(font-name . "HGSSoeiKakupoptai")
          "ドラゴンクエスト　序曲"
        }
        \right-column{  
          \line{
            \small "すぎやまこういち"
          }
          \line{
            \small "R.ヤスーギー"
          }
        }
      }
    }
  }
  tagline = c
  instrument = \markup { \fontsize #2 \bold "Trumpet" }
}


#(set-global-staff-size 20)
#(set-default-paper-size "a4" )

%%以下、定義
ffz = #(make-dynamic-script "ffz")
fpp = #(make-dynamic-script "fpp")
%%ここまで、定義

\paper {
  #(set-paper-size "a4")
  top-margin = 2\cm
  bottom-margin = 1\cm
  left-margin = 1\cm
  right-margin = 1\cm

  markup-markup-spacing.basic-distance = #20
  markup-system-spacing.basic-distance = #20
  last-bottom-spacing.basic-distance = #12
  system-system-spacing.basic-distance = #16
  score-markup-spacing.basic-distance = #20

  print-page-number = ##t
  
  print-first-page-number = ##t
  first-page-number = 2

}


\layout {
  indent = 1.0\cm %%0にするといい
}


\score {
  <<
    \new Staff \with {
      instrumentName = "Trumpet "
      shortInstrumentName = "Trp. "
    }
    \compressEmptyMeasures
    \relative c''
    {
      \set Staff.midiInstrument = "trumpet"
      \clef treble%%音部記号　ト音…treble　ヘ音…bass　ハ音…alto
      \override Hairpin.minimum-length = #6

      \key c \major  %%調
      \tempo "Maestoso"  %%BPM
      \time 4/4 %%拍子
      g'2\ff~ g8 \tuplet 3/2 { g16 16 16 } g8 g
      g1
      g2~ g8 \tuplet 3/2 { g16 16 16 } g8 g
      g1
      g4. \tuplet 3/2 { g16 16 16 } g4. \tuplet 3/2 { g16 16 16 }  
      g4. \tuplet 3/2 { g16 16 16 } g4. \tuplet 3/2 { g16 16 16 }  
      g2~ g8 \tuplet 3/2 { g16 16 16 } g8 g
      g2~g8 r8 r4
    }
    \new Staff \with {
      instrumentName = "Bass Trombone "
      shortInstrumentName = "Trb. "
    }
    \relative c
    {
      \set Staff.midiInstrument = "trombone"
      \clef bass %%音部記号　ト音…treble　ヘ音…bass　ハ音…alto
      \override Hairpin.minimum-length = #6

      \key c \major  %%調
      R1
      r4 g\ff-> c-> e-> 
      ees1~
      ees8 r g,4-> bes-> ees->
      c2-> d->
      c-> g->
      c-> d4-> c->
      g2~ g8 r r4
      R1*3
      r2 r4 e'8. e16
      e4 e fis gis
      a2~ a8 a b c
      d2~ d8 a a c
      c4 b a g
      gis2~ gis8 gis( gis gis)
      a2 e4 e'
      d2~ d8 fis,( fis fis )
      f!2 f4 d
      cis'2~ cis8 cis d e
      f2~ f8 f f c
      f4 g, f' g,
      e2~ e8 r f8. f16
      e4 g c c
      g'2 f
      f4.( e8) r dis dis dis
      e4 c2 r4
      gis2 a4 b
      c2~ c8 c d e
      d2~ d8 c c d
      f4 f4 d d
      e2~ e8 f(e d)
      c2 a4 c
      r8 d,\mf( fis) a c r a4
      d,2. d4\f
      cis'2~ cis8 cis d e
      f2~ f8 f f c
      f4 g, f' g,
      e'2~ e8 r g,4--\p
      a2( d4 c 
      b2~ b8) r c4--->\f
      
      \time 2/4
      b4--->\< c--->\!
      
      \time 4/4
      r8 a->\ff a-> c-> c-> f-> f-> f->
      f2^\markup{\italic{ "molto lit."}} f
      e1\fp\< ~
      e4 r\! r2
      \bar "||"
      
      
      
    }
  >>
}
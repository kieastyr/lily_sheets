\paper {
  #(set-paper-size "a4")
  top-margin = 2\cm
  bottom-margin = 1\cm
  left-margin = 1\cm
  right-margin = 1\cm

  markup-markup-spacing #'basic-distance = #20
  markup-system-spacing #'basic-distance = #20
  last-bottom-spacing #'basic-distance = #12
  system-system-spacing #'basic-distance = #16

  print-page-number = ##t
  print-all-headers = ##f
  evenHeaderMarkup = \markup {
    \fill-line{
      \null
      \fromproperty #'header:instrument
      \fromproperty #'page:page-number-string
    }
  }
  oddHeaderMarkup = \markup {
    \on-the-fly \not-first-page
    \fill-line{
      \fromproperty #'page:page-number-string
      \fromproperty #'header:instrument
      \null
    }
  }
}

\layout {
  indent = 0.0\cm %%0にするといい
}

\book{


  #(set-global-staff-size 21)
  #(set-default-paper-size "a4" )

  %%以下、定義
  ffz = #(make-dynamic-script "ffz")
  fpp = #(make-dynamic-script "fpp")
  %%ここまで、定義


  \header {
    title = "Overture"
    subtitle = "zum Mährchen von der schönen Melusine"
    composer = "Felix Mendelssohn Bartholdy op. 32"
    tagline = ##f
    instrument = \markup {\bold \left-align "Contrabasso" }
  }
  \score {
    <<
      \time 6/4 %%拍子
      \compressEmptyMeasures
      \relative c
      {
        \clef bass %%音部記号　ト音…treble　ヘ音…bass　ハ音…alto
        \override Hairpin #'minimum-length = #6

        \key f \major  %%調
        \tempo "Allegro con moto"  %%BPM
        \partial 4
        r4
        R1*3/2*7
        r2. r4 r c^"pizz."
        f, r r r r f
        f' r r r2.
        r4 r f g r aes
        g r r g, r r
        R1*3/2*2
        r2. g4 r r
        c r r r2.
        R1*3/2*4
        d4 r r bes r r
        r2. g4 r r
        c r r r2.
        R1*3/2*5
        c4 r r r2.
        R1*3/2*2
        r2. r4 r a
        a r r r r a_\markup{\italic cresc.}
        a r r r r a
        bes r bes bes r bes
        b r r g r r
        c r r r2.
        R1*3/2*1^\markup{\number 1}
        r2. c4\p r r
        f r r r2.
        R1*3/2*3
        c4 r r r2.
        f4 r r r2.
        R1*3/2*1^\markup{\number 1}
        \mark \default
        R1*3/2*2
        \bar "||"
        \key f \minor
        R1*3/2*2
        r4 f,8_\mf^"arco" f f f f4-. f8 f f f
        g2.\sf r
        r4 g8_\markup{\italic cresc.} g g g g4-. g8 g g g
        aes2.\sf r
        r4 aes8 aes aes aes aes4-. aes8 aes aes aes
        bes2. r4 bes8_\markup{\italic cresc.} bes bes bes
        bes'2 r4 r bes,8 bes bes bes
        bes'2 r4 r bes,8 bes bes bes
        bes'2 r4 r bes,8  bes bes bes
        c4 r c( e g bes
        d\sf c) c,( e g bes
        d\sf c) c,( e g bes
        d\sf c) c,( e g bes
        d\sf c) c,( e g bes
        d\sf c) c,( e g bes
        d\sf c) r4 r2.
        r2. r4 f,8\ff f f f
        f4 f8 f f f f4 f8 f f f
        f4-. c'-. aes-. f-. c-. aes-.
        des'-. c-. bes-. aes-. g-. f-.
        e2-> r4 r f8 f f f
        f4 f8 f f f f4 f8 f f f
        f4-. c'-. aes-. f-. c-. aes-.
        des' c bes aes g f
        e2 r4 r f,8 f f f
        f4 aes8 aes aes aes aes4 c8 c c c
        c4 g'8 g g g g4 f e
        aes4 aes8 aes aes aes aes4 g f
        e2( g4) c f,8 f f f
        f4 aes8 aes aes aes aes4 c8 c c c
        c4 g8 g g g g4 f e
        aes4 aes8 aes aes aes aes4 g f
        e2( g4) c f,8\ff f f f
        f4 f8 f f f f4 f8 f f f
        f4 f, aes c f aes
        des c bes aes g f
        e2.-> r4 e8 e e e
        e4 e8 e e e e4 e8 e e e
        e4 c e g c c,
        ges' f ees d c bes
        a2. r4

        \bar "|."

      }

    >>


    \layout {
      \context { \Staff \RemoveEmptyStaves }
    }
  }

}

\version "2.22.2"

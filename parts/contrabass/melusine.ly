\paper {
  #(set-paper-size "a4")
  top-margin = 3\cm
  bottom-margin = 1.2\cm
  left-margin = 1.2\cm
  right-margin = 2\cm

  markup-markup-spacing.basic-distance = #20
  markup-system-spacing.basic-distance = #20
  last-bottom-spacing.basic-distance = #12
  system-system-spacing.basic-distance = #16
  score-markup-spacing.basic-distance = #50

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


  #(set-global-staff-size 19)
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
        \set Score.markFormatter = #format-mark-alphabet
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
        des\sf c) c,( f g bes
        des\sf c) c,( e g bes
        des\sf c) c,( f g bes
        des\sf c) c,( e g bes
        des\sf c) c,( e g bes
        des\sf c) r4 r2.
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
        ges' f ees! des c bes
        a2. r4 bes8\ff bes bes bes
        bes4 des8 des des des des4 f8 f f f
        f4 c'8 c c c c4 bes a
        des4 des8 des des des des4( c) bes
        a2( c4) f bes,,8 bes bes bes
        bes4 des8 des des des des4 f8 f f f
        f4 c'8 c c c c4 bes a
        des4 des8 des des des des4( c) bes
        e,2\sf( g4) bes r c,
        des2 d4 ees!2 e4
        f2 g4 aes2 c,4
        des2 d4 ees!2 e4
        f2 g4 aes4 e8 e e e
        f4 f,8 f f f e2.\sf~
        e?4 f8 f f f e2.\sf
        f4 e'8\sf e e e f4 e8\sf e e e
        \mark \default
        f4 r r f\mf r r
        c r r c r r
        des2.( c
        bes aes
        g1.)
        r2. aes(
        g1.)
        r2. aes(
        g des'\p
        c4) r r c r r
        des r r bes r r
        ees r r des2.(
        c4) r r bes r r
        aes r r c r r
        des r r bes r r
        ees r r ees2.(
        aes2) r4 f r r
        c r r c r r
        f, r r r2.
        R1*3/2*1^\markup{\number 1}
        r2. des''4 r r
        bes r r aes r r
        g4 fes8->\f f-> f-> f-> ees4 fes8-> f-> f-> f->
        ees4 fes8-> f-> f-> f-> ees4 fes8-> f-> f-> f->
        ees4 r r des\p r r
        c r r c r r
        des1.
        ees4 r r ees r r
        f1._\markup{\italic cresc.}
        f4 r r f r r
        g2.~ g4 r r
        aes r r r2.
        r2. ees4_\markup{\italic cresc.} r r
        aes r r r2.
        r2. ees4 r r
        aes c,8\f c c c c4 ees8 ees ees ees
        ees4 bes'8 bes bes bes bes4 aes g
        \mark \default
        c c8\ff c c c c4 c8 c c c
        c4 c c c des,8 des des des
        des4 des8 des des des des4 des8 des des des
        des4 des des des f aes
        ces bes aes ges f ees
        d2. r4 bes'8 bes bes bes
        fes'4 ees des! ces bes aes
        g2. r4 des8 des des des
        c4 bes c des ees f
        f g a bes c des
        ees d des c bes aes!
        ees ees8 ees ees ees ees4 ees8 ees ees ees
        \mark \default
        aes4 aes,8\ff aes aes aes g2.\sf~
        g4 aes8 aes aes aes g2.\sf~
        g4 aes8 aes aes aes g2.\sf~
        g4 aes8 aes aes aes g4\sf aes8 aes aes aes
        <<g1.\sf~ {s2. s2._\markup{\italic dim.}}>>
        \bar "||"
        \key f \major
        g1.\p~
        g~_\markup{\italic dim.}
        g~\pp
        g~
        g4 r r g'^"pizz." r r
        c, r r r2.
        R1*3/2*13
        \mark \default
        \pageBreak
        R1*3/2*4
        <<
          \override MultiMeasureRest #'staff-position = #-6
          {
            R1*3/2
            R1*3/2
            R1*3/2
            R1*3/2
          }
          {
            s2. s4 s s^"Vc."
            s1*3/2
            s1*3/2
            s1*3/2
          }
          \new CueVoice {
            \slurUp \stemUp r2. r4 r e\pp
            a8( e cis e a b cis a e a c e
             a4) r r r r e,
            \stemUp a8( e cis e a b cis a e a c e)
          }
        >>
        \revert MultiMeasureRest #'staff-position
        d,4^"(pizz.)" r r r2.
        d4 r r r2.
        d4 r r r2.
        d4 r r r2.
        b4 r r r2.
        c4 r r r2.
        g4 r r r2.
        g4 r r r2.
        e'!4_\markup{\italic cresc.} r r ees r r
        d r r g r r 
        e! r r ees r r 
        d r r g, r r 
        e!4\pp^"arco" e8 e e e e4 e8 e e e 
        e'4-. e-. e-. e-. e-. e-. 
        ees2 r4 r2.
        r2. r4 ees8\p ees ees ees
        d4 d8 d d d d4 d8 d d d 
        d4-._\markup{\italic cresc.} d-. d-. d-. d-. d-.
        d2 r4 r2.
        r2. r4 des8 des des des 
        \break
        des4 des8_\cresc des des des des4 des8 des des des 
        des4 des des des c8 c c c
        c4 c8 c c c c4 c8 c c c
        c4 c c c f,8\f f f f 
        \bar "||"
        \key f \minor 
        f2 r4 f2 r4 
        f2 r4 r f'8 f f f 
        f4 des'8 des des des des4 c bes
        a2( c4) f bes,,8 bes bes bes
        bes4 des8 des des des des4 f8 f f f
        f4 c'8 c c c c4 bes a
        des4 des8 des des des des4 c bes
        a2( c4) f des,8\ff des des des 
        \mark \default
        des4 des8 des des des des4 des8 des des des 
        des4 des f bes des f 
        c,4 c8 c c c c4 c8 c c c
        c4 c, f aes c f
        aes g f ees d c 
        b2. r4 g'8 g g g 
        des'!4 c bes! aes g f 
        e2. r4 c8 c c c 
        f,4 aes c f f,8_\markup{\italic {"sempre"} \dynamic "f" } f f f 
        f4 a c f f,8 f f f 
        bes4 des f bes bes,8 bes bes bes
        bes4 des g bes bes,8 bes bes bes
        c4 ees aes c c,8 c c c 
        c4 ees aes c c,8 c c c 
        des2 r4 f\f-. ges-. g-.
        aes4.( des,8) des4 a'4.( des,8) des4
        bes'2. bes4 bes bes 
        ces2. f,
        ges ges,
        r2. ees'4-.\f f-. g!-.
        aes4. aes,8 aes4 r2.
        r f'4-. g-. a-. 
        bes4. bes,8 bes4 r2.
        b'4.\ff b,8 b4 r2. 
        b'2\sf b,4 b'2\sf b,4 
        b'2\sf b,4 b'2\sf b,4 
        c2 r4 r2.
        R1*3/2*1^\markup{\number 1}
        r2. c4\p^"pizz." r r 
        c r r c r r 
        c r r r2.
        R1*3/2*1^\markup{\number 1}
        r2. c4 r r 
        c r r c r r 
        c r r r2.
        R1*3/2*1^\markup{\number 1}
        r2. c4 r r 
        R1*3/2*1^\markup{\number 1}
        r2. c4 r r 
        r4 r c\pp^"arco" c2 c4
        des2.( aes)
        bes2.( f)
        des'( a)
        bes1.(
        c)~
        c~
        c~
        c~
        c4 r r r2. 
        R1*3/2*3
        f,2.~ f2_\markup{\italic cresc.} f4
        a2.~ a2 a4
        bes2\< bes4 bes2 bes4
        b1.\! 
        c~\>
        c\!
        R1*3/2*2
        \mark \default
        a1._\markup{\italic cresc.}( 
        bes2.) r2.
        a( f 
        bes) r  
        << 
          {
            b( g 
            c) r
          }{ 
            s4. s_\markup{\italic cresc.} s2.
            s1.
          } 
        >>
        b2.\mf( g 
        c) r
        b_\markup{\italic {molto cresc.}} g
        c des\f~ 
        des des 
        ges( f 
        ees des)
        c r  
        r des( 
        c) r 
        \break
        r des( 
        c ges'\p)
        f4 r r f r r 
        ges r r ees r r 
        aes r r ges2.( 
        f ees)
        des4 r r f r r 
        ges r r ees r r 
        aes r r aes, r r 
        \mark \default 
        des1. 
        c_\markup{\italic cresc.}
        bes2. aes 
        g f 
        e r 
        \break
        r f'( 
        e) r 
        r f( 
        e2) r4 bes\p r r 
        aes r r aes r r 
        bes1. 
        c4 r r c r r 
        des1. 
        d4 r r d r r 
        c r r r2.
        c4 r r r2.
        c4 r r r2.
        c4 r r r2.
        r4 aes8_\markup{\italic cresc.} aes aes aes aes4 c8 c c c 
        c4 c' bes aes aes8 aes aes aes
        aes4 aes8 aes aes aes aes4  c8 c c c 
        c4 e bes aes bes\f aes 
        g2 r4 c,2 r4 
        f2 r4 aes2 r4 
        g2 r4 c,2 r4 
        des2 r4 des'2 r4 
        c2 r4 f,2 r4 
        bes2 r4 r c8 c c c 
        c4( b) g2 bes8 bes bes bes 
        bes4( aes) f2 f8 f f f 
        f4( e) c2 ees8 ees ees ees 
        % \break
        ees2 r4 des2 r4_\markup{\italic {"sempre più"} \dynamic "f" }
        a'2 r4 bes2 r4 
        aes!2 r4 g2 r4 
        r des'8\ff des des des des4( c) g 
        r des'8 des des des des4( c) g 
        r des'8 des des des des4( c) g 
        r des'8 des des des des4( c) g 
        \mark \default 
        aes2 aes,4 aes2 aes4
        aes2 aes4 aes aes8 aes aes aes 
        bes2 bes4 bes2 bes4
        bes2 bes4 bes bes8 bes bes bes 
        c2. c2 c4 
        c2.~ c4 bes8\ff bes bes bes 
        aes2 aes4 aes2 aes4
        aes2 aes4 aes aes8 aes aes aes 
        aes2 aes4 aes2 aes4
        aes2 aes4 aes des8 des des des 
        des2 des4 des2 des4 
        des2 des4 c2 c4 
        b2 r4 r2. 
        b2 r4 r2. 
        b2 r4 r2. 
        R1*3/2*1^\markup{\number 1}
        R1*3/2*2^\markup{\italic ritard.}
        \pageBreak
        \bar "||" 
        \key f \major
        \tempo "a tempo"
        R1*3/2*7
        c4\pp^"pizz." r r r2.
        R1*3/2*1^\markup{\number 1}
        c4 r r r2.
        R1*3/2*1^\markup{\number 1}
        c4 r r r2.
        R1*3/2*6
        r2. g4 r r 
        c r r r2. 
        R1*3/2*1^\markup{\number 1}
        r2. c4 r r 
        d r r bes r r 
        c r r r2. 
        R1*3/2*1^\markup{\number 1}
        r2. c4 r r 
        \mark #11 
        f r r r2.
        r c4 r r 
        f r r r2.
        R1*3/2*1^\markup{\number 1}
        r2. c4 r r 
        r2. c4 r r 
        c4 r r c4 r r 
        f,1.~^\markup{\halign #0 "arco"}
        f~
        f~
        f~
        f2. r  
        f4^"pizz." r r r2. 
        f4 r r r2. 
        r2. f4 r r 
        f r r r2.
        r2. f4 r r 
        f r r r2.  
        f4 r r r2. 
        f4 r r r2. 
        \bar "|."
      }

    >>


    \layout {
      \context { \Staff \RemoveEmptyStaves }
    }
  }

  \markup{
    \fill-line{
      \hbracket{
        \pad-around #1 {
          \fontsize #2 {\caps{Memo}}
        }
      }
    }
  }
}

\version "2.22.2"

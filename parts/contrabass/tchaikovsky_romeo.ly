\header {
  title = \markup {
    \center-column {
      \medium{
        \line{Peter Ilyich Tchaikovsky}
        \line{Romeo and Juliet, Fantasy Overture}
      }
    }
  }
  tagline = ##f
  instrument = \markup { \fontsize #2 \bold "Basso." }
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

  print-page-number = ##f

}


\layout {
  indent = 1.0\cm %%0にするといい
}


\score {
  <<
    \new Staff
    \time 4/4 %%拍子
    \compressEmptyMeasures
    \relative c
    {
      \set Staff.midiInstrument = "cello"
      \clef bass %%音部記号　ト音…treble　ヘ音…bass　ハ音…alto
      \override Hairpin #'minimum-length = #6

      \key a \major  %%調
      \tempo "Andante non tanto quasi Moderato."  %%BPM
      R1*10
      r2 cis\p_(
      d1->
      cis2 b)
      a1~
      a2 r
      R1*2
      d1->~
      d2 <<a\< s(>>
      d\sfz\> cis
      \bar "||"
      \key f \minor
      des1)\pp~
      des~_\markup{\override #'(line-width . 28) \fill-line {\italic {poco a poco cresc.}}}
      des~
      des~
      des
      c~\<
      c
      f,\mf\>~
      <<f {s2 s\p}>>
      des'1\p~
      des
      f,~
      f
      des'\ppp~
      des
      f,~
      f
      \mark \default
      R1*5
      r8 c'\p^"pizz." bes aes r f bes des
      f r r4 r2
      R1*2
      r2 des'8\p bes aes f
      des bes des f des ees f g
      aes g f ees des c bes aes
      g f e g c d e g
      r2 c,\p^"arco"
      des1->_(
      c2 bes
      aes1)~
      aes2 r 
      R1*2
      des1->\p~
      des2 aes\<(
      des\sf\> c~
      \mark \default
      c1)\p~
      c~_\markup{\override #'(line-width . 30) \fill-line {\italic {poco a poco cresc.}}}
      c~
      c~
      c
      \break
      b~
      b\<
      e,\mf\>~
      <<e {s2 s\p}>>
      c'1~
      c
      e,~
      e
      c'\ppp~
      c
      e,~
      e
      \bar "||"
      \key c \major
      R1*8^\markup{\italic "poco a poco string."}
      \break
      \mark \default
      e'1~_\markup{\override #'(line-width . 18) \fill-line {\italic {cresc. al}}}
      e~
      e~
      e
      \tempo "Allegro."
      d\f
      cis
      d
      cis
      d
      g
      \tempo "Molto meno mosso."
      fis8 r r4 r2
      r2 fis2\p(
      \break
      g1
      fis2 e
      d1)
      R1
      g1\p(
      fis2 e
      d1)
      R1
      d1_\markup{\italic {cresc.}}
      R1
      d2 r
      d r
      d r
      d r
      \bar "||"
      \key d \major
      \tempo "Allegro giusto."
      d4\f e16 e e8 r e4 e8
      eis8. eis16 eis4 r8 fis g fis
      eis8. eis16 eis4 r8 fis g fis
      f e! r4 e8 r r4
      r2 e8 r r4
      r2 e8 r r g
      f r r f\f c f c f 
      c4( e8) e b e b e
      d r e16 e e8 r eis4 fis8
      b, r e!16 e e8 r8 eis4 fis8
      \pageBreak
      \mark \default
      b,8 e4\f e e e8~
      e r r4 r2
      r8 e4 e e e8~
      e r r4 r2
      r2 d8\mf r a'4~
      a8 d, d e f8. e16 d8 r
      r d d[ f] g8. f16 e8 r
      r d' cis8. a16 d8 r r4
      r2 g,8 r d'4~
      d8 g, g a bes8. a16 g8 r
      r g g[ bes] c8. bes16 a8 r
      r g' fis8. d16 g8 r r4
      r8 f8 e8. c16 f8 r r4
      r8 f,4\f f8~ f r r4
      r8 fis!4 fis8~ fis r r4
      r8 g4 g8~ g r r4
      r8 aes4 aes8~ aes r r4
      r8 a!4 a8~ a r r4
      r8 g!4 g8~ g r r4
      r8 fis4 fis8~ fis r r4
      r8 eis4 eis eis eis8
      \mark \default
      fis b,16\f[ cis_\markup{\italic {cresc.}}] d cis b ais b ais b cis d e fis g
      fis e d cis d r r8 r2
      r4 fis8 r r fis r4
      r8 fis fis\noBeam  r r4 fis8 r
      r fis r4 fis8 r r4
      R1*2
      r4 fis8 r r2
      d4 e16\ff e e8 r e4 e8
      eis8. eis16 eis4 r8 fis g fis
      eis8. eis16 eis4 r8 fis g fis
      f e! r4 e8 r r16 c'( b bes
      a aes g fis! f8) r e r r16 c'( b bes
      a aes g fis! f8) r e r r g
      f r r f c f c f 
      c4( e8) e b e b e
      d r e16 e e8 r eis4 fis8
      b r e,!16 e e8 r8 eis4 fis8
      \mark \default
      b8 cis,16[ d] e8 e16 fis gis8 gis16 ais b8 b16 cis
      d8 r r4 r2
      b,2 b4 bes
      a2.\> r4\p
      R1
      a2.\p r4
      R1
      a2.\pp r4
      a2. r4
      a1\pp 
      a
      a
      a
      a
      a
      a\pp~
      a8 gis16( a bes8) gis16( a bes2)
      a1~
      a8 gis16( a bes8) gis16( a bes2)
      a1~
      a2 a
      a1~
      a2
      a
      \mark \default
      \bar "||"
      \key des \major
      aes2 r
      ges'\p^"pizz." r
      f r
      c r
      f r 
      bes, r
      ees r
      aes, r
      des4 r r2
      R1*12
      \pageBreak
      \mark \default
      R1
      cis'4\p^"pizz." r r2
      cis4_\markup{\italic {cresc.}} r r2
      b4 r r2
      ais4 r r2
      a4\mf r r2
      r a,4_\markup{\italic {dim.}} r
      a'\p r a, r
      aes!\p r aes'! r
      ges!2 r
      f r
      c r
      f r 
      bes, r
      ees r
      aes, r
      r aes
      aes_\markup{\override #'(line-width . 30) \fill-line {\italic {poco a poco cresc.}}} aes
      r aes
      aes aes
      r aes
      aes aes
      r aes
      aes aes
      r aes
      aes\mf aes_\markup{\italic {cresc.}}
      r aes
      aes aes
      r aes\<
      ges\> ges'
      f\pp r
      ees r 
      des r
      c r
      f r
      bes, r
      ees r
      aes, r
      \mark \default
      <<des1\pp^"arco"~ {s4 s2^\markup{\tiny \number 1} s4}>>
      <<des1~ {s4 s2^\markup{\tiny \number 2} s4}>>
      <<des1~ {s4 s2^\markup{\tiny \number 3} s4}>>
      <<des1~ {s4 s2^\markup{\tiny \number 4} s4}>>
      <<des1~ {s4 s2^\markup{\tiny \number 5} s4}>>
      <<des1~ {s4 s2^\markup{\tiny \number 6} s4}>>
      <<des1~ {s4 s2^\markup{\tiny \number 7} s4}>>
      <<des1~ {s4 s2^\markup{\tiny \number 8} s4}>>
      des2 r
      R1
      beses2^"pizz." r
      R1
      des2 r
      R1
      beses2 r
      R1
      des2 r
      R1*3
      des4\p^"pizz." r r2
      R1*3
      des4 r r2
      R1
      des4 r r2
      R1
      des4 r r2
      R1
      \mark \default
      \bar "||"
      \key c \major
      cis4\p^"arco" d16 d d8 r b4_\markup{\italic {cresc.}} cis8
      d2 r8 b4 cis8
      d2 r8 b4 cis8
      d2\mf d
      d d
      cis8\f dis16 eis
      fis[ \set stemLeftBeamCount = #1 \set stemRightBeamCount = #1 r \set stemLeftBeamCount = #1 a b] 
      cis[ \set stemLeftBeamCount = #1 \set stemRightBeamCount = #1 r \set stemLeftBeamCount = #1 gis fis] 
      cis[ \set stemLeftBeamCount = #1 \set stemRightBeamCount = #1 r \set stemLeftBeamCount = #1 e d]
      cis[ \set stemLeftBeamCount = #1 \set stemRightBeamCount = #1 r \set stemLeftBeamCount = #1 e d] 
      cis[ \set stemLeftBeamCount = #1 \set stemRightBeamCount = #1 r \set stemLeftBeamCount = #1 e d] 
      cis[ \set stemLeftBeamCount = #1 \set stemRightBeamCount = #1 r \set stemLeftBeamCount = #1 cis b] 
      a[ \set stemLeftBeamCount = #1 \set stemRightBeamCount = #1 r \set stemLeftBeamCount = #1 a gis]
      fis8 r fis4\p^"pizz." r fis
      r fis r fis
      r fis r fis
      r fis r fis'8^"arco" r
      e1(
      ees8\sfz) r r4 r2
      R1*7
      r4 d\p^"pizz" r d
      r d r d 
      r d r d 
      r d r d 
      r d r^"arco" d
      c2\mf cis_\markup{\italic {cresc.}}
      d ees
      \mark \default
      d8\f e!16 fis
      g[ \set stemLeftBeamCount = #1 \set stemRightBeamCount = #1 r \set stemLeftBeamCount = #1 bes c]
      d[ \set stemLeftBeamCount = #1 \set stemRightBeamCount = #1 r \set stemLeftBeamCount = #1 a g]
      d[ \set stemLeftBeamCount = #1 \set stemRightBeamCount = #1 r \set stemLeftBeamCount = #1 f ees]
      d\>[ \set stemLeftBeamCount = #1 \set stemRightBeamCount = #1 r \set stemLeftBeamCount = #1 f ees]
      d[ \set stemLeftBeamCount = #1 \set stemRightBeamCount = #1 r \set stemLeftBeamCount = #1 f ees]
      d[ \set stemLeftBeamCount = #1 \set stemRightBeamCount = #1 r \set stemLeftBeamCount = #1 d c]
      bes[ \set stemLeftBeamCount = #1 \set stemRightBeamCount = #1 r \set stemLeftBeamCount = #1 bes a]
      g8\p r g4^"pizz." r g
      r g r g
      r g r g
      r g r g'^"arco"
      f1\<(
      e8\sfz) r r4 r2
      R1*7
      r4 ees\p^"pizz." r ees 
      r ees r ees 
      r ees r ees 
      r ees r ees 
      r ees r dis^"arco"
      \mark \default
      cis8\f cis16( dis e!4~ e8) cis16( dis e8) cis16( dis 
      e4) fis16 fis fis8 r2
      r8 cis16( dis e4~ e8) cis16( dis e8) cis16( dis 
      e4) fis16 fis fis8 r2
      r8 cis16( dis e4~ e8) cis16( dis e8) cis16( dis 
      e4\<) fis16 fis fis8 r4 r8 fis\!
      \override TextSpanner.bound-details.left.text = "cresc."
      e8 fis g4_\startTextSpan r2
      g4 a16 a a8 r4 r8 a,
      \override TextSpanner.bound-details.left.text = "molto"
      g a bes4\stopTextSpan r4 r8_\startTextSpan bes8
      a b! c4 r r8 c
      b cis d4 r2\stopTextSpan
      \mark \default
      r2 a'4.\ff g8~
      g gis-> a-> b-> e,4-> r
      r2 b'4. a8~
      a ais-> b-> cis-> fis,4-> r
      r gis16 gis gis8 r4 g16 g g8
      r4 fis16 fis fis8 r4 e16 e e8
      r4 cis16 cis cis8 r d r e
      r4 cis16 cis cis8 r d r e
      r4 b'16 b b8 r4 ais16 ais ais8
      r4 a!16 a a8 r4 gis16 gis gis8
      r4 eis16 eis eis8 r fis r gis
      r4 eis16 eis eis8 r fis r gis
      r2 a2\ff
      gis g
      \mark \default
      fis8 b,16 cis d cis b ais b ais b cis d e fis g
      fis e d cis d r r8 r2
      r4 fis8 r r fis r4
      r8 fis fis\noBeam r r4 fis8 r
      r fis r4 fis8 r r4
      R1*2
      r4 fis8 r r2
      \bar "||"
      \key d \major
      d4 e16\ff e e8 r e4 e8
      eis8. eis16 eis4 r8 fis g fis
      eis8. eis16 eis4 r8 fis g fis
      f e! r4 e8 r r16 c'( b bes
      a aes g fis f8) r e r r16 c'( b bes
      a! aes g fis! f8) r e r r g
      f r r f c f c f 
      c4( e8) e b e b e
      d r e16 e e8 r eis4 fis8
      b r e,16 e e8 r eis4 fis8
      b r e,!16 e e8 r8 d'4 cis8
      \mark \default
      b8 bes4 bes bes bes8
      a r r4 r2
      r e16 d cis b a g' fis e
      d r r8 r4 r2
      R1*19
      \pageBreak
      \mark \default
      bes'1\f~
      bes
      a\f
      g
      fis
      cis
      fis
      b,
      e
      <<a,1~ {s4 s2^\markup{\tiny \number 1} s4}>>
      <<a1~ {s4 s2^\markup{\tiny \number 2} s4}>>
      <<a1~ {s4 s2^\markup{\tiny \number 3} s4}>>
      <<a1~ {s4 s2^\markup{\tiny \number 4} s4}>>
      <<a1~ {s4 s2^\markup{\tiny \number 5} s4}>>
      <<a1~ {s4 s2^\markup{\tiny \number 6} s4}>>
      <<a1~ {s4 s2^\markup{\tiny \number 7} s4}>>
      <<a1~ {s4 s2^\markup{\tiny \number 8} s4}>>
      <<a1~ {s4 s2^\markup{\tiny \number 9} s4}>>
      \override TextSpanner.bound-details.left.text = "cresc."
      <<a1~_\startTextSpan {s4 s2^\markup{\tiny \number 10} s4}>>
      <<a1~ {s4 s2^\markup{\tiny \number 11} s4}>>
      <<a1~ {s4 s2^\markup{\tiny \number 12} s4}>>
      <<a1~ {s4 s2^\markup{\tiny \number 13} s4}>>
      a2 a'
      gis\sf g\stopTextSpan
      \break
      fis1\ff
      e
      d2 fis4( a
      cis1)
      fis,
      b,
      e~
      e\>
      \mark \default
      f2\p r
      f2^"pizz." r
      ees r
      f ees
      R1
      g2\p r
      g_\markup{\italic {cresc.}} r
      f r
      g f
      R1
      f1\f^"arco"
      e
      d
      c
      bes
      a4\< a2 a4~
      a\! a2 a'4
      gis1\ff\>
      fis\mf
      e
      eis2 cis
      a r
      a4 b16 b b8 r2
      a r
      a4 b16 b b8 r2
      a r
      a r
      \mark \default
      b4\ff e16 e e8 r e4 e8 
      eis8. eis16 eis4 r8 fis g fis
      eis8. eis16 eis4 r8 fis g fis
      f ees r4 r2
      c2 aes'
      g f
      ees e4 f
      ees r r2
      c4 f16 f f8 r f4 f8
      \pageBreak
      fis!8. fis16 fis4 r8 g aes g
      fis!8. fis16 fis4 r8 g aes g
      fis! e! r4 r2
      cis!2 a'! 
      gis fis
      e eis4 fis
      e!4 r r2
      r4_\markup{\italic sempre \dynamic f} e16 e e8 r4 fis16 fis fis8
      r4 gis8 gis16 gis gis4 a
      r4 gis16 gis gis8 r4 ais16 ais ais8
      r4 c8 c16 c c4 des
      r4 d!8 d16 d d4 ees
      r8 d, r e16 e e8 f r g
      r e r fis!16 fis fis8 g r a
      r e r gis r gis r ais
      r bes r c r c r d
      gis,1:16
      g!8 r r4 r2
      fis4\fff e16 e e8 r2
      d4 cis16 cis cis8 r2
      b8 ais r4 r2
      R1
      a!4 gis16 gis gis8 r2
      g!4 fis16 fis fis8 r2
      e8 r r4 dis'8:16[ e: g: bis,:]
      cis:[ e: a,: ais:] cis:[ fis,: g: ais:]
      e2-> g->~
      g2.. fis8
      fis1\sf\>~
      fis2~ fis8\! r8 r4\fermata
      \mark 20
      \bar "||"
      \key b \major
      \tempo "Moderato assai."
      b4\p^"pizz." b b^\markup{\tiny \number 1} b
      b b b^\markup{\tiny \number 2} b 
      b b b^\markup{\tiny \number 3} b  
      b b b^\markup{\tiny \number 4} b 
      b b b^\markup{\tiny \number 5} b 
      b b b^\markup{\tiny \number 6} b 
      b b b^\markup{\tiny \number 7} b 
      b b b^\markup{\tiny \number 8} b 
      b\p r b r
      b r r2
      R1*15
      b2\mf^"arco" a'(
      gis g4 fis
      b,2) a'(
      gis! g4 fis
      b,2) a'(
      gis! g4 fis)
      e1~
      e
      b4 r r2
      r4 b16\ff b r8 r4 b4
      r8 b r4 r b4
      r8 b r4 b4 r
      b1\fermata
      \bar "|."

    }

  >>


  \layout {
    \context { \Staff \RemoveEmptyStaves }
  }
  \midi{}
}

\version "2.16.2"

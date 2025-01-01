\version "2.24.0"
\header {
  title = \markup {
          \override #'(font-name . "HGSSoeiKakupoptai")
          "ネコバス"
  }
  tagline = c
  composer = \markup {
          \override #'(font-name . "HGSSoeiKakupoptai")
          "久石 譲"
  }
  arranger = \markup {
          \override #'(font-name . "HGSSoeiKakupoptai")
          "kie"
  }
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
  indent = 3.0\cm %%0にするといい
}


\score {
  \new ChoirStaff <<    
    \new Staff \with {
      instrumentName = "Contrabass I "
    }{
      \compressEmptyMeasures
      \include "../data/neko_duo_cb1.lyi"
    }
    
    \new Staff \with {
      instrumentName = "Contrabass II "
    }{
      \compressEmptyMeasures
      \include "../data/neko_duo_cb2.lyi"
    }

  >>
  \layout{}
  \midi{}
}
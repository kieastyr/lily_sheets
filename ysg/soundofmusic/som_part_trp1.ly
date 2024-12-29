\version "2.24.0"
\header {
  title = \markup {
          \override #'(font-name . "HGSSoeiKakupoptai")
          "Sound Of Music"
  }
  subtitle = \markup {
          \override #'(font-name . "HGSSoeiKakupoptai")
          "Overture"
  }
  tagline = c
  poet = \markup{\bold "Trumpet 1st"}
  composer = \markup {
          \override #'(font-name . "HGSSoeiKakupoptai")
          "Richard Rodgers"
  }
  arranger = \markup {
          \override #'(font-name . "HGSSoeiKakupoptai")
          "R.Yasougi"
  }
}


#(set-global-staff-size 24)
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
  
  print-first-page-number = ##f
  first-page-number = 1

}


\layout {
  indent = 1.0\cm %%0にするといい
}


\score {
  <<    
    \new Staff
    \compressEmptyMeasures
    \include "som_trp1.lyi"
      

  >>
}
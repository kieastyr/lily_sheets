\version "2.24.0"
\header {
  title = \markup {
          "Concerto a Due Violini"
  }
  tagline = c
  composer = \markup {
          "J. S. Bach"
  }
  instrument = \markup{\bold "Contrabasso(Violino principale II)"}
}


#(set-global-staff-size 18)
#(set-default-paper-size "a4" )

%%以下、定義
ffz = #(make-dynamic-script "ffz")
fpp = #(make-dynamic-script "fpp")
%%ここまで、定義

\paper {
  #(set-paper-size "a4")
  top-margin = 1.5\cm
  bottom-margin = 1\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm

  markup-markup-spacing.basic-distance = #20
  markup-system-spacing.basic-distance = #20
  last-bottom-spacing.basic-distance = #20
  system-system-spacing.basic-distance = #12
  score-markup-spacing.basic-distance = #20

  print-page-number = ##t
  
  print-first-page-number = ##f
  first-page-number = 2

}


\layout {
  indent = 2.0\cm %%0にするといい
}


\score {
   <<    
    \new Staff
    \compressEmptyMeasures
    \include "../data/bach_doppel_Vn2toCb.lyi"
  >>
  \layout{}
  \midi{}
}
\version "2.24.0"
\header {
  title = \markup {
          "DUETT"
  }
  subtitle = \markup {
          "FOR TROMBONE AND DOUBLE BASS"
  }
  tagline = c
  composer = \markup {
          "Sir Edward Elgar"
  }
  arranger = \markup {
          "August 1st. 1887"
  }
}


#(set-global-staff-size 22)
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
  system-system-spacing.basic-distance = #20
  score-markup-spacing.basic-distance = #20

  print-page-number = ##f
  
  print-first-page-number = ##f
  first-page-number = 1

}


\layout {
  indent = 3.0\cm %%0にするといい
}


\score {
  \new ChoirStaff <<    
    \new Staff \with{
      instrumentName = "Trombone "
    }{
      \compressEmptyMeasures
      \include "../data/duet_trb.ly"
    }
    
    \new Staff \with{
      instrumentName = "Double Bass "
    }{
      \compressEmptyMeasures
      \include "../data/duet_cb.ly"
    }
  >>
  \layout{}
  \midi{}
}
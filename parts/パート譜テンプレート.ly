\header {
  title = "タイトル"
  subtitle = "サブタイトル"
  composer = "作者 "
  tagline = ##f
  instrument = \markup { \fontsize #2 \bold "楽器名" }
}


#(set-global-staff-size 21)
#(set-default-paper-size "a4" )

%%以下、定義
ffz = #(make-dynamic-script "ffz")
fpp = #(make-dynamic-script "fpp")
%%ここまで、定義

\paper {
  #(set-paper-size "a4")
  top-margin = 3\cm
  bottom-margin = 1\cm
  left-margin = 1\cm
  right-margin = 1\cm

  markup-system-spacing #'basic-distance = #20
  last-bottom-spacing #'basic-distance = #12
  system-system-spacing #'basic-distance = #16

  print-page-number = ##f

}


\layout {
  indent = 3.0\cm %%0にするといい
}


\score {
  <<
    \new Staff
    \time 4/4 %%拍子
    \compressEmptyMeasures \relative c'
    {
      \clef alto %%音部記号　ト音…treble　ヘ音…bass　ハ音…alto
      \override Hairpin #'minimum-length = #6
      \set Score.markFormatter = #format-mark-circle-numbers
      \set Staff.instrumentName = #"楽器名"

      \key c \major  %%調
      \tempo "速さ" 4 = 0  %%BPM
      a a a a


      \bar "|."

    }

  >>


  \layout {
    \context { \Staff \RemoveEmptyStaves }
  }
}

\version "2.16.2"

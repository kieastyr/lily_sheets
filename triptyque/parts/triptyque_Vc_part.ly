\version "2.24.0"

%%以下、定義
ffz = #(make-dynamic-script "ffz")
fpp = #(make-dynamic-script "fpp")
fsempre = _\markup { \dynamic f \italic sempre}
ffsub = _\markup { \dynamic ff \italic sub.}
%%ここまで、定義

\book{
  \header {
    title = \markup {
            "弦楽のための三楽章"
    }
    tagline = c
    composer = \markup {
            "芥川 也寸志"
    }
    instrument = \markup{\bold "Violoncello"}
  }
  
  
  #(set-global-staff-size 26)
  #(set-default-paper-size "a4" )
  
  
  \paper {
    print-all-headers = ##t
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
  
  \score {
    \header {
      title = "I"
      composer = ##f
      instrument = ##f
    }
    \new ChoirStaff <<    
      \new Staff
      \compressEmptyMeasures
      \include "../data/triptyque_vc_mov1.lyi"
    >>
    \layout {
      indent = 0\cm %%0にするといい
    }
    \midi{}
  }
}
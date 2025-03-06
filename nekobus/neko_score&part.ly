\version "2.24.0"

%%以下、定義
ffz = #(make-dynamic-script "ffz")
fpp = #(make-dynamic-script "fpp")
%%ここまで、定義


#(set-global-staff-size 20)
#(set-default-paper-size "a4" )

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
  first-page-number = 1
  
}
  
%% score
\bookpart {
  \header {
    title = \markup {
      \override #'(font-name . "Yu Gothic UI Semibold")
      "ネコバス（コントラバス四重奏）"
    }
    tagline = c
    composer = \markup {
      \override #'(font-name . "Yu Gothic UI Semibold")
      "久石譲"
    }
    arranger = \markup {
      \override #'(font-name . "Yu Gothic UI Semibold")
      "kie"
    }
  }
  
  \score {
    \new ChoirStaff <<    
      \new Staff \with {
      instrumentName = "Contrabass I "
      }{
        \compressEmptyMeasures
        \include "data/neko_cb1.lyi"
      }
      
      \new Staff \with {
      instrumentName = "Contrabass II "
      }{
        \compressEmptyMeasures
        \include "data/neko_cb2.lyi"
      }
      
      \new Staff \with {
      instrumentName = "Contrabass III "
      }{
        \compressEmptyMeasures
        \include "data/neko_cb3.lyi"
      }
  
      \new Staff \with {
      instrumentName = "Contrabass IV "
      }{
        \compressEmptyMeasures
        \include "data/neko_cb4.lyi"
      }
    >>
    \layout{
      indent = 3.0\cm %%0にするといい
    }
    \midi{}
  }	
}
\bookpart {
  \header {
    title = \markup {
            \override #'(font-name . "Yu Gothic UI Semibold")
            "ネコバス（コントラバス四重奏）"
    }
    tagline = c
    composer = \markup {
            \override #'(font-name . "Yu Gothic UI Semibold")
            "久石譲"
    }
    arranger = \markup {
            \override #'(font-name . "Yu Gothic UI Semibold")
            "kie"
    }
    instrument = \markup{\bold "Contrabass 1st"}
  }
  
  \score {
    <<    
      \new Staff
      \compressEmptyMeasures
      \include "data/neko_cb1.lyi"
    >>
    \layout{
      indent = 1.0\cm %%0にするといい
    }
  }
}
\bookpart {
  \header {
    title = \markup {
            \override #'(font-name . "Yu Gothic UI Semibold")
            "ネコバス（コントラバス四重奏）"
    }
    tagline = c
    composer = \markup {
            \override #'(font-name . "Yu Gothic UI Semibold")
            "久石譲"
    }
    arranger = \markup {
            \override #'(font-name . "Yu Gothic UI Semibold")
            "kie"
    }
    instrument = \markup{\bold "Contrabass 2nd"}
  }
  
  \score {
    <<    
      \new Staff
      \compressEmptyMeasures
      \include "data/neko_cb2.lyi"
    >>
    \layout{
      indent = 1.0\cm %%0にするといい
    }
  }
}
\bookpart {
  \header {
    title = \markup {
            \override #'(font-name . "Yu Gothic UI Semibold")
            "ネコバス（コントラバス四重奏）"
    }
    tagline = c
    composer = \markup {
            \override #'(font-name . "Yu Gothic UI Semibold")
            "久石譲"
    }
    arranger = \markup {
            \override #'(font-name . "Yu Gothic UI Semibold")
            "kie"
    }
    instrument = \markup{\bold "Contrabass 3rd"}
  }
  
  \score {
    <<    
      \new Staff
      \compressEmptyMeasures
      \include "data/neko_cb3.lyi"
    >>
    \layout{
      indent = 1.0\cm %%0にするといい
    }
  }
}
\bookpart {
  \header {
    title = \markup {
            \override #'(font-name . "Yu Gothic UI Semibold")
            "ネコバス（コントラバス四重奏）"
    }
    tagline = c
    composer = \markup {
            \override #'(font-name . "Yu Gothic UI Semibold")
            "久石譲"
    }
    arranger = \markup {
            \override #'(font-name . "Yu Gothic UI Semibold")
            "kie"
    }
    instrument = \markup{\bold "Contrabass 4th"}
  }
  
  \score {
    <<    
      \new Staff
      \compressEmptyMeasures
      \include "data/neko_cb4.lyi"
    >>
    \layout{
      indent = 1.0\cm %%0にするといい
    }
  }
}
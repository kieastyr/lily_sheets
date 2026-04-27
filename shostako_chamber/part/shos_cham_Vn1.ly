\version "2.24.0"

%%以下、定義
sfpp = #(make-dynamic-script "sfpp")
sfff = #(make-dynamic-script "sfff")
%%ここまで、定義

#(set-global-staff-size 20)
#(set-default-paper-size "a4" )

\book{
  \header {
    title = \markup {
      % \override #'(font-name . "HGSSoeiKakupoptai")
      "Kammersinfonie"
    }
    subtitle = \markup {
      % \override #'(font-name . "HGSSoeiKakupoptai")
      \normal-text "für Streichorchester"
    }
    subsubtitle = \markup {
      % \override #'(font-name . "HGSSoeiKakupoptai")
      \normal-text "Op. 110a"
    }
    tagline = c
    composer = \markup {
      % \override #'(font-name . "HGSSoeiKakupoptai")
      "Dmitri Schostakowisch"
    }
    poet = \markup {
      % \override #'(font-name . "HGSSoeiKakupoptai")
      "Bearbeitung: Rudolf Barschai"
    }
    instrument = \markup{\bold "Violine I"}
  }

  \paper {
    print-all-headers = ##t
    page-breaking = #ly:page-turn-breaking

    #(set-paper-size "a4")
    top-margin = 2\cm
    bottom-margin = 1\cm
    left-margin = 1\cm
    right-margin = 1\cm

    markup-markup-spacing.basic-distance = #12
    markup-system-spacing.basic-distance = #12
    last-bottom-spacing.basic-distance = #12
    system-system-spacing.basic-distance = #16
    score-markup-spacing.basic-distance = #20

    print-page-number = ##t
    print-first-page-number = ##f
    first-page-number = 1
  }

  \score {
    \header {
      title = "I"
      subtitle = \markup{\null}
      subsubtitle = \markup{\null}
      composer = \markup{\null}
      poet = \markup{\null}
      instrument = \markup{\null}
    }
    \new ChoirStaff \with{\RemoveAllEmptyStaves} \with{midiInstrument = #"violin"}<<
      \new Staff \with{\consists Page_turn_engraver}{
        <<
          {
            \include "../data/arch-1.lyi"
          }
          {
            \compressEmptyMeasures
            \include "../data/shos_cham_Vn1-1.lyi"
          }
        >>
      }
      \new Staff {
        <<
          {
            \include "../data/arch-1.lyi"
          }
          {
            \include "../data/shos_cham_Vn1-1_altri.lyi"
          }
        >>
      }
    >>
    \layout {
      indent = 0\cm %%0にするといい 
    }
  }

  \score {
    \header {
      title = "II"
      subtitle = \markup{\null}
      subsubtitle = \markup{\null}
      composer = \markup{\null}
      poet = \markup{\null}
      instrument = \markup{\null}
    }
    
    \new ChoirStaff \with{\RemoveAllEmptyStaves} \with{midiInstrument = #"violin"}<<
      \new Staff \with{\consists Page_turn_engraver}{
        <<
          {
            \include "../data/arch-2.lyi"
          }
          {
            \compressEmptyMeasures
            \include "../data/shos_cham_Vn1-2.lyi"
          }
        >>
      }
      \new Staff {
        <<
          {
            \include "../data/arch-2.lyi"
          }
          {
            \include "../data/shos_cham_Vn1-2_div.lyi"
          }
        >>
      }
    >>
    \layout {
      indent = 0\cm %%0にするといい
    } 
  }
}
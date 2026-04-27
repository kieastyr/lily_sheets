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
    instrument = \markup{\bold "Score"}
  }

  \paper {
    print-all-headers = ##t
    page-breaking = #ly:optimal-breaking

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
    print-first-page-number = ##t
    first-page-number = 2
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
    \new ChoirStaff \with{\RemoveAllEmptyStaves} <<
      \new ChoirStaff \with{\RemoveAllEmptyStaves} <<
        \new Staff \with{\consists Page_turn_engraver} \with{midiInstrument = #"violin"}{
          <<
            {
              \compressEmptyMeasures
              \include "../data/arch-1.lyi"
            }
            {
              \compressEmptyMeasures
              \removeWithTag #'cue
              \include "../data/shos_cham_Vn1-1.lyi"
            }
          >>
        }
        \new Staff \with{\consists Page_turn_engraver} \with{midiInstrument = #"violin"}{
          <<
            {
              \compressEmptyMeasures
              \removeWithTag #'cue
              \include "../data/shos_cham_Vn1-1_altri.lyi"
            }
          >>
        }
      >>
      \new ChoirStaff \with{\RemoveAllEmptyStaves} <<
        \new Staff \with{\consists Page_turn_engraver} \with{midiInstrument = #"violin"}{
          <<
            {
              \compressEmptyMeasures
              \removeWithTag #'cue
              \include "../data/shos_cham_Vn2-1.lyi"
            }
          >>
        }
        \new Staff \with{\consists Page_turn_engraver} \with{midiInstrument = #"violin"}{
          <<
            {
              \compressEmptyMeasures
              \removeWithTag #'cue
              \include "../data/shos_cham_Vn2-1_altri.lyi"
            }
          >>
        }
      >>
      \new Staff \with{\consists Page_turn_engraver} \with{midiInstrument = #"viola"}{
        <<
          {
            \compressEmptyMeasures
            \removeWithTag #'cue
            \include "../data/shos_cham_Va-1.lyi"
          }
        >>
      }
      \new Staff \with{\consists Page_turn_engraver} \with{midiInstrument = #"cello"}{
        <<
          {
            \compressEmptyMeasures
            \removeWithTag #'cue
            \include "../data/shos_cham_Vc-1.lyi"
          }
        >>
      }
      \new Staff \with{\consists Page_turn_engraver} \with{midiInstrument = #"contrabass"}{
        <<
          {
            \compressEmptyMeasures
            \removeWithTag #'cue
            \include "../data/shos_cham_cb-1.lyi"
          }
        >>
      }
    >>
    \layout {
      indent = 0\cm %%0にするといい 
    }
    \midi{}
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
    \new ChoirStaff \with{\RemoveAllEmptyStaves} <<
      \new ChoirStaff \with{\RemoveAllEmptyStaves} <<
        \new Staff \with{\consists Page_turn_engraver} \with{midiInstrument = #"violin"}{
          <<
            {
              \compressEmptyMeasures
              \include "../data/arch-2.lyi"
            }
            {
              \compressEmptyMeasures
              \removeWithTag #'cue
              \include "../data/shos_cham_Vn1-2.lyi"
            }
          >>
        }
        \new Staff \with{\consists Page_turn_engraver} \with{midiInstrument = #"violin"}{
          <<
            {
              \compressEmptyMeasures
              \removeWithTag #'cue
              \include "../data/shos_cham_Vn1-2_div.lyi"
            }
          >>
        }
      >>
      \new ChoirStaff \with{\RemoveAllEmptyStaves} <<
        \new Staff \with{\consists Page_turn_engraver} \with{midiInstrument = #"violin"}{
          <<
            {
              \compressEmptyMeasures
              \removeWithTag #'cue
              \include "../data/shos_cham_Vn2-2.lyi"
            }
          >>
        }
        \new Staff \with{\consists Page_turn_engraver} \with{midiInstrument = #"violin"}{
          <<
            {
              \compressEmptyMeasures
              \removeWithTag #'cue
              \include "../data/shos_cham_Vn2-2_div.lyi"
            }
          >>
        }
      >>
      \new Staff \with{\consists Page_turn_engraver} \with{midiInstrument = #"viola"}{
        <<
          {
            \compressEmptyMeasures
            \removeWithTag #'cue
            \include "../data/shos_cham_Va-2.lyi"
          }
        >>
      }
      \new ChoirStaff \with{\RemoveAllEmptyStaves} <<
        \new Staff \with{\consists Page_turn_engraver} \with{midiInstrument = #"cello"}{
          <<
            {
              \compressEmptyMeasures
              \removeWithTag #'cue
              \include "../data/shos_cham_Vc-2.lyi"
            }
          >>
        }
        \new Staff \with{\consists Page_turn_engraver} \with{midiInstrument = #"cello"}{
          <<
            {
              \compressEmptyMeasures
              \removeWithTag #'cue
              \include "../data/shos_cham_Vc-2_div1.lyi"
            }
          >>
        }
        \new Staff \with{\consists Page_turn_engraver} \with{midiInstrument = #"cello"}{
          <<
            {
              \compressEmptyMeasures
              \removeWithTag #'cue
              \include "../data/shos_cham_Vc-2_div2.lyi"
            }
          >>
        }
      >>
      \new Staff \with{\consists Page_turn_engraver} \with{midiInstrument = #"contrabass"}{
        <<
          {
            \compressEmptyMeasures
            \removeWithTag #'cue
            \include "../data/shos_cham_cb-2.lyi"
          }
        >>
      }
    >>
    \layout {
      indent = 0\cm %%0にするといい
    } 
  }
}
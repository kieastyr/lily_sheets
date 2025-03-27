\version "2.24.0"


%%以下、定義
ffz = #(make-dynamic-script "ffz")
fpp = #(make-dynamic-script "fpp")
fsempre = _\markup { \dynamic f \italic sempre}
psub = _\markup { \dynamic p \italic sub.}
fsub = _\markup { \dynamic f \italic sub.}
ffsub = _\markup { \dynamic ff \italic sub.}
pocospan =
#(make-music 'CrescendoEvent
             'span-direction START
             'span-type 'text
             'span-text "poco")
aspan =
#(make-music 'CrescendoEvent
             'span-direction START
             'span-type 'text
             'span-text "a")
twoStacc = \markup {
  \center-align{
    \musicglyph "scripts.staccato"
    \musicglyph "scripts.staccato"
  }
}
%%ここまで、定義

#(set-global-staff-size 20)
#(set-default-paper-size "a4" )

\book{
  \header {
    title = \markup {
            "弦楽のための三楽章"
    }
    tagline = c
    composer = \markup {
            "芥川 也寸志"
    }
    instrument = \markup{\bold "Viola"}
  }
  
  \paper {
    print-all-headers = ##t
    page-breaking = #ly:page-turn-breaking
    page-count = #5
    
    #(set-paper-size "a4")
    top-margin = 2\cm
    bottom-margin = 2\cm
    left-margin = 1\cm
    right-margin = 1\cm
  
    markup-markup-spacing.basic-distance = #20
    markup-system-spacing.basic-distance = #20
    top-system-spacing.minimum-distance = #12
    last-bottom-spacing.basic-distance = #12
    system-system-spacing.minimum-distance = #12
    score-markup-spacing.basic-distance = #20
  
    print-page-number = ##t
    
    print-first-page-number = ##f
    first-page-number = 1
  
    oddFooterMarkup = \markup {
      \fill-line{
        \line{}
        \right-column{
          \line{"[確]v1.0"}
          \line{"A-01-va-"\fromproperty #'page:page-number-string }
        }
      }
    }
    evenFooterMarkup = \oddFooterMarkup
    
  }
  
  \score {
    \header {
      title = "I"
      composer = ##f
      instrument = ##f
    }
    \new ChoirStaff << 
      \new Staff \with{\consists Page_turn_engraver}{
        \compressEmptyMeasures
        \include "../data/triptyque_va_mov1.lyi"
      }
    >>
    \layout {
      indent = 0\cm %%0にするといい
    }
    \midi{}
  }
  \score {
    \header {
      title = \markup{
        \center-column{"II" "Berceuse"}
      }
      composer = ##f
      instrument = ##f
    }
    \new ChoirStaff << 
      \new Staff \with{\consists Page_turn_engraver}{
        \compressEmptyMeasures
        \include "../data/triptyque_va_mov2.lyi"
      }
    >>
    \layout {
      indent = 0\cm %%0にするといい
    }
    \midi{}
  }
  \score {
    \header {
      title = "III"
      composer = ##f
      instrument = ##f
    }
    \new ChoirStaff << 
      \new Staff \with{\consists Page_turn_engraver}{
        \compressEmptyMeasures
        \include "../data/triptyque_va_mov3.lyi"
      }
    >>
    \layout {
      indent = 0\cm %%0にするといい
    }
    \midi{}
  }
  
}
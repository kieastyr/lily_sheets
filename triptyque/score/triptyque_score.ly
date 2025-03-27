\version "2.24.0"

%%以下、定義
ffz = #(make-dynamic-script "ffz")
fpp = #(make-dynamic-script "fpp")
fsempre = _\markup { \dynamic f \italic sempre}
psub = _\markup { \dynamic p \italic sub.}
fsub = _\markup { \dynamic f \italic sub.}
ffsub = _\markup { \dynamic ff \italic sub.}
pocospan = #(make-music	'CrescendoEvent
                        'span-direction START
                        'span-type 'text
                        'span-text "poco")
aspan = #(make-music 'CrescendoEvent
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
  
%% global size  
#(set-global-staff-size 14)
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
  }
  
  \paper {
    print-all-headers = ##t
    
    #(set-paper-size "a4")
    top-margin = 2\cm
    bottom-margin = 2\cm
    left-margin = 2\cm
    right-margin = 2\cm
  
    markup-markup-spacing.basic-distance = #20
    markup-system-spacing.basic-distance = #20
    last-bottom-spacing.basic-distance = #12
    system-system-spacing.basic-distance = #20
    score-markup-spacing.basic-distance = #20
  
    print-page-number = ##t
    
    print-first-page-number = ##f
    first-page-number = 1
    
  
  }
  
  \score {
    \header {
      title = "I"
      composer = ##f
    }
    \new ChoirStaff <<    
      \new Staff \with{
        instrumentName = "Violin I "
      }{
        \compressEmptyMeasures
        \include "../data/triptyque_vn1_mov1.lyi"
      }
      \new Staff \with{
        instrumentName = "Violin II "
      }{
        \compressEmptyMeasures
        \include "../data/triptyque_vn2_mov1.lyi"
      }      
      \new Staff \with{
        instrumentName = "Viola "
      }{
        \compressEmptyMeasures
        \include "../data/triptyque_va_mov1.lyi"
      }      
      \new Staff \with{
        instrumentName = "Violoncello "
      }{
        \compressEmptyMeasures
        \include "../data/triptyque_vc_mov1.lyi"
      }      
      \new Staff \with{
        instrumentName = "Contrabass "
      }{
        \compressEmptyMeasures
        \include "../data/triptyque_cb_mov1.lyi"
      }
    >>
    \layout {
      indent = 2.0 \cm %%0にするといい
    }
    \midi{}
  }
  
  
  \score {
    \header {
      title = \markup{
        \center-column{"II" "Berceuse"}
      }
      composer = ##f
    }
    \new ChoirStaff <<    
      \new Staff \with{
        instrumentName = "Violin I "
      }{
        \compressEmptyMeasures
        \include "../data/triptyque_vn1_mov2.lyi"
      }
      \new Staff \with{
        instrumentName = "Violin II "
      }{
        \compressEmptyMeasures
        \include "../data/triptyque_vn2_mov2.lyi"
      }
      \new Staff \with{
        instrumentName = "Viola "
      }{
        \compressEmptyMeasures
        \include "../data/triptyque_va_mov2.lyi"
      }
      \new Staff \with{
        instrumentName = "Violoncello "
      }{
        \compressEmptyMeasures
        \include "../data/triptyque_vc_mov2.lyi"
      }
      \new Staff \with{
        instrumentName = "Contrabass "
      }{
        \compressEmptyMeasures
        \include "../data/triptyque_cb_mov2.lyi"
      }
    >>
    \layout {
      indent = 2.0 \cm %%0にするといい
    }
    \midi{}
  }
  \score {
    \header {
      title = "III"
      composer = ##f
    }
    \new ChoirStaff <<   
      \new Staff \with{
        instrumentName = "Violin I "
      }{
        \compressEmptyMeasures
        \include "../data/triptyque_vn1_mov3.lyi"
      }
      \new Staff \with{
        instrumentName = "Violin II "
      }{
        \compressEmptyMeasures
        \include "../data/triptyque_vn2_mov3.lyi"
      }
      \new Staff \with{
        instrumentName = "Viola "
      }{
        \compressEmptyMeasures
        \include "../data/triptyque_va_mov3.lyi"
      }      
      \new Staff \with{
        instrumentName = "Violoncello "
      }{
        \compressEmptyMeasures
        \include "../data/triptyque_vc_mov3.lyi"
      }
      \new Staff \with{
        instrumentName = "Contrabass "
      }{
        \compressEmptyMeasures
        \include "../data/triptyque_cb_mov3.lyi"
      }
    >>
    \layout {
      indent = 2.0 \cm %%0にするといい
    }
    \midi{}
  }
}
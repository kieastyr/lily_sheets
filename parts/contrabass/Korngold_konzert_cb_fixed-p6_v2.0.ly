\header {
title = \markup {\medium \fontsize #-3  "Kontrabass" }
subtitle = \markup {\medium \fontsize #1  "III Finale" }
tagline = ##f
}


#(set-global-staff-size 19)
#(set-default-paper-size "a4" )

%%以下、定義
ffz = #(make-dynamic-script "ffz")
fpp = #(make-dynamic-script "fpp")
%%ここまで、定義

\paper {
  #(set-paper-size "a4")
	top-margin = 1\cm
	bottom-margin = 1\cm 
	left-margin = 1.5\cm  
	right-margin = 1.5\cm

	markup-markup-spacing #'((basic-distance . 0.1) (padding . 0))
	markup-system-spacing #'((basic-distance . 1) (padding . 3))
	last-bottom-spacing #'basic-distance = #12
	system-system-spacing = #'((basic-distance . 1) (padding . 4))
    first-page-number = 6
	print-first-page-number = ##t
    page-count = #1
    system-count = #9
}


\layout {
  indent = 1.0\cm %%0にするといい
  \context {
    \Staff
    \RemoveAllEmptyStaves
  }
  \context{
    \Score
    \override RehearsalMark.font-series = #'medium
    \override BarNumber.font-shape = #'italic
  }
}


\score {
\new StaffGroup <<
\compressEmptyMeasures
\set restNumberThreshold = 0
% \compressFullBarRests 
\time 6/8 %%拍子
\relative c 
{  
  \set Score.markFormatter = #format-mark-box-numbers
  \clef bass %%音部記号　ト音…treble　ヘ音…bass　ハ音…alto
  \override Hairpin #'minimum-length = #6

 \key d \major  %%調
 \tempo \markup{
    \column {
        \line { 
            \concat{"Allegro assai vivace( " \tiny \note {4.} #1  " dirigere)"}
            }
        \line { 
            \concat{\tiny \note {2.} #1 " = 88-92"}
        }
    }
  }
    \override TupletNumber.text = #(tuplet-number::non-default-tuplet-denominator-text 4)
    \arpeggioBracket
    <a e'>8^!\arpeggio\sf^\markup{\halign #1 "non div."} r r r4.
    R1*3/4*3
    \tuplet 2/3 {r8^"pizz. div." <a e'>\sf[ r q\p]}
    << \relative{\voiceOne d} \new Voice {\voiceTwo d}>> \oneVoice r r r4.
    R1*3/4*2
    \tuplet 2/3 {r8 <a e'>\sf^"div."[ r q\p]}
    \break
    \mark #62
    d8^"unis." r r r4.
    R1*3/4*3
    r4. a8\pp^"(pizz.)" r r 
    d r r r4.
    R1*3/4*2
    \mark \default
    R1*3/4*3
    r4. q8\mf^"div."[ r\> q]
    d8\!^"unis." r r r4.
    R1*3/4*1
    r4. b8\p r r 
    e r r e, r r 
    \mark \default
    a r r r4.
    R1*3/4*3
    r4. e'8\p^"(pizz.)" r r 
    a r r r4.
    R1*3/4*2
    \mark \default 
    r4.^"col legno"
    \once \override TupletNumber.text = #(tuplet-number::non-default-tuplet-denominator-text 2)
    \tuplet 2/3 {r8 d,\p}
    \tuplet 2/3 {r8 dis\<[ r e]}
    \tuplet 2/3 {r8 eis[ r fis]}
    \tuplet 2/3 {r8 dis[ r e!]}
    \mark \default 
    \once \override TupletNumber.text = #(tuplet-number::non-default-tuplet-denominator-text 2)
    \tuplet 2/3 {r8 a,\f} r4.
    \break
    \tuplet 4/6 {d16->\>^"arco"( cis b a)} e'8\! r r
    \tuplet 4/6 {d16( cis b a} b8) r r
    \tuplet 4/6 {c16( b a g} a8) r r
    \tuplet 4/6 {d16( cis! b a} a8) r r
    \break
    \tuplet 4/6 {d16( cis b a} e'8) r r
    \tuplet 4/6 {d16( cis b a} b8) r r
    \tuplet 4/6 {e16( d cis a} e'8) r r
    \mark \default 
    \once \override TupletNumber.text = #(tuplet-number::non-default-tuplet-denominator-text 2)
    \tuplet 2/3 {a8, r} r4.
    \break
    R1*3/4*3
    a8-.->\fp^\markup{
        \column {{"unis."} {\raise #1.5 "arco"}}
    } a-. r r4. 
    R1*3/4*3
    \mark \default 
    a8-.->\fp a-. r r4. 
    a8-.->\fp a-. r r4. 
    a8-.->\fp a-. r r4. 
    R1*3/4*1 
    c8-.->\fp c-. r r4.
    \mark \default 
    R1*3/4*8
    \mark \default 
    R1*3/4*8
    \mark \default 
    R1*3/4*2
    <<
        {
            \override MultiMeasureRest #'staff-position = #-6
            \set restNumberThreshold = 1   
            R1*3/4*2^"Fl. 1"
            \set restNumberThreshold = 0
        }
        \new CueVoice \relative c''' {
            \clef treble
            \slurUp \stemUp r4. a8^.\p e^. cis'!^.
            c^. g!^. ees'^. cis^. gis^. e'^.
        }
    >>
    \revert MultiMeasureRest #'staff-position
    \clef bass
    <f, f'>8->-.\fp^\markup{
        \column {{"div."} {\raise #1.5 "(arco)"}}
    } q-. r r4.
    \break
    R1*3/4*3
    \mark \default
    q8\fp^"(div.)" q r r4.
    q8\fp q r r4.
    q8\fp q r r4.
    R1*3/4*1
    aes8^!\sf^"unis." r r r4.
    }
    \new Staff \relative c  {
        \key d \major  %%調
        \hide \time 6/8 %%拍子 
        \clef bass
        s2.*30
        a'8^\markup{\halign #3 \raise #3 "div."} r r r4.
        R1*6/8*2
        r4.^"col legno"
        \once \override TupletNumber.text = #(tuplet-number::non-default-tuplet-denominator-text 2)
        \tuplet 2/3 {r8 d,,\p}
        \tuplet 2/3 {r8 dis\<[ r e]}
        \tuplet 2/3 {r8 eis[ r fis]}
        \tuplet 2/3 {r8 dis[ r e!]}
        \once \override TupletNumber.text = #(tuplet-number::non-default-tuplet-denominator-text 2)
        \tuplet 2/3 {r8 a\f} r4.
        d8\f^\markup{\halign #2 \raise #2 "(div.)"}^"pizz." r r e r r 
        d r r b r r 
        c r r a r r 
        d r r a r r 
        d^\markup{\halign #2 \raise #1 "(div.)"} r r e r r 
        d r r b r r 
        e r r e r r 
        \tuplet 2/3 {a8, r} r4.
    }
>>


\layout {
    \context { \Staff \RemoveEmptyStaves }
  }
}

\version "2.16.2"

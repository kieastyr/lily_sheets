\header {
title = "譜例"
composer = "ラフマ "
tagline = ##f
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


\book{
    \score {
        << 
            \time 4/4 %%拍子 
            \compressFullBarRests 
            \relative c{
                \set Staff.instrumentName = #"譜例1"
                \clef bass %%音部記号　ト音…treble　ヘ音…bass　ハ音…alto
                \override Hairpin #'minimum-length = #6
                \override Score.NonMusicalPaperColumn.padding = #1.5
                \key e \minor  %%調
                % \tempo "速さ" 4 = 0  %%BPM
                r4^"(Vc. Cb.)" b\pp\<( c2~\>)
                c4\! b4~ b8 a\pp( g a
                g1~)
                g
                \bar ""
            }
        >>

        \layout {
            \context { \Staff \RemoveEmptyStaves }
        }
    }
    \score {
        << 
            \time 4/4 %%拍子 
            \compressFullBarRests 
            \relative c''{ 
                \set Staff.instrumentName = #"譜例2"
                \clef treble
                \override Hairpin #'minimum-length = #6
                \override Score.NonMusicalPaperColumn.padding = #1.5
                \key e \minor
                r4^"(Vn.)" <<{e2\p} {s4 s_\markup{\italic cresc.}}>> e4--~(
                e8\< fis) g4--~\mf\> g8 fis--\p( e-- fis--
                e4--) 
                \bar ""
            
            }
        >>
        \layout {
            \context { \Staff \RemoveEmptyStaves }
        }
    }
    \score {
        << 
            \time 4/4 %%拍子 
            \compressFullBarRests 
            \relative c'{ 
                \set Staff.instrumentName = #"譜例3"
                \clef treble
                \override Hairpin #'minimum-length = #6
                \override Score.NonMusicalPaperColumn.padding = #1.5
                \key a \minor
                r4^"(Hr.)" e4-.\f a-. g-.
                a2.-- f4-.
                g2.-- e4-.
                f2.-- d4-.
                e1--
                \bar ""
            
            }
        >>

        \layout {
            \context { \Staff \RemoveEmptyStaves }
        }
    }
    \score {
        << 
            \relative c'{ 
                \set Staff.instrumentName = #"譜例4"
                \set Score.timing = ##f
                \clef alto
                \override Hairpin #'minimum-length = #6
                \override Score.NonMusicalPaperColumn.padding = #1.5
                f8 e f d e c d4 d  
                \divisioMaior
                \bar ""
            
            }
            \addlyrics {
                Di -- es i -- rae, di -- es il -- la,
            }
        >>

        \layout {
            \context { 
                \Staff \RemoveEmptyStaves
            }
        }
    }
}

\version "2.16.2"

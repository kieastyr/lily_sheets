\relative c{
  \numericTimeSignature
  \time 2/4 %%拍子
  \set Staff.midiInstrument = "contrabass"
  \clef bass %%音部記号　ト音…treble　ヘ音…bass　ハ音…alto
  \override Hairpin.minimum-length = #6

  \key bes \major  %%調
  \tempo "Allegretto"  %%BPM
  R1*1/2*4\mf
  f8-. f16-. g-. a8-. f-.
  bes-. c4-> bes8
  a8 g16 a bes8 a
  g[ g f ees]
  d r f'4~
  f8[ ees c ees]~
  ees[ d bes d]~
  d[ c a c]
  bes d16 c bes8 d
  g,8 f4-> g8
  a8 bes16 a g8 a
  bes[ bes^\< c d]\! 
  ees2->
  a,8[ a^\< bes c]\!
  d2->
  g,8[ g^\< a bes]\!
  c2->
  fis,8[ fis g a] 
  bes r r4
  fis8-. fis16-. g-. a8-. fis-.
  d' ees4-> d8
  c8 bes16 c d8 c
  bes c4-> bes8
  a8_\markup{\italic dim.} g16 a bes8 a
  g8 f!16 g a8 g
  << f4 {s8 s\p} >> ees'8 d~
  d[ g, a bes] 
  c4 f8 ees~
  ees[ d c bes]
  g_\markup{\italic cresc.} a bes c16 bes
  a8 bes c d16 c
  bes8 c d ees16 d
  c8 f4\< a,8
  bes\ff d16 c bes8 d
  g, bes4-> aes8
  g c4-> bes8
  a! d4-> c8
  d4-^ e-^
  f-^ ees!-^
  d-^ des_\markup{\italic dim.}
  c\> bes~
  bes a8\>( g)
  << a4.( {s4 s8\!}>> bes8)
  bes2\p~
  bes\fermata
  \bar "|."
}
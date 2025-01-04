\relative c{
  \numericTimeSignature
  \time 2/4 %%拍子
  \set Staff.midiInstrument = "contrabass"
  \clef bass %%音部記号　ト音…treble　ヘ音…bass　ハ音…alto
  \override Hairpin.minimum-length = #6

  \key bes \major  %%調
  \tempo "Allegretto"  %%BPM
  bes8-. bes16-. c-. d8-. bes-.
  f'8-. g4-> f8
  ees d16 ees f8 ees
  d[ d c bes]
  a[ c f,] r
  r e'16-. f-. g8-. e-.
  f ees! d c16 d
  ees8 d16 ees a,8 g16 a
  bes8 bes16 c d8 bes
  g'4 a16 bes a g
  fis4 g16 a g f
  e4 f16 g f ees
  d8 f bes16 bes, c d
  ees4 d8 ees
  f4 e8 ees
  d ees16 d c8 bes16 a
  g8 g'16 f ees8 f16 g
  c,8 f16 ees d8 ees16 f
  bes,8 d16 c bes8 c16 d
  ees8 ees'16 d c8 d16 ees
  a,8 c,16 bes a8 bes16 c
  d8 d'16 c bes c bes a
  g8 g,16-. a-. bes8-. g-.
  d'8 ees4-> d16 c
  bes8 a16 bes c8 bes
  a g' fis e16 fis
  g8 fis16 g a8 g
  fis e d c16 d
  ees?8 d c bes16 c
  d8 ees16 d c8 d
  ees[ ees f g]
  a bes16 a g8 a
  bes[ bes, c d]
  ees f16 ees d8 e
  f g16 f e8 fis
  g a16 g fis8 gis
  a16 bes a g f! ees! d c
  bes8 bes16 c d8 bes
  ees d16 c d ees f d
  ees f ees d ees f g ees
  f g f ees f g a f
  a c bes a g8 c,16 bes
  a8 f16 g a8 f
  bes f'4-> e8
  ees? f16 ees d8 bes
  f2~
  f4.( bes8)
  bes2~
  bes\fermata
  \bar "|."
}
% The part immediately precedes the second half, which
% I already published here:
% https://musescore.com/user/29235800/scores/16499002
%
% I imagine that this will be a motif of sorts.
% But for now, have this.... :)

\version "2.24.3"

global = {
  \key e \minor
  \time 4/4
}

agitato = \markup { \italic { agitato } }

\score {
  \new PianoStaff
  <<
    \new Staff = "RH" {
      \clef treble
      \global
      \relative c' {
        fis4_\agitato e <f fis>8 e fis g |
        <g a>4 dis8 <dis e>
        \tuplet 3/2 { <fis g>8 <b, c> <dis e> }
        \tuplet 3/2 { <fis g> <dis fis> <fis a> } |
        \break
        <b c>4 <fis g>4 <fis a>8 e
        \tuplet 3/2 { e8 fis g } |
        fis4 e
        \tuplet 3/2 { dis8 cis dis } e fis |
        \break
        \tuplet 3/2 { fis e fis }
        <<
          \relative c { \tuplet 3/2 { gis'' a b }
            c4 a } \\
          \relative c { \tuplet 3/2 { e'8 e e }
            \tuplet 3/2 { r <e gis> q~ }
            \tuplet 3/2 { q q q } }
        >>
        <<
          \relative c { fis'4 c' b \tuplet 3/2 { fis4 g!8 } } \\
          \relative c { \tuplet 3/2 { r8 c' c~ }
            \tuplet 3/2 { c <c e> q }
            \tuplet 3/2 { r8 d d~ }
            \tuplet 3/2 { d d d } }
        >>
        \break
        a4 \tuplet 3/2 { e b'8 }
        a4 \tuplet 3/2 { e dis8 } |
        dis4 e fis \tuplet 3/2 { b b8 }
      }
    }
    \new Staff = "LH" {
      \clef bass
      \global
      \relative c {
        \tuplet 3/2 { c,8 <c' fis ais>[ q~] }
        \tuplet 3/2 { q q q~ }
        \tuplet 3/2 { q q q~ }
        \tuplet 3/2 { q q q } |
        \tuplet 3/2 { fis, <fis' a! c>[ q~] }
        \tuplet 3/2 { q q q~ }
        \tuplet 3/2 { q <fis a> <fis a c>~ }
        \tuplet 3/2 { q q q } |
        \tuplet 3/2 { a, <e' a c>[ q~] }
        \tuplet 3/2 { q q q }
        \tuplet 3/2 { a, <e' a c>[ q] }
        \tuplet 3/2 { q q q } |
        \tuplet 3/2 { b <fis' a cis>[ q~] }
        \tuplet 3/2 { q q q }
        \tuplet 3/2 { b,, <b' fis' a>[ q] }
        \tuplet 3/2 { <b fis' a b> q q } |
        \tuplet 3/2 { e, <d' gis d'>[ q] }
        \tuplet 3/2 { <d gis c!> q q }
        \tuplet 3/2 { a <e' a c>[ q~] }
        \tuplet 3/2 { q q q } |
        \tuplet 3/2 { d, <d' fis a>[ q~] }
        \tuplet 3/2 { q q q }
        \tuplet 3/2 { g, <d' g!>[ q~] }
        \tuplet 3/2 { q <d g b> q } |
        \tuplet 3/2 { c, <c' e b'>[ q~] }
        \tuplet 3/2 { q <c g' b> q }
        \tuplet 3/2 { fis, <fis' a c>[ q~]}
        \tuplet 3/2 { q q q } |
        \tuplet 3/2 { b,, <d' e gis c>[ q~] }
        \tuplet 3/2 { q q q }
        \tuplet 3/2 { b <fis' a b>[ q~] }
        \tuplet 3/2 { q <fis a b dis> q }
      }
    }
  >>

  % midi to listen to coolness
  % https://lilypond.org/doc/v2.23/Documentation/notation/the-midi-block
  % also comment char is the same as tex...
  % https://lilypond.org/doc/v2.23/Documentation/learning/working-on-input-files
  \layout { }
  \midi { }
}

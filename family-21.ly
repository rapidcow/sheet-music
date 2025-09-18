% This originated from my vague memory of hearing
% Super Mario Galaxy's OST "Family" from somewhere.
% I may do a proper transcription some time, but it
% is interesting nonetheless to see how it turned out!
% https://www.youtube.com/watch?v=dVeqbM9dtAY&list=PLoqOgJJaN57YiiY-JrdSvBVCprMPednXl&index=88

\version "2.24.4"

% Creation-Date: 2021-06-29
% Platform: Apple Macintosh
% Copied from MuseScore 3 file: melody.mscx
Upper = \relative c' {
  \clef treble
  \key c \major
  \time 6/8

\repeat volta 2 {
\barNumberCheck 1
  e16 g e'8. b16
  d8 c gis |

\barNumberCheck 2
  a16 c g'8 f
  e d e16 f |

\barNumberCheck 3
  e8 r16
  g d' e d8 cis d16 e |

\barNumberCheck 4
  g16 f a,8 c,
  c16 b d,8 f |
}
}

Lower = \relative c {
  \clef bass
  \key c \major
  \time 6/8

\repeat volta 2 {
\barNumberCheck 1
  c16 g' <c e>4
  e,16 b' <e gis>4 |

\barNumberCheck 2
  f,,16 c' <a' f'>4
  g,16 d' <g b>4 |

\barNumberCheck 3
  e16 b' <d e>8 g
  a,,16 e' g a cis8 |

\barNumberCheck 4
  d,16 a' <c f>4
  g,16 d' <g b>4
}
}

\book {
  \score {
    \new PianoStaff <<
      \new Staff { \Upper }
      \new Staff { \Lower }
    >>

    \layout { }
    \midi { }
  }
}

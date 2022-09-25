\version "2.22.2"
\language english

\paper {
  paper-width = 7\in
  paper-height = 8\in
  indent = 0
  tagline = ##f
}

\score {
  \new PianoStaff <<
    \new Staff = "RH" {
      \clef treble \time 2/2 \key c \minor
      \relative c' {
        \repeat volta 2 {
          <<
            { <ef g>1 | <d f> | <ef bf'>2 <ef g> |
              <c^1 d^2 f^4> <d^2 f^3 g^4> | }
            \\
            { r8 c c c c c c c | r bf bf bf bf bf bf bf |
              r8 c c c r c c c | r c c c b2-1 | }
          >>
          \break
          <<
            { c'8 c, g' \change Staff = "LH" g,~ g2
                \change Staff = "RH" |
              d''8 d, g \change Staff = "LH" g,~ g4
                \change Staff = "RH" ef'' |
              c8 c, g' \change Staff = "LH" ef,~ ef2
                \change Staff = "RH" |
              c''8 d, f d'16-5 c-4
              \set fingeringOrientations = #'(right) <b-3>2 | }
            \\
            { ef,1 | f | ef | <c f>2
              \set fingeringOrientations = #'(right) <d-1 f-2> | }
          >>
          \break
          <<
            { \oneVoice g8 f g bf!~ bf2 | bf8 a bf c~ c4 g |
              \voiceOne d'2 c4 bf | g8. a16~ a8 bf c4 bf | } \\
            { s1 | s1 | g2 a4 g | ef2 fs | }
          >>
          \break
          <g, bf d g>1~ | q~ | q~ | q \clef bass |
          \break
          g | d'2 c | ef1 | c2 d | b1 | \clef treble
          c2 d | ef1 | f2 bf |
        }
        <f c'>1-\fermata
        \bar "|."
      }
    }
    \new Staff = "LH" {
      \clef bass \time 2/2 \key c \minor
      \relative c {
        \repeat volta 2 {
          <c g'>1 | <bf f'> | <a g'> | <af! f'>2 <g g'> | % \break
          <c g'>1 | <bf f'> | <a g'> | <af! f'>2 <g g'> | % \break
          <<
            { d''4. f8~ f2 | c4. d8~ d4 bf |
              \oneVoice <e, bf'>1 | <ef! bf'>2 <d a'> | } \\
            { g1 | f | }
          >>
          % \break
          \ottava #-1 <g,, g'>1 | <fs fs'> | <g g'> | <ef ef'>2 <c c'> |
          % \break
          \ottava #0 <g'' d'>1 | <c g' bf> | <d f c'> | <bf f' a> |
          <c d g> | <ef g bf> | <g bf c> | <g d'> |
        }
        <df af'>-\fermata % \fine
      }
    }
  >>
}
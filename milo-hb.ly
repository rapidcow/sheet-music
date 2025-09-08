%---------------------------------------------------------------------%
% milo-hb.ly -- lilypond transcription for Milo's improv "Heartbreak" %
%                                                                     %
% Last modified:  Sun, 24 Aug 2025 21:55:14 -0500                     %
% Original video: https://www.youtube.com/watch?v=08G1aBLHS1k         %
%                 https://www.instagram.com/p/DNZYsASprqF/            %
% Transcribed by: Ethan Meng <ethan@rapidcow.org>                     %
% Subject to Creative Commons, Attribution, ShareAlike 4.0 license:   %
% https://creativecommons.org/licenses/by-sa/4.0/                     %
%---------------------------------------------------------------------%
\version "2.24.4"

Upper = \relative c'' {
  \clef treble
  \key c \minor
  \time 3/4
  \partial 8*3
  \time 4/4
  \tempo "Andantino" 4 = 90
  <<
    { g8 c d \time 4/4 es d es2 s8 \voiceOne g,-> | }
    \\
    { g4.~ | \time 4/4 g2. }
  >>
  \time 3/4
  <<
    {
      % https://lilypond.org/doc/v2.24/Documentation/notation/expressive-marks-attached-to-notes#Moving-the-ends-of-hairpins
      \once \override Hairpin.shorten-pair = #'(0 . -8.8)
      es'8^\< d es2\!
    }
    \\
    { aes,4 aes2 }
  >>
  |
  \time 4/4
  <<
    {
      es'8^\<[ d]
      <bes d>8 <aes c>
      <aes c>2
    }
    \\
    { aes4 s2 d,4 }
  >>
  |
  \time 3/4
  <<
    { g8^\> f g2\! }
    \\
    { \voiceTwo s2 d4 }
    \\
    { s4 \change Staff = "Lower" bes2 }
  >>
  \clef bass |
  \break
  <<
    { es8 d c4. bes8 | c bes c2 }
    \\
    { c4 aes2 | <f aes>4 \afterGrace <f aes>2 { f8 } }
  >>
  |
  g4.\< g8 c d
  <b d>2\! \>
  \break % squeeze?
  \clef "treble" d8\! c |
  % https://lilypond.org/doc/v2.25/Documentation/notation/bars#bar-numbers
  \once \override Score.BarNumber.break-visibility = ##(#t #t #t)
  %%%\break
  <<
    {
      % https://music.stackexchange.com/a/86067
      \once \override Slur.direction = #DOWN
      \acciaccatura { d } e8^\markup \italic "molto espressivo" d e4. g8 |
      aes g aes4 c
    }
    \\
    {
      g4 s2 | c,4
      % pretend we started on an eighth note...
      \once \override Hairpin.shorten-pair = #'(-4 . 0)
      s4.\< \after 8 \! s8
    }
  >>
  |
  \break % squeeze!
  <<
    { es!8 d f es d^\> es | \after 4 \! f2 }
    \\
    {
      <aes, c>4 \change Staff = "Lower" \voiceOne <aes c>2 |
      \change Staff = "Upper" \voiceTwo bes4 bes4
    }
  >>
  <<
    {
      d8 es~ | \break
      \time 4/4
      es4^\markup \italic "allargando" c8^\( d es4\) f8_\( g |
      \time 3/4 c,2.\)
    } \\
    { s8 c~ | c2 c2 g'2. }
  >>
  |
  \break % squeeze!
  <<
    {
      \oneVoice
      d4^\markup \italic "ritenuto" c4 b4 | c4. g'8[ es] g'[ |
      es \change Staff = "Lower" g,~]
      % trick hack
      % https://lilypond.org/doc/v2.18/Documentation/learning/other-uses-for-tweaks.html#tying-notes-across-voices
      % (this other guy was actually GPT reminding me of NoteColumn's existence...)
      \once \override NoteColumn.ignore-collision = ##t
      \tweak Stem.transparent ##t
      \tweak Stem.length #8 g2]
    }
    \\
    {
      s2. | s2. | s4 \voiceOne c'2\laissezVibrer
    }
  >>
  \bar "|."
}

Dynamics = {
  \time 4/4 \partial 8*3
  % whiteout
  % https://lilypond.org/doc/v2.25/Documentation/snippets/expressive-marks-_002d-using-the-whiteout-property
  % TextScript is the blob name for \markup's like these
  % https://lilypond.org/doc/v2.23/Documentation/internals/textscript
  \once \override Staff.TextScript.whiteout = ##t
  s4._\markup { "sempre legato" } |
  s1 | s2. | s1 | s2. |
  % https://lilypond.org/doc/v2.23/Documentation/snippets/expressive-marks#expressive-marks-combining-dynamics-with-markup-texts
  s2.^\p |
    s2.-\tweak Y-offset #-1 ^\markup { \italic più \dynamic p } |
    s2. | s2 s4 |
  s2. | s2. | s2. | s2. |
  s1 | s2. | s2. | s8
    % https://lilypond.org/doc/v2.24/Documentation/notation/expressive-marks-attached-to-notes#dynamics
    % https://mail.gnu.org/archive/html/lilypond-user/2006-08/msg00443.html
    % https://leighverlag.blogspot.com/2014/11/long-broken-de-crescendo-text.html
    \set crescendoText = \markup { \italic "smorz." }
    \set crescendoSpanner = #'text
    s4.\< s4 | s4 s2\ppp
}

Lower = \relative c, {
  \clef bass
  \key c \minor
  \time 3/4
  \partial 8*3 r8 r4 |
  \time 4/4
  \oneVoice
  c8 g'\< d' es
  \once \override Beam.positions = #'(4.5 . 5.5)
  \voiceOne g c
  \voiceTwo \change Staff = "Upper" es g\!
  \time 3/4 \change Staff = "Lower"
  <<
    {
      s2. | s1 | s2 s8 g,
    }
    \\
    { 
      f,8 c' f g aes c |
      bes,8 f' aes2. |
      es,8 bes' g' es8~ es4
    }
  >>
  |
  aes,8 es' aes2
  \oneVoice f,4 f2 |
  \set tieWaitForNote = ##t
  g8~ d'~ g2~ | <g, d' g>2 r4 |
  \once \override Beam.positions = #'(4.7 . 4.7)
  c8 g' bes! \change Staff = "Upper" c e g |
  \change Staff = "Lower"
  f,, c' f g c aes |
  bes,8 f' aes4 f |
  g,8 d' g2 |
  c,8\( g' c4\) bes,8\( f' bes4\) |
  aes,8 es' aes \change Staff = "Upper"
  c^\> es d\! |
  \change Staff = "Lower"
  <<
    {
      aes8 c <f, a>4 <f g> |
      <es g>2 s4 s4 <c''\laissezVibrer g'\laissezVibrer>2
    }
    \\
    {
      f,,,4 g8 d' <g, d'>4 |
      c,8[ g' d' es] \clef treble g[
      \set tieWaitForNote = ##t
      c~ | es8~] s8 <c\laissezVibrer es\laissezVibrer g\laissezVibrer>2
    }
  >>
}

\paper {
  % A4 but longer and narrower
  #(set-paper-size '(cons (* 150 mm) (* 300 mm)))
  indent = 0
  line-width = 130
  ragged-last = ##f
  tagline = ##f
  % "Debug" mode!
  % https://lilypond.org/doc/v2.23/Documentation/notation/displaying-spacing
  %annotate-spacing = ##t
  % Forcing spacing >:(
  % https://lilypond.org/doc/v2.23/Documentation/notation/changing-spacing
  page-count = #1
  ragged-last-bottom = ##f
}

\score {
  \new PianoStaff <<
    \new Staff = "Upper" { \Upper }
    \new Dynamics { \Dynamics }
    \new Staff = "Lower" { \Lower }
  >>
  \layout { } % PDF output
  \midi { } % MIDI output?
}

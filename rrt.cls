\ProvidesClass{rrt}[2021/04/11 V0.1.0 by Omar Ali Sheikh-Omar]
\NeedsTeXFormat{LaTeX2e}
\typeout{-- See the "README.md" file for usage information.}
\typeout{-- http://www.sheikhomar.com/tex/rrt/}
\LoadClass[11pt, a4paper, onecolumn]{article}

\usepackage[english]{babel}
\usepackage[utf8]{inputenc}
\usepackage{fancyhdr}
\usepackage{kpfonts}

\usepackage[margin=3cm]{geometry}
\usepackage[listings,many]{tcolorbox}
\usepackage{tikz}
\usepackage{titlesec}

\titleformat{\section}
  {\normalfont\fontsize{18}{15}\bfseries}{\thesection}{1em}{}

\setlength\parindent{0pt}
\setlength{\parskip}{1em}

\pagestyle{fancyplain}
\renewcommand{\headrulewidth}{0pt}
\fancyhf{}
\fancyfoot[R]{\thepage} 

\newtcolorbox[auto counter,number within=section]{tcbfeedback}[2][]{
  breakable,
  enhanced,
  colback=white,
  boxrule=0pt,
  arc=0pt,
  outer arc=0pt,
  left=20pt,
  title=#2,
  fonttitle=\bfseries\large\strut,
  coltitle=black,
  title style={gray!10!white},
  toptitle=2pt,
  colframe={white},
  lower separated=true,
  colback=gray!5!white,
  skin=bicolor,
  colbacklower=white,
  overlay={
    \node[anchor=north west,outer sep=0pt] at (frame.north west) {\includegraphics[width=5mm]{figures/comment-icon.png}};
  }
}

\newenvironment{feedback}[1][]
{%
    \newcommand{\response}{%
        \tcblower
        \textbf{Response to feedback~#1}
        \newline
        \newline
    }%
    \par\medskip
    \begin{tcbfeedback}{Feedback~#1}
}
{%
    \end{tcbfeedback}
    \medskip
}

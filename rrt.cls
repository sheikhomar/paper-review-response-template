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




\setlength\parindent{0pt}
\setlength{\parskip}{1em}

\pagestyle{fancyplain}
\renewcommand{\headrulewidth}{0pt}
\fancyhf{}
\fancyfoot[R]{\thepage} 



\newcommand\TalkingHead[1][]{\scalerel*{\begin{tikzpicture}[#1]
\draw[xscale=-1,line width=pi*1mm] (-1,-4) to[out=50,in=-90,looseness=1.4] (-1,-3) to[out=-160,in=0]
   (-2,-3.2) to[out=180,in=-120] (-2.7,-2) to[out=120,in=-120] (-2.9,-1.5)
   to[out=120,in=-120] (-2.95,-1.1) to[out=60,in=-30] (-3.2,-0.9)
   to[out=150,in=-120] (-3,0.4) to[out=60,in=-90] (-3,1.2) 
   to[out=90,in=90,looseness=1.8] (3.3,1.2)
   to[out=-90,in=90,looseness=0.8] (2,-2)
   to[out=-90,in=150,looseness=0.8] (3.2,-4) -- cycle;
  \draw[line width=pi*1mm,shift={(pi,-pi/2)}] 
    foreach \X in {1,2,3} {(45:\X) arc[start angle=45,end
  angle=-45,radius=\X]};
\end{tikzpicture}}{Q}}


\definecolor{feedbackblue}{RGB}{100,134,158}


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

\newcommand*{\papertitle}[1]{\def\@papertitle{#1}}
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


\setlength\parindent{0pt}
\setlength{\parskip}{1em}



\pagestyle{fancyplain}
\renewcommand{\headrulewidth}{0pt}
\fancyhf{}
\fancyfoot[R]{\thepage} 


\newenvironment{comment}[1][]
{%
    \newcommand{\response}{%
        \newline
        \newline
        \textbf{Response to comment~#1}
        \newline
    }%
    \par\medskip
    \noindent \textbf{Comment~#1}
    \newline\noindent\rule{\linewidth}{0.4pt}
    \newline
}
{%
    \medskip
}

\newcommand*{\papertitle}[1]{\def\@papertitle{#1}}
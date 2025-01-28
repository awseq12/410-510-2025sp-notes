\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{lecturenotes}[2021/05/30 Lecture Notes]

% Packages
\RequirePackage{xcolor}
\RequirePackage{xparse}
\RequirePackage{graphicx}
\RequirePackage[absolute,overlay]{textpos}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{stmaryrd}
\RequirePackage{comment}

% AMSTHM Setup
\newtheorem{thm}{Theorem}
\newtheorem{lem}{Lemma}
\newtheorem{prop}{Proposition}
\newtheorem{cor}{Corollary}
\theoremstyle{definition}
\newtheorem{defn}{Definition}
\newtheorem*{nb}{Note}
\newtheorem{prob}{Problem}

% Ignore Hidden Commands
\excludecomment{hidden}

% Macros

%% Idris Macros


%% Title Macros
\newcommand{\coursenumber}[1]{\makeatletter\newcommand{\@courseno}{#1}\makeatother}
\newcommand{\coursename}[1]{\makeatletter\newcommand{\@coursename}{#1}\makeatother}
\newcommand{\lecturenumber}[1]{\makeatletter\newcommand{\@lecno}{#1}\makeatother}
\newcommand{\semester}[1]{\makeatletter\newcommand{\@sem}{#1}\makeatother}
\newcommand{\professor}[1]{\makeatletter\newcommand{\@prof}{#1}\makeatother}

% Class Options
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\LoadClass[letterpaper]{article}

\renewcommand{\maketitle}{%
  \begin{textblock*}{8in}(0cm,0.25cm)
    \framebox[\textwidth]{
      \vspace{1em}%
      \begin{minipage}{1.0\linewidth}
        \begin{center}
          {\fontsize{20}{30}\fontfamily{phv}\fontseries{b}\selectfont\@courseno:~\@coursename}\\[1em]
          {\fontsize{10}{15}\fontfamily{phv}\fontseries{b}\selectfont\@sem\hspace{10em}\@prof}\\[1em]
          {\fontsize{15}{20}\fontfamily{phv}\fontseries{b}\selectfont Lecture~\@lecno:~\@title}%
        \end{center}
      \end{minipage}
      \vspace{1em}%
    }%
  \end{textblock*}%
  \vspace*{1in}%
}

\renewcommand{\section}{\@startsection{section}{1}{-1pt}{-1.5ex plus -1ex minus -0.2ex}{1ex plus .2ex}{\normalfont\Large\bfseries}}

\renewcommand{\subsection}{\@startsection{subsection}{2}{-1pt}{-1.5ex plus -1ex minus -0.2ex}{1ex plus .2ex}{\normalfont\large\bfseries}}

\setlength{\textwidth}{7in}
\setlength{\textheight}{9in}
\topmargin -1in
\oddsidemargin -0.25in
\evensidemargin -0.25in
\setcounter{secnumdepth}{2}
\pagenumbering{arabic}


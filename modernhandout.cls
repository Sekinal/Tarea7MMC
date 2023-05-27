% modernhandout.cls
%
% A LaTeX document class for writing modern-looking handouts and homeworks
% Inspired by Kevin Zhou's handouts.

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{modernhandout}[15/02/2023 Modern Handout Class]

% Loads base class article

\LoadClass[11pt]{article}

% Some packages and configurations for pleasing aesthetics
\RequirePackage{sectsty}
\allsectionsfont{\normalfont\sffamily\bfseries}

\RequirePackage{hyperref}
\hypersetup{
    colorlinks=true,
    linkcolor=black,
    filecolor=magenta,
    urlcolor=blue,
}

% Sets main formatting for the page

\RequirePackage[margin=1in]{geometry}
\RequirePackage{mlmodern}
\RequirePackage{fancyhdr}
\pagestyle{fancy}

% Some basic packages for math writing

\RequirePackage{mathtools} % Adds a ton of features for writing math, loads amsmath as a dependency
\RequirePackage[spanish, mexico]{babel} % Correct mathematical syntax such as decimal markers for spanish speaking countries, in this case Mexico
\RequirePackage{microtype} % Improved typography
\RequirePackage{enumitem} % Improved lists
\RequirePackage{cancel} % Improved lists
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{float}
\RequirePackage{graphicx}

% Some basic packages for physics writing

\RequirePackage{siunitx}

% Some custom commands

\newcommand{\sol}{\textit{Solución.}\\}
\newcommand{\enun}{\noindent\textbf{Enunciado. }}
\makeatletter
\renewcommand*\env@matrix[1][*\c@MaxMatrixCols c]{%
  \hskip -\arraycolsep
  \let\@ifnextchar\new@ifnextchar
  \array{#1}}
\makeatother

\DeclarePairedDelimiter{\abs}{\lvert}{\rvert}

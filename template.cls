\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{template}

\RequirePackage{setspace}
\LoadClass[11pt, a4paper]{report}

% Set page margins
\oddsidemargin 14.6truemm
\evensidemargin 0truemm
\topmargin 0truemm
\headsep 10truemm
\textheight 224truemm
\textwidth 145truemm

\brokenpenalty=10000
\onehalfspacing

% Commands for customizing title elements
\def\degreetitle#1{\gdef\@degreetitle{#1}}
\def\rpttype#1{\gdef\@rpttype{#1}}
\def\principaladviser#1{\gdef\@principaladviser{#1}}
\def\submitdate#1{\gdef\@submitdate{#1}}

\def\beforepreface{\newpage}

\def\afterabstract{\newpage}

% Modify section for unnumbered chapters in the TOC
\def\prefacesection#1{%
    \chapter*{#1}
    \addcontentsline{toc}{chapter}{#1}}

\def\afterpreface{
    \newpage
    \tableofcontents
    \newpage
    \listoftables
    \addcontentsline{toc}{chapter}{List of Tables}
    \newpage
    \listoffigures
    \addcontentsline{toc}{chapter}{List of Figures}
    \newpage
    \chapter*{Abbreviations}
    \addcontentsline{toc}{chapter}{Abbreviations}
    \begin{itemize}
        \item [API] Application Programming Interface
        \item [CPU] Central Processing Unit
        \item [RAM] Random Access Memory
    \end{itemize}
    \newpage
    \pagestyle{plain}
}

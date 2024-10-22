\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{template}
% This specifies that the document class requires LaTeX2e.

\RequirePackage{setspace}
\LoadClass[11pt, a4paper]{report}
% This loads the 'report' class with 11pt font size and A4 paper size.

% Set page margins
\oddsidemargin 14.6truemm  % Sets the margin on odd-numbered pages.
\evensidemargin 0truemm    % Sets the margin on even-numbered pages.
\topmargin 0truemm         % Sets the top margin.
\headsep 10truemm          % Distance between the header and the text.
\textheight 224truemm      % Total height of the text body.
\textwidth 145truemm       % Total width of the text body.

\brokenpenalty=10000       % Prevents broken words across pages.
\onehalfspacing            % Sets line spacing to 1.5 (one-and-a-half spacing).

% Commands for customizing title elements
\def\degreetitle#1{\gdef\@degreetitle{#1}}
\def\rpttype#1{\gdef\@rpttype{#1}}
\def\principaladviser#1{\gdef\@principaladviser{#1}}
\def\submitdate#1{\gdef\@submitdate{#1}}
% These define commands for degree title, report type, principal adviser, and submission date.
% \gdef is used to globally define these elements.

\def\beforepreface{\newpage}
% This defines a command \beforepreface that inserts a new page before the preface.

\def\afterabstract{\newpage}
% This defines a command \afterabstract that inserts a new page after the abstract.

% Modify section for unnumbered chapters in the TOC
\def\prefacesection#1{%
    \chapter*{#1}                    % Creates an unnumbered chapter.
    \addcontentsline{toc}{chapter}{#1}}  % Adds this chapter to the Table of Contents.

\def\afterpreface{
    \newpage
    \tableofcontents                 % Generates the Table of Contents.
    \newpage
    \listoftables                    % Generates the List of Tables.
    \addcontentsline{toc}{chapter}{List of Tables}  % Adds the List of Tables to the TOC.
    \newpage
    \listoffigures                   % Generates the List of Figures.
    \addcontentsline{toc}{chapter}{List of Figures} % Adds the List of Figures to the TOC.
    \newpage
    \chapter*{Abbreviations}         % Creates an unnumbered "Abbreviations" chapter.
    \addcontentsline{toc}{chapter}{Abbreviations}   % Adds the "Abbreviations" chapter to the TOC.
    \newpage
    \pagestyle{plain}                % Sets the page style to plain (no headers or footers).
}
% The \afterpreface command inserts several pages (TOC, List of Tables, List of Figures, Abbreviations),
% and makes sure they are all listed in the Table of Contents.

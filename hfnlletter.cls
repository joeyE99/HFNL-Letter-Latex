%
% University of Science and Technology of China,  
% Hefei National Laboratory for Physical Sciences at the Microscale (HFNL) Letter Template for LaTeX Users
%
%   Version
%       Beta

\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{hfnlletter}[USTC HFNL Letter Template by Joey@USTC]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions

\LoadClass{article}


\RequirePackage[
	left=2.5cm,
	right=2.5cm,
	top=4cm,
	bottom=2.8cm
	]{geometry}

\RequirePackage{tikz}
\usetikzlibrary{calc}
\RequirePackage{fancyhdr}
\RequirePackage{graphicx}
\RequirePackage{everypage}


\newcommand{\chuhao}    {\fontsize{42pt}   {\baselineskip}\selectfont}
\newcommand{\xiaochu}   {\fontsize{36pt}   {\baselineskip}\selectfont}
\newcommand{\xiaochuhao}{\fontsize{36pt}   {\baselineskip}\selectfont}
\newcommand{\yihao}     {\fontsize{28pt}   {\baselineskip}\selectfont}
\newcommand{\erhao}     {\fontsize{21pt}   {\baselineskip}\selectfont}
\newcommand{\xiaoer}    {\fontsize{18pt}   {\baselineskip}\selectfont}
\newcommand{\xiaoerhao} {\fontsize{18pt}   {\baselineskip}\selectfont}
\newcommand{\sanhao}    {\fontsize{15.75pt}{\baselineskip}\selectfont}
\newcommand{\xiaosan}   {\fontsize{15pt}   {\baselineskip}\selectfont}
\newcommand{\xiaosanhao}{\fontsize{15pt}   {\baselineskip}\selectfont}
\newcommand{\sihao}     {\fontsize{14pt}   {\baselineskip}\selectfont}
\newcommand{\xiaosi}    {\fontsize{12pt}   {\baselineskip}\selectfont}
\newcommand{\xiaosihao} {\fontsize{12pt}   {\baselineskip}\selectfont}
\newcommand{\wuhao}     {\fontsize{10.5pt} {\baselineskip}\selectfont}
\newcommand{\xiaowu}    {\fontsize{9pt}    {\baselineskip}\selectfont}
\newcommand{\xiaowuhao} {\fontsize{9pt}    {\baselineskip}\selectfont}
\newcommand{\liuhao}    {\fontsize{7.875pt}{\baselineskip}\selectfont}
\newcommand{\qihao}     {\fontsize{5.25pt} {\baselineskip}\selectfont}


\newlength{\hfnl@footer@textwidth}
\setlength{\hfnl@footer@textwidth}{\paperwidth}
\addtolength{\hfnl@footer@textwidth}{-50mm}



%Define new commands
\def\hfnl@define@term#1{
  \expandafter\gdef\csname #1\endcsname##1{%
    \expandafter\gdef\csname hfnl@#1\endcsname{##1}}
  \csname #1\endcsname{}}
  
  
\hfnl@define@term{address}
\hfnl@define@term{postcode}
\hfnl@define@term{tel}
\hfnl@define@term{fax}
\hfnl@define@term{email}
\hfnl@define@term{website}


   
\newcommand{\hfnl@report@pagelayout}
{\begin{tikzpicture}[x=1mm, y=1mm, remember picture,overlay,shift=(current page.north west)]  
  \node at (105,-24.5) {\includegraphics[height=23.5mm]{./figures/hfnl_logo_side.pdf}};
  
  \draw[very thin] ($(current page.south west)+(20,22)$) -- ($(current page.south east)+(-20,22)$) node[below, midway] {\baselineskip=10pt \xiaowuhao{\begin{tabular}{p{0.7\hfnl@footer@textwidth}p{0.3\hfnl@footer@textwidth}}Address: \hfnl@address & Postcode: \hfnl@postcode
  	\\ Tel: \hfnl@tel \quad{}\quad{}\quad{} Fax: \hfnl@fax \quad{}\quad{}\quad{} E-mail: \hfnl@email & Website : \hfnl@website \end{tabular}}};
  \fill ($(current page.south west)+(20,21.75)$) rectangle ($(current page.south east)+(-20,22.25)$); 
  \end{tikzpicture}}
  
  
\AddEverypageHook{\hfnl@report@pagelayout}

\AtBeginDocument{\pagestyle{empty}}

%
% End of hfnlletter.cls



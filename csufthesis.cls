% csufthesis.cls: LaTeX2e class for writing CSU Fullerton Master dissertation
% based on the ucithesis.cls and the LaTeX book class.
% This class complies (mostly?) with the "Thesis Manual" which can be found
% at the CSUF Graduate Studies website
% <http://fullerton.edu/graduate/currentstudents/graduateforms.html>
%
% ucithesis.cls written by:
% Written by Xianping Ge <xge@ics.uci.edu>, March 9, 2002.
% Modified by Jeffery von Ronne <jronne@ics.uci.edu>, ...
% Modified by Michael Shafae <michael at shafae dot com>, 2007
% See Also: uci-test.tex
%
% csufthesis.cls written by:
% Written by Michael Shafae, 2009
%
% csufthesis.cls version 1.0 11/20/2010
% (Michael's svn repo v. 2621)
%
% $Id: csufthesis.cls 5887 2015-06-16 06:18:35Z mshafae $
%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{csufthesis}[2010/05/20 CSU Fullerton Thesis class]
%

%\LoadClass[12pt]{report}
%\LoadClassWithOptions{report}

\def\baseclass{book}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\baseclass}}
\def\@checkoptions#1#2{
  \edef\@curroptions{\@ptionlist{\@currname.\@currext}}
  \@tempswafalse
  \@tfor\@this:=#2\do{
    \@expandtwoargs\in@{,\@this,}{,\@curroptions,}
    \ifin@ \@tempswatrue \@break@tfor \fi}
  \let\@this\@empty
  \if@tempswa \else \PassOptionsToClass{#1}{\baseclass}\fi
}
\@checkoptions{12pt}{{10pt}{11pt}{12pt}}
\PassOptionsToClass{letter}{\baseclass}
\PassOptionsToClass{oneside}{\baseclass}
\ProcessOptions\relax
\LoadClass{\baseclass}

\newcommand\bhrule{\typeout{------------------------------------------------------------------------------}}
\newcommand\btypeout[1]{\bhrule\typeout{\space #1}\bhrule}
\def\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space \number\year}


\RequirePackage{setspace}
\doublespacing
\setlength{\parindent}{12pt}
\setlength{\parskip}{2.0ex plus0.5ex minus0.2ex}

\RequirePackage[hmargin={1.5in,1in},vmargin={1in,1.5in}]{geometry}

%\usepackage{vmargin}
%\setmarginsrb           { 1.5in}  % left margin
%                        { 1.0in}  % top margin
%                        { 1.0in}  % right margin
%                        { 1.0in}  % bottom margin
%                        {  20pt}  % head height
%                        {0.25in}  % head sep
%                        {   9pt}  % foot height
%                        { 0.3in}  % foot sep
\raggedbottom
\setlength{\topskip}{1\topskip \@plus 5\p@}
\doublehyphendemerits=10000       % No consecutive line hyphens.
\brokenpenalty=10000              % No broken words across columns/pages.
\widowpenalty=9999                % Almost no widows at bottom of page.
\clubpenalty=9999                 % Almost no orphans at top of page.
\interfootnotelinepenalty=9999    % Almost never break footnotes.

\usepackage{fancyhdr}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
% Generally this is correct for CSUF
\lhead[\rm\thepage]{\fancyplain{}{}}
\rhead[\fancyplain{}{}]{\rm\thepage}
\chead{}\lfoot{}\rfoot{}\cfoot{}
% puts the name of the chapter on each page
%\lhead[\rm\thepage]{\fancyplain{}{\sl{\rightmark}}}
%\rhead[\fancyplain{}{\sl{\leftmark}}]{\rm\thepage}
%\chead{}\lfoot{}\rfoot{}\cfoot{}
\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\btypeout{\thechapter\space #1}\markboth{\@chapapp\ \thechapter\ #1}{\@chapapp\ \thechapter\ #1}}
\renewcommand{\sectionmark}[1]{}
\renewcommand{\subsectionmark}[1]{}

\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
\hbox{}
\thispagestyle{empty}
\newpage
\if@twocolumn\hbox{}\newpage\fi\fi\fi}

\RequirePackage{graphicx}
\RequirePackage{float}
\RequirePackage[usenames]{color}

%\RequirePackage{amsmath}
\usepackage{amsmath,amsfonts,amssymb,amscd,amsthm,xspace}
\theoremstyle{plain}
\newtheorem{example}{Example}[chapter]
\newtheorem{theorem}{Theorem}[chapter]
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{axiom}[theorem]{Axiom}
\theoremstyle{definition}
\newtheorem{definition}[theorem]{Definition}
\theoremstyle{remark}
\newtheorem{remark}[theorem]{Remark}
\usepackage[centerlast,small,sc]{caption}
\setlength{\captionmargin}{20pt}

\newcommand{\fref}[1]{Figure~\ref{#1}}
\newcommand{\tref}[1]{Table~\ref{#1}}
\newcommand{\eref}[1]{Equation~\ref{#1}}
\newcommand{\cref}[1]{Chapter~\ref{#1}}
\newcommand{\sref}[1]{Section~\ref{#1}}
\newcommand{\aref}[1]{Appendix~\ref{#1}}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{.85}
\renewcommand{\textfraction}{0.1}
\renewcommand{\dbltopfraction}{.85}
\renewcommand{\floatpagefraction}{0.75}
\renewcommand{\dblfloatpagefraction}{.75}
\setcounter{topnumber}{9}
\setcounter{bottomnumber}{9}
\setcounter{totalnumber}{20}
\setcounter{dbltopnumber}{9}

\usepackage{graphicx}
\def\pdfshellescape{1}
\usepackage{epstopdf}
\usepackage{booktabs}
\usepackage{rotating}
%\RequirePackage{listing}
%\RequirePackage{listings}
\usepackage{listings}
%\usepackage{lstpatch}

\lstset{captionpos=b,
        frame=tb,
        basicstyle=\scriptsize\ttfamily,
        showstringspaces=false,
        keepspaces=true}
\lstdefinestyle{csuf} {
        language=C,
        keywordstyle=\color{blue},
        commentstyle=\color[rgb]{0.13,0.55,0.13}\em,
        stringstyle=\color[rgb]{0.7,0,0} }

%\RequirePackage{hyperref}
\usepackage[pdfpagemode={UseOutlines},bookmarks=true,bookmarksopen=true,
   bookmarksopenlevel=0,bookmarksnumbered=true,hypertexnames=false,
   colorlinks,linkcolor={blue},citecolor={blue},urlcolor={red},
   pdfstartview={FitV},unicode,breaklinks=true]{hyperref}
\pdfstringdefDisableCommands{
   \let\\\space
}
\usepackage{changepage}
\RequirePackage{multirow}

%\RequirePackage{geometry}
% Set up for the margins of the entire document
%\geometry{top=1.0in, bottom=1.5in, left=1.5in, right=1.0in}	

%\RequirePackage{gmeometric}

% If you want to have a different style for the sections
%\usepackage{sectsty}
% I don't thinkn this has any effect at the moment
%\allsectionsfont{\sffamily\mdseries\scshape}


% double space the entire document
% commented out because there is flip flopping in the prelimary pages
% safer to just do it inside of the document until the \maketitle 
% macro is added
%\AtBeginDocument{\doublespacing}

%
% Macros Defining Global Names, Places, Things, etc.
%
% These are the variables that should be assigned in the 
% main tex document
%
\newcommand{\thesistitle}[1]{\newcommand\Thesistitle{#1}}
\newcommand{\degreename}[1]{\newcommand\Degreename{#1}}
\newcommand{\degreefield}[1]{\newcommand\Degreefield{#1}}
\newcommand{\authorname}[1]{\newcommand\Authorname{#1}}
\newcommand{\degreeyear}[1]{\newcommand\Degreeyear{#1}}
\newcommand{\committeechair}[1]{\newcommand\Committeechair{#1}}
\newcommand{\committeechairdepartment}[1]{\newcommand\Committeechairdepartment{#1}}
\newcommand{\committeemembertwo}[1]{\newcommand\Committeemembertwo{#1}}
\newcommand{\committeemembertwodepartment}[1]{\newcommand\Committeemembertwodepartment{#1}}
\newcommand{\committeememberthree}[1]{\newcommand\Committeememberthree{#1}}
\newcommand{\committeememberthreedepartment}[1]{\newcommand\Committeememberthreedepartment{#1}}
%\newcommand{\othercommitteemembers}[1]{\newcommand\Othercommitteemembers{#1}}
\newcommand{\copyrightdeclaration}[1]{\newcommand\Copyrightdeclaration{#1}}
\newcommand{\dedications}[1]{\newcommand\Dedications{#1}}
\newcommand{\acknowledgments}[1]{\newcommand\Acknowledgments{#1}}
%\newcommand{\curriculumvitae}[1]{\newcommand\Curriculumvitae{#1}}
\newcommand{\thesisabstract}[1]{\newcommand\Thesisbstract{#1}}
%
\newcommand{\University}{California State University, Fullerton}
%
%
% Thesis Title Page
%
% Here the macros defined earlier are laid out according to the CSUF
% thesis manual.
%
% This needs to be fixed so that the \maketitle macro creates this page
% and not this macro so it follows the report.cls way of doing things.
%
% This is spaced out for 12 pt type. Change the type size and this
% title page will look awful.
%
\newcommand{\thesistitlepage}{
%\changetext{textheight}{textwidth}{evensidemargin}{oddsidemargin}{columnsep}
%\changetext{.5in}{0in}{-.25in} {-.25in}{0in}
% this gives us 1.5in on the left
\changetext{.5in}{0in}{0in}{0in}{0in}
%\changepage{textheight}{textwidth}{evensidemargin}{oddsidemargin}{columnsep}{topmargin}{headheight}{headsep}{footskip}
%\changepage{.5in}{0in}{0in}{0in}{0in}{-.5in}{0in}{0in}{0in}
	\thispagestyle{empty}
	\begin{center}
	\begin{singlespace}
	\textsc{\Thesistitle}
	\end{singlespace}
	\rule{3in}{.5pt}\\
	\begin{doublespace}
	A Thesis\\
	Presented to the\\
	Faculty of\\
	\University \\
	\rule{3in}{.5pt}\\
	In Partial Fulfillment\\
	of the Requirements for the Degree\\
	\Degreename \\
	in\\
	\Degreefield \\
	\rule{3in}{.5pt}\\
	By\\
	\Authorname \\
	Approved by:\\
	\end{doublespace}
	\end{center}
	%-----
  \vskip -.1in
  \begin{singlespace}
  \rule{3.25in}{.5pt} \hfill \rule{1.5in}{.5pt} \\
  \Committeechair , Committee Chair \hfill Date \rule{1.1in}{0pt}\\
  Department of \Committeechairdepartment \hfill \rule{0in}{0in}\\
  \vspace{.7in}
  \rule{3.25in}{.5pt} \hfill \rule{1.5in}{.5pt}\\
  \Committeemembertwo , Member \hfill Date \rule{1.1in}{0pt}\\
  Department of \Committeemembertwodepartment \hfill \rule{0in}{0in}\\
  \vspace{.7in}
  \rule{3.25in}{.5pt} \hfill \rule{1.5in}{.5pt} \\
  \Committeememberthree , Member \hfill Date \rule{1.1in}{0pt}\\
  Department of \Committeememberthreedepartment \hfill \rule{0in}{0in} \\
  \end{singlespace}
	%----
	\clearpage
	%\changetext{-.5in}{0in}{.25in} {.25in}{0in}
	\changetext{-.5in}{0in}{0in}{0in}{0in}
  
  
}
%
% Copyright Page
%
\newcommand{\copyrightpage}{
	\thispagestyle{empty}
	% moves the copyright message to the bottom of the page
	\rule{0in}{0in}
	\protect\vfill
	\begin{center}
	\Copyrightdeclaration
	\end{center}
	\clearpage
}
%
% Signature Page
%
% CSUF has no signature page. The signatures are on the title page.
%
%\newcommand{\signaturepage}{
%\begin{singlespace}
%\vspace*{1in}
%\begin{center}
%The dissertation of \Authorname \\
%is approved and is acceptable in quality \\
%and form for publication on microfilm: \\
%\end{center}
%\vfill
%\begin{flushright}
%\rule{3in}{0.01in}\\[18pt]
%\rule{3in}{0.01in}\\[18pt]
%\rule{3in}{0.01in}\\
%Committee Chair
%\end{flushright}
%\vspace{0.7in}
%\begin{center}
%\University \\
%\Degreeyear
%\end{center}
%\end{singlespace}
%\vspace*{0.7in}
%\clearpage
%}
%% End signature page
%
% Dedication Page
%
\newcommand{\dedicationpage}{
	\chapter*{\centering Dedication}
	\thispagestyle{empty}
  
	\rule{0in}{0in}
	\protect\vfill
%	\begin{doublespace}
	%\vspace*{1in}
	\Dedications
%	\end{doublespace}
	\protect\vfill
	\rule{0in}{0in}
	\clearpage
}
%
% Acknowledgements Page
%
\newcommand{\acknowledgmentspage}{
  \thispagestyle{empty}
	\chapter*{\centering Acknowledgments}
	\begin{doublespace}
	\indent\Acknowledgments
	\end{doublespace}
	\clearpage
}
%
% Curriculum Vitae Page
% CSUF doesn't need it
%\newcommand{\curriculumvitaepage}{
%\chapter*{\centering Curriculum Vitae}
%\Curriculumvitae
%\clearpage
%}
%
% Abstract Page
%
\newcommand{\abstractpage}{
\chapter*{\centering Abstract}
%	\chapter*{\centering Abstract}
	\setlength{\parindent}{1 em}
	%\setlength{\parskip}{1 em}
	%\begin{singlespace}
	%\begin{center}
	%\Thesistitle\\[18pt]
	%By\\[18pt]
	%\Authorname\\[18pt]
	%\Degreename\ in \Degreefield\\[18pt]
	%\University, \Degreeyear \\[18pt]
	%\Committeechair, Chair
	%\end{center}
	%\vspace{28pt}
	%\end{singlespace}
	\begin{doublespace}
	\indent\Thesisbstract
	\end{doublespace}
	%\clearpage
}
%
% Titles of Front Matter
%
% Definition of how the names given to the tables and lists in the
% preliminary pages
%
\renewcommand{\contentsname}{\protect\centering\protect Table of Contents}
\renewcommand{\listfigurename}{\protect\centering\protect List of Figures}
\renewcommand{\listtablename}{\protect\centering\protect List of Tables}

%
% Prelimary Pages Layout Macro
%
% Macro defining the order and layout of the prelimary pages
% which includes the title page, signature page, dedication
% table of contents, list of figures, list of tables,
% list of code listings, acknowledgments, CV, and abstract.
%
\newcommand{\preliminarypages}{
% Generally this is correct for CSUF
  \lhead[]{\fancyplain{}{}}
  \rhead[\fancyplain{}{}]{}
  \chead{}\lfoot{}\rfoot{}\cfoot{}

	\pagenumbering{roman}
	\pdfbookmark[1]{Title}{titlepage}
	\thesistitlepage
	\copyrightpage

	% CSUF has no signature page - signatures are on the title page
	%\pdfbookmark[1]{Signatures}{signatures}
	%\signaturepage

  \lhead[]{\fancyplain{}{}}
  \rhead[\fancyplain{}{}]{}
  \chead{}\lfoot{}\rfoot{}\cfoot{\rm\thepage}

	\setcounter{page}{2}

	\phantomsection
	\pdfbookmark[1]{Abstract}{abstract}
	\addcontentsline{toc}{chapter}{\textsc{Abstract}}
	\abstractpage
	\clearpage

	\begin{singlespace}
	% TOC pdf bookmark
	\pdfbookmark[1]{Table of Contents}{toc}
	\tableofcontents
	\end{singlespace}
	\clearpage

	\phantomsection
	\addcontentsline{toc}{chapter}{\textsc{List of Figures}}
	\begin{singlespace}
	\listoffigures
	\end{singlespace}
	\clearpage

	\phantomsection
	\addcontentsline{toc}{chapter}{\textsc{List of Tables}}
	\begin{singlespace}
	\listoftables
	\end{singlespace}
	\clearpage

%	\phantomsection
%	\addcontentsline{toc}{chapter}{\textsc{List of Code Listings}}
%	\begin{singlespace}
%	\listoflistings
%	\end{singlespace}
%	\clearpage

	\phantomsection
	\addcontentsline{toc}{chapter}{\textsc{Acknowledgments}}
	\begin{singlespace}
	\acknowledgmentspage
	\end{singlespace}
	\clearpage

	\phantomsection
%	\addcontentsline{toc}{chapter}{\textsc{Dedication}}
  \pdfbookmark[1]{Dedication}{dedication}
	\begin{singlespace}
	\dedicationpage
	\end{singlespace}
	\clearpage

	%\phantomsection
	%\addcontentsline{toc}{chapter}{\textsc{Curriculum Vitae}}
	%\begin{singlespace}
	%\curriculumvitaepage
	%\end{singlespace}
	%\clearpage
	\pagenumbering{arabic}
	% Generally this is correct for CSUF
  \lhead[\rm\thepage]{\fancyplain{}{}}
  \rhead[\fancyplain{}{}]{\rm\thepage}
  \chead{}\lfoot{}\rfoot{}\cfoot{}
  
	% These don't seem to work correctly
	%\addtolength{\headsep}{-1in}
	%%\addtolength{\footskip}{1in}
	%\addtolength{\textheight}{1in}
	\setlength{\parindent}{1 em}
	\setlength{\parskip}{1 em}
}
%
% End Prelimary Pages Layout
%

%
% Layout of Appendix in TOC and numbering
%
\renewcommand\appendix{\par
  \setcounter{chapter}{0}%
  \setcounter{section}{0}%
  \gdef\@chapapp{\appendixname}%
  \addcontentsline{toc}{chapter}{\appendixname}
  \gdef\thechapter{\@Alph\c@section}%
  \gdef\thesection{\@Alph\c@section}%
  %\chapter*{Appendices}
}

% Table of contents
\gdef\@starttoc#1{%
  \begingroup
    \makeatletter
    \@input{\jobname.#1}%
    \if@filesw
      \expandafter\newwrite\csname tf@#1\endcsname
      \immediate\openout \csname tf@#1\endcsname \jobname.#1\relax
    \fi
    \@nobreakfalse
  \endgroup}

%\renewcommand\contentsname{ContentsPage}

% Put the word Page over the page numbers
%\renewcommand\tableofcontents{%
%    \if@twocolumn
%      \@restonecoltrue\onecolumn
%    \else
%      \@restonecolfalse
%    \fi
%    \chapter*{\contentsname
%        \@mkboth{%
%           \MakeUppercase\contentsname}{\MakeUppercase\contentsname}\\
%           \normalfont\normalsize\flushright{Page}\vspace{-.25in}}%
%    \@starttoc{toc}%
%    \if@restonecol\twocolumn\fi
%    }

% make the list of figures have pages at the top
\renewcommand\listoffigures{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listfigurename%
      \@mkboth{%
         \MakeUppercase\listfigurename}{\MakeUppercase\listfigurename}\\     \normalfont\normalsize\underline{Figure}\hfill\underline{Page}\vspace{-.25in}}%
    \@starttoc{lof}%
    \if@restonecol\twocolumn\fi
    }

\renewcommand\listoftables{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listtablename%
      \@mkboth{%
          \MakeUppercase\listtablename}%
         {\MakeUppercase\listtablename}\\
	\normalfont\normalsize\underline{Table}\hfill\underline{Page}\vspace{-.25in}}%
    \@starttoc{lot}%
    \if@restonecol\twocolumn\fi
    }

\renewcommand{\lstlistoflistings}{%
   \@listingsection*{\lstlistlistingname 
      \@mkboth{\uppercase{\lstlistlistingname}}%
         {\uppercase{\lstlistlistingname}}\\
	\normalfont\normalsize\underline{Listing}\hfill\underline{Page}\vspace{-.25in}}%
   \@starttoc {lol}%
   }



% make the table of section and subsection numbers
% wider in the table of contents:
%\renewcommand*\l@chapter[2]{%
%  \ifnum \c@tocdepth >\m@ne
%    \addpenalty{-\@highpenalty}%
%    \vskip 1.0em \@plus\p@
%    \setlength\@tempdima{1.5em}%
%    \begingroup
%      \parindent \z@ \rightskip \@pnumwidth
%      \parfillskip -\@pnumwidth
%      \leavevmode \sc
%      \advance\leftskip\@tempdima
%      \hskip -\leftskip
%      #1\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
%      \penalty\@highpenalty
%    \endgroup
%  \fi}

\renewcommand*\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 1.0em \@plus\p@
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \sc
      \advance\leftskip\@tempdima
      \hskip -\leftskip
        #1\nobreak \leaders\hbox{$\m@th\mkern \@dotsep mu\hbox{.}\mkern \@dotsep mu$}
       \hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
      \endgroup
  \fi}


% Make the page number width box slightly larger than default (1.55em)
\renewcommand\@pnumwidth{1.75em}

% Puts a little space between each line in the list of figures page
\renewcommand*\l@figure{\addvspace{10pt}\@dottedtocline{1}{1.5em}{2.3em}}
% let table and figure be the same
\let\l@table\l@figure
% add a little space just like the figures and the tables for the listings
\def\l@lstlisting#1#2{\addvspace{10pt}\@dottedtocline{1}{1.5em}{2.3em}{#1}{#2}}

%
% Formatting for each chapter heading
%
\gdef\@makechapterhead#1{%
  \vspace*{50\p@}%
  {\begin{singlespace}
      \parindent \z@ \raggedright \normalfont
    \ifnum \c@secnumdepth >\m@ne
        \centering \scshape \@chapapp\space \thechapter
        \par\nobreak
        \vskip 4\p@
    \fi
    \interlinepenalty\@M
    \scshape #1\par
    \nobreak
    \vskip 24\p@
    \end{singlespace}
  }}

%
% Formatting for headings of the preliminary pages.
%
\gdef\@makeschapterhead#1{%
  \vspace*{50\p@}%
  {\begin{singlespace}
    \parindent \z@ \raggedright
    \normalfont
    \interlinepenalty\@M
    \scshape #1\par\nobreak
    \vskip 24\p@
    \end{singlespace}
  }}

%
% Formatting set up for how the heading of sections, etc.
%
\newcommand{\appenddot}[1]{{#1}.}
\renewcommand\section{\@startsection {section}{1}{\z@}%
                                   {-3.5ex \@plus -1ex \@minus -.2ex}%
                                   {2.3ex \@plus.2ex}%
                                   {\normalfont\normalsize\sc}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {1.5ex \@plus .2ex}%
                                     {\normalfont\normalsize\sc}}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {1.5ex \@plus .2ex}%
                                     {\normalfont\normalsize\sc}}
\renewcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
                                    {3.25ex \@plus1ex \@minus.2ex}%
                                    {-1em}%
                                    {\normalfont\normalsize\itshape\appenddot}}
\renewcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}%
                                       {3.25ex \@plus1ex \@minus .2ex}%
                                       {-1em}%
                                      {\normalfont\normalsize\itshape}}

\newcounter{dummy}

\newcommand\addtotoc[1]{
\refstepcounter{dummy}
\addcontentsline{toc}{chapter}{#1}}

%for article
%\renewcommand{\refname}{\section{BibliographyXX}}
% for book/report
\renewcommand\bibname{Bibliography}

\renewcommand\backmatter{
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \phantomsection
  \addtotoc{\bibname}
  \btypeout{\bibname}
  \@mainmatterfalse}
\endinput

%
% For the future...
%
% Make title stuff below
%\newenvironment{titlepage}
%    {%
%      \if@twocolumn
%        \@restonecoltrue\onecolumn
%      \else
%        \@restonecolfalse\newpage
%      \fi
%      \thispagestyle{empty}%
%      \setcounter{page}\@ne
%    }%
%    {\if@restonecol\twocolumn \else \newpage \fi
%     \if@twoside\else
%        \setcounter{page}\@ne
%     \fi
%    }
%
%  \newcommand\maketitle{\begin{titlepage}%
%  \let\footnotesize\small
%  \let\footnoterule\relax
%  \let \footnote \thanks
%  \null\vfil
%  \vskip 60\p@
%  \begin{center}%
%    {\LARGE \@title \par}%
%    \vskip 3em%
%    {\large
%     \lineskip .75em%
%      \begin{tabular}[t]{c}%
%        \@author
%      \end{tabular}\par}%
%      \vskip 1.5em%
%    {\large \@date \par}%       % Set date in \large size.
%  \end{center}\par
%  \@thanks
%  \vfil\null
%  \end{titlepage}%
%  \setcounter{footnote}{0}%
%  \global\let\thanks\relax
%  \global\let\maketitle\relax
%  \global\let\@thanks\@empty
%  \global\let\@author\@empty
%  \global\let\@date\@empty
%  \global\let\@title\@empty
%  \global\let\title\relax
%  \global\let\author\relax
%  \global\let\date\relax
%  \global\let\and\relax
%}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{jjcv}[2018/09/15 JJ CV template]
\LoadClass[a4paper,11pt]{article}
\RequirePackage{titlesec}
\RequirePackage{xcolor}
\RequirePackage{xparse}
\RequirePackage[hmargin=1.25cm,vmargin=2cm]{geometry}% vmargin 1.25cm is good; this is for filling

% Customisable

% Colors
\definecolor{thegray}{gray}{0.4}% the gray colour used for dates
\definecolor{accent}{RGB}{183, 28, 28}% the main accent colour, used for titles and borders
\definecolor{default}{gray}{0.15}% the main text colour; this one works nicely

% Spacing and sizes
\newlength{\basespacing}\setlength{\basespacing}{20pt}% titles and sections spacing
\newlength{\indentation}\setlength{\indentation}{2em}% titles and sections spacing
\renewcommand{\baselinestretch}{1.25}% baseline spacing (values between 1.15 and 1.3 work nicely)

% Customisable end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% You shouldn't need to edit stuff below this line
% 
% However, if you figure out how to do something better,
% feel free to open a pull request.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\color{default} % default text color

\setlength{\parindent}{0pt} % don't indent
\renewcommand{\familydefault}{\sfdefault}% 

% Styles:

% List style
\def\labelitemi{--}

% Section (titles) styling
\titlespacing{\section}{0pt}{\basespacing}{0.5\basespacing}
\titlespacing{\subsection}{0pt}{\basespacing}{0pt}

\titleformat{\section}
  {\fontsize{14pt}{14pt}\raggedright\bfseries\color{accent}}
  {}{0em}%\raisebox{0.6ex}{\rule{1cm}{1.2pt}\hspace{1ex}}
  {}
  [{\color{accent}\titlerule[1.2pt]}]
  
\titleformat{\subsection}
  {\fontsize{12pt}{12pt}\raggedright\bfseries}
  {}{0em}
  {}

\newcommand{\datedsubsection}[3]{% Usage: \datedsubsection{position}{company}{dates}
  \subsection[#1]{#1 \hfill \color{thegray}{#3}}
  #2
  \vspace{3pt}
}

% Styles end


% Custom commands and environments:

% Header box
% Usage: \headerbox{Name}{Subtitle}{Small line 1}{Small line 2}{Small line 3}{Summary}
\newcommand{\headerbox}[6]{
\begin{minipage}{\textwidth-12.8pt}% the 12.8pt is a magic number so the summary box doesn't float into the margins... sorry 'bout that
\begin{minipage}[t][][t]{0.5\textwidth}%
% photo:
  \begin{minipage}[t]{3cm}{%
    \vspace{0pt}%
    \includegraphics[height=3cm]{photo}
  }\end{minipage}%
% right box
  \begin{minipage}[t]{\textwidth-3cm}
    \vspace{0pt}%
    % personal info
      \color{accent}\fontsize{28pt}{28pt}\selectfont #1 \\
      \fontsize{16pt}{16pt}\selectfont #2 \\
      \color{default}\fontsize{12pt}{12pt}\selectfont
      #3 \\
      #4 \\
      #5
  \end{minipage}%
\end{minipage}%
%
% summary
\hfill
\begin{minipage}[t][][t]{0.46\linewidth}%
  \begin{boxed}
    \vspace{0pt}
    #6
    \vspace{10pt}
  \end{boxed}%
  \end{minipage}%
\end{minipage}
\\
\\
}

% Relevant courses
% Usage: \relevantcourses{Relevant courses}{Course 1}{Course 2}{Course 3}
\newcommand{\relevantcourses}[4]{%
  \textbf{#1:}
  #2; #3; #4
  }

% Box (used for summary)
\newenvironment{boxed}
  {
    \taburulecolor{accent}
    \begin{tabu}[t]{|p{\textwidth}|}
    \hline
  }
  { 
    \\\hline
    \end{tabu} 
  }

% Indentation box
\NewDocumentEnvironment {indentbox} { o }
   {%
    \begin{addmargin}[\IfValueTF{#1}{#1}{\indentation}]{10pt}
    \begin{itemize}
   }
   {%
    \end{itemize}
    \end{addmargin}
   }
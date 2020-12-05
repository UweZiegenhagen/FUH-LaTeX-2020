:*:fuh#::Fernuniversität Hagen

:*:ch#::\chapter{{}{}}{LEFT}
:*:s#::\section{{}{}}{LEFT}
:*:ss#::\subsection{{}{}}{LEFT}
:*:sss#::\subsubsection{{}{}}{LEFT}

:*:item#::\begin{{}itemize{}}`r`t\item `r\item `r\item `r\item `r\item `r\item `r\end{{}itemize{}}{UP 6}
:*:i#::\item{Space}


:*:l#::\label{{}{}}{LEFT}
:*:r#::\ref{{}{}}{LEFT}

:*:std#::\usepackage[utf8]{{}inputenc{}}`r\usepackage[T1]{{}fontenc{}}`r\usepackage{{}booktabs{}}`r\usepackage{{}babel{}}`r\usepackage{{}graphicx{}}`r\usepackage{{}csquotes{}}`r\usepackage{{}paralist{}}`r\usepackage{{}xcolor{}}


:*:g#::
   Gestern = %A_Now%
   EnvAdd, Gestern, -1, Days
   FormatTime, Gestern, %Gestern%, dd.MM.yyyy
   Send, %Gestern%
   Return
:*:h#::
   Heute = %A_Now%
   FormatTime, Heute, %Heute%, yyyyMMdd
   Send, %Heute%
   Return
:*:h-#::
   Heute = %A_Now%
   FormatTime, Heute, %Heute%, yyyy-MM-dd
   Send, %Heute%
   Return
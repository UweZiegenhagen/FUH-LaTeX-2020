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
   
   
   
!e::
InputBox, UserEnv, Environment, Please enter an environment!, , 240, 120
If ErrorLevel
	return
Else 
if( RegExMatch(UserEnv, "(.*?)(\d+)$", splitted) ) {
	Send \begin{{}%splitted1%{}}{Enter}
		Loop %splitted2% {
			Send \item {Enter}
		}
	Send \end{{}%splitted1%{}}{Up}
	count2 := splitted2 - 1 
	Loop %count2% {
		Send {Up}
	}			
} 
Else 
	Send \begin{{}%UserEnv%{}}{Enter 2}\end{{}%UserEnv%{}}{Up}
return
# FUH-LaTeX-2020

Materialien für meinen LaTeX-Kurs bei der Studierendenschaft der Fernuni Hagen im Oktober und November 2020.

Die Materialien können frei von jedermann genutzt und verändert werden, entsprechende Hinweise auf meine Urheberschaft werden aber gern gesehen.

## Der Kurs

Der Kurs findet an mehreren Samstagen online statt, als Plattform nutzen wir BigBlueButton, der Link wird per E-Mail versandt.

* **Tag 1**: 10.10.2020
* **Tag 2**: 31.10.2020
* **Tag 3**: 07.11.2020
* **Tag 4**: !!! Aufgrund einen familiären Notfalls muss ich diesen Termin leider verschieben !!!

Jeweils von 10:00 Uhr bis 12:00 Uhr und 13:00 Uhr bis 15 Uhr.

## Was wird benötigt

* Ein Rechner (Laptop, Desktop) mit Windows oder MacOS (Linux geht auch, wenn die Kommunikationssoftware dafür verfügbar ist)
* TeX Live 2020, herunterladen und installieren von tug.org/texlive. Linux: Bitte nicht aus den Distributionsquellen nehmen, sondern auch von tug.org installieren. Mac-User installieren bitte MacTeX (auch auf der tug.org Seite frei verfügbar)
* Ein Editor zur Bearbeitung der TeX-Dateien: TeX Live bringt für Mac und Windows TeXworks mit, einen guten Editor. TeX Studio und Visual Studio Code (mit der LaTeX Workshop Erweiterung von James Yu) kann ich ebenfalls empfehlen.

## Kursinhalte

Die Kursinhalte sind flexibel und orientieren sich am Bedarf der Teilnehmerinnen und Teilnehmer, mit dem folgenden Ablauf plane ich:

### Tag 1 - Grundlagen

* Vorstellung der Beteiligten
* Vorstellung von DANTE e.V.
* Historie von TeX und LaTeX
* Check der Umgebungen bzw. Installationen
* Das erste Dokument "Hello \LaTeX"
* Klassen, Pakete, Umgebungen und Befehle
* Warum man article, report und book nicht nutzen sollte -- die KOMA Klassen
* Strukturierte Dokumente, ``\chapter``, ``\section`` & Co, Inhaltverzeichnisse
* Referenzen mit ``\label`` und ``\ref``
* Float-Objekte in LaTeX
* Einfache Bilder einbetten, Bilderverzeichnisse
* Tabellensatz und Tabellenverzeichnisse

### Tag 2 - Tabellen, Mathematik, und mehr

* Fragen?
* Zusammenfassung vom 1. Termin
* Versionisierung von Dokumenten mit git & Github
* Wir bauen eine Vorlage für Seminar- und Abschlussarbeiten: ``titlepage``, ``scrpage``
* Mathematiksatz (mit und ohne ``amsmath``)
* Mehr zum Bilder einbetten: ``subfigure``
* Briefe setzen mit ``scrlttr2``

### Tag 3 - Bibliografien und Präsentationen

* Fragen?
* Zusammenfassung vom 2. Termin, Wiederholung
* Andere Editoren: ``TeXworks`` und ``Visual Studio Code``
* Schneller TeX mit Autohotkey & Co
* Einheitensatz mit ``siunitx``
* Fuß- und Randnoten -- ``\footnote`` and ``\marginpar``
* Tabellensatz: Am Dezimalpunkt ausrichten mit dem "S" Spaltentyp von ``siunitx``
* Fonts für ``pdflatex``, der LaTeX Font Katalog (https://tug.org/FontCatalogue/)
* Einfache Bibliografien -- die ``thebibliography`` Umgebung
* Komplexe Bibliografien mit ``biblatex``, ``biber`` und ``jabref``
* Mehr zu Präsentationen mit der ``Beamer``-Klasse

Bitte Jabref von www.jabref.org installieren, kostet nichts und ist sehr gut.

### Tag 4 - Fortgeschrittenes

!!! Aufgrund einen familiären Notfalls muss ich diesen Termin leider verschieben !!!

* Fragen?
* Zusammenfassung vom 3. Termin, Wiederholung
* https://ctan.mc1.root.project-creative.net/info/first-packages/first-packages.html
* ``Arara`` in TeXworks konfigurieren
* ``luaLaTeX`` versus ``pdflatex``, Nutzung von Systemschriften in LaTeX

Wechsel von ``pdflatex`` nach ``lualatex``

\usepackage[T1]{fontenc}
\usepackage[utf8]{inputenc}

entfernen und 

\usepackage{fontspec} hinzufügen, ggfalls noch entsprechende Schriften laden.

* ``\input`` und ``\include``
* Das ``subfiles`` Paket
* Quellcode-Listings einfügen mit dem ``Listings`` Paket
* Effizient TeXen mit ``Autohotkey``, automatischer Start siehe https://www.autohotkey.com/docs/FAQ.htm#Startup
* Schöne Matrizen mit ``nicematrix``
* Umrahmte (farbige) Boxen mit ``tcolorbox`` (``texdoc tcolorbox``), alternativ siehe das ``mdframed`` Paket
* Grafiken erstellen mit LaTeX-Paketen, Sehrsehrkurzeinführung ``TikZ``
* Grundlagen der Automatisierung von Textsatz mit Python (Ein Weg, Serienbriefe zu erzeugen...)
* Frage-und-Antwort-Teil

## Literaturempfehlungen

Empfohlen werden:

* Alle Bücher von Herbert Voß (https://www.lehmanns.de/search/quick?PHPSESSID=mi28bh61dhv2nu8keg4hjnkunumgi5ah&mediatype_id=&q=herbert+vo%C3%9F), insbesondere die Einführung
* Der LaTeX Begleiter in der 2. Auflage (ist auch nicht mehr brandaktuell, bietet aber einen guten Überblick über LaTeX)

## Weitere Links

* https://open.hpi.de/courses/git2020 Git Kurs beim HPI
* Meine Briefvorlage https://www.uweziegenhagen.de/?p=3290
* Biblatex Cheat Sheet, https://www.ctan.org/tex-archive/info/biblatex-cheatsheet

## Witzige oder interessante LaTeX-Pakete

* ducksay, https://ctan.mirror.norbert-ruehl.de/macros/latex/contrib/ducksay/
* Penrose Patterns mit TikZ, https://www.ctan.org/pkg/penrose
* pst-eucl für euklidische Geometrie https://www.ctan.org/pkg/pst-eucl

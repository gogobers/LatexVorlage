<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

## LaTeX-Vorlage für Studien- und Bachelorarbeiten an der DHBW ##

Dieses ist eine inoffizielle Version und beinhaltet

* Einfaches Main-File mit Einbingung einiger Pakete
* Erstellung von Verzeichnissen:
* Literaturverzeichnis über Biber
* Abkürzungsverzeichnis über xindy
* Tabellen- und Abbildungsverzeichnis
* Indexerstellung

Inhalte werden einfach in die Dateien kap1.tex, einleitung.tex
etc. eingefügt und über \\input in die main.tex eingebunden.

Übersetzung erfolgt wie in den .sh-Skripten gezeigt nach

    lualatex main
    biber main
    xindy -L german-din -C utf8 -I xindy -M main -t main.glg -o main.gls main.glo
    makeindex main
    lualatex main
    lualatex main
  
Viel Spaß damit

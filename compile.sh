#!/bin/sh
pdflatex main
biber main
xindy -L german-din -C utf8 -I xindy -M main -t main.glg -o main.gls main.glo
texindy main.idx
pdflatex main
pdflatex main

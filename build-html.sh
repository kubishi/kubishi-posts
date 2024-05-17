#!/bin/bash

git clean -fX

# build main.tex, main.bib with biblatex
pdflatex main.tex
biber main
pdflatex main.tex
pdflatex main.tex


# build html with numbered references
htlatex main.tex

git clean -fX
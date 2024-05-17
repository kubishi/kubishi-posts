#!/bin/bash

git clean -fX

# build bibliography with bibtex
pdflatex main.tex
bibtex main
pdflatex main.tex
pdflatex main.tex

# build html with numbered references
htlatex main.tex

git clean -fX
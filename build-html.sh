#!/bin/bash

git clean -fX

# build llms-and-language.tex, llms-and-language.bib with biblatex
pdflatex llms-and-language.tex
biber llms-and-language
pdflatex llms-and-language.tex
pdflatex llms-and-language.tex


# build html with numbered references
htlatex llms-and-language.tex

git clean -fX
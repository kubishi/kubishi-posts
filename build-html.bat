@echo off

REM Clean untracked files and directories
git clean -fX

REM Build llms-and-language.tex and llms-and-language.bib with biblatex
pdflatex llms-and-language.tex
biber llms-and-language
pdflatex llms-and-language.tex
pdflatex llms-and-language.tex

REM Build HTML with numbered references
htlatex llms-and-language.tex

REM Clean untracked files and directories again
git clean -fX

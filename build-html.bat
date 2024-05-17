@echo off

REM Clean untracked files and directories
git clean -fX

REM Build main.tex and main.bib with biblatex
pdflatex main.tex
biber main
pdflatex main.tex
pdflatex main.tex

REM Build HTML with numbered references
htlatex main.tex

REM Clean untracked files and directories again
git clean -fX

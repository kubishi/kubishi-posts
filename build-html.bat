@echo off

@REM cd to the directory of this batch file
cd %~dp0

@REM cd to directory of first argument, print error message if it does not exist
if not exist %1 (
    echo Directory %1 does not exist.
    exit /b 1
)
cd %1

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

@REM go back to the directory of this batch file
cd %~dp0

#!/bin/bash

# cd to the directory of the script
cd "$(dirname "$0")"

# cd to directory of first argument, if it does not exist, print error message
if [ -d "$1" ]; then
    cd "$1"
else
    echo "Error: $1 is not a directory"
    exit 1
fi

git clean -fX

# build llms-and-language.tex, llms-and-language.bib with biblatex
pdflatex llms-and-language.tex
biber llms-and-language
pdflatex llms-and-language.tex
pdflatex llms-and-language.tex


# build html with numbered references
htlatex llms-and-language.tex

git clean -fX

# cd back to the directory of the script
cd - > /dev/null
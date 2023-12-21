#!/bin/sh -l

latexmk -lualatex --output-directory=$2 --halt-on-error $1
biber $1
latexmk -lualatex --output-directory=$2 --halt-on-error $1
latexmk -lualatex --output-directory=$2 --halt-on-error $1

#!/usr/bin/env zsh

#declare -r WORK="$(mktemp -d)"
declare -r WORK="out"

gomplate \
	-c ".=resume.json" \
	-o "$WORK/resume.tex" \
	-f "template.tex" \
	--left-delim '<' \
	--right-delim '>'

texi2pdf -c -q "$WORK/resume.tex" -o resume.pdf
rm -r "$WORK"

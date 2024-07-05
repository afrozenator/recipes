#!/bin/bash

# From https://medium.com/@acrodriguez/one-liner-to-generate-a-markdown-toc-f5292112fd14
cat Recipes.md | grep -E "^#{${1:-1},${2:-5}} " |  sed -E 's/(#+) (.+)/\1:\2:\2/g' |  awk -F ":" '{ gsub(/#/,"  ",$1); gsub(/[ ]/,"-",$3); print $1 "- [" $2 "](#" tolower($3) ")" }' >> Recipes.md


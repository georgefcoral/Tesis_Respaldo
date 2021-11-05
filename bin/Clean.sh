#!/bin/bash

test -f *.bbl && rm *.bbl
test -f *.blg && rm *.blg
test -f *.dvi && rm *.dvi
test -f *.ps  && rm *.ps
test -f *.pdf && rm *.pdf
test -f *.log && rm *.log
test -f *.lot && rm *.lot
test -f *.lof && rm *.lof
test -f *.toc && rm *.toc
test -f *.aux && rm *.aux
find ./ -name auto -a -type d | xargs rm -fr




MAIN_TEX = Tesis.tex
BIB_FILE = biblio.bib

MAIN = $(basename $(MAIN_TEX))
TEX_FILES = $(shell find ./ -type f -a -name "*.tex" )
DVI_FILE = $(patsubst %.tex,%.dvi,$(MAIN_TEX))
PS_FILE = $(patsubst %.tex,%.ps,$(MAIN_TEX))
PDF_FILE = $(patsubst %.tex,%.pdf,$(MAIN_TEX))

all: $(DVI_FILE)

$(DVI_FILE): $(TEX_FILES) $(BIB_FILE)
	latex $(MAIN)&& bibtex $(MAIN) && (latex $(MAIN);  latex $(MAIN))

$(PDF_FILE): $(DVI_FILE)
	dvipdfm $(DVI_FILE)

$(PS_FILE): $(DVI_FILE)
	dvips $(DVI_FILE)

clean:
	@bin/Clean.sh

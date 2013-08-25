export TEXINPUTS := .:./moderncv:

.PHONY: all
all: pdf dvi tidy

.PHONY: pdf
pdf: joel_pettersson_cv.pdf

.PHONY: dvi
dvi: joel_pettersson_cv.dvi

.PHONY: clean
clean:
	-latexmk -C

.PHONY: tidy
tidy:
	-latexmk -c


%.pdf: %.tex
	latexmk -pdf $<

%.dvi: %.tex
	latexmk -dvi $<

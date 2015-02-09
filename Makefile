main = main

all:  r pdf

r: 
	cd R; Rscript SFA-candles.R

pdf:
	pdflatex $(main)
	bibtex $(main)
	pdflatex $(main)
	pdflatex $(main)
	pdflatex $(main)

clean:
	rm -f *.aux *.log *.bbl *.blg *.toc *.lof *.lot *.out $(main).pdf generated/*

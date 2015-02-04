main = main

all: pdf

pdf:
	pdflatex $(main)
	bibtex $(main)
	pdflatex $(main)
	pdflatex $(main)
	pdflatex $(main)

clean:
	rm -f *.aux *.log *.bbl *.blg *.toc *.lof *.lot *.out

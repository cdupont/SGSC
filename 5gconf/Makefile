main = main

all:  r graphviz pdf

r: 
	mkdir -p generated
	cd R; Rscript SFA-candles.R

graphviz:
	mkdir -p generated
	dot -Tpdf dot/SFABlock.dot -o generated/SFABlockUncropped.pdf
	pdfcrop generated/SFABlockUncropped.pdf generated/SFABlock.pdf

pdf:
	pdflatex -shell-escape $(main)
	bibtex $(main)
	pdflatex -shell-escape $(main)
	pdflatex -shell-escape $(main)
	pdflatex -shell-escape $(main)

install:
	sudo apt-get install python-pygments
	sudo apt-get install r-base
	sudo apt-get install graphviz
	sudo echo "shell_escape = t" >> /etc/texmf/web2c/texmf.cnf

clean:
	rm -rf *.aux *.log *.bbl *.blg *.toc *.lof *.lot *.out $(main).pdf generated

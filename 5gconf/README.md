This repository contains a research paper focus on PaaS activities.

# Prerequistes

You must have the following installed: R, Rscript, graphviz, Python, Pygments.
To install them, type:

$ make install

Enable Write18 in texlive (must be root):

$ echo "shell_escape = t" >> `kpsewhich texmf.cnf`


# Build

To build, just type:

$ make


# How-to write

- LaTeX
- A cheat-sheet if needed: http://www.stdout.org/~winston/latex/latexsheet-a4.pdf
- If you don't know LaTeX and do want to learn, write in plain text, I (or someone else familiar with latex) will adapt your text
- compile with pdflatex

# Writing style

- 1 sentence per line to ease differentiation over versions
- present tense
- 1 idea per paragraph. In a same paragraph, sentence `n+1` provides more detail than sentence `n`
- no "We"
- active form

# Figures

- PDF files only for the inclusion
- SVG file for creation (to store in the repository)

# Related works

Place papers interesting to read and/or related to this work inside the `related` folder

# Who does what ?

This is a dispatch to announce the main author, anyone can add stuff or comment using the appropriate \xx command.


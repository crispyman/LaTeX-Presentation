SHELL:=/bin/bash
latex-presentation: beamer.tex
	echo "\begin{verbatim}" > cowsay
	fortune | cowsay >> cowsay
	echo "\end{verbatim}" >> cowsay
	pdflatex -shell-escape beamer.tex
    

SHELL:=/bin/bash
latex-presentation: beamer.tex
	echo "\begin{minted}{bash}" > cowsay
	fortune | cowsay >> cowsay
	echo "\end{minted}" >> cowsay
	pdflatex -shell-escape beamer.tex

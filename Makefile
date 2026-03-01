# sudo dnf install texlive-scheme-basic
# sudo dnf install 'tex(amsmath.sty)'
# sudo dnf install 'tex(graphicx.sty)'
# sudo dnf install latexmk

all: pdf

pdf:
	latexmk -pdf active-recall.tex

pdf-preview:
	latexmk -pdf -pvc active-recall.tex

clean:
	latexmk -c

cleanall:
	latexmk -C

format:
	latexindent --silent --check --overwrite $(wildcard **/*.tex)

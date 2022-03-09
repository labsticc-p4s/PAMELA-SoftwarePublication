TEXFILE=1-Main
TEXFILE1=ResponseLetter

LATEXCMD=latexmk -f --synctex=1 -pdf

all: main letter 

main: 
	$(LATEXCMD) $(TEXFILE)

letter:
	$(LATEXCMD) $(TEXFILE1)

clean:
	$(LATEXCMD) -c
	#rm -Rf *.log *.aux *~ *.toc *.brf *.bbl *.blg *.ps *.fdb_latexmk \
	#*.nav *.out *.snm *.vrb *.pag auto *.maf *.mtc *.mtc0 *.fls *.synctex.gz

clean.all: clean
	$(LATEXCMD) -C
	#rm -f $(TEXFILE).{pdf,dvi}

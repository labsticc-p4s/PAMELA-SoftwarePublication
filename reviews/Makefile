TEXFILE=responseLetter

LATEXCMD=latexmk -f --synctex=1 -pdf

all: letter 

letter:
	$(LATEXCMD) $(TEXFILE)

clean:
	$(LATEXCMD) -c

clean.all: clean
	$(LATEXCMD) -C

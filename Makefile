TEXFILE=main

LATEXCMD=latexmk -f --synctex=1 -pdf

all: main

main: 
	$(LATEXCMD) $(TEXFILE)

clean:
	$(LATEXCMD) -c

clean.all: clean
	$(LATEXCMD) -C
	rm -f main.bbl main.spl

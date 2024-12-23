STYLES := lecturenotes.cls

.PHONY: all clean cleanall

TEX_FILES = $(shell find . -maxdepth 1 -name '*.tex' -type f)

export TEXINPUTS = .::$TEXMF/tex::../pl-syntax


all: $(TEX_FILES:.tex=.pdf)

%.pdf: %.tex $(STYLES)
	latexmk -pdf -synctex=1 -pdflatex=lualatex $<


clean:
	@find . \( -name '*.aux'\
		-o -name '*~'\
		-o -name '*.synctex.gz'\
		-o -name '*.blg'\
		-o -name '*.toc'\
		-o -name '*.lot'\
		-o -name '*.fls'\
		-o -name '*.fdb_latexmk'\
		-o -name '*.xcp'\
		-o -name '*.xoj'\
		-o -name '*.lof'\
		-o -name '*.log'\
		-o -name '*.out'\
		\) -type f -not -path "./.git/*" -not -path "./src/*"\
	     -exec sh -c 'echo "REMOVING {}"; rm "{}"' ';'

cleanall:
	@find . \( -name '*.aux'\
		-o -name '*~'\
		-o -name '*.synctex.gz'\
		-o -name '*.blg'\
		-o -name '*.toc'\
		-o -name '*.lot'\
		-o -name '*.fls'\
		-o -name '*.fdb_latexmk'\
		-o -name '*.xcp'\
		-o -name '*.xoj'\
		-o -name '*.lof'\
		-o -name '*.log'\
		-o -name '*.out'\
		-o -name '*.pdf'\
		-o -name '*.dvi'\
		\) -type f -not -path "./.git/*" -not -path "./src/*"\
	     -exec sh -c 'echo "REMOVING {}"; rm "{}"' ';';
	@find . \( -name 'auto'\
		-o -name '_minted*'\
	        \) -type d -not -path "./.git/*" -not -path "./src/*" -prune\
	     -exec sh -c 'echo "REMOVING {}"; rm -r "{}"' ';'

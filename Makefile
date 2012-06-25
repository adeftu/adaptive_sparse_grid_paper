SRCS = comp_steering.tex  evaluation.tex    loop_transf.tex    related_work.tex \
       conclusion.tex     introduction.tex  ltg.tex \
       cpus_vs_gpus.tex   op_strategies.tex \
       refs.bib

all: ltg.pdf

ltg.pdf: $(SRCS) refs.bib
	pdflatex ltg.tex
	- bibtex ltg
	pdflatex ltg.tex
	pdflatex ltg.tex
clean:
	-rm -f *~ ltg.pdf *.aux *.log *.dvi *.blg *.bbl


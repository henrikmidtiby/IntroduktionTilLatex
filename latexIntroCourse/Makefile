PROJEKTNAVN := simple
RERUNCONDITION := "(There were undefined references|Rerun to get (cross-references|the bars) right)"

CLEAN := \
	${PROJEKTNAVN}.aux \
	${PROJEKTNAVN}.log \
	${PROJEKTNAVN}.nav \
	${PROJEKTNAVN}.out \
	${PROJEKTNAVN}.toc \
	${PROJEKTNAVN}.snm \
	${PROJEKTNAVN}.bbl \
	${PROJEKTNAVN}.blg \
	examples/08.bbl \
	examples/09.bbl \
	examples/08.blg \
	examples/09.blg \
	examples/02.toc \
	examples/01.log \
	examples/01b.log \
	examples/01c.log \
	examples/02.log \
	examples/03.log \
	examples/04.log \
	examples/05.log \
	examples/06.log \
	examples/07.log \
	examples/08.log \
	examples/09.log \
	examples/10.log \
	examples/01.aux \
	examples/01b.aux \
	examples/01c.aux \
	examples/02.aux \
	examples/03.aux \
	examples/04.aux \
	examples/05.aux \
	examples/06.aux \
	examples/07.aux \
	examples/08.aux \
	examples/09.aux \
	examples/10.aux \
	examples/01.pdf \
	examples/01b.pdf \
	examples/01c.pdf \
	examples/02.pdf \
	examples/03.pdf \
	examples/04.pdf \
	examples/05.pdf \
	examples/06.pdf \
	examples/07.pdf \
	examples/08.pdf \
	examples/09.pdf \
	examples/10.pdf \
	examples/skabelon/doc/project.aux \
	examples/skabelon/doc/project.log \
	examples/skabelon/doc/project.idx \
	examples/skabelon/doc/project.toc \
	examples/skabelon/doc/project.out \
	examples/skabelon/doc/project.pdf \
	examples/skabelon/doc/project.tdo \
	
DISTCLEAN := \
	${PROJEKTNAVN}.pdf \

DEPENDENCIES := \
	examples/01.pdf \
	examples/01b.pdf \
	examples/01c.pdf \
	examples/02.pdf \
	examples/03.pdf \
	examples/04.pdf \
	examples/05.pdf \
	examples/06.pdf \
	examples/07a.pdf \
	examples/07.pdf \
	examples/08.pdf \
	examples/09.pdf \
	examples/10.pdf \
	examples/skabelon/doc/project.pdf \

${PROJEKTNAVN}.pdf: \
	${PROJEKTNAVN}.tex \
	${DEPENDENCIES}
	pdflatex ${PROJEKTNAVN}.tex
	egrep -c ${RERUNCONDITION} ${PROJEKTNAVN}.log && pdflatex ${PROJEKTNAVN}.tex; true

default: \
	${PROJEKTNAVN}.pdf

view: \
	${PROJEKTNAVN}.pdf
	okular ${PROJEKTNAVN}.pdf

# Fjerner midlertidige filer
clean:
	@rm -f $(CLEAN)

# Fjerner alle filer der kan gendannes vha. simpel regnekraft.
distclean: clean 
	@rm -f $(DISTCLEAN)


examples/skabelon/doc/project.pdf: 
	cd examples/skabelon && make default

examples/01.pdf: \
	examples/01.tex
	cd examples && pdflatex 01.tex
	cd examples && pdflatex 01.tex

examples/01b.pdf: \
	examples/01b.tex
	cd examples && pdflatex 01b.tex
	cd examples && pdflatex 01b.tex

examples/01c.pdf: \
	examples/01c.tex
	cd examples && pdflatex 01c.tex
	cd examples && pdflatex 01c.tex

examples/02.pdf: \
	examples/02.tex
	touch examples/02.toc
	rm examples/02.toc
	cd examples && pdflatex 02.tex
	cp examples/02.pdf examples/02firstRun.pdf
	cd examples && pdflatex 02.tex

examples/03.pdf: \
	examples/03.tex
	cd examples && pdflatex 03.tex
	cd examples && pdflatex 03.tex

examples/04.pdf: \
	examples/04.tex
	cd examples && pdflatex 04.tex
	cd examples && pdflatex 04.tex

examples/05.pdf: \
	examples/05.tex
	touch examples/05.aux
	rm examples/05.aux
	cd examples && pdflatex 05.tex
	cp examples/05.pdf examples/05firstRun.pdf
	cd examples && pdflatex 05.tex

examples/06.pdf: \
	examples/06.tex
	cd examples && pdflatex 06.tex
	cd examples && pdflatex 06.tex

examples/07a.pdf: \
	examples/07a.tex
	cd examples && pdflatex 07a.tex
	cd examples && pdflatex 07a.tex

examples/07.pdf: \
	examples/07.tex
	cd examples && pdflatex 07.tex
	cd examples && pdflatex 07.tex

examples/08.pdf: \
	examples/08.tex
	touch examples/08.aux
	rm examples/08.aux
	cd examples && pdflatex 08.tex
	cp examples/08.pdf examples/08firstRun.pdf
	cd examples && pdflatex 08.tex

examples/09.pdf: \
	examples/09.tex
	touch examples/09.aux
	rm examples/09.aux
	cd examples && pdflatex 09.tex
	cp examples/09.pdf examples/09firstRun.pdf
	cd examples && bibtex 09
	cd examples && pdflatex 09.tex
	cd examples && pdflatex 09.tex

examples/10.pdf: \
	examples/10.tex
	cd examples && pdflatex 10.tex
	cd examples && pdflatex 10.tex

examples/skabelon/doc/project.pdf:
	cd examples/skabelon && make 

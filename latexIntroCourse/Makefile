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
	examples/*.bbl \
	examples/*.blg \
	examples/*.toc \
	examples/*.log \
	examples/*.aux \
	examples/*.tdo \
	examples/*.pdf \
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
	examples/02paragraphs.pdf \
	examples/03.pdf \
	examples/04.pdf \
	examples/04b.pdf \
	examples/05.pdf \
	examples/06.pdf \
	examples/07a.pdf \
	examples/07.pdf \
	examples/08.pdf \
	examples/09.pdf \
	examples/10.pdf \
	examples/11.pdf \
	examples/12.pdf \
	examples/13mhchem.pdf \
	examples/13mhchemReactions.pdf \
	examples/14siunitx.pdf \
	examples/15hyperref.pdf \
	examples/16include.pdf \
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

examples/02paragraphs.pdf: \
	examples/02paragraphs.tex
	cd examples && pdflatex 02paragraphs.tex

examples/03.pdf: \
	examples/03.tex
	cd examples && pdflatex 03.tex
	cd examples && pdflatex 03.tex

examples/04.pdf: \
	examples/04.tex
	cd examples && pdflatex 04.tex
	cd examples && pdflatex 04.tex

examples/04b.pdf: \
	examples/04b.tex
	cd examples && pdflatex 04b.tex
	cd examples && pdflatex 04b.tex

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

examples/11.pdf: \
	examples/11.tex
	cd examples && pdflatex 11.tex
	cd examples && pdflatex 11.tex

examples/12.pdf: \
	examples/12.tex
	cd examples && pdflatex 12.tex
	cd examples && pdflatex 12.tex

examples/13mhchem.pdf: \
	examples/13mhchem.tex
	cd examples && pdflatex 13mhchem.tex

examples/13mhchemReactions.pdf: \
	examples/13mhchemReactions.tex
	cd examples && pdflatex 13mhchemReactions.tex

examples/14siunitx.pdf: \
	examples/14siunitx.tex
	cd examples && pdflatex 14siunitx.tex

examples/15hyperref.pdf: \
	examples/15hyperref.tex
	touch examples/15hyperref.aux
	rm examples/15hyperref.aux
	cd examples && pdflatex 15hyperref.tex
	cp examples/15hyperref.pdf examples/15hyperreffirstRun.pdf
	cd examples && pdflatex 15hyperref.tex

examples/16include.pdf: \
	examples/16include.tex
	cd examples && pdflatex 16include.tex


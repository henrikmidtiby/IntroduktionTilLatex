# projekt/doc/modules.mk

RERUNCONDITION := "(There were undefined references|Rerun to get (cross-references|the bars) right)"

DEPENDENCIES += \
	doc/var/citations.bib \

SRC += \
	doc/${PROJEKTNAVN}.tex

CLEAN += \
	doc/${PROJEKTNAVN}.aux \
	doc/${PROJEKTNAVN}.lof \
	doc/${PROJEKTNAVN}.log \
	doc/${PROJEKTNAVN}.lot \
	doc/${PROJEKTNAVN}.toc \
	doc/${PROJEKTNAVN}.bbl \
	doc/${PROJEKTNAVN}.blg \
	doc/${PROJEKTNAVN}.idx \
	doc/${PROJEKTNAVN}.out \
	doc/${PROJEKTNAVN}.ind \
	doc/${PROJEKTNAVN}.ilg \
	doc/${PROJEKTNAVN}.tdo \

DISTCLEAN += \
	doc/${PROJEKTNAVN}.dvi \
	doc/${PROJEKTNAVN}.pdf \
	doc/${PROJEKTNAVN}.ps

doc/${PROJEKTNAVN}.pdf : \
	${DEPENDENCIES} \
	doc/${PROJEKTNAVN}.tex
	cd doc && pdflatex ${PROJEKTNAVN}.tex
	cd doc && pdflatex ${PROJEKTNAVN}.tex
	#cd doc && bibtex ${PROJEKTNAVN}
	#cd doc && makeindex ${PROJEKTNAVN}
	cd doc && egrep -c ${RERUNCONDITION} ${PROJEKTNAVN}.log && pdflatex ${PROJEKTNAVN}.tex; true
	cd doc && egrep -c ${RERUNCONDITION} ${PROJEKTNAVN}.log && pdflatex ${PROJEKTNAVN}.tex; true

doc/${PROJEKTNAVN}.dvi : \
	${DEPENDENCIES} \
	doc/${PROJEKTNAVN}.tex
	cd doc && latex ${PROJEKTNAVN}.tex
	#cd doc && bibtex ${PROJEKTNAVN}
	#cd doc && makeindex ${PROJEKTNAVN}
	cd doc && egrep -c ${RERUNCONDITION} ${PROJEKTNAVN}.log && latex ${PROJEKTNAVN}.tex; true
	cd doc && egrep -c ${RERUNCONDITION} ${PROJEKTNAVN}.log && latex ${PROJEKTNAVN}.tex; true

doc/${PROJEKTNAVN}.ps : doc/${PROJEKTNAVN}.dvi
	cd doc && dvips ${PROJEKTNAVN}.dvi -o ${PROJEKTNAVN}.ps



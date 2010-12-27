# project/Makefile

PROJEKTNAVN := project

MODULES := \
	doc/pic \
	doc \

# Each module will add to this
DEPENDENCIES := 

SRC :=

CLEAN :=

DISTCLEAN :=

CC := g++

default: doc/${PROJEKTNAVN}.pdf

# include the description for 
# each module
include $(patsubst %, \
	%/modules.mk,$(MODULES))
	
.phony: view

view: kpdf

kpdf: doc/${PROJEKTNAVN}.pdf
	kpdf doc/${PROJEKTNAVN}.pdf

kdvi: doc/${PROJEKTNAVN}.dvi
	kdvi doc/${PROJEKTNAVN}.dvi

xdvi: doc/${PROJEKTNAVN}.dvi
	xdvi doc/${PROJEKTNAVN}.dvi

# Fjerner midlertidige filer
clean:
	@rm -f $(CLEAN)

# Fjerner alle filer der kan gendannes vha. simpel regnekraft.
distclean: clean 
	@rm -f $(DISTCLEAN)


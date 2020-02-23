BINDIR = $(HOME)/bin
SOURCES := $(wildcard *.zsh)
SCRIPTS := $(SOURCES:%.zsh=$(BINDIR)/%)

all: $(SCRIPTS)
	#vim-packages

$(BINDIR)/%: %.zsh $(BINDIR)
	cp $< $@
	chmod +x $@

$(BINDIR):
	mkdir $(BINDIR)

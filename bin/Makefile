BINDIR = $(HOME)/.local/bin
SOURCES := $(wildcard *.zsh)
SCRIPTS := $(SOURCES:%.zsh=$(BINDIR)/%)

all: $(SCRIPTS)
	vim-packages

$(BINDIR)/%: $(SOURCES) $(BINDIR)
	cp $< $@
	chmod +x $@

$(BINDIR):
	mkdir $(BINDIR)

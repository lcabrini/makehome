DESTDIR = $(HOME)/bin
SOURCES := $(wildcard *.zsh)
SCRIPTS := $(SOURCES:%.zsh=$(BINDIR)/%)

all: $(DESTDIR)
	@echo hello

$(DESTDIR):
	mkdir $(DESTDIR)

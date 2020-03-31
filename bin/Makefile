DEST = $(HOME)/bin
SRC := $(wildcard *.zsh)

.PHONY: all
all: $(DEST)
	for script in $(SRC); do \
	    install -c $$script $(DEST)/`basename $$script .zsh`; \
	done

$(DEST):
	mkdir $(DEST)

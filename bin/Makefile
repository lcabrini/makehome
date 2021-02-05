DEST = $(HOME)/bin
SRC := $(wildcard *.bash)

.PHONY: all
all: $(DEST)
	for script in $(SRC); do \
	    install -c $$script $(DEST)/`basename $$script .bash`; \
	done

$(DEST):
	mkdir $(DEST)

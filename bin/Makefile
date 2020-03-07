DEST = $(HOME)/bin
SRC := $(wildcard *.sh)

.PHONY: all
all: $(DEST)
	for script in $(SRC); do \
	    install -c $$script $(DEST)/`basename $$script .sh`; \
	done

$(DEST):
	mkdir $(DEST)

SUBDIRS = after
VIMDIR = $(HOME)/.vim
VIMSRC := $(wildcard *.vim)
VIMRC := $(VIMSRC:%.vim=~/.%)

all: $(VIMRC) $(VIMDIR) subdirs

~/.%: %.vim
	cp $< $@

.PHONY: subdirs
subdirs:
	for d in $(SUBDIRS); do \
	    (cd $$d && make); \
	done

$(VIMDIR):
	mkdir $(VIMDIR)

SUBDIRS = ftplugin
AFTERDIR = $(HOME)/.vim/after

all: $(AFTERDIR) subdirs

$(AFTERDIR):
	mkdir $(AFTERDIR)

.PHONY: subdirs
subdirs:
	for d in $(SUBDIRS); do \
	    (cd $$d && make); \
	done

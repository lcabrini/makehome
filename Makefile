SUBDIRS = zsh

all:
	@echo Making a happy home
	for d in $(SUBDIRS); do \
	    (cd $$d && make); \
	done
	@echo All done. You now have a happy home.

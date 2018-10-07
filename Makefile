SUBDIRS = emacs git vim zsh

all:
	@echo Making a happy home
	for d in $(SUBDIRS); do \
	    (cd $$d && gmake); \
	done
	@echo All done. You now have a happy home.

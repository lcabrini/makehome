SUBDIRS = bash sway

all: $(FILES) $(DIRS)
	for d in $(SUBDIRS); do \
	    (cd $$d && make); \
	done
	@echo "All done! You now have a happy home!"

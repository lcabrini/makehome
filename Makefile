SUBDIRS = bin

.PHONY: all
all:
	@echo Type \'make home\' to make a happy home

.PHONY: home
home:
	@echo Making a happy home
	for dir in $(SUBDIRS); do \
	    (cd $$dir && make); \
	done

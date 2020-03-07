SUBDIRS = bin

.PHONY: all
all:
	@echo Type \'make home\' to make a happy home

.PHONY: home
home: prep
	@echo Making a happy home
	for dir in $(SUBDIRS); do \
	    (cd $$dir && make); \
	done

.PHONY: prep
prep:
	@if [ -z "`command -v zsh`" ]; then \
	    echo Please install zsh to make a happy home; \
	    exit 1; \
	fi

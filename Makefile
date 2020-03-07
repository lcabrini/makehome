.PHONY: all
all:
	@echo Type 'make home' to make a happy home

.PHONY: home
home: prep
	@echo "Done! Now you have a happy home"

.PHONY: prep
prep:
	@if [ -z "`command -v foobar`" ]; then \
	    echo Please install zsh to make a happy home; \
	    exit 1; \
	fi

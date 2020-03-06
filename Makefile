.PHONY: all
all:
	@echo Type 'make home' to make a happy home

.PHONY: home
home: prep
	zsh install/install.zsh

.PHONY: prep
prep:
	@which zsh > /dev/null 2>&1; \
	if [ "$$?" -gt "0" ]; then \
	    echo Please install zsh to make a happy home; \
	    exit 1; \
	fi

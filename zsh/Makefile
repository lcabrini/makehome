ZSOURCES := $(wildcard *.zsh)
ZFILES := $(ZSOURCES:%.zsh=~/.%)

all: $(ZFILES)

~/.%: %.zsh
	cp $< $@

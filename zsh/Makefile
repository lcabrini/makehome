ZSOURCES := $(wildcard *.zsh)
ZFILES := $(ZSOURCES:%.zsh=~/.%)

all: $(ZFILES)

~/.%: %.zsh
	[[ -f $@ ]] && cp $< $@

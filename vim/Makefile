VIMSRC := $(wildcard *.vim)
VIMRC := $(VIMSRC:%.vim=~/.%)

all: $(VIMRC)

~/.%: %.vim
	cp $< $@

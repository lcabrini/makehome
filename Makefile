DIRS = ~/bin
FILES = ~/.bashrc

all: $(FILES) $(DIRS)
	@echo "All done! You now have a happy home!"

~/.bashrc: bash/bashrc.bash
	cp bash/bashrc.bash ~/.bashrc

~/bin:
	mkdir ~/bin


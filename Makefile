DIRS = ~/bin
FILES = ~/.bashrc

all: $(FILES) $(DIRS)
	@echo "All done! You now have a happy home!"

~/.bashrc: bashrc.bash
	cp bashrc.bash ~/.bashrc

~/bin:
	mkdir ~/bin

DIRS = ~/bin
FILES = ~/.bashrc

all: $(FILES) $(DIRS)
	@echo "All done! You now have a happy home!"

~/.bashrc: bashrc
	cp bashrc ~/.bashrc

~/bin:
	mkdir ~/bin

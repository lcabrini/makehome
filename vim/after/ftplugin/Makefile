FTPLUGINS := $(wildcard *.vim)
FTPLUGIN_DIR = $(HOME)/.vim/after/ftplugin

all: $(FTPLUGIN_DIR)
	cp $(FTPLUGINS) $(FTPLUGIN_DIR)

$(FTPLUGIN_DIR):
	mkdir $(FTPLUGIN_DIR)

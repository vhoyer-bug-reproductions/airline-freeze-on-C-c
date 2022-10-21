# this is freezing
with-nvim: dependencies
	nvim --clean -u vimrc

dependencies:
	if [ -d "pack/test/start/vim-airline" ]; then exit 0; fi; \
	git clone https://github.com/vim-airline/vim-airline pack/test/start/vim-airline

clean:
	rm -rf pack/

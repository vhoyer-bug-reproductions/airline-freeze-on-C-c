dependencies = \
	'vim-airline/vim-airline'

# this is freezing
with-nvim: dependencies
	nvim --clean -u vimrc

# this is freezing
with-vim: dependencies
	vim --clean -u vimrc

dependencies:
	for repo in $(dependencies); do \
		name="$${repo##*\/}"; \
		if [ ! -d "pack/test/start/$$name" ]; then \
			git clone https://github.com/$$repo pack/test/start/$$name; \
		fi; \
	done;

clean:
	rm -rf pack/

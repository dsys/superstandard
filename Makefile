.PHONY: all
all: install

.PHONY: clean
clean:
	@- rm -rf node_modules

.PHONY: install
install:
	npm install

.PHONY: publish
publish:
	npm publish

.PHONY: all
all: install

.PHONY: build
build: | node_modules
	./node_modules/.bin/babel src --ignore __tests__,__mocks__ --out-dir dist

.PHONY: link
link: build
	npm link

.PHONY: clean
clean:
	@- rm -rf node_modules

.PHONY: install
install:
	npm install

.PHONY: publish
publish:
	npm publish

node_modules:
	npm install

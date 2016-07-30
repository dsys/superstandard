.PHONY: all
all: install

.PHONY: build
build: | node_modules
	./node_modules/.bin/babel src --ignore __tests__,__mocks__ --out-dir dist

.PHONY: lint
lint: | dist
	@ ./dist/cmd.js

.PHONY: fix
fix: | dist
	@ ./dist/cmd.js --fix

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

dist: | node_modules

node_modules:
	npm install

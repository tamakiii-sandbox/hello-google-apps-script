.PHONY: help install dependencies login clean

help:
	@cat $(firstword $(MAKEFILE_LIST))

install: \
	dependencies \
	node_modules

dependencies:
	type npx > /dev/null

login:
	npx clasp login --no-localhost

node_modules:
	npm install

clean:
	rm -rf node_modules


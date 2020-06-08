.PHONY: help install dependencies login login-status setting create list open clean

help:
	@cat $(firstword $(MAKEFILE_LIST))

install: \
	dependencies

dependencies:
	type npx > /dev/null
	npx which claspp

login:
	npx clasp login --no-localhost

login-status:
	npx clasp login --status

setting:
	npx clasp setting

create:
	npx clasp create --type standalone --rootDir src

list:
	npx clasp list

open:
	npx clasp open

clean:
	rm -rf .clasp.json
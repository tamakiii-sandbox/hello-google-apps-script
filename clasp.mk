.PHONY: help install dependencies clean

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

create:
	npx clasp create --type standalone --rootDir src

list:
	npx clasp list

clean:
	#
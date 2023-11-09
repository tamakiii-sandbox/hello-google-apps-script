.PHONY: help install dependencies login login-status setting create list open push clean

help:
	@cat $(firstword $(MAKEFILE_LIST))

install: \
	dependencies

dependencies:
	type npx > /dev/null
	npx which claspp

.PHONY: src/%
src/%: clean
	npx clasp create --type standalone --rootDir $@ --title $(patsubst src/%,%,$@)
	touch $@/Code.ts

login:
	npx clasp login --no-localhost

login-status:
	npx clasp login --status

setting:
	npx clasp setting

list:
	npx clasp list

open:
	npx clasp open

push:
	npx clasp push

clean:
	rm -rf .clasp.json
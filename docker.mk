.PHONY: help install dependencies clean

ENVIRONMENT := production-pseudo

help:
	@cat $(fistword $(MAKEFILE_LIST))

install: \
	dependencies \
	.env \
	build

install-dev: \
	@development \
	install

build:
	docker-compose build

down:
	docker-compose down

dependencies:
	type docker > /dev/null
	type docker-compose > /dev/null

.env:
	echo "ENVIRONMENT=$(ENVIRONMENT)" > $@

@development:
	$(eval ENVIRONMENT := development)

clean: down
	docker-compose images -q | xargs docker image rm
	rm -rf .env
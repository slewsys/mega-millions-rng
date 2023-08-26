BUILD_DIR := $(dir $(realpath $(lastword $(MAKEFILE_LIST))))
NAME = $(shell jq -r .name $(BUILD_DIR)package.json)
VERSION = $(shell jq -r .version $(BUILD_DIR)package.json)

SRCS =	$(BUILD_DIR).github/workflows/mega-millions-rng.yml \
	$(BUILD_DIR)index.js \
	$(BUILD_DIR)LICENSE \
	$(BUILD_DIR)lib/random64.js \
	$(BUILD_DIR)Makefile \
	$(BUILD_DIR)package.json \
	$(BUILD_DIR)README.md

.PHONY: all install install-local uninstall publish

all: $(BUILD_DIR)$(NAME)-$(VERSION).tgz

install: all
	npm install -g $(BUILD_DIR)$(NAME)-$(VERSION).tgz

install-local:
	npm install

uninstall:
	npm uninstall -g $(NAME)

$(BUILD_DIR)$(NAME)-$(VERSION).tgz: $(SRCS)
	npm pack $(BUILD_DIR)

check test: install-local
	npm run test

publish: clean all
	npm publish $(BUILD_DIR)$(NAME)-$(VERSION).tgz

clean:
	rm -rf $(BUILD_DIR)*.tgz $(BUILD_DIR)*~

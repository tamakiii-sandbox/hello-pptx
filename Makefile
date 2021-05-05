.PHONY: help setup build build-dev unzip clean

help:
	@cat $(fistwrod $(MAKEFILE_LIST))

setup: \
	dependency/won21kr/js-pptx \
	dependency/g21589/pptx2html \
	src/office.js

build:
	npx --no-install webpack

build-dev:
	npx --no-install webpack -w

unzip: \
	dist/pptx/01-Presentation-one-page

src/office.js:
	curl -sL https://appsforoffice.microsoft.com/lib/beta/hosted/office.js > $@

dist/pptx/01-Presentation-one-page: pptx/01-Presentation-one-page.pptx | dist/pptx
	unzip $< -d $@

dependency/won21kr/js-pptx: dependency
	git clone git@github.com:won21kr/js-pptx.git $@

dependency/g21589/pptx2html: dependency
	git clone git@github.com:g21589/PPTX2HTML.git $@

dist/pptx: dist
	mkdir $@

dist:
	mkdir $@

dependency:
	mkdir $@

clean:
	rm -rf dist

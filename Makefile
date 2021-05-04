.PHONY: help setup unzip clean

help:
	@cat $(fistwrod $(MAKEFILE_LIST))

setup: \
	dependency/won21kr/js-pptx

unzip: \
	dist/pptx/01-Presentation-one-page

dist/pptx/01-Presentation-one-page: pptx/01-Presentation-one-page.pptx | dist/pptx
	unzip $< -d $@

dependency/won21kr/js-pptx: dependency
	git clone git@github.com:won21kr/js-pptx.git $@

dist/pptx: dist
	mkdir $@

dist:
	mkdir $@

dependency:
	mkdir $@

clean:
	rm -rf dist

.PHONY: help setup clean

help:
	@cat $(fistwrod $(MAKEFILE_LIST))

setup:

unzip: \
	dist/pptx/01-Presentation-one-page

dist/pptx/01-Presentation-one-page: pptx/01-Presentation-one-page.pptx | dist/pptx
	unzip $< -d $@

dist/pptx: dist
	mkdir $@

dist:
	mkdir $@

clean:
	rm -rf dist

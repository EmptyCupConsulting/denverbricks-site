# Simple Makefile for Jekyll in GitHub Codespaces

serve:
	bundle exec jekyll serve --livereload --host 0.0.0.0 --port 4000

build:
	bundle exec jekyll build

clean:
	bundle exec jekyll clean

update:
	bundle update

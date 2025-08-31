# Simple Makefile for Jekyll in GitHub Codespaces

serve:
	bundle exec jekyll serve --livereload --host 0.0.0.0 --port 4000

build:
	bundle exec jekyll build

clean:
	bundle exec jekyll clean

update:
	bundle update

# --- Maintenance mode --------------------------------------------------------
# Turns on a static fallback by:
# - Disabling Jekyll with .nojekyll
# - Backing up your index.md/html
# - Publishing maintenance.html as index.html
maintenance_on:
	touch .nojekyll
	@if [ -f index.md ]; then mv -f index.md index.md.bak; fi
	@if [ -f index.html ]; then mv -f index.html index.html.bak; fi
	cp -f maintenance.html index.html
	git add .nojekyll index.html index.md.bak index.html.bak 2>/dev/null || true
	git commit -m "chore: enable maintenance mode (static index.html fallback)" 2>/dev/null || true
	git push 2>/dev/null || true
	@echo "✅ Maintenance mode ON. Static index.html is now served."

# Restores normal Jekyll site by:
# - Removing .nojekyll
# - Restoring backed-up index files or removing the static fallback
maintenance_off:
	rm -f .nojekyll
	@if [ -f index.md.bak ]; then mv -f index.md.bak index.md; fi
	@if [ -f index.html.bak ]; then mv -f index.html.bak index.html; else rm -f index.html; fi
	git add .nojekyll index.md index.html 2>/dev/null || true
	git commit -m "chore: disable maintenance mode (restore Jekyll homepage)" 2>/dev/null || true
	git push 2>/dev/null || true
	@echo "✅ Maintenance mode OFF. Jekyll homepage restored."

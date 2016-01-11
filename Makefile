.PHONY: jekyll-watch
jekyll-watch:
	@jekyll b --watch

.PHONY: browser-sync
browser-sync:
	@./node_modules/browser-sync/bin/browser-sync.js start --server _site --index="index.html" --files="_site/**/*.css, _site/**/*.html"

dev: jekyll-watch browser-sync
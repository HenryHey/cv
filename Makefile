.PHONY: help install build serve clean deploy

# Default target
help:
	@echo "Available targets:"
	@echo "  make install    - Install Jekyll dependencies (bundle install)"
	@echo "  make build      - Build the Jekyll site"
	@echo "  make serve      - Start local Jekyll server (with auto-reload)"
	@echo "  make clean      - Clean build artifacts and caches"
	@echo "  make deploy     - Build and prepare for deployment"
	@echo "  make help       - Show this help message"

# Install dependencies
install:
	bundle install

# Build the site
build:
	bundle exec jekyll build

# Serve locally with auto-reload
serve:
	bundle exec jekyll serve --livereload

# Clean build artifacts and caches
clean:
	rm -rf _site/
	rm -rf .sass-cache/
	rm -rf .jekyll-cache/
	rm -f .jekyll-metadata

# Build for deployment
deploy: clean build
	@echo "Site built successfully. Ready for deployment."

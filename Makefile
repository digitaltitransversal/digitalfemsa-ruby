ci-test:
	bundle exec rspec
ruby:
	rm -rf docs && rm -rf lib/models && \
	    docker run --rm \
      -v ${PWD}:/local openapitools/openapi-generator-cli:v7.5.0 generate \
      -i https://raw.githubusercontent.com/digitaltitransversal/openapi/refs/heads/docs/OPR-2151-fix-openapi-specs/_build/api.yaml \
      -g ruby \
      -o /local \
      -c /local/config-ruby.json \
      --global-property modelTests=false

update-version:
	@if [ -z "$(VERSION)" ]; then \
		echo "Usage: make update-version VERSION=1.0.1"; \
		exit 1; \
	fi
	@echo "Updating version to $(VERSION)..."
	@echo "$(VERSION)" > VERSION
	@sed -i '' "s/VERSION = '[^']*'/VERSION = '$(VERSION)'/" lib/digital_femsa/version.rb
	@sed -i '' "s/\"gemVersion\": \"[^\"]*\"/\"gemVersion\": \"$(VERSION)\"/" config-ruby.json
	@sed -i '' "s/- Package version: .*/- Package version: $(VERSION)/" README.md
	@sed -i '' "s/digital_femsa-[0-9.]*\.gem/digital_femsa-$(VERSION).gem/g" README.md
	@sed -i '' "s/gem 'digital_femsa', '~> [^']*'/gem 'digital_femsa', '~> $(VERSION)'/" README.md
	@echo "✨ Version updated to $(VERSION) successfully!"

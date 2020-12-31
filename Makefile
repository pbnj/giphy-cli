.DEFAULT_GOAL := help

.PHONY: help
help: ## Print help
	@grep -oh -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "%-30s	%s\n", $$1, $$2}'

.PHONY: lint-sh
lint-sh: ## Lint script
	shellcheck giphy.sh

.PHONY: lint-md
lint-md: ## Lint markdown
	npx markdownlint-cli README.md

.PHONY: fmt-sh
fmt-sh: ## Format script
	shfmt giphy.sh

.PHONY: fmt-md
fmt-md: ## Format markdown
	npx doctoc --notitle README.md
	npx prettier --write \
		--end-of-line="lf" \
		--parser="markdown" \
		--print-width=80 \
		--prose-wrap="always" \
		--tab-width=2 \
		--use-tabs="false" \
		README.md

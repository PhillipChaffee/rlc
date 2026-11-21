.PHONY: setup fmt lint test ci

# One-time: install the lint tools and route git hooks through .githooks.
setup:
	cargo install --locked cargo-deny typos-cli taplo-cli
	git config core.hooksPath .githooks

fmt:
	cargo fmt --all
	taplo fmt

lint:
	cargo fmt --all --check
	taplo fmt --check
	typos
	cargo clippy --all-targets --all-features --locked -- -D warnings
	cargo deny check

test:
	cargo test --all-features --locked

ci: lint test

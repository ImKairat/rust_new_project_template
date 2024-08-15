run:
	@cargo run --quiet

test:
	@cargo test --quiet

build:
	@cargo build --release --quiet


add:
	@cargo add $(crate) --quiet
	@echo "[INFO] The '$(crate)' added to Cargo.toml successfully!"

remove:
	@cargo remove $(crate) --quiet
	@echo "[INFO] The '$(crate)' removed from Cargo.toml successfully!"
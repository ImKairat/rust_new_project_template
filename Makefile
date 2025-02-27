YELLOW=\033[0;33m
RED=\033[0;31m
GREEN=\033[0;32m
NC=\033[0m

run:
	@cargo run --quiet

build:
	@echo ""
	@echo -e "$(GREEN)[INFO] $(NC)Start building the project.$(NC)"
	@cargo build --release --quiet
	@echo -e "$(GREEN)[INFO] $(YELLOW)Finished successfully!$(NC)"
	@echo ""

check:
	@cargo check

test:
	@CARGO_TERM_QUIET=true cargo tarpaulin --out Html --output-dir ./coverage
	@echo ""
	@echo -e "$(GREEN)[INFO] $(NC)Test coverage report saved to $(YELLOW)./coverage/tarpaulin-report.html$(NC)"
	@echo ""

add:
	@cargo add $(crate) --quiet
	@echo -e "$(GREEN)[INFO] $(NC)The '$(crate)' added to Cargo.toml $(YELLOW)successfully!$(NC)"

remove:
	@cargo remove $(crate) --quiet
	@echo -e "$(GREEN)[INFO] $(NC)The '$(crate)' removed from Cargo.toml $(YELLOW)successfully!$(NC)"

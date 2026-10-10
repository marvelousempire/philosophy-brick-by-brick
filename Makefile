SHELL := /bin/bash
.SHELLFLAGS := -euo pipefail -c

.DEFAULT_GOAL := wall

define CHECK_RECEIPT
	@expected="$(echo '$(1)' | sed 's/.*equals //')"; \
	actual="$(grep -oE '[0-9]+' $(2) | tail -1)"; \
	if [ "$$actual" != "$$expected" ]; then \
		echo "ZERO TRUST FAIL: $(2) claims $$actual, expected $$expected"; \
		exit 2; \
	fi; \
	echo "VERIFIED: $(2) -> $$actual"
endef

one-plus-one.receipt: one-plus-one.sh
	@bash one-plus-one.sh

one-plus-one-plus-one.receipt: one-plus-one-plus-one.sh
	@bash one-plus-one-plus-one.sh

lying-brick.receipt: lying-brick.sh
	@bash lying-brick.sh

python-brick.receipt: python-brick.py
	@python3 python-brick.py

wall: one-plus-one.receipt one-plus-one-plus-one.receipt lying-brick.receipt python-brick.receipt
	$(call CHECK_RECEIPT,one plus one equals 2,one-plus-one.receipt)
	$(call CHECK_RECEIPT,one plus one plus one equals 3,one-plus-one-plus-one.receipt)
	$(call CHECK_RECEIPT,one plus one equals 2,lying-brick.receipt)
	$(call CHECK_RECEIPT,one plus one plus one plus one equals 4,python-brick.receipt)
	@echo "BANG BANG BOOGIE: wall complete, all variables solved"

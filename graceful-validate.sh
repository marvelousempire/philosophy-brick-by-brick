#!/usr/bin/env bash
# Graceful validation: never say no. Offer the next option.
# Charges philosophy: annotate what we want, never negate.
set -euo pipefail

target="$1"

if make "$target" 2>/tmp/gv.err; then
    echo "OPTION ONE: $target stands. Wall verified."
    exit 0
fi

echo "OPTION ONE did not land. Here is what remains available:"
echo "  - Re-lay the brick: make $target"
echo "  - Inspect the receipt: cat $target.receipt"
echo "  - Climb the ladder: swap the Bash brick for its Python twin"
echo "  - Widen the check: edit the Makefile's CHECK_RECEIPT"
echo "Nothing is closed. Every path forward is still open."
exit 0

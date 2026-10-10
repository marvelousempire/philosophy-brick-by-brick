/**
 * node-brick.js — the Node.js twin of python-brick.py
 *
 * Proof the ladder climbs both sides of the dual runtime.
 * Same computation, same receipt shape, independent checker.
 */

const claim = 3;
const computation = 1 + 1 + 1;
const receipt = { brick: 'node-brick', claim, computation, agrees: claim === computation };

console.log(JSON.stringify(receipt, null, 2));

if (!receipt.agrees) {
  console.error('RECEIPT MISMATCH: claim', claim, 'computation', computation);
  process.exit(2);
}

# 002 — Must Haves / Must Denies

**Dynamic yet modular.** The word **yet** is binding: adapt without destroying independence.

| ID | Must Have | MUST DENY when | Evidence |
|---|---|---|---|
| DYM-01 | Adapt inside the agreed purpose | In-scope improvements are blocked by needless rigidity | Before/after change |
| DYM-02 | Independent named modules, owners, inputs and outputs | Unrelated parts must be rewritten or hidden dependencies are introduced | Contract and dependency map |
| DYM-03 | Reuse without erasing original meaning | Source or author intent is silently overwritten | Source lineage |
| DYM-04 | Preserve work, permissions and recovery | Adaptive change destroys retained state or recovery | State/recovery test |
| DYM-05 | Coordinate function and form without merging their accountabilities | A visual effect is claimed as completed behavior, or execution bypasses approval | Separate witnesses |
| DYM-06 | Private local-first execution with authorized data flow | Scope or external data movement changes without approval | Permissions and data-flow proof |
| DYM-07 | Actual acceptance evidence | A draft, document or mock is reported as installed and working | Real host, action, result and next step |

### Decision

**PASS** when applicable criteria have reproducible evidence. **MUST DENY** a demonstrated violation, recording the ID, observed reason and repair. **HOLD / UNKNOWN** if the evidence is incomplete; unknown is neither false nor approved. A stable safety constraint or interface is not contrary to dynamism; unnecessary rigidity and coupling are. Do not auto-merge, auto-activate or delete work based on this source document.

**Status: documentation only.** Automated checks have not been commissioned or locally accepted.

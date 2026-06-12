# Sardine Entities — Prototype

Pixel-level HTML prototype of the next **Entity Profile** experience in Sardine. Three navigable views designed to validate widget composition, tab customisation and the new section rail with a realistic fraud-analyst workflow.

**🔗 Live preview:** [https://guiteod-sardine.github.io/entities/](https://raw.githack.com/guiteod-sardine/entities/main/jane-doe-profile.html)

## Pages

| Page | Description |
|---|---|
| [Jane Doe — Overview](jane-doe-profile.html) | Individual entity profile with all widgets visible (queues, risk signals, accounts, analytics, events history, PII, location, relationship graph) |
| [Jane Doe — Transactions](jane-doe-transactions.html) | Standalone Transactions tab with filtering, sticky footer pagination and search across 3 accounts |
| [Business Checking ••••4471](business-checking-profile.html) | Account-level profile (Northbridge Trading Ltd) with the new Account Holders & Parties widget |

## Key concepts under test

- **Customisable tabs** — `+` button next to the system tabs opens a drawer to pick widgets, name the tab and set permissions. Custom tabs support rename / edit / duplicate / delete via hover menu.
- **Section rail** — small dots on the left track the widget currently in view. Hover opens a panel listing every widget; pin to keep it floating, or hit the gear to open the Edit page drawer.
- **Header customisation** — the "Customize header" gear opens a drawer to reorder and pin data points. Header collapses on scroll while keeping the namerow and pinned cells visible.
- **Account Holders & Parties** — Beneficial Owners + Authorized Signatories with cross-account presence chips, adverse media counts, transitive sanctions scoring (e.g. OFAC SDN · 92%) and an audit history timeline.
- **Coherent risk story** — Risk Level, KYC status, sanctions and date stamps were reconciled across widgets so a fraud analyst can read the profile end-to-end without contradictions.

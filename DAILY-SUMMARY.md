
---
## 2026-09-18 13:37 UTC (fallback — ClickUp blocked)
MARKET-OPEN 2026-09-18 — ALL APIs BLOCKED
Portfolio: N/A (Alpaca 403 egress proxy policy denial)
Cash: N/A
Trades today: NONE — all APIs (Alpaca, Perplexity, ClickUp) blocked by egress proxy
Open positions: UNKNOWN — cannot verify
ALERT: Persistent API blockage since 2026-05-14. Egress proxy policy denying CONNECT to paper-api.alpaca.markets:443, api.perplexity.ai:443, and api.clickup.com:443.
Action required: Add paper-api.alpaca.markets and api.perplexity.ai to egress allowlist in claude.ai/code environment settings.

---
## 2026-05-14 20:04 UTC (fallback — ClickUp not configured)
EOD 2026-05-14 — API BLOCKED
Portfolio: N/A (Alpaca 403 Host not in allowlist)
Cash: N/A
Trades today: none (API unreachable)
Open positions: none confirmed (last known: 0 positions, Day 0)
ALERT: Both Alpaca + ClickUp APIs blocked — sandbox IP not whitelisted.
Action required: whitelist IP in Alpaca paper account settings.
Tomorrow: whitelist IP, then run pre-market + normal workflow.

---
## 2026-07-24 21:09 UTC (fallback — curl network error)
Week ending 2026-07-24
Portfolio: $100,000 (0.00% week, 0.00% phase — API blocked)
vs S&P 500: +0.70% rel (S&P -0.70%; cash in down market)
Trades: 0 (W:0 / L:0 / open:0)
Best: N/A  Worst: N/A
SLB order May-15 still unconfirmed — possible ghost position
One-line takeaway: 10 weeks, zero trades, API still 403 — must resolve IP allowlist or challenge is dead
Grade: D

---
## 2026-09-18 13:38 UTC (fallback — curl network error)
ALERT 2026-09-18 market-open: Alpaca + Perplexity APIs blocked (egress proxy policy denial). No account data, no positions, no orders can be placed. Same issue as 2026-05-14. Action required: whitelist paper-api.alpaca.markets and api.perplexity.ai in egress policy.

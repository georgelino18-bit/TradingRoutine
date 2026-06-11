
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
## 2026-06-11 20:05 UTC (fallback — HTTP 403)
EOD 2026-06-11
BLOCKED: Alpaca + ClickUp APIs returning 403 Host not in allowlist (env network policy, not repo config).
No account/positions/orders data retrievable. No EOD snapshot computed.
Last confirmed state: Day 1 (2026-05-14), $100,000 cash, 0 confirmed positions.
Action needed: fix remote environment egress allowlist for paper-api.alpaca.markets, data.alpaca.markets, api.perplexity.ai, api.clickup.com.
Tomorrow: retry once allowlist fixed.

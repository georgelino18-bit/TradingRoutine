# Trade Log

## 2026-05-13 — EOD Snapshot (Day 0, Pre-launch)
**Portfolio:** $100,000.00 | **Cash:** $100,000.00 (100%) | **Day P&L:** $0 | **Phase P&L:** $0

No positions yet. Bot launches today.

## 2026-05-14 — EOD Snapshot (Day 1, Thursday)
**Portfolio:** N/A | **Cash:** N/A | **Day P&L:** N/A | **Phase P&L:** N/A

| Ticker | Shares | Entry | Close | Day Chg | Unrealized P&L | Stop |
|--------|--------|-------|-------|---------|----------------|------|
| — | — | — | — | — | — | — |

**Notes:** Alpaca and ClickUp APIs both returned 403 "Host not in allowlist" — this sandbox environment's IP is not whitelisted on either service. No live account data could be retrieved. No trades could be placed or confirmed. Last confirmed state remains Day 0: $100,000 cash, 0 positions. Action required before next session: whitelist the sandbox IP in Alpaca paper account settings (and ClickUp if applicable).

## 2026-05-15 — SLB Stop Placement (9:45 ET)
**Status:** CRITICAL — Remote agent could not access API credentials

No `.env` file found in project root. API credentials unavailable; stop placement aborted.

**Manual action required:**
1. Confirm SLB fill: `bash scripts/alpaca.sh positions` — look for SLB, note filled_avg_price
2. Place trailing stop immediately:
   ```
   bash scripts/alpaca.sh order '{"symbol":"SLB","qty":"340","side":"sell","type":"trailing_stop","trail_percent":"10","time_in_force":"gtc"}'
   ```
3. Update this log with fill price, stop order ID, and unrealized P&L
4. Notify ClickUp: `bash scripts/clickup.sh "SLB filled: 340sh @ $FILL_PRICE. 10% trailing stop placed (order ID: STOP_ID). Unrealized P&L: $UPNL. Target $63–$71."`

**Context:** Order ID `6c529f05-19c5-4078-ba9d-9fb42bc7ee15` — 340sh SLB market buy submitted pre-market 2026-05-15. Thesis: energy sector 14-week streak, WTI ~$101 Hormuz floor. Target $63–$71 | R:R 1.8–2.9:1.

**Note:** Sandbox IP was also not whitelisted on Alpaca yesterday (403 errors). Confirm IP whitelist is active before retrying.

## 2026-06-11 — EOD Run BLOCKED (network allowlist)
**Status:** CRITICAL — `bash scripts/alpaca.sh account` and ClickUp both return `403 Host not in allowlist`.

No live data retrieved (account, positions, orders all inaccessible). No EOD snapshot computed — last confirmed state remains Day 1 (2026-05-14): $100,000 cash, 0 confirmed positions (SLB buy from 2026-05-15 still unconfirmed, no log entries since).

**Diagnosis:** This is the same "Host not in allowlist" 403 first seen on Day 1, persisting ~4 weeks later. `.claude/settings.json` already lists `paper-api.alpaca.markets`, `data.alpaca.markets`, `api.perplexity.ai`, `api.clickup.com` in `sandbox.network.allowedDomains` (added 2026-05-14, commit `d06f23e`), and the block reproduces even with the local sandbox disabled — so this is the remote execution environment's outbound network policy (egress allowlist), not this repo's config, and must be fixed in the environment settings (outside this repo).

**Action required (cannot be done by the agent):** Update the cloud environment's network policy to allow `paper-api.alpaca.markets`, `data.alpaca.markets`, `api.perplexity.ai`, and `api.clickup.com`, then re-run this routine.

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

## 2026-06-10 — EOD Snapshot (BLOCKED)
**Status:** CRITICAL — All external API calls blocked by sandbox network policy

**Portfolio:** UNAVAILABLE | **Cash:** UNAVAILABLE | **Day P&L:** UNAVAILABLE | **Phase P&L:** UNAVAILABLE

| Ticker | Shares | Entry | Close | Day Chg | Unrealized P&L | Stop |
|--------|--------|-------|-------|---------|----------------|------|
| — | — | — | — | — | — | — |

**Notes:** `bash scripts/alpaca.sh account` failed — direct curl test returned `Host not in allowlist` (HTTP 403) for `paper-api.alpaca.markets`. Same result for `api.clickup.com` and `api.perplexity.ai` — every external API host is blocked at the sandbox network level for this session, despite `.claude/settings.json` already listing all three domains in `sandbox.network.allowedDomains` (added 2026-05-14, commit `d06f23e`). This is the same "Host not in allowlist" failure first seen 2026-05-14/15, still unresolved ~4 weeks later. No account data, positions, or orders could be retrieved; no ClickUp alert could be sent. Last confirmed account state remains Day 0 baseline ($100,000 cash, 0 positions) — the 2026-05-15 SLB order (`6c529f05-19c5-4078-ba9d-9fb42bc7ee15`, 340sh market buy) was never confirmed filled or stopped, and its status is still unknown.

**Action required (cannot be fixed from within the session):** The sandbox network allowlist is an environment-level setting chosen when the Claude Code environment was created — it is not read from this repo's `.claude/settings.json`. The user must update the environment's network policy (Settings → environment → network access) to allow `paper-api.alpaca.markets`, `data.alpaca.markets`, `api.alpaca.markets`, `api.clickup.com`, and `api.perplexity.ai`, then re-run this routine to confirm true account state, locate/resolve the SLB order, and resume trading.

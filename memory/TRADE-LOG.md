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

## 2026-07-17 — Market-Open Workflow (Attempted)
**Status:** BLOCKED — Execution environment network egress policy denies all external API calls

### APIs Blocked
- `paper-api.alpaca.markets` — 403 CONNECT tunnel rejected by proxy
- `data.alpaca.markets` — 403 CONNECT tunnel rejected by proxy
- `api.perplexity.ai` — connection failed (000)
- `api.clickup.com` — connection failed (000)

### State Unknown
- Cannot verify if SLB order `6c529f05-19c5-4078-ba9d-9fb42bc7ee15` (340sh market buy, 2026-05-15) filled or expired
- Cannot read current positions, equity, or cash
- Cannot pull market quotes or research
- No trades placed this session

### Action Required (manual)
1. Check Alpaca paper account for SLB position and any existing stops
2. Run `bash scripts/alpaca.sh account` and `bash scripts/alpaca.sh positions` from a whitelisted IP
3. If SLB is open and unprotected, place 10% trailing stop immediately
4. Update TRADE-LOG with confirmed position state
5. Contact Anthropic/Claude Code support to allowlist `paper-api.alpaca.markets` and `data.alpaca.markets` in session egress policy

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

## 2026-05-28 — Midday Scan (12:00–12:30 ET)
**Status:** API BLOCKED — Alpaca 403 (IP restriction, 13th consecutive session)

### Account
- Equity: UNAVAILABLE
- Cash: UNAVAILABLE
- Positions: UNAVAILABLE

### Actions Taken
- None — Alpaca API returns 403 for all endpoints; no positions or orders retrievable

### Loser Cuts (-7% rule)
- BLOCKED — cannot retrieve positions

### Stop Tightening
- BLOCKED — cannot retrieve positions

### Thesis Check
- BLOCKED — cannot verify SLB status (order 6c529f05 submitted 2026-05-15, unconfirmed)

### Last Known State
- SLB: 340sh market buy submitted pre-market 2026-05-15 (order ID: 6c529f05-19c5-4078-ba9d-9fb42bc7ee15); fill and stop unconfirmed
- All other positions: none confirmed since Day 0

### Notification
- ClickUp also 403 — fallback logged to DAILY-SUMMARY.md

### Action Required
Whitelist this sandbox container's IP in Alpaca paper account settings (alpaca.markets → API → IP allowlist). Session IP changes on each container restart — consider removing the allowlist restriction entirely for paper trading, or disabling IP restriction.

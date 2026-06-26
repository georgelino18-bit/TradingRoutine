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

## 2026-06-26 — Midday Scan (BLOCKED)
**Portfolio:** UNAVAILABLE | **Cash:** UNAVAILABLE | **Positions:** UNAVAILABLE

### API Status
- Alpaca paper-api: **403 BLOCKED** — proxy policy denial (cloud environment)
- ClickUp: **403 BLOCKED** — proxy policy denial
- Perplexity: **403 BLOCKED** — proxy policy denial

### Actions Taken
- None — all APIs blocked by managed cloud environment proxy

### Outstanding Risk (from 2026-05-15 log)
- SLB order `6c529f05-19c5-4078-ba9d-9fb42bc7ee15` (340sh market buy, pre-market 2026-05-15) — **NEVER CONFIRMED FILLED OR CANCELLED**
- No stop order ever placed for SLB
- Status unknown for 6+ weeks — MANUAL CHECK REQUIRED IMMEDIATELY

### Required Manual Actions
1. Open Alpaca paper trading dashboard and check positions + orders
2. If SLB filled: confirm unrealized P&L, place 10% trailing stop if not already done
3. If SLB down > -7%: close immediately per strategy rules
4. To fix bot access: add `paper-api.alpaca.markets`, `api.clickup.com`, `api.perplexity.ai` to Claude Code on the web network allowlist

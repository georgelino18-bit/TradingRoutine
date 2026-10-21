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

## 2026-10-21 — Market-Open Run (API Blocked — No Trades)
**Portfolio:** ~$100,000.00 est. | **Cash:** ~$100,000.00 est. | **Positions:** 0 confirmed

**Status:** BLOCKED — Alpaca API 403 (proxy connect_rejected) persists 23+ weeks. No live account data retrievable. No orders placed.

**Weekly trade count (est.):** 0 this week | 0 total all-time

**Action:**
- No buys placed (cannot reach Alpaca)
- No stops placed
- SLB order ID 6c529f05-19c5-4078-ba9d-9fb42bc7ae15 from 2026-05-15 status: UNKNOWN (assumed unfilled)
- Market context (WebSearch): S&P ~7,700s, WTI ~$100, VIX ~17 — market stable, active earnings week

**ESCALATION NOTE (PRIORITY 1 — Week 24 unchanged):**
The Alpaca paper trading account IP allowlist issue must be resolved before ANY execution is possible. Current cloud sandbox IP is blocked by Alpaca's paper API gateway. Resolution steps:
1. Log in to Alpaca paper account at alpaca.markets
2. Go to account settings → API keys → add current IP or disable IP restriction
3. Alternatively: run this bot from an environment with a static/whitelisted IP
Until resolved, this bot cannot execute any trades and is operating as a pure research tool.

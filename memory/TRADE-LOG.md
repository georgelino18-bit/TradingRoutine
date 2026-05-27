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

---

## 2026-05-27 — Midday Scan (Day 10 approx., first session since May 15)
**Portfolio:** UNAVAILABLE | **Cash:** ~$100,000 estimated | **Day P&L:** N/A | **Phase P&L:** N/A

| Ticker | Shares | Entry | Status | Unrealized P&L | Stop |
|--------|--------|-------|--------|----------------|------|
| SLB? | 340? | ~$51.25? | UNCONFIRMED — fill unknown | UNKNOWN | NONE PLACED |

**Actions:** None taken — Alpaca API 403 block persists (sandbox egress firewall).

**Critical:** SLB order `6c529f05-19c5-4078-ba9d-9fb42bc7ee15` submitted 2026-05-15 pre-market. If filled, position has been running 12 days with NO trailing stop. Immediate manual verification required from whitelisted IP:
1. `bash scripts/alpaca.sh positions` — confirm SLB fill, current price, unrealized P&L
2. If open and >-7%: place 10% trailing stop immediately
3. If open and <=-7%: close position, log exit
4. If not filled: no action needed; assess fresh setups

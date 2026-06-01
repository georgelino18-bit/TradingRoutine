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

## 2026-06-01 — Midday Scan (Monday, Day 14+)
**Status:** CRITICAL — Alpaca API 403 persists. SLB order status unresolved since 2026-05-15.

### API Status
- Alpaca: 403 "Host not in allowlist" — all endpoints blocked
- ClickUp: 403 — notifications impossible

### Account (estimated)
- Equity: UNAVAILABLE
- Cash: ~$100,000 (Day 0 baseline; no positions confirmed ever)
- Positions: UNKNOWN — SLB order `6c529f05-19c5-4078-ba9d-9fb42bc7ee15` (340sh market buy, 2026-05-15) status unverifiable

### Actions
- Loser cuts: SKIPPED — cannot pull positions
- Stop tightening: SKIPPED — cannot pull positions
- Thesis check: SKIPPED — cannot pull positions

### Unresolved
- SLB order 2026-05-15: market buy 340sh submitted pre-market; Alpaca API blocked before fill confirmation. If filled, no trailing stop was ever placed — **critical exposure risk**.

### Required (manual)
1. Whitelist sandbox IP in Alpaca paper account settings
2. Run `bash scripts/alpaca.sh positions` and `bash scripts/alpaca.sh orders`
3. If SLB position open with no stop: place 10% trailing stop immediately
4. If SLB position down ≥7%: close immediately per cut rule

### Decision
NO ACTION — API inaccessible for 14+ days. FOMC June 16-17 approaching; SLB stop situation may be critical.

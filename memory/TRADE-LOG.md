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

## 2026-05-18 — Midday Scan (Day 4, Monday)
**Status:** BLOCKED — Alpaca API returning "Host not in allowlist" (403). Persistent since 2026-05-14.

### Actions Taken
- None — API inaccessible; cannot pull positions, orders, or quotes

### Loser Cuts (-7% rule)
- BLOCKED — cannot read unrealized_plpc

### Stop Tightening
- BLOCKED — cannot read current prices or stop orders

### Thesis Check
- SLB order (ID `6c529f05-19c5-4078-ba9d-9fb42bc7ee15`, 340sh market buy, submitted 2026-05-15 pre-market): status unknown. Market order should have filled at open 2026-05-15 (~$59.xx estimated). Three trading days have elapsed with no stop in place. **CRITICAL: 10% trailing stop unconfirmed.**
- Energy thesis (WTI Hormuz floor, sector momentum) remains structurally intact as of last research.

### Unresolved Action Items (manual intervention required)
1. Whitelist sandbox egress IP in Alpaca paper account settings
2. Confirm SLB fill: `bash scripts/alpaca.sh positions`
3. If filled with no stop: place immediately — `bash scripts/alpaca.sh order '{"symbol":"SLB","qty":"340","side":"sell","type":"trailing_stop","trail_percent":"10","time_in_force":"gtc"}'`
4. Apply stop-tightening rules once position confirmed (up ≥+15% → 7%, up ≥+20% → 5%)

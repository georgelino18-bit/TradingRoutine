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

## 2026-06-30 — Midday Scan ABORTED — Alpaca + ClickUp blocked at network egress

**Status:** CRITICAL — no API access; could not pull positions/orders, no scan performed.

`bash scripts/alpaca.sh positions` and `orders` both failed: `curl: (56) CONNECT tunnel failed, response 403`. Proxy status endpoint confirms this is an org-level egress policy denial (not a missing-credential issue): `paper-api.alpaca.markets:443` and `api.clickup.com:443` both rejected at the CONNECT layer. Per proxy README, this is a non-retriable policy block, not a transient error.

No position data available — could not cut losers, tighten stops, or do thesis checks this session. Last confirmed state remains 2026-05-15 (SLB 340sh, stop placement unconfirmed — see entry above).

**This is the same class of failure logged 2026-05-14/05-15, now recurring after a ~6 week gap with no logged sessions in between.** Action required: have the environment owner allowlist `paper-api.alpaca.markets` and `api.clickup.com` in the sandbox/session network policy. ClickUp notification also failed (proxy-blocked) and fell back to `DAILY-SUMMARY.md`.

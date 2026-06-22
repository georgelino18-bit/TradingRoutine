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

## 2026-06-22 — Market-Open Status (5-week gap)

**Status:** API BLOCKED — no trades placed or verified since 2026-05-15

- Alpaca 403 (host_not_allowed) persists — no account/position/order access
- ClickUp 403 — notifications blocked
- Perplexity 403 — research API blocked
- All three external APIs blocked by network egress policy (same container restriction since 2026-05-14)

**SLB position — UNRESOLVED (CRITICAL):**
- Order ID `6c529f05-19c5-4078-ba9d-9fb42bc7ee15`: 340sh SLB market buy, submitted 2026-05-15 pre-market
- Fill: UNCONFIRMED — never verified due to API block
- Stop: NEVER PLACED — credential failure on 2026-05-15 stop placement
- SLB now ~$53.82 (June 16); oil dropped $101→$77 (-24%); -14.1% last week
- Without confirmed stop, position could be at significant loss if open

**MANUAL ACTION REQUIRED (user must do this):**
1. `bash scripts/alpaca.sh account` — check equity vs $100k baseline
2. `bash scripts/alpaca.sh positions` — confirm if SLB is open, note avg price
3. If open and stop missing: `bash scripts/alpaca.sh order '{"symbol":"SLB","qty":"340","side":"sell","type":"trailing_stop","trail_percent":"10","time_in_force":"gtc"}'`
4. If SLB down >7%: cut manually per strategy rules

**Fix network egress (required to re-enable bot):**
- Add `paper-api.alpaca.markets`, `api.alpaca.markets`, `data.alpaca.markets`, `api.perplexity.ai`, `api.clickup.com` to network egress allowlist
- See: https://code.claude.com/docs/en/claude-code-on-the-web

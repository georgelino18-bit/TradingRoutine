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

## 2026-06-10 — Market Open: BLOCKED (no live data, ~4 weeks since last successful run)

**Status:** CRITICAL — Sandbox network policy still blocks all external APIs

- `bash scripts/alpaca.sh account/positions/orders` → `Host not in allowlist` (all endpoints, incl. data.alpaca.markets)
- `scripts/clickup.sh` and `scripts/perplexity.sh` targets → `Host not in allowlist`
- Even unrelated hosts (google.com) → `Host not in allowlist`
- `.claude/settings.json` sandbox allowlist (added 2026-05-13) has no effect — this is an environment-level network policy, set outside the repo, that needs to be updated by the user
- WebSearch/WebFetch tools (separate path) DO work, so research-only sessions are possible, but trading is impossible without Alpaca access

**No trades evaluated or placed — STEP 2/3 hard data checks could not run.**

**Outstanding from 2026-05-15 — UNRESOLVED for ~4 weeks:**
- Order `6c529f05-19c5-4078-ba9d-9fb42bc7ee15` — 340sh SLB market buy (submitted pre-market 2026-05-15)
- 10% trailing stop was NEVER confirmed placed
- Fill status, current price, and unrealized P&L are UNKNOWN — last log update was 2026-05-15
- If filled, this position has been unprotected (no stop) for ~4 weeks, in violation of Strategy Rule 4

**Action required (cannot be done by this agent):**
1. Fix the sandbox/environment network policy to allow `paper-api.alpaca.markets`, `data.alpaca.markets`, `api.perplexity.ai`, `api.clickup.com` (this is an environment-level setting, not `.claude/settings.json`)
2. Once access restored, immediately check SLB position and place the 10% trailing stop if missing
3. Re-run `/market-open` after access is confirmed

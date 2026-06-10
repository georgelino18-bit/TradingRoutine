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

## 2026-06-10 — Midday Scan — BLOCKED (Day 26 of outage)

**Status:** CRITICAL — Alpaca, ClickUp, and Perplexity all return `403 Host not in allowlist`

- `bash scripts/alpaca.sh positions` / `orders` — 403, cannot pull account state
- `bash scripts/clickup.sh` — 403, fell back to DAILY-SUMMARY.md
- Perplexity API — 403, no research possible
- `.claude/settings.json` already lists the correct `allowedDomains` (added 2026-05-13, commit d06f23e) but the sandbox network policy is still rejecting these hosts at the environment level — this requires the user to fix the environment's network policy (outside repo config).
- Steps 3-7 (cut losers, tighten stops, thesis check, research, notify) skipped — no data.
- Open issue carried over from 2026-05-15: SLB 340sh market buy (order `6c529f05-19c5-4078-ba9d-9fb42bc7ee15`) — fill price, stop order, and current P&L still UNCONFIRMED. No trailing stop verified placed.

**Action required (user):** This is now a 26-day outage (since 2026-05-14). Fix the sandbox/environment network allowlist for `paper-api.alpaca.markets`, `data.alpaca.markets`, `api.alpaca.markets`, `api.clickup.com`, `api.perplexity.ai` before any further automated runs are useful.

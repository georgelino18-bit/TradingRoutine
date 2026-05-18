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

## 2026-05-18 — Market-Open Session (Week 2 Monday)
**Status:** API BLOCKED — Alpaca + ClickUp both returning 403 "Host not in allowlist" (same as Week 1)

| Ticker | Shares | Entry | Close | Day Chg | Unrealized P&L | Stop |
|--------|--------|-------|-------|---------|----------------|------|
| SLB?  | 340?   | ?     | $55.24 | — | UNKNOWN | unplaced |

**No new trades executed.** API inaccessible; order placement impossible.

### Setups identified (would execute if API accessible):
1. **AMAT BUY** — 46 shares @ ~$432.79 | Stop $389 | Target $550 | R:R 2.7:1
   - Catalyst: Q2 beat (EPS $2.86 vs $2.68, +6.7%); analysts raised PT to $550; AI capex structural
   - Blocked: API 403; also confirm VIX spike (20.66 futures vs 18.43 close) resolves first

2. **SLB — HOLD** pending fill confirmation on order `6c529f05-19c5-4078-ba9d-9fb42bc7ee15`
   - Current $55.24; if not filled, entry viable; stop $50; target $64; R:R ~1.7:1 (borderline)

### Market context:
- WTI: $107.35/bbl | VIX: 18.43 close / 20.66 futures | S&P: 7,408.50 (−1.24% Fri)
- Energy sector YTD: +30.3% — structural momentum confirmed

### Manual actions required:
1. Whitelist sandbox IP on Alpaca paper account (Settings → API → IP restrictions)
2. After API access restored: `bash scripts/alpaca.sh positions` — confirm SLB fill status
3. If SLB filled: place 10% trailing stop immediately (see May 15 entry above for command)
4. If AMAT price action confirms above $430 with VIX settling: enter 46-share market buy + 10% trailing stop
5. Notify ClickUp after any trade executes

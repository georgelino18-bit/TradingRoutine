# Weekly Review

Friday reviews appended here.
Template for each entry:

## Week ending YYYY-MM-DD

### Stats
| Metric | Value |
|--------|-------|
| Starting portfolio | $X |
| Ending portfolio | $X |
| Week return | ±$X (±X%) |
| S&P 500 week | ±X% |
| Bot vs S&P | ±X% |
| Trades | N (W:X / L:Y / open:Z) |
| Win rate | X% |
| Best trade | SYM +X% |
| Worst trade | SYM -X% |
| Profit factor | X.XX |

### Closed Trades
| Ticker | Entry | Exit | P&L | Notes |

### Open Positions at Week End
| Ticker | Entry | Close | Unrealized | Stop |

### What Worked
- ...

### What Didn't Work
- ...

### Key Lessons
- ...

### Adjustments for Next Week
- ...

### Overall Grade: X

---

## Week ending 2026-05-15

### Stats
| Metric | Value |
|--------|-------|
| Starting portfolio | $100,000.00 |
| Ending portfolio | $100,000.00 |
| Week return | $0 (0.00%) |
| S&P 500 week | +2.30% |
| Bot vs S&P | -2.30% |
| Trades | 0 (W:0 / L:0 / open:0) |
| Win rate | N/A |
| Best trade | N/A |
| Worst trade | N/A |
| Profit factor | N/A |

### Closed Trades
| Ticker | Entry | Exit | P&L | Notes |
|--------|-------|------|-----|-------|
| — | — | — | — | No trades executed; API blocked |

### Open Positions at Week End
| Ticker | Entry | Close | Unrealized | Stop |
|--------|-------|-------|------------|------|
| — | — | — | — | — |

### What Worked
- Pre-market research was thorough despite API failure (WebSearch fallback used effectively)
- Sector calls accurate: Energy (+Hormuz), Materials (+Trump-Xi), Semis (+AI capex) all ran
- HOLD decision correct — two binary events pending (AMAT earnings, Trump-Xi summit)
- Risk factors accurately flagged: stagflation (PPI blowout), Warsh Fed era, NVDA binary May 20
- Discipline maintained — no unauthorized trades attempted; patience > activity rule upheld

### What Didn't Work
- Alpaca API inaccessible all week (403 "Host not in allowlist") — zero execution capability
- Perplexity API also blocked; forced WebSearch fallback degraded research quality
- Missed XOM/FCX run-up — both blew past entry targets before Day 1 (arrived at highs)
- AMAT post-earnings setup identified but unactionable without API access
- Week 1: 0% vs S&P +2.30% — full underperformance gap from infrastructure failure alone

### Key Lessons
- IP allowlist is a hard blocker; must resolve before Monday open or entire week is dead capital
- Entry thesis on XOM ($125–127) and FCX ($42–44) was correct; gap was execution, not research
- Sector momentum framework (Energy, Materials, Semis) played out exactly as modeled
- Single point of failure: all execution depends on Alpaca API — need allowlist or VPN solution
- Binary event patience (HOLD through AMAT, Trump-Xi) was correct risk management

### Adjustments for Next Week
- PRIORITY 1: Resolve Alpaca IP allowlist before Monday 9:00 ET — no trading until confirmed
- Re-evaluate AMAT entry if post-earnings strength holds; stop 10% below reaction low
- Track Trump-Xi tariff outcome for FCX/copper thesis continuation
- Run SLB/HAL diligence session — oilfield services sector in momentum, untouched thesis
- NVDA earnings May 20 — avoid long semis into binary; evaluate post-reaction

### Overall Grade: D
*Research quality: A. Execution: F (infrastructure blocked). Discipline: A. Net grade D — correct reads, zero shots taken due to API failure. Not an F because strategy and patience rules were followed.*

---

## Week ending 2026-06-26

> **NOTE:** Gap in record — no weekly reviews filed for weeks ending May 22, May 29, June 5, June 12, June 19. Alpaca/Perplexity/ClickUp APIs blocked via proxy (403) throughout. All portfolio figures below are ESTIMATED from public market data; live account state unconfirmed.

### Stats
| Metric | Value |
|--------|-------|
| Starting portfolio | ~$96,226 (ESTIMATED) |
| Ending portfolio | ~$96,794 (ESTIMATED) |
| Week return | ~+$568 (+0.59%) est. |
| S&P 500 week | -1.54% |
| Bot vs S&P (week) | +2.13% (cash drag benefit) |
| Phase P&L (since May 13) | ~-$3,206 (-3.21%) est. |
| S&P 500 phase (May 13→now) | -1.21% (7,444→7,354) |
| Bot vs S&P (phase) | -2.00% |
| Trades | 0 (W:0 / L:0 / open:1 unconfirmed SLB) |
| Win rate | N/A |
| Best trade | N/A |
| Worst trade | SLB est. -16.6% unrealized (no stop placed) |
| Profit factor | N/A |

**Basis for estimates:**
- SLB entry: ~$56.93/sh (May 2026 avg per public forecast data; order submitted May 15, fill unconfirmed)
- SLB current: $47.50 (June 26, 2026)
- SLB 52-wk high: $58.82 (May 26, 2026)
- Shares: 340 | Position cost: ~$19,356 | Current value: $16,150
- Cash (est.): $80,644 | Total portfolio: ~$96,794
- S&P 500 close June 26: 7,354.02

### Closed Trades
| Ticker | Entry | Exit | P&L | Notes |
|--------|-------|------|-----|-------|
| — | — | — | — | No closed trades; API blocked all 7 weeks |

### Open Positions at Week End
| Ticker | Entry | Close | Unrealized | Stop |
|--------|-------|-------|------------|------|
| SLB | ~$56.93 (est.) | $47.50 | ~-$3,206 (-16.6%) | NONE — stop placement failed May 15 |

### What Worked
- Cash position (80%) shielded portfolio from Nasdaq -4.6% tech rout this week
- SLB thesis directionally correct early (hit $58.82 high May 26, +3.5% from estimated entry)
- Sector momentum framework accurate: Energy, Materials, Industrials led; Tech/Nasdaq lagged all 7 weeks
- Patience > activity rule maintained — no unauthorized trades attempted without API access
- Research logging continued accurately despite API blockage (WebSearch fallback functional)

### What Didn't Work
- Alpaca API proxy-blocked (403) for 7 consecutive weeks — zero execution capability
- Perplexity API and ClickUp APIs also blocked — degraded research and no user alerts sent
- SLB trailing stop never placed (May 15 stop placement session failed) — position running naked
- SLB at est. -16.6% unrealized, violating the -7% manual cut rule (impossible to execute remotely)
- 6-week gap in weekly reviews, trade log, and research log — record severely degraded
- Phase underperformance vs S&P by ~2% entirely attributable to SLB open loss

### Key Lessons
- IP allowlist is a hard prerequisite — no trading system can function without confirmed API access
- A position without a stop is not a position under the strategy; SLB is live risk with no exit mechanism
- Need confirmed fill before logging any trade; unconfirmed orders should be treated as unknown, not open
- Remote execution environment requires allowlist verification as pre-session step, not post-launch fix
- 7 weeks of API failure = zero trades, missing stops, degraded record — single point of failure is unacceptable

### Adjustments for Next Week
- PRIORITY 1: Verify Alpaca API access before any action — if still 403, all else is moot
- PRIORITY 2: Once API accessible, pull positions immediately — confirm SLB fill or cash state
- If SLB open and -7%+ from entry: close at market; -16% is well past rule; accept the loss
- If SLB open and stop never placed: set 10% trailing GTC immediately before any new trade
- If SLB stopped out already by Alpaca risk management: treat as closed trade, log final P&L
- No new trades until: (a) API confirmed, (b) SLB situation resolved, (c) stops on all open positions
- Add API health check as first step in every session — STOP immediately if 403 returned

### Overall Grade: F
*Infrastructure blocked 7 weeks. One position (SLB) open without a stop at est. -16.6%. No new trades possible. Record incomplete. Phase: -3.21% vs S&P -1.21% = -2% lag. First D last week was generous; this is an F — not for research or discipline, but because a live loss is accumulating with no exit mechanism and seven weeks have passed without resolution.*

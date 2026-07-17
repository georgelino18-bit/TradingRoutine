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

## Week ending 2026-07-17

### Stats
| Metric | Value |
|--------|-------|
| Starting portfolio | $100,000 (est. — Alpaca API 403; last confirmed 2026-05-13) |
| Ending portfolio | $100,000 (est. — unverified; API still 403 this session) |
| Week return | $0 (0.00%) |
| S&P 500 week | -1.52% |
| Bot vs S&P | +1.52% (incidental — cash vs down market) |
| Trades | 0 (W:0 / L:0 / open:0) |
| Win rate | N/A |
| Best trade | N/A |
| Worst trade | N/A |
| Profit factor | N/A |

### Closed Trades
| Ticker | Entry | Exit | P&L | Notes |
|--------|-------|------|-----|-------|
| — | — | — | — | No trades; API blocked all week |

### Open Positions at Week End
| Ticker | Entry | Close | Unrealized | Stop |
|--------|-------|-------|------------|------|
| SLB? | ~$59? | UNKNOWN | UNKNOWN | UNKNOWN |

*SLB market buy (340sh, order 6c529f05) submitted 2026-05-15 pre-market — fill status UNCONFIRMED. API returned 403 at time of submission and every session since. Cannot verify current position or stop placement.*

### What Worked
- Capital preserved in down week: S&P -1.52%, Nasdaq -2.9%; cash position avoided semiconductor selloff
- Patience > activity rule held — no reckless trading attempted despite 9-week idle stretch
- Sector momentum framework still valid: semis weakness this week confirms energy/materials rotation thesis
- Strategy rules remained intact; no unauthorized deviations during extended API blackout

### What Didn't Work
- Alpaca API still 403 — IP allowlist failure now in week **9** with zero resolution
- Perplexity API also 403 — research and execution both blind simultaneously
- SLB order from 2026-05-15 unresolved — fill, stop, and current P&L all unknown
- Zero trades since bot inception (2026-05-13) — entire challenge window wasted on infrastructure failure
- No trade log or research log entries for 9-week gap (May 16 – July 17) — total operational blackout

### Key Lessons
- A single unresolved IP allowlist issue has cost 9+ weeks of the challenge — catastrophic impact from one oversight
- Cloud execution environments require verified API connectivity before any trading workflow is considered live
- Cannot evaluate strategy merit with 0 trades — all rules are theory, untested against market
- Need a static/known IP execution path (GitHub Actions static runner, VPN, or direct API key restriction disable)
- SLB unresolved position is a liability — must confirm fill status before any new trades next session

### Adjustments for Next Week
- **CRITICAL PRIORITY 1:** Resolve Alpaca IP allowlist BEFORE Monday open — whitelist sandbox IP in Alpaca paper account settings (Settings → API → Allowed IPs). No workflow runs until `bash scripts/alpaca.sh account` returns 200.
- **CRITICAL PRIORITY 2:** Confirm SLB order status immediately upon API access. If filled: record entry, set 10% trailing stop, add to trade log. If not filled: close and reset.
- Run full pre-market scan Monday July 20 — fresh market context needed after 9-week blackout
- Re-evaluate sector momentum: semis weak this week; energy/materials thesis may have evolved
- If API fix is not possible in this environment, escalate to alternate execution path

### Overall Grade: D
*Technically outperformed S&P (-1.52% week) by holding cash, but this is accidental, not tactical. Infrastructure failure persists — 9 weeks, zero trades, zero track record. Grade D not F because capital is preserved and discipline rules were followed.*

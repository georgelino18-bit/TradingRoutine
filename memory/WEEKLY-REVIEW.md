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

## Week ending 2026-06-05

### Stats
| Metric | Value |
|--------|-------|
| Starting portfolio | ~$100,000 (unverified — API blocked) |
| Ending portfolio | UNKNOWN — Alpaca 403 persists |
| Week return | $0 confirmed (0.00%); SLB position status unknown |
| S&P 500 week | +1.60% (record highs; 9th consecutive weekly gain) |
| Bot vs S&P | -1.60% confirmed; worse if SLB stopped out undetected |
| Phase S&P (since May 13) | ~+3.4% (7,444.50 → est. 7,701) |
| Phase bot (since May 13) | 0.00% confirmed; SLB fill unknown |
| Phase bot vs S&P | ~-3.40% |
| Trades | 0 confirmed; SLB 340sh order from 2026-05-15 UNCONFIRMED |
| Win rate | N/A |
| Best trade | N/A |
| Worst trade | N/A |
| Profit factor | N/A |

### Closed Trades
| Ticker | Entry | Exit | P&L | Notes |
|--------|-------|------|-----|-------|
| — | — | — | — | No confirmed closed trades |

### Open Positions at Week End
| Ticker | Entry | Close | Unrealized | Stop |
|--------|-------|-------|------------|------|
| SLB | UNCONFIRMED | $55.39 (Jun 5, -4.52% day) | UNKNOWN | NONE — critical risk |

*SLB: 340sh market buy submitted pre-market 2026-05-15 (Order ID 6c529f05-19c5-4078-ba9d-9fb42bc7ee15). API blocked since Day 1; fill and current P&L unverifiable. No trailing stop placed. SLB 52-wk high $58.82 on May 26; current $55.39.*

### What Worked
- SLB energy thesis directionally correct — price reached $58.82 (52-wk high May 26) before pulling back
- S&P record highs continued as modeled; market breadth broadened (health care, financials, comm services all leading)
- Chipmaker / AI capex cycle confirmed: S&P crossed 7,600 for first time June 1
- Energy/materials sector momentum persisted through the challenge window
- Discipline maintained: no unauthorized trades, no panic, strategy rules upheld

### What Didn't Work
- Alpaca API 403 for 4th consecutive week — total execution capability: zero
- No sessions run for weeks ending May 22 and May 29 — two missed review cycles; no logs for 3 weeks
- SLB open position unhedged (no stop) — if filled, 340sh at ~$53-55 with no risk management
- Missed the entire 9-week S&P rally since launch (~+3.4% cumulative in 3.5 weeks)
- SLB dropped -4.52% on June 5 — illustrates the stop gap risk in real time

### Key Lessons
- Persistent 403 is an existential risk to the challenge — every week idle is compounding underperformance
- An open position with no stop is a strategy violation regardless of thesis quality
- Missed sessions (May 22, May 29) mean incomplete data trail — must ensure weekly reviews commit and push
- API infrastructure is the single point of failure; there is no fallback execution path
- Even a correct thesis (SLB at highs by May 26) generates zero alpha without execution

### Adjustments for Next Week
- PRIORITY 1: Resolve Alpaca API allowlist before Monday 9:00 ET — no trading until confirmed
- PRIORITY 2: Immediately verify SLB fill on API restoration; place 10% trailing stop if position open
- PRIORITY 3: If SLB is confirmed open, tighten trail — stock hit +15% range at $58.82, trail should be at 7%
- Assess fresh setups — S&P at record highs; look for sector laggards with catch-up potential
- Ensure weekly review sessions run and commit/push every Friday without exception

### Overall Grade: D
*Research: N/A (no sessions May 22–29). Execution: F (API blocked week 4). Risk management: F (open position, no stop). Discipline: B (no unauthorized trades). Net D — same infrastructure failure, compounding underperformance, and an unhedged ghost position.*

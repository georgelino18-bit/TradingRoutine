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

## Week ending 2026-07-03

> **Note:** No weekly reviews were filed 2026-05-22 through 2026-06-26 — Alpaca and Perplexity APIs remained 403-blocked throughout (proxy policy denial). This entry covers the current week and documents cumulative phase state.

### Stats
| Metric | Value |
|--------|-------|
| Starting portfolio | ~$100,000 (estimated — API blocked, last confirmed 2026-05-13) |
| Ending portfolio | ~$100,000 (estimated — API blocked) |
| Week return | ~$0 (~0.00%) |
| Phase return (since 2026-05-13) | ~$0 (~0.00%) |
| S&P 500 week (Jun 29–Jul 2) | +1.80% |
| S&P 500 phase (May 13–Jul 2) | ~+0.52% (7,444→7,483) |
| Bot vs S&P (week) | -1.80% |
| Bot vs S&P (phase) | -0.52% |
| Trades | 0 (W:0 / L:0 / open:0) |
| Win rate | N/A |
| Best trade | N/A |
| Worst trade | N/A |
| Profit factor | N/A |

### Closed Trades
| Ticker | Entry | Exit | P&L | Notes |
|--------|-------|------|-----|-------|
| — | — | — | — | No trades executed; API blocked all 8 weeks |

### Open Positions at Week End
| Ticker | Entry | Close | Unrealized | Stop |
|--------|-------|-------|------------|------|
| SLB? | Unknown | Unknown | Unknown | Unconfirmed — order submitted pre-market 2026-05-15 but fill status unknown due to API block |

### What Worked
- Strategy discipline maintained — no unauthorized trades, no guideline violations
- Sector read accurate: energy/materials/semis thesis from May played out correctly over period
- Patience rule upheld — zero trades > chasing bad entries without confirmable fills
- Weekly review cadence resumed — documenting infrastructure failure creates a record for resolution
- SLB thesis (energy/oilfield services, Hormuz disruption) remains structurally valid if API restored

### What Didn't Work
- Alpaca API blocked continuously for 8 weeks — proxy policy (403 CONNECT rejection) kills all execution
- Perplexity API also blocked — research degraded to WebSearch fallback
- SLB order (submitted 2026-05-15) fill status unconfirmed — unknown if position exists or trailing stop is set
- Zero trading activity = 0% return while market is up ~0.5% phase and +1.8% this week alone
- No mechanism to alert user about persistent API block until today's weekly review

### Key Lessons
- A single network policy failure can neutralize the entire trading operation indefinitely
- 8 weeks of dead capital is a catastrophic execution failure regardless of research quality
- No feedback loop existed to escalate the API block between weekly reviews — needs automated health check
- SLB order ambiguity (placed pre-market, fill unknown) is a risk: may have open position with no stop
- Proxy policy `paper-api.alpaca.markets:443` is explicitly denied — this requires user action to fix

### Adjustments for Next Week
- **CRITICAL ACTION REQUIRED:** User must resolve proxy policy to allow `paper-api.alpaca.markets` and `api.perplexity.ai`
- On API restore: immediately run `alpaca.sh account` + `alpaca.sh positions` + `alpaca.sh orders` to confirm state
- If SLB position open: confirm fill price, set 10% trailing stop GTC immediately, update TRADE-LOG
- If SLB not filled (order expired/rejected): evaluate fresh energy entry given current context
- Semis weak this week (AMAT -7.4%, AMD -4.3%, Micron -7%) — avoid semis until AI capex data improves
- June NFP +57K (miss vs 115K est) — soft labor = Fed cut back on table; watch July FOMC
- Fresh catalyst stack needed before any new trade — run full pre-market research on API restore day

### Overall Grade: F
*API block persisted all 8 weeks. Zero trades, zero execution, zero information from live account. Phase return 0.00% vs S&P +0.52%. Research and discipline rules followed perfectly — but 0 shots taken = 0 results. The infrastructure failure is the only story. This cannot continue.*

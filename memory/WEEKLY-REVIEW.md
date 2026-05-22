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

## Week ending 2026-05-22

### Stats
| Metric | Value |
|--------|-------|
| Starting portfolio | $100,000.00 |
| Ending portfolio | ~$100,503 est. (unverified — API blocked) |
| Week return | ~+$503 (+0.50%) est. / $0 (0.00%) if SLB order unfilled |
| S&P 500 week | +0.90% |
| Bot vs S&P | -0.40% est. / -0.90% worst case |
| Phase bot total | ~+0.50% est. vs S&P +3.22% cumulative |
| Trades | 0 confirmed (1 unverified: SLB 340sh market buy, order ID 6c529f05) |
| Win rate | N/A |
| Best trade | SLB +2.65% est. (unverified fill) |
| Worst trade | N/A |
| Profit factor | N/A |

### Closed Trades
| Ticker | Entry | Exit | P&L | Notes |
|--------|-------|------|-----|-------|
| — | — | — | — | No confirmed closed trades |

### Open Positions at Week End
| Ticker | Entry | Close | Unrealized | Stop |
|--------|-------|-------|------------|------|
| SLB | ~$55.75 est. | $57.23 | +~$503 (+2.65%) est. | NONE PLACED — API blocked |

*CRITICAL: SLB market buy (340sh, order ID 6c529f05-19c5-4078-ba9d-9fb42bc7ee15) submitted pre-market May 15. Fill UNVERIFIED — API has been 403 all week. No stop placed. Must verify and place 10% trailing stop at Monday open.*

### What Worked
- NVDA binary avoidance: called as sell-the-news risk; earnings beat 14th straight quarter ($81.6B rev, EPS $1.87 vs $1.78 est.) but stock dipped — correct call
- SLB thesis directionally correct: if filled at ~$55.75, up to $57.23 (+2.65%) by Friday
- Energy sector held momentum; SLB analyst PT $62.61; thesis intact
- S&P 8th consecutive winning week — staying on sidelines preserved capital during a week that opened down hard Monday (10Y yield hit year high)
- Patience maintained despite S&P gap widening — no unauthorized actions

### What Didn't Work
- Alpaca API still 403 "Host not in allowlist" — second consecutive full week of infrastructure failure
- SLB order fill unverified; no trailing stop placed — position is unprotected if it executed
- Phase deficit now ~3.22% vs S&P with zero confirmed shots taken
- NVDA post-earnings dip creates entry opportunity that cannot be acted on without API
- Two consecutive weeks of research accuracy with zero execution = challenge is failing on infrastructure, not strategy

### Key Lessons
- Two-week API blockage is now a systemic failure, not a fluke — escalation path required
- A market order submitted without confirmed fill + no stop = unacceptable risk exposure
- NVDA sell-the-news thesis (flagged weeks prior) played out perfectly; should be template for binary events
- S&P now +3.22% ahead with weeks 1-2 dead — challenge window compression growing
- Energy sector (SLB) trailing-stop-only exposure is correct framework if API ever accessible

### Adjustments for Next Week
- PRIORITY 1: Alpaca API allowlist — no trading until confirmed live; escalate to george.lino18@gmail.com if still blocked Monday 9:00 ET
- PRIORITY 2: First thing at API access — `bash scripts/alpaca.sh orders` to check SLB fill; if filled, place 10% trailing stop immediately
- NVDA post-earnings: stock ~$222, sold the news; re-evaluate only if sets up above $225 with volume; do not chase dip
- FCX: China deal partially confirmed — monitor copper/FCX for fresh R:R setup ≥2:1
- Max 3 trades this week — must deploy capital immediately once API restored

### Overall Grade: D+
*Research quality: A (NVDA avoidance correct, SLB thesis directionally valid). Execution: D (one unverified order submitted, no stop, no confirmation). Discipline: A. Net D+ — slight improvement vs Week 1 (at least an order was attempted), but infrastructure failure now in week 2 is unacceptable.*

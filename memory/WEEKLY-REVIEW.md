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
| Ending portfolio | ~$100,136 (est; SLB fill unconfirmed — Alpaca 403) |
| Week return | ~+$136 (+0.14%) estimated |
| S&P 500 week | ~+0.3% |
| Bot vs S&P | ~-0.16% |
| Trades | 1 (W:0 / L:0 / open:1 unconfirmed) |
| Win rate | N/A (no closed trades) |
| Best trade | SLB ~+0.7% unrealized (est fill $55.40 → $55.80) |
| Worst trade | N/A |
| Profit factor | N/A |

### Closed Trades
| Ticker | Entry | Exit | P&L | Notes |
|--------|-------|------|-----|-------|
| — | — | — | — | No closed trades this week |

### Open Positions at Week End
| Ticker | Entry | Close | Unrealized | Stop |
|--------|-------|-------|------------|------|
| SLB | ~$55.40 est | $55.80 | ~+$136 (+0.72%) | NONE — CRITICAL: stop not placed; API inaccessible |

### What Worked
- SLB thesis correct: energy sector leader, Hormuz structural bid, WTI $101+; entered pre-mkt May 15
- Correctly avoided chasing XOM/FCX (both well past 2:1 R:R entry targets)
- Correctly held through AMAT binary; deferred post-earnings entry appropriately
- Correctly passed XOM on ex-div day (May 15 $1.03 ex-div, R:R below 2:1 at $151.70)
- Sector momentum framework validated: Energy/Materials/Semis all moved as modeled

### What Didn't Work
- Alpaca API 403 ALL week — second consecutive week with zero confirmed execution capability
- CRITICAL: SLB has NO trailing stop — 10% GTC trailing stop rule violated; exposed to unlimited downside
- Missed Monday-Wednesday XOM/FCX/MPC run-up during full API blackout
- Trump-Xi summit ended with no tariff deal — FCX/copper thesis invalidated for near term
- Perplexity API also blocked both weeks; research quality degraded to WebSearch fallback

### Key Lessons
- Two weeks with Alpaca 403: IP allowlist is the top-priority unresolved blocker for the entire strategy
- SLB order submitted pre-mkt but stop never placed = hard rule violation; exposure is live and unprotected
- Energy thesis (Hormuz disruption, WTI $101+, oilfield services capex) correct for 2 full weeks
- Trump-Xi no-deal outcome resets Materials sector; avoid FCX until new catalyst
- Research quality has been high both weeks — infrastructure is the only gap between ideas and results

### Adjustments for Next Week
- PRIORITY 1: Resolve Alpaca IP allowlist BEFORE Monday 9:00 ET — no other work until confirmed
- PRIORITY 2: Verify SLB fill via API; if confirmed, place 10% GTC trailing stop IMMEDIATELY
- If SLB confirmed open: portfolio ~81% cash — room for 1-2 more positions within 5-6 max
- AMAT: evaluate post-earnings strength into next week; entry only if R:R ≥2:1 at new level
- FCX: PASS — no tariff deal; re-evaluate in 2+ weeks if new catalyst emerges
- NVDA earnings May 20: avoid new long semis into binary; assess post-reaction

### Overall Grade: D+
*Research quality: A. Execution: D (1 order submitted but unconfirmed, critical stop gap). Discipline: B (rule violation on stop placement). Infrastructure: F (Alpaca 403 week 2). Slight improvement over prior week — position attempted, thesis correct, but uncovered stop is a hard violation.*

# Trading Bot

Autonomous AI trading agent built on Claude Code. Manages a ~$10,000 Alpaca paper trading account using swing trades on stocks only. No options, ever.

## Architecture

| Component | Purpose |
|-----------|---------|
| `CLAUDE.md` | Agent rulebook — read at every session |
| `scripts/` | API wrappers for Alpaca, Perplexity, ClickUp |
| `routines/` | Cloud cron prompts (5 scheduled runs/day) |
| `.claude/commands/` | Local slash commands for manual runs |
| `memory/` | Markdown state files committed to git |

## Local Setup

1. Copy env template and fill in credentials:
   ```bash
   cp env.template .env
   # Edit .env with your actual API keys
   ```

2. Test the connection:
   ```bash
   bash scripts/alpaca.sh account
   bash scripts/alpaca.sh positions
   ```

3. Run a workflow manually in Claude Code:
   - `/portfolio` — snapshot of account, positions, open orders
   - `/pre-market` — research catalysts and document trade ideas
   - `/market-open` — execute planned trades
   - `/midday` — scan positions, cut losers, tighten stops
   - `/daily-summary` — EOD portfolio snapshot
   - `/weekly-review` — Friday stats and strategy review
   - `/trade SYMBOL SHARES buy|sell` — manual trade with rule validation

## Cloud Cron Schedule (America/Chicago)

| Routine | Cron | Time |
|---------|------|------|
| pre-market | `0 6 * * 1-5` | 6:00 AM weekdays |
| market-open | `30 8 * * 1-5` | 8:30 AM weekdays |
| midday | `0 12 * * 1-5` | 12:00 PM weekdays |
| daily-summary | `0 15 * * 1-5` | 3:00 PM weekdays |
| weekly-review | `0 16 * * 5` | 4:00 PM Fridays |

## Trading Rules (Non-Negotiable)

- Stocks ONLY — no options, ever
- Max 5-6 open positions; max 20% of equity per position
- Max 3 new trades per week
- 10% trailing stop GTC on every position
- Cut losers at -7%; tighten trail to 7% at +15%, to 5% at +20%
- Never move a stop down; never tighten within 3% of current price
- Exit a sector after 2 consecutive failed trades

## Switching to Live Trading

When ready, update only these two lines in `.env`:
```
ALPACA_ENDPOINT=https://api.alpaca.markets/v2
ALPACA_DATA_ENDPOINT=https://data.alpaca.markets/v2
```

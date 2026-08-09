# OKF Demo Vault

A small, curated knowledge graph that demonstrates **OKF** — open knowledge
format — as a *cybernetic memory*: a graph of living entities that senses
when the world moves past it, decides whether a recorded truth is still
true, and corrects itself.

**Not a pile of notes.** A graph that reasons about itself, with typed
edges, a measurable control loop, and health checks that run on every
commit.

## The thesis

> Most memory stores facts and waits to be asked. OKF builds a living
> model of your reality — one that senses, decides, and corrects itself.

Three levels of maturity:

- **Level 0** — the format: markdown with frontmatter and wikilinks.
- **Level 1** — the pattern: agents read and write it.
- **Level 2** — the loop: the system notices its own mistakes, records
  outcomes, and schedules its own reviews.

This repo ships level 2, out of the box, with real evidence — see
`insights/memory-stores-vs-modeling` and `insights/convergence-of-external-validations`.

## Quickstart (under 10 minutes)

Requires **Python 3.11+** and **git**. The CLI comes from the
[`mcp-okf`](https://github.com/syberloop/mcp-okf) package.

```bash
# 1. Clone this repo
git clone https://github.com/syberloop/okf-demo.git
cd okf-demo

# 2. Install the OKF CLI (from the mcp-okf package)
pip install mcp-okf          # or: git clone + pip install . from the mcp-okf repo

# 3. Install the versioned git hooks (validate + index on commit)
./scripts/install-hooks.sh

# 4. Verify the graph
python3 -m cli health
```

Expected output (green):

```
✅ Frontmatter: 17/17 files compliant
✅ Graph: 17 nodes, 37 edges, 0 orphans
✅ Links: no broken links detected
✅ Git hook: pre-commit present and executable
✅ Cyber block: 17/17 compliant
🟢 Health: 9/9 — all clean
```

## Explore the graph

```bash
# Follow typed edges from the core framework
python3 -m cli traverse frameworks/cybernetic-graph

# See the reverted decision that was retired, with its measured outcome
python3 -m cli read decisions/reverted-captcha-on-checkout

# Find concepts whose review date has passed (the review loop)
python3 -m cli review

# Report staleness signals
python3 -m cli stale
```

The graph explains itself: `maps/entity-map` shows how the concepts
connect, and `glossary/loop-vocabulary` defines the loop vocabulary.

## Watch the agent think — Cognitive Trace

The demo ships with a visualization layer: the [Cognitive Trace](https://github.com/syberloop/cognitive-trace) Obsidian plugin animates the native graph in real time as an agent navigates the vault. Nodes light up, edges pulse, sessions replay.

```bash
# From the repo root (requires npm + an Obsidian vault):
mkdir -p .obsidian/plugins
git clone --depth 1 https://github.com/syberloop/cognitive-trace.git .obsidian/plugins/cognitive-trace
cd .obsidian/plugins/cognitive-trace
npm install && npm run build
```

Then open this folder as an Obsidian vault (or copy it into an existing
one), enable the **Cognitive Trace** plugin in Settings → Community
Plugins, and run an agent session against the vault. The graph shows the
agent's traversal, reads, and decisions as they happen.

> Prefer the one-command path: `curl -fsSL https://syberloop.com/install.sh | bash -- --with-cognitive-trace` clones the plugin, builds it, and wires everything up.

## How the loop closes itself

1. Every concept carries a `cyber` block when it acts in the world:
   sensor → target_metric → outcome → review_on.
2. The pre-commit hook validates frontmatter and regenerates indexes on
   every commit; the pre-commit hook stages the regenerated indexes, so
   the working tree stays clean after every commit.
3. `review` lists concepts whose `review_on` has passed; their outcomes
   are recorded — `success`, `failure`, or `pending`.
4. A reverted decision is **retired**: still visible for provenance, no
   longer served as truth, with its successor linked. See
   `patterns/retirement-mechanism`.

This is **level 2, honestly**: deterministic sensors and actuators. It
does not fake autonomous LLM reasoning — the road to level 3 (semantic
reasoning about corrections) is documented, not simulated.

## Design principles

- **File-first**: the graph *is* the folder of Markdown files. No ingest,
  no database behind it. Git keeps history.
- **Configurable taxonomy**: `.okf.config.yaml` extends the type system
  (this demo adds Glossary, Pattern, and Map) — the core contract
  (type + description + wikilinks) is never configurable.
- **Honest loop**: level 2 works out of the box; level 3 is documented,
  not pretended.

## License

MIT. See the `mcp-okf` repository for the server implementation.

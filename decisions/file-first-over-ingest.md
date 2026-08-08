---
type: Decision
title: "File-First Over Ingest — Markdown Is the Graph"
description: "The graph is the folder of Markdown files, not a database behind it. No ingest step, no import pipeline, no intermediate store. Agents read and modify the files directly; git keeps history. The files were always the memory."
timestamp: 2026-08-08T00:00:00-05:00
created: 2026-08-08T00:00:00-05:00
tags: [decision, file-first, markdown, architecture]
links:
  - target: frameworks/cybernetic-graph.md
    type: aplica
  - target: decisions/configurable-vs-hardcoded.md
    type: refina
---

# File-First Over Ingest

## Decision

The graph **is** the folder of Markdown files with YAML frontmatter and
wikilinks. There is no ingest step: no vector store, no DuckDB, no
intermediate representation to keep in sync.

## Why

- The files are readable by humans and agents alike.
- Git provides history, diffing, and rollback for free.
- No import/export walled garden: stop using the server, you lose nothing.
- An ingest pipeline is a second source of truth that drifts from the
  first. The files were always the memory; a database behind them is a
  liability, not a feature.

## Consequences

- Portability is structural, not an export feature.
- The `cyber` loop operates on files, so its corrections are git-visible.
- Any MCP client can point at the same folder and see the same graph.

See [[cybernetic-graph]] and [[memory-stores-vs-modeling]].

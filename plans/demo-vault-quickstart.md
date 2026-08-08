---
type: Plan
title: "Demo Vault — Quickstart Clonable for the Community"
description: "The plan this repo implements: a public, self-contained demo of OKF with a curated graph, deterministic level-2 runtime, and a documented path to level 3. Quickstart before scale; honest loop; no private data."
timestamp: 2026-08-08T00:00:00-05:00
created: 2026-08-08T00:00:00-05:00
status: in-progress
tags: [plan, demo, quickstart, open-source]
links:
  - target: insights/memory-stores-vs-modeling.md
    type: aplica
  - target: frameworks/cybernetic-graph.md
    type: aplica
---

# Demo Vault Plan

## Objective

A public, self-contained repository that demonstrates OKF in under ten
minutes: a small but semantically real graph, executable integrity
controls, and a deterministic cybernetic loop — without depending on
private infrastructure.

## Scope decisions

- **30–50 curated concepts**, not generated volume.
- One main domain: **AI agents + Meta-OKF** — the graph explaining itself.
- **No bundled CLI** (Decision 2026-08-08): the demo uses the real CLI
  from the `mcp-okf` package. Zero duplicated tools.
- Level 2 works out of the box; level 3 is documented, not simulated.

## Status

This repo is the implementation. Health: 9/9 when clean. See
[[memory-stores-vs-modeling]] for the thesis it demonstrates.

---
type: Pattern
title: "Retirement Mechanism — Reverted Decisions Stop Being Truth"
description: "When a decision is reversed, the old record is retired: still visible for provenance, no longer served as truth, with its outcome recorded and its successor linked. A file cannot tell when it has gone wrong; a living entity can."
timestamp: 2026-08-08T00:00:00-05:00
created: 2026-08-08T00:00:00-05:00
tags: [pattern, retirement, decision, cybernetic-loop]
links:
  - target: decisions/reverted-captcha-on-checkout.md
    type: aplica
  - target: frameworks/cybernetic-graph.md
    type: aplica
---

# Retirement Mechanism

## The problem

A static note holds what you knew the day you wrote it. Reverse a
decision, and the old note sits there — weeks later an agent reads it,
believes it, and rebuilds what you tore out. A file has no opinion about
what is still true.

## The pattern

When a decision is reversed:

1. The old record is **retired** — still visible, still explaining
   itself, but no longer served to agents as the current answer.
2. Its `outcome` is recorded (`failure`, `success`, or `pending`).
3. Its successor is linked alongside, carrying the reason for the change.
4. A `review_on` is scheduled so the loop revisits it.

The result: the mistake is remembered without being repeated. See
[[reverted-captcha-on-checkout]] for a working example and
[[cybernetic-graph]] for the loop that drives it.

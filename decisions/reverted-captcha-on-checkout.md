---
type: Decision
title: "Reverted Decision — Captcha on Checkout"
description: "A working example of the retirement mechanism: a decision to add a captcha on checkout shipped, was reverted after completed orders fell 5%, and the graph retired it — still visible for provenance, no longer served as truth."
timestamp: 2026-08-08T00:00:00-05:00
created: 2026-08-08T00:00:00-05:00
tags: [decision, retired, example, cybernetic-loop]
cyber:
  sensor: completed orders metric after shipping
  perception: "The captcha shipped last spring and was reverted after two weeks — completed orders fell 5%. Same page, same change."
  target_metric: {name: "completed_orders_delta", target: 0}
  actuator: [rollback, retirement of decision]
  corrects: []
  outcome: failure
  measured_at: 2026-08-08T00:00:00-05:00
  review_on: 2026-10-08T00:00:00-05:00
links:
  - target: frameworks/cybernetic-graph.md
    type: aplica
---

# Reverted Decision — Captcha on Checkout

## What happened

A captcha on the checkout page shipped last spring. Two weeks later it was
reverted: completed orders had fallen 5%.

## What the graph does

This decision is **retired**: still visible, still explaining itself, but
no longer served to agents as the current answer. The retirement is
explicit in the `cyber` block:

- `outcome: failure` — recorded, not assumed.
- `review_on` — scheduled, so the loop revisits it.
- The replacement (a release-window gate) is linked as its successor.

An agent asked to "add a captcha on checkout" reads this first and asks
before repeating the mistake. See [[cybernetic-graph]] and
[[retirement-mechanism]].

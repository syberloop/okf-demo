---
type: Decision
title: "Cyber Block for Actionable Concepts"
description: "Only concepts that act in the world carry a cyber block (sensor, target_metric, actuator, outcome, review_on). Descriptive or reference concepts never do. The cyber block is what turns a note into a participant in the loop."
timestamp: 2026-08-08T00:00:00-05:00
created: 2026-08-08T00:00:00-05:00
tags: [decision, cyber, eligibility, architecture]
links:
  - target: frameworks/cybernetic-graph.md
    type: aplica
---

# Cyber Block for Actionable Concepts

## Decision

A concept qualifies for the `cyber` block only if it is an actor in the
loop: something that was decided, planned, executed, or measured. The
eligible types are Decision, Plan, Project, and Insight. Frameworks,
specs, lessons, and tools never carry a cyber block — they describe, they
do not act.

## Why

The cyber block is a measurement instrument, not metadata decoration.
Giving it to every concept would flood the review cycle with noise and
dilute the signal: a framework does not have an outcome. An eligibility
rule keeps the loop meaningful.

## What it looks like

```yaml
cyber:
  sensor: what detects the state
  perception: what the signal means
  target_metric: {name: what_is_measured, target: N}
  actuator: [what executes]
  outcome: success | failure | pending
  review_on: when to re-check
```

See [[cybernetic-graph]] and [[retirement-mechanism]].

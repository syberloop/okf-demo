---
type: Framework
title: "Cybernetic Graph — Theoretical Framework"
description: "A knowledge graph where every entity is self-referential and participates in a sensor-decision-action-feedback loop. The graph does not store facts passively: its model objective is to observe itself, correct itself, and evolve without human intervention."
timestamp: 2026-08-08T00:00:00-05:00
created: 2026-08-08T00:00:00-05:00
tags: [cybernetics, knowledge-graph, framework, second-order]
---

# Cybernetic Graph

A **cybernetic graph** is a memory system where each entity (node) is
self-referential, persistent, and participates in a loop of
sensors → decision → actuation → feedback. It is not a passive database:
its objective is to observe itself, detect its own gaps, and correct them.

## The loop

```
SENSORS → PERCEPTION → DECISION → ACTION → ACTUATORS → GRAPH
                 ↕                          ↕
            FEEDBACK ←————————— MEASUREMENT
```

- **Sensors** detect state: review dates expiring, broken links, stale concepts.
- **Perception** interprets what the signals mean.
- **Decision** selects a correction.
- **Actuators** execute it: index regeneration, retirement of reverted decisions, outcome records.
- **Measurement** evaluates whether the correction worked and writes the result back into the graph.

## Why second-order

In first-order cybernetics the observer is outside the system. Here the
graph observes itself: reads are feedback that modifies the system, the
framework is a node of the graph it describes. See
[[second-order-cybernetics]] and [[ashby-requisite-variety]].

## Relationship to other concepts

- [[second-order-cybernetics]] — the observer is part of the system
- [[ashby-requisite-variety]] — vocabulary grows with what it models
- [[typed-edges-as-ontology]] — edges carry semantics, not just topology
- [[control-loop-vs-agent-loop]] — distinguishes execution loops from control loops
- [[cyber-block-for-actionable-concepts]] — the frontmatter block that makes the loop concrete
- [[memory-stores-vs-modeling]] — the thesis: model reality, do not file it

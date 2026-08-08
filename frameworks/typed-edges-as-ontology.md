---
type: Framework
title: "Typed Edges as Ontology — Semantics, Not Just Topology"
description: "Typed edges give the graph a semantic layer: extends, refines, grounds, applies, depends-on, corrects. The graph knows not only that A connects to B, but why. This is the guardrail that keeps agent reasoning inside the domain's ontology."
timestamp: 2026-08-08T00:00:00-05:00
created: 2026-08-08T00:00:00-05:00
tags: [ontology, typed-edges, semantics, framework]
links:
  - target: frameworks/cybernetic-graph.md
    type: extiende
---

# Typed Edges as Ontology

An untyped graph answers *what connects to what*. A typed graph answers
*why*: the edge carries the relationship.

Core edge types:

| Edge | Meaning |
|---|---|
| `extends` | B builds on A |
| `refines` | B narrows or clarifies A |
| `grounds` | A provides the evidence for B |
| `applies` | B implements A |
| `depends-on` | B requires A |
| `corrects` | B replaces or invalidates A |

Why it matters for agents: when an agent follows a typed edge, it is
reasoning inside the domain's ontology instead of guessing by keyword
proximity. The edge is a guardrail — it constrains what a correct
connection can mean. See [[cybernetic-graph]] and the spec
[[typed-edge-architecture]].

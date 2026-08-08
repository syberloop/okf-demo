---
type: Framework
title: "Control Loop vs Agent Loop — Two Different Loops"
description: "Distinguishes the internal execution loop of an agent (prompt → tool → result → end) from the persistent cybernetic control loop (sensors → decision → actuation → measurement → feedback). The confusion between them is why most 'memory' products ship storage and stop."
timestamp: 2026-08-08T00:00:00-05:00
created: 2026-08-08T00:00:00-05:00
tags: [loops, control-theory, agents, framework]
links:
  - target: frameworks/cybernetic-graph.md
    type: refina
---

# Control Loop vs Agent Loop

There are two loops, and they are not the same:

1. **Agent execution loop** — a single prompt: receive input, call a tool,
   return a result, end. Stateless across sessions.
2. **Cybernetic control loop** — persistent: sensors detect state,
   perception interprets it, actuators execute corrections, measurement
   records the outcome. This loop survives individual agent sessions.

Most memory products implement the first loop (retrieval for the current
prompt) and call it memory. The second loop — the system that notices its
own drift and corrects it — is the one that compounds. See
[[cybernetic-graph]] and [[memory-stores-vs-modeling]].

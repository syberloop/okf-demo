---
type: Spec
title: "Typed Edge Architecture"
description: "Technical spec for typed edges in the graph: the links field in frontmatter, runtime ontological validation, and filtering by edge type in queries. Edge types are annotated intent, not filters — the full superset is always returned."
timestamp: 2026-08-08T00:00:00-05:00
created: 2026-08-08T00:00:00-05:00
tags: [spec, typed-edges, ontology, frontmatter]
links:
  - target: frameworks/typed-edges-as-ontology.md
    type: aplica
---

# Typed Edge Architecture

## Frontmatter representation

```yaml
links:
  - target: frameworks/cybernetic-graph.md
    type: extiende
```

Each link declares a target file and a semantic edge type. The graph
indexes these as first-class edges.

## Validation

- Edge types are validated against the domain vocabulary at runtime.
- Unknown types are rejected with a warning; the link is still recorded.
- A query annotated with an edge type returns the full superset — the
  type annotates intent, it does not filter.

## Why annotation over filtering

Filtering by edge type risks false negatives: a query that guesses the
wrong relationship silently loses results. Annotation keeps the intent on
the query without discarding anything. See [[typed-edges-as-ontology]].

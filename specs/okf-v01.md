---
type: Spec
title: "OKF v0.1 — The Open Format"
description: "An open standard for representing knowledge as markdown with YAML frontmatter. Portable between humans and agents. Defines concepts, frontmatter, cross-links, indexes, and logs — the contract every vault follows."
timestamp: 2026-08-08T00:00:00-05:00
created: 2026-08-08T00:00:00-05:00
tags: [spec, format, okf, standard]
links:
  - target: frameworks/cybernetic-graph.md
    type: fundamenta
  - target: decisions/file-first-over-ingest.md
    type: aplica
---

# OKF v0.1

## Concept

A **concept** is a markdown file with YAML frontmatter. Its identity is
its `type` + `title` + `description`; its history is its `timestamp` and
git log; its relationships are typed wikilinks.

## Minimal frontmatter

```yaml
---
type: <one of the taxonomy>
title: "<human title>"
description: "<why this concept exists — navigability depends on it>"
timestamp: <ISO-8601>
---
```

The core contract — `type`, `description`, and wikilinks — is a
fundamental rule of the domain and is never configurable. Everything else
(tags, status, cyber block, custom fields) is optional. See
[[configurable-vs-hardcoded]] and [[cybernetic-graph]].

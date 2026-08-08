---
type: Decision
title: "Configurable vs Hardcoded — The Design Principle"
description: "Make configurable what is likely to change; hardcode what is a fundamental rule of the domain. The core contract (type + description + wikilinks) is a fundamental rule and is never configurable. Taxonomy, thresholds, and features are."
timestamp: 2026-08-08T00:00:00-05:00
created: 2026-08-08T00:00:00-05:00
tags: [decision, design-principle, architecture]
links:
  - target: frameworks/ashby-requisite-variety.md
    type: aplica
---

# Configurable vs Hardcoded

## Decision

Two categories of design decisions:

1. **Hardcode** what represents a fundamental rule of the domain — the
   OKF contract: type, description, and wikilinks on every concept.
2. **Make configurable** what will plausibly change — the taxonomy, the
   staleness thresholds, the review cycle, the feature flags.

## Why

A rule that is externalized can be violated accidentally. A rule that is
hardcoded can only be changed deliberately, in code, with a review.
Conversely, a threshold that is hardcoded forces a code change every time
a domain's rhythm differs. The principle allocates each decision to the
right side.

This grounds the config file: `.okf.config.yaml` controls taxonomy and
thresholds, but never the core contract. See [[ashby-requisite-variety]].

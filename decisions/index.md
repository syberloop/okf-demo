# Decisions


## Guías Disponibles

* [configurable-vs-hardcoded.md](configurable-vs-hardcoded.md) - Make configurable what is likely to change; hardcode what is a fundamental rule of the domain. The core contract (type + description + wikilinks) is a fundamental rule and is never configurable. Taxonomy, thresholds, and features are.
* [cyber-block-for-actionable-concepts.md](cyber-block-for-actionable-concepts.md) - Only concepts that act in the world carry a cyber block (sensor, target_metric, actuator, outcome, review_on). Descriptive or reference concepts never do. The cyber block is what turns a note into a participant in the loop.
* [file-first-over-ingest.md](file-first-over-ingest.md) - The graph is the folder of Markdown files, not a database behind it. No ingest step, no import pipeline, no intermediate store. Agents read and modify the files directly; git keeps history. The files were always the memory.
* [reverted-captcha-on-checkout.md](reverted-captcha-on-checkout.md) - A working example of the retirement mechanism: a decision to add a captcha on checkout shipped, was reverted after completed orders fell 5%, and the graph retired it — still visible for provenance, no longer served as truth.

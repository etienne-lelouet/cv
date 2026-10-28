# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Build

```bash
make          # produces cv.pdf
make watch    # live reload during editing
```

`cv.pdf` is not versioned: `.github/workflows/build.yml` compiles it on every push to `main` and publishes it as the rolling `latest` GitHub release.

## Architecture

The CV is a single self-contained Typst file, `cv.typ`, written in French. Content is written inline as plain Typst markup, one `#entry[left column][body]` per item under each `#section[...]`. The only helpers are `section` (heading with rule) and `entry` (two-column date/content row).

Sections: Formation, Expériences professionnelles, Publications, Communications scientifiques, Enseignement, Compétences techniques, Langues.

### Design principles

- Keep the template minimal — no external Typst packages.
- Serif font (Libertinus Serif). Two pages, both filled: a manual `#pagebreak(weak: true)` before Publications balances them, and spacing is generous. A section must never be split across pages (`section` wraps its content in a non-breakable block).
- No em dashes (they take too much space): use commas, colons or parentheses.
- The CV owner is a PhD student transitioning to private R&D.

---
name: professional-github-readme
description: Write, audit, and revise polished GitHub README.md files with a centered brand header, accurate technology badges, an EN/ID bilingual language switcher, a working table of contents, and copy-pasteable setup guides. Use this skill whenever the user asks for a README, project documentation, repo "front page", installation guide, or wants an existing README reviewed, improved, translated, restyled, or made more professional, even if they never say "README" (e.g. "document my project", "make my repo look good", "buatkan dokumentasi untuk repo ini", "rapikan README").
---

# Professional GitHub README

## Why this matters

A README is the storefront of a repository. Developers, contributors, and hiring managers decide in seconds whether a project is trustworthy. A polished README (clear hook, accurate badges, exact commands, bilingual access) signals production-grade engineering. A README with wrong commands or broken links signals the opposite, so **accuracy always beats decoration**.

## Core principles

1. **Ground everything in the repository.** Read the real files before writing: `package.json`, `pyproject.toml`, `go.mod`, `Cargo.toml`, `manifest.json`, `LICENSE`, `.env.example`, lockfiles, CI config, the folder tree, and any existing README. Take versions, scripts, license, and structure from them. Never invent commands, versions, env vars, features, screenshots, or URLs. If something is unknown, use a clearly marked placeholder such as `<your-username>` and tell the user what to fill in.
2. **Adapt to the project.** The pillars below are a menu, not a quota. Skip a pillar that does not apply (no keyboard shortcuts, no API keys) instead of padding it with filler. A short, true README beats a long, hollow one.
3. **Bilingual by default, flexible on request.** Default to English (primary) plus Bahasa Indonesia (mirror). If the user wants only one language, or another pair, follow them.
4. **Copy-paste-ready.** Every command sits in a fenced block with a language tag, in the order a newcomer would run it.
5. **Verify before delivering.** Run the checklist at the end.

## Workflow

**Creating a new README**
1. Explore the repo (see principle 1). Note stack, entry points, scripts, license, and anything user-facing.
2. Choose the pillars that apply.
3. Draft English first, then write the Indonesian version as natural prose (not word-for-word translation).
4. Build badges, anchors, and the table of contents from the final headings.
5. Run the checklist, fix issues, deliver.

**Auditing or improving an existing README**
1. Read it fully and compare it against the repo: stale commands, wrong versions, missing sections, dead anchors.
2. Preserve accurate content, the author's voice, and any project-specific sections (roadmap, credits, sponsors). Restructure rather than delete.
3. Deliver the revised file. Summarize what changed in a few lines and list any placeholders or unverifiable claims.

## The pillars

### 1. Visual brand header
- Centered logo: `<p align="center"><img src="..." width="96" height="96" alt="Project logo" /></p>`. Use a real asset from the repo (`public/`, `assets/`, `docs/`). If none exists, omit the logo and say so; never point to a file that is not there.
- Centered `<h1 align="center">` with the project name.
- One-sentence tagline (`<strong>`) stating what it does, plus an `<em>` line naming the core tech or innovation.

### 2. Badges
- One centered row of Shields.io badges, **derived from the actual stack**: language, main framework, build tool or runtime, platform, license. Typically 4 to 7 badges; more becomes noise.
- Match versions to the manifest (`React 19` only if the project uses 19). Match the license badge to the `LICENSE` file.
- Add live badges (CI status, release, npm/PyPI version) only when the repo really has that workflow or package.
- Always include `alt` text.

```markdown
<p align="center">
  <img src="https://img.shields.io/badge/TypeScript-5.x-3178C6?logo=typescript&logoColor=white" alt="TypeScript" />
  <img src="https://img.shields.io/badge/License-MIT-green.svg" alt="License: MIT" />
</p>
```

### 3. Language switcher (EN / ID)
Place directly under the badges. Both links must resolve (see Anchor rules).

```markdown
<p align="center">
  🌐 <strong>Select Language / Pilih Bahasa:</strong><br>
  <b><a href="#-english-documentation">English</a></b> &nbsp;|&nbsp; <b><a href="#-dokumentasi-bahasa-indonesia">Bahasa Indonesia</a></b>
</p>
```

### 4. Bilingual structure
- Two self-contained blocks: `# 🇬🇧 English Documentation` and `# 🇮🇩 Dokumentasi Bahasa Indonesia`, each preceded by an explicit `<a name="..."></a>`.
- Same sections, same order, same commands in both. Only prose, headings, and UI labels change.
- Keep code, file paths, CLI flags, and widely used technical terms (build, commit, token, deploy) in English inside the Indonesian block. Write the surrounding sentences in natural, friendly Indonesian.
- End each language block with one `⬆️ Back to Top` link. Add extra ones only after very long sections.

### 5. Table of contents
One per language block, listing only sections that exist. Every link must point to a real heading (see Anchor rules). For READMEs shorter than about 4 sections, skip the ToC.

### 6. Value proposition and features
- A blockquote stating the problem and who it is for.
- Features grouped by theme with one icon each; lead with what the user gains, then the technical differentiator (e.g. "Shadow DOM isolation keeps the page's styles untouched").
- Add a screenshot, GIF, or demo link if the repo contains one. Do not invent placeholders that render as broken images.

### 7. System prerequisites
Exact runtime versions (Node LTS, Python, Go, JDK), package manager, supported OS or browsers. Pull from `engines`, `.nvmrc`, `requires-python`, CI matrix, or similar.

### 8. Installation
Numbered, copy-pasteable, complete. Use the project's real scripts.

```bash
# 1. Clone the repository
git clone https://github.com/<username>/<repo>.git
cd <repo>

# 2. Install dependencies
npm install

# 3. Build
npm run build
```

For special platforms give the exact click path, e.g. Chrome extension: `chrome://extensions/` ➔ enable **Developer mode** ➔ **Load unpacked** ➔ select `dist/`.

### 9. Configuration
Document every environment variable, setting, API key, and config file. Use a table (name, required?, default, description). Point to `.env.example` if it exists. Never print real secrets.

### 10. Testing and verification
How to confirm it works locally: test commands, a sandbox or demo page, expected output, and a short "it worked if you see..." line.

### 11. Shortcuts or commands table
Only when the project has them.

```markdown
| Shortcut | Action | Description |
| :--- | :--- | :--- |
| **`Alt + H`** | **Hide UI** | Toggles the floating panel. |
```

### 12. Architecture, privacy, and project meta
- ASCII tree of the real folders with a one-line purpose each; keep it to the 2 most useful levels.
- A privacy/security note covering only what the code actually does (local storage, where keys go, telemetry or none). Verify before claiming "no telemetry".
- Closing items when relevant: Troubleshooting (top 3 real problems), Contributing, License, Credits.

## Anchor rules (where most READMEs break)

GitHub builds heading anchors by lowercasing, dropping punctuation and emoji, and turning spaces into hyphens.

- A heading that starts with an emoji keeps a leading hyphen: `# 🇬🇧 English Documentation` ➔ `#-english-documentation`.
- Emoji with invisible variation selectors (⚙️ 🖥️ ⌨️ 🗂️) produce unreliable anchors such as `#️-configuration`. For these headings, add an explicit `<a name="configuration"></a>` above the heading and link to `#configuration`, or use emoji without variation selectors.
- `&` is dropped and the surrounding spaces collapse into a double hyphen: `Installation & Setup` ➔ `#installation--setup`.
- Duplicate headings get `-1`, `-2` suffixes. Because the EN and ID blocks mirror each other, give headings distinct text per language (they naturally differ) and re-check any shared titles like "FAQ" or "License".
- Prefer explicit `<a name="..."></a>` anchors for the two language blocks and for any heading you link to from the ToC or "Back to Top". Keep names lowercase with hyphens.

## Template

````markdown
<p align="center">
  <img src="./assets/logo.png" width="96" height="96" alt="{{PROJECT_NAME}} logo" />
</p>

<h1 align="center">{{PROJECT_NAME}}</h1>

<p align="center">
  <strong>{{ONE_SENTENCE_TAGLINE}}</strong><br>
  <em>{{CORE_TECH_AND_INNOVATION}}</em>
</p>

<p align="center">
  <!-- Badges derived from the real stack -->
</p>

<p align="center">
  🌐 <strong>Select Language / Pilih Bahasa:</strong><br>
  <b><a href="#-english-documentation">English</a></b> &nbsp;|&nbsp; <b><a href="#-dokumentasi-bahasa-indonesia">Bahasa Indonesia</a></b>
</p>

---

<a name="-english-documentation"></a>
# 🇬🇧 English Documentation

> **{{PROJECT_NAME}}** {{PROBLEM_AND_AUDIENCE_IN_TWO_SENTENCES}}

### Table of Contents
- [Key Features](#key-features)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Configuration](#configuration)
- [Testing](#testing)
- [Project Structure](#project-structure)
- [Privacy & Security](#privacy--security)

<a name="key-features"></a>
## ✨ Key Features
...

<p align="right"><a href="#-english-documentation">⬆️ Back to Top</a></p>

---

<a name="-dokumentasi-bahasa-indonesia"></a>
# 🇮🇩 Dokumentasi Bahasa Indonesia

> **{{PROJECT_NAME}}** {{DESKRIPSI_MASALAH_DAN_PENGGUNA}}

### Daftar Isi
...

<p align="right"><a href="#-dokumentasi-bahasa-indonesia">⬆️ Kembali ke Atas</a></p>
````

## Anti-patterns

- Walls of plain text. Break content up with headers, quotes, tables, and code blocks.
- Vague steps like "install dependencies and build". Give the exact commands.
- Hard-coded stack badges copied from the template that do not match the project.
- Fabricated facts: invented scripts, versions, screenshots, features, or privacy claims.
- Broken anchors, or images and links pointing to files that do not exist.
- EN and ID blocks that drift apart (different steps, missing sections, different commands).
- Machine-sounding Indonesian. Rewrite stiff literal translations into natural phrasing.
- Padding: empty sections, filler features, or ten badges that say nothing.

## Final checklist (run before delivering)

- [ ] Every command, script name, version, and path was checked against the repo, or is a flagged placeholder.
- [ ] Badges match the real stack and license; all have `alt` text.
- [ ] Language switcher, ToC, and Back-to-Top links all resolve to existing anchors.
- [ ] Image paths exist; no broken placeholders.
- [ ] EN and ID blocks have identical structure and commands.
- [ ] Installation can be followed top to bottom by a newcomer with no prior knowledge.
- [ ] Privacy/security statements reflect what the code really does.
- [ ] Inapplicable pillars were omitted rather than filled with filler.
- [ ] Reply to the user lists remaining placeholders and anything that could not be verified.

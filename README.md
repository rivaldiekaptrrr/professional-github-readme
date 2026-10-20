<h1 align="center">Professional GitHub README Skill</h1>

<p align="center">
  <strong>Universal AI Agent Skill for Authoring Production-Grade GitHub READMEs</strong><br>
  <em>One-click install across Claude Code, Gemini CLI, Antigravity IDE, OpenCode, Hermes, OpenClaw, Cursor, Roo, and Copilot CLI</em>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Format-Open_Agent_Skill-blue.svg" alt="Format: Open Agent Skill" />
  <img src="https://img.shields.io/badge/Compatible-Claude_|_Gemini_|_OpenCode_|_Hermes_|_OpenClaw-8A2BE2" alt="Cross-Platform" />
  <img src="https://img.shields.io/badge/Language-Markdown-083fa1?logo=markdown&logoColor=white" alt="Markdown" />
  <img src="https://img.shields.io/badge/License-MIT-green.svg" alt="License: MIT" />
</p>

<p align="center">
  🌐 <strong>Select Language / Pilih Bahasa:</strong><br>
  <b><a href="#-english-documentation">English</a></b> &nbsp;|&nbsp; <b><a href="#-dokumentasi-bahasa-indonesia">Bahasa Indonesia</a></b>
</p>

---

<a name="-english-documentation"></a>
# 🇬🇧 English Documentation

> **Professional GitHub README Skill** is a universal AI coding assistant skill (`SKILL.md`) that enforces production-ready repository documentation with centered brand headers, technology badges, anchor-safe bilingual language switchers (EN/ID), verified copy-paste setup guides, and privacy guarantees.

---

### 📑 Table of Contents
- [✨ Key Advantages](#key-advantages)
- [🤖 Supported AI Platforms](#supported-ai-platforms)
- [📦 Quick Installation](#quick-installation)
  - [Automated One-Liner](#automated-one-liner)
  - [Manual Installation](#manual-installation)
  - [Project-Level Setup](#project-level-setup)
- [🚀 Usage Examples](#usage-examples)
- [🏛️ The 12 Pillars Enforced](#the-12-pillars-enforced)
- [📄 License](#license)

<a name="key-advantages"></a>
### ✨ Key Advantages
- **Repository Grounding First**: Prohibits generic hallucinations. Enforces reading actual manifests (`package.json`, `pyproject.toml`, `go.mod`, `Cargo.toml`, `manifest.json`) before drafting badges or setup steps.
- **Anchor-Safe Markdown**: Specifically handles GitHub heading anchor quirks (emoji variation selectors, ampersands, duplicate slugs) to guarantee **zero dead links** in Table of Contents or Language Switchers.
- **Fluent Bilingual Flow**: Produces clean English documentation alongside a natural, idiomatically translated Indonesian counterpart (retaining universal tech jargon like *deploy*, *build*, *commit*).
- **Adaptable Menu, Not Rigid Quota**: Automatically skips inapplicable sections (e.g. no keyboard tables for headless backends) to keep docs authentic and punchy.

<a name="supported-ai-platforms"></a>
### 🤖 Supported AI Platforms

This skill follows the open **Agent Skills Specification** (`SKILL.md` with standard YAML frontmatter) and is recognized by all leading AI coding assistants:

| AI Agent | Universal Shared Path | Dedicated Config Path |
| :--- | :--- | :--- |
| **Claude Code** (Anthropic) | `~/.agents/skills/` | `~/.claude/skills/` |
| **Google Gemini CLI & Antigravity** | `~/.agents/skills/` | `~/.gemini/config/skills/` |
| **OpenCode** | `~/.agents/skills/` | `~/.config/opencode/skills/` or `~/.opencode/skills/` |
| **Hermes Agent** | `~/.agents/skills/` | `~/.hermes/skills/` |
| **OpenClaw** | `~/.agents/skills/` | `~/.openclaw/skills/` |
| **GitHub Copilot CLI / Codex** | `~/.agents/skills/` | `~/.codex/skills/` or `~/.copilot/skills/` |
| **Cursor / Windsurf / Roo Code** | `.agents/skills/` *(workspace root)* | Custom rule / prompt integration |

---

<a name="quick-installation"></a>
### 📦 Quick Installation

You can install this skill either automatically via our one-liner scripts or manually by copying the skill file.

#### Automated One-Liner

Run the universal installer script to automatically deploy the skill across **all installed AI environments on your machine**:

##### 🪟 Windows (PowerShell)
```powershell
# Directly via remote execution (no clone needed)
irm https://raw.githubusercontent.com/rivaldiekaptrrr/professional-github-readme/main/install.ps1 | iex

# Or from cloned repository
.\install.ps1
```

##### 🐧 Linux / 🍎 macOS (Bash)
```bash
# Directly via remote execution (no clone needed)
curl -fsSL https://raw.githubusercontent.com/rivaldiekaptrrr/professional-github-readme/main/install.sh | bash

# Or from cloned repository
chmod +x install.sh && ./install.sh
```

---

<a name="manual-installation"></a>
#### Manual Installation (Global)

If you prefer manual configuration, simply download or copy `SKILL.md` to your agent's skills directory:

##### 1. Google Gemini CLI / Antigravity IDE
- **Windows**: `%USERPROFILE%\.gemini\config\skills\professional-github-readme\SKILL.md`
- **Linux/macOS**: `~/.gemini/config/skills/professional-github-readme/SKILL.md`

##### 2. Anthropic Claude Code
- **Windows**: `%USERPROFILE%\.claude\skills\professional-github-readme\SKILL.md`
- **Linux/macOS**: `~/.claude/skills/professional-github-readme/SKILL.md`

##### 3. Universal Shared Directory (All Agents)
- **Windows**: `%USERPROFILE%\.agents\skills\professional-github-readme\SKILL.md`
- **Linux/macOS**: `~/.agents/skills/professional-github-readme/SKILL.md`

---

<a name="project-level-setup"></a>
#### Project-Level Setup (Workspace Only)

If you only want this skill available in a specific repository or project without installing it globally:

1. In your project root, create the folder `.agents/skills/professional-github-readme/`
2. Copy `SKILL.md` into that folder:
   ```
   my-project/
   ├── .agents/
   │   └── skills/
   │       └── professional-github-readme/
   │           └── SKILL.md
   ├── src/
   └── package.json
   ```
AI agents opened in that project will immediately discover and activate the skill.

---

<a name="usage-examples"></a>
### 🚀 Usage Examples
Once installed, your AI agent will automatically detect and apply the skill when you ask:
- *"Create a README for this repository"*
- *"Document my project professionally"*
- *"Buatkan dokumentasi README standar GitHub"*
- *"Rapikan dan buat README ini terlihat profesional"*

<a name="the-12-pillars-enforced"></a>
### 🏛️ The 12 Pillars Enforced
1. **Visual Brand Header** (Centered logo, title, tagline)
2. **Real-Stack Badges** (Shields.io derived from project files)
3. **Interactive Bilingual Switcher** (EN / ID toggle bar)
4. **Mirrored Bilingual Structure** (Self-contained EN & ID blocks)
5. **Anchor-Verified Table of Contents** (Zero broken links)
6. **Problem Statement & Categorized Features** (Value-first)
7. **Explicit Runtime Prerequisites** (Node, Python, Go, etc.)
8. **Copy-Paste Setup Steps** (Step-by-step numbered CLI blocks)
9. **Configuration & Environment Variables Table**
10. **Local Testing & Sandbox Guide**
11. **Keyboard Shortcuts / CLI Flags Table**
12. **Folder Tree & Privacy Guarantee**

<p align="right"><a href="#-english-documentation">⬆️ Back to Top</a></p>

---

<a name="-dokumentasi-bahasa-indonesia"></a>
# 🇮🇩 Dokumentasi Bahasa Indonesia

> **Professional GitHub README Skill** adalah skill agen AI universal (`SKILL.md`) yang memandu pembuatan dokumentasi repositori berstandar industri dengan header terpusat, badges stack akurat, navigasi bilingual anti-deadlink, dan panduan instalasi copy-pasteable.

---

### 📑 Daftar Isi
- [✨ Keunggulan Skill](#keunggulan-skill)
- [🤖 Dukungan Multi-AI](#dukungan-multi-ai)
- [📦 Panduan Instalasi Cepat](#panduan-instalasi-cepat)
  - [Instalasi Otomatis (One-Liner)](#instalasi-otomatis-one-liner)
  - [Instalasi Manual (Global)](#instalasi-manual-global)
  - [Instalasi Khusus Project (Workspace)](#instalasi-khusus-project-workspace)
- [🚀 Contoh Perintah Prompt](#contoh-perintah-prompt)
- [📄 Lisensi](#lisensi)

<a name="keunggulan-skill"></a>
### ✨ Keunggulan Skill
- **Berbasis Data Riil**: Mencegah halusinasi versi atau perintah — agen wajib membaca `package.json`, `pyproject.toml`, dll.
- **Navigasi Anti-Patah**: Mengatasi bug bawaan GitHub anchor pada emoji dan simbol.
- **Bahasa Indonesia Luwes**: Menghasilkan terjemahan alami yang tetap mempertahankan terminologi teknis baku industri.

<a name="dukungan-multi-ai"></a>
### 🤖 Dukungan Multi-AI
Skill ini mematuhi standar **Agent Skills Specification** dan langsung kompatibel dengan:
- **Claude Code** (Anthropic)
- **Gemini CLI / Antigravity IDE** (Google)
- **OpenCode**
- **Hermes Agent**
- **OpenClaw**
- **GitHub Copilot CLI / Codex**
- **Cursor / Windsurf / Roo Code**

---

<a name="panduan-instalasi-cepat"></a>
### 📦 Panduan Instalasi Cepat

Anda dapat menginstal skill ini baik secara otomatis maupun manual.

<a name="instalasi-otomatis-one-liner"></a>
#### Instalasi Otomatis (One-Liner)

Jalankan perintah berikut di terminal untuk memasang ke seluruh AI agent yang terdeteksi di perangkat Anda:

##### 🪟 Windows (PowerShell)
```powershell
# Eksekusi langsung tanpa perlu clone
irm https://raw.githubusercontent.com/rivaldiekaptrrr/professional-github-readme/main/install.ps1 | iex

# Atau dari repositori yang sudah di-clone
.\install.ps1
```

##### 🐧 Linux / 🍎 macOS (Bash)
```bash
# Eksekusi langsung tanpa perlu clone
curl -fsSL https://raw.githubusercontent.com/rivaldiekaptrrr/professional-github-readme/main/install.sh | bash

# Atau dari repositori yang sudah di-clone
chmod +x install.sh && ./install.sh
```

---

<a name="instalasi-manual-global"></a>
#### Instalasi Manual (Global)

Jika Anda ingin memasangnya secara manual tanpa menjalankan script, cukup salin file `SKILL.md` ke folder agent yang sesuai:

##### 1. Google Gemini CLI / Antigravity IDE
- **Windows**: `%USERPROFILE%\.gemini\config\skills\professional-github-readme\SKILL.md`
- **Linux/macOS**: `~/.gemini/config/skills/professional-github-readme/SKILL.md`

##### 2. Anthropic Claude Code
- **Windows**: `%USERPROFILE%\.claude\skills\professional-github-readme\SKILL.md`
- **Linux/macOS**: `~/.claude/skills/professional-github-readme/SKILL.md`

##### 3. Direktori Universal Shared (Seluruh Agent)
- **Windows**: `%USERPROFILE%\.agents\skills\professional-github-readme\SKILL.md`
- **Linux/macOS**: `~/.agents/skills/professional-github-readme/SKILL.md`

---

<a name="instalasi-khusus-project-workspace"></a>
#### Instalasi Khusus Project (Workspace)

Jika Anda hanya ingin skill ini aktif pada satu repositori kerja tertentu:

1. Buat direktori `.agents/skills/professional-github-readme/` di root repositori project Anda.
2. Salin file `SKILL.md` ke dalam direktori tersebut:
   ```
   proyek-anda/
   ├── .agents/
   │   └── skills/
   │       └── professional-github-readme/
   │           └── SKILL.md
   ├── src/
   └── package.json
   ```
AI agent yang dibuka di workspace proyek tersebut akan langsung mendeteksi skill ini secara otomatis.

---

<a name="contoh-perintah-prompt"></a>
### 🚀 Contoh Perintah Prompt
Cukup jalankan prompt di agent pilihan Anda:
> *"Buatkan README standar GitHub yang profesional untuk repositori ini"*<br>
> *"Tolong audit dan perbaiki README proyek ini agar siap rilis"*

---

<a name="lisensi"></a>
### 📄 Lisensi
Didistribusikan di bawah lisensi [MIT License](LICENSE).

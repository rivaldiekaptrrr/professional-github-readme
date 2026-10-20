#!/usr/bin/env bash
# Universal Installer for professional-github-readme Skill
# Compatible with Claude Code, Gemini CLI, Antigravity, OpenCode, Hermes, OpenClaw, Cursor, Roo, Copilot CLI

set -e

REPO_USER="rivaldiekaptrrr"
REPO_NAME="professional-github-readme"
BRANCH="main"
RAW_BASE_URL="https://raw.githubusercontent.com/${REPO_USER}/${REPO_NAME}/${BRANCH}"

SOURCE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]:-$0}")" 2>/dev/null && pwd || echo "")"
LOCAL_SKILL="${SOURCE_DIR}/SKILL.md"
SKILL_CONTENT=""

if [ -f "$LOCAL_SKILL" ]; then
  SKILL_CONTENT="$(cat "$LOCAL_SKILL")"
else
  echo "Fetching SKILL.md from remote repository..."
  if command -v curl >/dev/null 2>&1; then
    SKILL_CONTENT="$(curl -fsSL "${RAW_BASE_URL}/SKILL.md")"
  elif command -v wget >/dev/null 2>&1; then
    SKILL_CONTENT="$(wget -qO- "${RAW_BASE_URL}/SKILL.md")"
  else
    echo "[!] Error: Neither curl nor wget is available to download SKILL.md." >&2
    exit 1
  fi
fi

if [ -z "$SKILL_CONTENT" ]; then
  echo "[!] Error: SKILL.md content is empty or could not be retrieved." >&2
  exit 1
fi

TARGETS=(
  "$HOME/.agents/skills/professional-github-readme"
  "$HOME/.gemini/config/skills/professional-github-readme"
  "$HOME/.claude/skills/professional-github-readme"
  "$HOME/.opencode/skills/professional-github-readme"
  "$HOME/.config/opencode/skills/professional-github-readme"
  "$HOME/.hermes/skills/professional-github-readme"
  "$HOME/.openclaw/skills/professional-github-readme"
  "$HOME/.codex/skills/professional-github-readme"
  "$HOME/.copilot/skills/professional-github-readme"
)

echo "=========================================================="
echo " Installing Skill: professional-github-readme"
echo " Compatible with: Claude Code, Gemini CLI, Antigravity, OpenCode, Hermes, OpenClaw"
echo "=========================================================="

SUCCESS_COUNT=0

for TARGET in "${TARGETS[@]}"; do
  SKILL_DIR="$(dirname "$TARGET")"
  AGENT_DIR="$(dirname "$SKILL_DIR")"

  # Install if agent directory exists or if it's the universal .agents, .gemini, or .claude directory
  if [ -d "$AGENT_DIR" ] || [[ "$TARGET" =~ \.agents ]] || [[ "$TARGET" =~ \.gemini ]] || [[ "$TARGET" =~ \.claude ]]; then
    mkdir -p "$TARGET"
    printf "%s\n" "$SKILL_CONTENT" > "$TARGET/SKILL.md"
    echo " [OK] Installed to: $TARGET"
    SUCCESS_COUNT=$((SUCCESS_COUNT + 1))
  fi
done

echo ""
echo "Installation completed! Successfully linked to $SUCCESS_COUNT AI agent environment(s)."

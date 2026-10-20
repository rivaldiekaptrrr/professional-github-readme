#!/usr/bin/env bash
# Universal Installer for professional-github-readme Skill
# Compatible with Claude Code, Gemini CLI, Antigravity, OpenCode, Hermes, OpenClaw, Cursor, Roo, Copilot CLI

set -e

SOURCE_DIR=$(cd $(dirname ") && pwd)

if [ ! -f $SOURCE_DIR/SKILL.md ]; then
 echo Error: SKILL.md not found in $SOURCE_DIR
 exit 1
fi

TARGETS=(
 $HOME/.agents/skills/professional-github-readme
 $HOME/.claude/skills/professional-github-readme
 $HOME/.gemini/config/skills/professional-github-readme
 $HOME/.opencode/skills/professional-github-readme
 $HOME/.config/opencode/skills/professional-github-readme
 $HOME/.hermes/skills/professional-github-readme
 $HOME/.openclaw/skills/professional-github-readme
 $HOME/.codex/skills/professional-github-readme
 $HOME/.copilot/skills/professional-github-readme
)

echo =========================================================
echo  Installing Skill: professional-github-readme
echo  Compatible with: Claude, Gemini, OpenCode, Hermes, OpenClaw
echo =========================================================

SUCCESS_COUNT=0

for TARGET in ${TARGETS[@]}; do
 PARENT_DIR=$(dirname $TARGET)
 GRAND_PARENT=$(dirname $PARENT_DIR)

 if [ -d $GRAND_PARENT ] || [[ $TARGET =~ .agents ]] || [[ $TARGET =~ .claude ]] || [[ $TARGET =~ .gemini ]]; then
 mkdir -p $TARGET
 cp $SOURCE_DIR/SKILL.md $TARGET/SKILL.md
 echo  [✓] Installed to: $TARGET
 SUCCESS_COUNT=$((SUCCESS_COUNT + 1))
 fi
done

echo 
echo Installation finished! Successfully linked to $SUCCESS_COUNT AI environments.

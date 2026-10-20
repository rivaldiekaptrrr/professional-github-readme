# Universal Installer for professional-github-readme Skill
# Compatible with Claude Code, Gemini CLI, Antigravity, OpenCode, Hermes, OpenClaw, Cursor, Roo, Copilot CLI

$ErrorActionPreference = 'SilentlyContinue'

$REPO_USER = "rivaldiekaptrrr"
$REPO_NAME = "professional-github-readme"
$BRANCH = "main"
$RAW_BASE_URL = "https://raw.githubusercontent.com/$REPO_USER/$REPO_NAME/$BRANCH"

$ScriptDir = $PSScriptRoot
if (-not $ScriptDir) {
    $ScriptDir = Get-Location
}

$LocalSkillPath = Join-Path $ScriptDir "SKILL.md"
$SkillContent = $null

if (Test-Path $LocalSkillPath) {
    $SkillContent = Get-Content -Path $LocalSkillPath -Raw
} else {
    Write-Host "Fetching SKILL.md from remote repository..." -ForegroundColor Yellow
    try {
        $SkillContent = Invoke-RestMethod -Uri "$RAW_BASE_URL/SKILL.md" -Method Get
    } catch {
        Write-Host "[!] Error: Failed to retrieve SKILL.md from local path or remote URL." -ForegroundColor Red
        exit 1
    }
}

if (-not $SkillContent) {
    Write-Host "[!] Error: SKILL.md content is empty." -ForegroundColor Red
    exit 1
}

$UserHome = [Environment]::GetFolderPath("UserProfile")

$TargetPaths = @(
    # Universal Cross-Runtime Standards
    "$UserHome\.agents\skills\professional-github-readme",
    
    # Google Gemini CLI / Antigravity IDE
    "$UserHome\.gemini\config\skills\professional-github-readme",
    
    # Anthropic Claude Code
    "$UserHome\.claude\skills\professional-github-readme",
    
    # OpenCode
    "$UserHome\.opencode\skills\professional-github-readme",
    "$UserHome\.config\opencode\skills\professional-github-readme",
    
    # Hermes Agent
    "$UserHome\.hermes\skills\professional-github-readme",
    
    # OpenClaw
    "$UserHome\.openclaw\skills\professional-github-readme",
    
    # GitHub Copilot CLI & Codex
    "$UserHome\.codex\skills\professional-github-readme",
    "$UserHome\.copilot\skills\professional-github-readme"
)

Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host " Installing Skill: professional-github-readme" -ForegroundColor Cyan
Write-Host " Compatible with: Claude Code, Gemini CLI, Antigravity, OpenCode, Hermes, OpenClaw" -ForegroundColor Cyan
Write-Host "==========================================================" -ForegroundColor Cyan

$installedCount = 0

foreach ($target in $TargetPaths) {
    $skillDir = Split-Path $target -Parent
    $agentDir = Split-Path $skillDir -Parent

    # Install if agent directory exists or if it's the universal .agents, .gemini, or .claude directory
    if ((Test-Path $agentDir) -or ($target -match "\.agents") -or ($target -match "\.claude") -or ($target -match "\.gemini")) {
        New-Item -ItemType Directory -Force -Path $target | Out-Null
        $destFile = Join-Path $target "SKILL.md"
        [System.IO.File]::WriteAllText($destFile, $SkillContent, [System.Text.Encoding]::UTF8)
        Write-Host " [OK] Installed to: $target" -ForegroundColor Green
        $installedCount++
    }
}

Write-Host ""
Write-Host "Installation completed! Successfully linked to $installedCount AI agent environment(s)." -ForegroundColor Cyan

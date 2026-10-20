# Universal Installer for professional-github-readme Skill
# Compatible with Claude Code, Gemini CLI, Antigravity, OpenCode, Hermes, OpenClaw, Cursor, Roo, Copilot CLI

Continue = SilentlyContinue
 = 

if (-not (Test-Path \SKILL.md)) {
     = Get-Location
}

if (-not (Test-Path \SKILL.md)) {
    Write-Host [!] Error: SKILL.md not found in current directory. -ForegroundColor Red
    exit 1
}

 = [Environment]::GetFolderPath(UserProfile)

# Standard Skill Target Directories across all major AI Coding Agents
 = @(
    # Universal Cross-Runtime Standard
    \.agents\skills\professional-github-readme,
    
    # Google Gemini CLI / Antigravity IDE
    \.gemini\config\skills\professional-github-readme,
    
    # Anthropic Claude Code
    \.claude\skills\professional-github-readme,
    
    # OpenCode
    \.opencode\skills\professional-github-readme,
    \.config\opencode\skills\professional-github-readme,
    
    # Hermes Agent
    \.hermes\skills\professional-github-readme,
    
    # OpenClaw
    \.openclaw\skills\professional-github-readme,
    
    # GitHub Copilot CLI & Codex
    \.codex\skills\professional-github-readme,
    \.copilot\skills\professional-github-readme
)

Write-Host ========================================================== -ForegroundColor Cyan
Write-Host  Installing Skill: professional-github-readme -ForegroundColor Cyan
Write-Host  Compatible with: Claude, Gemini, OpenCode, Hermes, OpenClaw -ForegroundColor Cyan
Write-Host ========================================================== -ForegroundColor Cyan

 = 0

foreach ( in ) {
     = Split-Path  -Parent
     = Split-Path  -Parent

    # If the tool's root directory exists or it's the universal .agents directory
    if ((Test-Path ) -or ( -match \.agents) -or ( -match \.claude) -or ( -match \.gemini)) {
        New-Item -ItemType Directory -Force -Path  | Out-Null
        Copy-Item -Force \SKILL.md -Destination \SKILL.md
        Write-Host  [✓] Installed to:  -ForegroundColor Green
        ++
    }
}

Write-Host 
Installation finished! Successfully linked to AI environments. -ForegroundColor Cyan

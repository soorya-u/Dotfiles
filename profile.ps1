$ScriptDir = "$HOME\.dotfiles\scripts\powershell"

$scripts = @(
    "aliases.ps1"
    "env.ps1"
    "path.ps1"
    "loaders.ps1"
    "setters.ps1"
)

foreach ($s in $scripts) {
    $scriptPath = Join-Path $ScriptDir $s
    if (Test-Path $scriptPath) {
        . $scriptPath 
    }
}

if (Get-Command "scoop" SilentlyContinue) {
    write-host "Scoop is already installed" -Green
} else {
    write-host "Scoop is not installed" -ForegroundColor Red
    write-host "Installing scoop" -ForegroundColor Green    
    #iwr -useb get.scoop.sh | iex
}

Write-Host "Bootsrap.ps1 is running just fine!" -ForegroundColor Blue

Get-ChildItem $PSScriptRoot\src -Exclude practice.ps1 | ForEach-Object {
    &$_.FullName
}

if (Get-Command -Type Cmdlet 'scoop' -ErrorAcion SilentlyContinue) {
    write-host "Scoop is already installed"
} else {
    iwr -useb get.scoop.sh | iex
}

Write-Host "Bootsrap.ps1 is running just fine!" -ForegroundColor Red



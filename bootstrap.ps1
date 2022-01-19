if (Get-Command -Type Cmdlet 'scoop' -ErrorAcion SilentlyContinue) {
    write-host "Scoop is installed"
} else {
    &$PSScriptRoot\src\scoop_installation.ps1
}



Write-Host "Configuring Powershell Profile" -ForegroundColor Gray
Write-Host "------------------------------" -ForegroundColor Gray

# set custom PWSH settings to the microsoft.psprofile
". $env:USERPROFILE\.config\powershell\user_profile.ps1
Import-Module posh-git
Import-Module oh-my-posh" > $PROFILE.CurrentUserCurrentHost

Start-Sleep -s 1
Write-Host "Powershell Profile settings Updated!"  -ForegroundColor Green

# vscode...
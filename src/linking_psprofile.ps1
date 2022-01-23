Write-Host "Configuring Powershell Profile" -ForegroundColor Gray
Write-Host "------------------------------" -ForegroundColor Gray

# set custom PWSH settings to the microsoft.psprofile
". $env:USERPROFILE\.config\powershell\user_profile.ps1
Import-Module posh-git
Import-Module oh-my-posh" > $PROFILE.CurrentUserCurrentHost

Start-Sleep -s 1
Write-Host "Powershell Profile settings Updated!"  -ForegroundColor Green

# locate or create neovim folder
# if (Test-Path -Path "$HOME\AppData\Local\nvim") {
#     Write-Host "Old 'nvim' directory located, switching with new 'nvim'" -Foreground Yellow
#     Copy-Item -Path $nvim_backup_dir -Destination $HOME\AppData\Local\nvim\ -PassThru -Recurse
#     Write-Host "'nvim' directory is in place" -Foreground Green
# } else {
#     Copy-Item -Path $nvim_backup_dir -Destination $HOME\AppData\Local\nvim\ -PassThru -Recurse
# }

# vscode...
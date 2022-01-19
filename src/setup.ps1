$nvim_backup_dir = Join-Path -Path (Split-Path $PSScriptRoot) -ChildPath "nvim"
$ps_backup_dir   = Join-Path -Path (Split-Path $PSScriptRoot) -ChildPath "nvim"

# set custom PWSH settings to the microsoft.psprofile
". $env:USERPROFILE\$ps_backup_dir\user_profile.ps1
Import-Module posh-git
Import-Module oh-my-posh" > $PROFILE.CurrentUserCurrentHost

# locate or create neovim folder
if (Test-Path -Path "$HOME\AppData\Local\nvim") {
    $yesOrNo = Read-Host "Some files may be overwritten(nvim). Do you wish to continue?(Y/N)"
    if ($yesOrNo -eq 'Y'){
         # New-Item -Path "$HOME\AppData\Local\nvim" -ItemType "directory" -Force
         Write-Host "Old 'nvim' directory located, switching with new 'nvim'" -Foreground Yellow
         Copy-Item -Path $nvim_backup_dir -Destination $HOME\AppData\Local\nvim\ -PassThru -Recurse
         Write-Host "'nvim' directory is in place" -Foreground Green
    } else {
        Write-Host "No files were changed" -Foreground Yellow
    }

} else {
    Copy-Item -Path $nvim_backup_dir -Destination $HOME\AppData\Local\nvim\ -PassThru -Recurse
}

# vscode...
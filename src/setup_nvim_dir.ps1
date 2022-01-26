# locate or create neovim folder
$nvim_dir = Join-Path ( Split-Path (Split-Path ($MyInvocation.MyCommand.Path)) ) "nvim"


if (Test-Path -Path "$HOME\AppData\Local\nvim") {
    Write-Host "Old 'nvim' directory located, switching with new 'nvim'" -Foreground Yellow
    Copy-Item -Path $nvim_dir -Destination $HOME\AppData\Local\nvim\ -PassThru -Recurse
    Write-Host "'nvim' directory is in place" -Foreground Green
} else {
    Copy-Item -Path $nvim_dir -Destination $HOME\AppData\Local\nvim\ -PassThru -Recurse
}

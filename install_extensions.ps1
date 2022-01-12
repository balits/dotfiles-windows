if (Test-Path -Path "$HOME\scoop") {
    scoop update
    scoop update *
}


function print_format($App, $Installed) {
    if ($Installed -eq $true) {
        Write-Host $App -Foreground Blue -NoNewLine
        Write-Host " Already installed."  -Foreground Green   
    } else {
        Write-Host $App  -Foreground Blue -NoNewLine
        Write-Host " Installing..."  -Foreground Red
    }
}


# neovim
if(Test-Path -Path "$HOME\scoop\apps\neovim") {
    print_format -App "neovim" $true
}
else {
    print_format -App "neovim" $false
    scoop install neovim 
}
 # git
if(Test-Path -Path "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Git") {
    print_format -App 'Git for Windows' $true
} else {
    print_format -App 'Git for Windows' $false

    winget install -e --id Git.Git    
}

# terminal-icons
if(Test-Path -Path "$HOME\Documents\PowerShell\Modules\Terminal-Icons") {
    print_format "Terminal-Icons" $true
} else {
    print_format "Terminal-Icons" $false
    Install-Module -Name Terminal-Icons -Repository PSGallery -Force
}
# z
if(Test-Path -Path "$HOME\Documents\PowerShell\Modules\z") {
    print_format 'z' $true
} else {
    print_format 'z' $false
    Install-Module -Name z -Force
}
# PSReadLine
if(Test-Path -Path "$HOME\Documents\PowerShell\Modules\PSReadLine") {
    print_format 'PSReadLine' $true
} else {
    print_format 'PSReadLine' $false

    Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck
}

# PROMPT
if(Test-Path -Path "$HOME\Documents\PowerShell\Modules\oh-my-posh") {
    print_format 'oh-my-posh' $true
} else {
    print_format 'oh-my-posh' $false

    Install-Module oh-my-posh -Scope Currentuser -Force
}

if(Test-Path -Path "$HOME\Documents\PowerShell\Modules\posh-git") {
    print_format 'posh-git' $true
} else {
    print_format 'posh-git' $false

    Install-Module posh-git -Scope Currentuser -Force
}
# fuzzy finder
if(Test-Path -Path "$HOME\Documents\PowerShell\Modules\PSFzf") {
    print_format 'PSFzf' $true
} else {
    print_format 'PSFzf' $false

    Install-Module -Name PSFzf -Scope Currentuser -Force
}
if(Test-Path -Path "$HOME\scoop\apps\fzf") {
    print_format 'fzf' $true
} else {
    print_format 'fzf' $false
}
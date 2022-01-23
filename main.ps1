function stutter_msg([string]$text) {
    foreach ($char in ($text -split '')) {
        if ($char -eq ' ') {
            Start-Sleep -Seconds 0.08
            Write-Host $char -NoNewline -ForegroundColor Gray

        } else {
            Write-Host $char -NoNewline -ForegroundColor Gray

            Start-Sleep -Seconds 0.1
        }
    } Write-Host " "
}

function fill_lines {
    param (
        [string]$text
    )
    for ($i = 0; $i -lt $text.Length; $i++) {
        Write-Host '-' -ForegroundColor Gray -NoNewline
    } Write-Host " "
}

function print_welcome([string]$author,[string]$text) {
    fill_lines $author

    stutter_msg $author
    stutter_msg $text

    fill_lines $text
}

$author = "Balits Peter Marton"
$text = "This is my Windows environment setup while studying at University"

print_welcome -author $author -text $text
stutter_msg "Lets get started!"

# if ( Get-Command -CommandType Cmdlet 'scoop update *' -ErrorAction SilentlyContinue) {
#     write-host "Scoop is already installed" -Green
#     Start-Sleep -s 1
#     Write-Host "Updating scoop..."
#     Start-Sleep -s 1
#     # scoop update
# } else {
#     write-host "Scoop is not installed" -ForegroundColor DarkRed
#     Start-Sleep -s 1
#     write-host "Installing scoop" -ForegroundColor Green

#     # iwr -useb get.scoop.sh | iex
# }

Get-ChildItem $PSScriptRoot\src -Exclude practice.ps1 | ForEach-Object {
    Start-Sleep -s 2
    Write-Host ""

    &$_.FullName
}

stutter_msg "Finally, everything is done!"
# use this formula to install scoop to your preffered location (maybe even inside .config repo)
# $x = Join-Path -Path $env:USERPROFILE -ChildPath '.config\scoop'
# Write-Host $x -ForegroundColor Green

# 1
[environment]::setEnvironmentVariable('SCOOP', $env:USERPROFILE, 'User') 
# 2
$env:SCOOP = $env:USERPROFILE
# 3
Invoke-Expression (new-object net.webclient).downloadstring('https://get.scoop.sh') 

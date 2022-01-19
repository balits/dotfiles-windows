$x = Join-Path -Path $env:USERPROFILE -ChildPath '.config\scoop'
# Write-Host $x -ForegroundColor Green

# 1
[environment]::setEnvironmentVariable('SCOOP', $x, 'User') 
# 2
$env:SCOOP = $x
# 3
Invoke-Expression (new-object net.webclient).downloadstring('https://get.scoop.sh') 

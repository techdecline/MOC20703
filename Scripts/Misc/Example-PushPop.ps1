Set-Location C:\Windows

Push-Location C:\
Write-Host "Pushed Path is: $($PWD.Path)"
Pop-Location
$appv = Get-AppvClientPackage "Name der App"

Start-AppvVirtualProcess -FilePath cmd.exe -AppvClientObject $appv
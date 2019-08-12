New-CMBoundaryGroup -Name BG_Sydney -DefaultSiteCode S01
Get-CMBoundary | Where-Object {$_.DisplayName -match ".*Sydney.*"} | Add-CMBoundaryToGroup -BoundaryGroupName BG_Sydney
Set-CMBoundaryGroup -Name BG_Sydney -AddSiteSystemServerName LON-CFG.adatum.com
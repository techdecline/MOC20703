$vmArr = Get-VM 20703*

foreach ($vmObj in $vmArr) {
    Write-Output "Resetting Virtual Machine: $($vmObj.Name)"
    Get-VMSnapshot -VMName $vmObj.Name -Name "StartingImage" | Restore-VMSnapshot -Confirm:$false


    if ($vmObj.Name -match ".*CFG-A$") {
        Get-VMNetworkAdapter -VMName $vmObj.Name | Remove-VMNetworkAdapter -Confirm:$false
        Add-VMNetworkAdapter -VMName $vmObj.Name -SwitchName "Private Network"
    }
}
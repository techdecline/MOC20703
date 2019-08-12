$userDiscoveryArr = @("ldap://OU=IT,DC=Adatum,DC=com","ldap://CN=Users,DC=Adatum,DC=com")

Set-CMDiscoveryMethod -ActiveDirectoryUserDiscovery -SiteCode S01 -Enabled $true -EnableDeltaDiscovery $true -DeltaDiscoveryMins 5 `
   -AddActiveDirectoryContainer $userDiscoveryArr
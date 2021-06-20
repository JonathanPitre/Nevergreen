$Version = (Invoke-WebRequest 'https://www.poly.com/gb/en/support/downloads-apps/hub-desktop' -DisableKeepAlive -UseBasicParsing).Content | Get-Version -Pattern 'Version ((?:\d+\.)+\d+)'

$URL32 = Get-Link -Uri 'https://www.poly.com/gb/en/support/downloads-apps/hub-desktop' -MatchProperty href -Pattern 'PlantronicsHubInstaller\.exe$' | Set-UriPrefix -Prefix 'https://www.poly.com'

New-NevergreenApp -Version $Version -Uri $URL32 -Architecture 'x86'
param($name)

Add-PSSnapin Microsoft.SharePoint.PowerShell -ErrorAction SilentlyContinue;

New-SPWeb http://intranet.geektrainer.com/$name -Template "STS#0" -Name $name -Description "Site for $name";
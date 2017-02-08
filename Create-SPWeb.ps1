param($name)

Add-PSSnapin Microsoft.SharePoint.PowerShell -ErrorAction SilentlyContinue;

New-SPWeb https://intranet.sharepoint2013.com/$name `
    -Template "STS#0" -Name $name -Description "Site for $name";
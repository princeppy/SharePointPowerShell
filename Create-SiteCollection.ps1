Add-PsSnapin Microsoft.SharePoint.PowerShell -ea SilentlyContinue;

$Template = "STS#0";
$URL = "http://newnothing.geektrainer.com";
$Owner = "GEEKTRAINER\charrison";
$Name = "My Sites Host";
$Description = "My Sites Host";

New-SPSite $URL -OwnerAlias $Owner -Language 1033 -Template $Template -Name $Name -Description $Description;
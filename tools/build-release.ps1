param([string]$Version = "0.1.0")
$ErrorActionPreference = "Stop"
$Root = Split-Path -Parent $PSScriptRoot
$Pack = Join-Path $Root "FateExpedition"
$Dist = Join-Path $Root "dist"
$Out = Join-Path $Dist "FateExpedition-v$Version.zip"
if (-not (Test-Path (Join-Path $Pack "pack.mcmeta"))) { throw "pack.mcmeta not found" }
New-Item -ItemType Directory -Force $Dist | Out-Null
if (Test-Path $Out) { Remove-Item -LiteralPath $Out }
Compress-Archive -Path (Join-Path $Pack "*") -DestinationPath $Out -CompressionLevel Optimal
Write-Host "Built $Out"

param([string]$Version = "0.1.1")
$ErrorActionPreference = "Stop"
$Root = Split-Path -Parent $PSScriptRoot
$Pack = Join-Path $Root "FateExpedition"
$Dist = Join-Path $Root "dist"
$Out = Join-Path $Dist "FateExpedition-v$Version.zip"
if (-not (Test-Path (Join-Path $Pack "pack.mcmeta"))) { throw "pack.mcmeta not found" }
New-Item -ItemType Directory -Force $Dist | Out-Null
if (Test-Path $Out) { Remove-Item -LiteralPath $Out }
Add-Type -AssemblyName System.IO.Compression
Add-Type -AssemblyName System.IO.Compression.FileSystem
$stream = [System.IO.File]::Open($Out, [System.IO.FileMode]::CreateNew)
try {
    $archive = [System.IO.Compression.ZipArchive]::new($stream, [System.IO.Compression.ZipArchiveMode]::Create, $false)
    try {
        Get-ChildItem -Recurse -File $Pack | ForEach-Object {
            $relative = $_.FullName.Substring($Pack.Length + 1).Replace('\','/')
            [System.IO.Compression.ZipFileExtensions]::CreateEntryFromFile(
                $archive,
                $_.FullName,
                $relative,
                [System.IO.Compression.CompressionLevel]::Optimal
            ) | Out-Null
        }
    }
    finally { $archive.Dispose() }
}
finally { $stream.Dispose() }
Write-Host "Built $Out"

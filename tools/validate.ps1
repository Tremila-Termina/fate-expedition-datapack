$ErrorActionPreference = "Stop"
$Root = Split-Path -Parent $PSScriptRoot
$Pack = Join-Path $Root "FateExpedition"
$Errors = [System.Collections.Generic.List[string]]::new()

Get-ChildItem -Recurse -File $Pack -Filter *.json | ForEach-Object {
    try { Get-Content -Raw -LiteralPath $_.FullName | ConvertFrom-Json | Out-Null }
    catch { $Errors.Add("Invalid JSON: $($_.FullName): $($_.Exception.Message)") }
}
$Meta = Get-Content -Raw (Join-Path $Pack "pack.mcmeta") | ConvertFrom-Json
if ($Meta.pack.min_format[0] -ne 94 -or $Meta.pack.min_format[1] -ne 1 -or $Meta.pack.max_format -ne 94) {
    $Errors.Add("pack.mcmeta must target data pack format 94.1")
}

$FunctionRoot = Join-Path $Pack "data\fate_expedition\function"
$Functions = @{}
Get-ChildItem -Recurse -File $FunctionRoot -Filter *.mcfunction | ForEach-Object {
    $relative = $_.FullName.Substring($FunctionRoot.Length + 1).Replace('\','/').Replace('.mcfunction','')
    $Functions["fate_expedition:$relative"] = $true
}
Get-ChildItem -Recurse -File $FunctionRoot -Filter *.mcfunction | ForEach-Object {
    $lineNo = 0
    Get-Content -LiteralPath $_.FullName | ForEach-Object {
        $lineNo++
        $line = $_
        foreach ($match in [regex]::Matches($line, '(?:function|schedule function)\s+(fate_expedition:[a-z0-9_./-]+)')) {
            if (-not $Functions.ContainsKey($match.Groups[1].Value)) {
                $Errors.Add("Missing function $($match.Groups[1].Value) at $($_.FullName):$lineNo")
            }
        }
        if ($line -match 'click_event' -and ($line -notmatch '"underlined":true' -or $line -notmatch '"bold":true' -or $line -notmatch 'hover_event' -or $line -notmatch '"value":')) {
            $Errors.Add("Clickable text lacks bold/underline/hover at $($_.FullName):$lineNo")
        }
        foreach ($match in [regex]::Matches($line, 'scoreboard objectives add\s+([^\s]+)')) {
            if ($match.Groups[1].Value.Length -gt 16) { $Errors.Add("Objective too long: $($match.Groups[1].Value)") }
        }
    }
}
$Legacy = @(Get-ChildItem -Recurse -File $Pack | Select-String -Pattern 'random_event:|rc\.')
if ($Legacy.Count -gt 0) {
    $Errors.Add("Legacy random_event namespace or rc.* objective remains")
}
if ((Get-ChildItem -Recurse -File (Join-Path $FunctionRoot "debug\event") -Filter *.mcfunction).Count -ne 16) {
    $Errors.Add("Expected 16 debug event entrypoints")
}
if ($Errors.Count) { $Errors | ForEach-Object { Write-Error $_ }; exit 1 }
Write-Host "Validation passed: $($Functions.Count) functions, 16 events, pack format 94.1."

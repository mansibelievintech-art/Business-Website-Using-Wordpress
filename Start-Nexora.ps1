$cli = "$env:LOCALAPPDATA\studio_app\app-1.20.0\resources\cli\node_modules\.bin\wp-playground-cli.cmd"
$project = Split-Path -Parent $MyInvocation.MyCommand.Path
if (-not (Test-Path -LiteralPath $cli)) {
    Write-Error 'WordPress Studio runtime was not found. Install WordPress Studio first.'
    exit 1
}
& $cli start --path="$project\wp-content\themes\nexora-theme" --blueprint="$project\blueprint.json" --port=18639

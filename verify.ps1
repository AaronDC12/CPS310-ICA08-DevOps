
Write-Host "=== ICA08 Release Readiness Verification ===" -ForegroundColor Cyan

Write-Host "`n[1/4] Running tests..."
python -m pytest -v
if ($LASTEXITCODE -ne 0) {
    Write-Host "ERROR: Tests failed." -ForegroundColor Red
    exit 1
}

Write-Host "`n[2/4] Checking requirements.txt..."
if (Test-Path "requirements.txt") {
    Write-Host "OK: requirements.txt exists." -ForegroundColor Green
} else {
    Write-Host "ERROR: requirements.txt is missing." -ForegroundColor Red
    exit 1
}

Write-Host "`n[3/4] Checking config.json..."
if (Test-Path "config.json") {
    Write-Host "OK: config.json exists." -ForegroundColor Green
} else {
    Write-Host "ERROR: config.json is missing." -ForegroundColor Red
    exit 1
}

Write-Host "`n[4/4] Git status:"
git status --short

Write-Host "`nVerification complete." -ForegroundColor Cyan

@echo off
setlocal
cd /d "%~dp0"

set "BASE=War3Cpp-1.0.1-Windows-x64-Setup"
set "EXPECTED=5ffe2be0cca5faaf1444c29daaa8635626cf3f07932a7f5fabe2f07bb09b3b85"

echo === War3Cpp 1.0.1 installer - merge and verify ===
echo.

for %%I in (001 002 003) do (
    if not exist "%BASE%.exe.%%I" (
        echo [ERROR] missing "%BASE%.exe.%%I"
        echo         Extract all three .zip parts into this folder first.
        echo.
        pause
        exit /b 1
    )
)

echo [1/3] parts found, merging ...
copy /b "%BASE%.exe.001"+"%BASE%.exe.002"+"%BASE%.exe.003" "%BASE%.exe" >nul
if errorlevel 1 (
    echo [ERROR] merge failed.
    pause
    exit /b 1
)

echo [2/3] verifying SHA-256 ...
powershell -NoProfile -Command "$h=(Get-FileHash '%BASE%.exe' -Algorithm SHA256).Hash.ToLower(); $e='%EXPECTED%'; Write-Host ('  expected: ' + $e); Write-Host ('  actual  : ' + $h); if ($h -eq $e) { Write-Host '  OK - verified, safe to run the installer' } else { Write-Host '  FAIL - hash mismatch, re-download the parts'; exit 1 }"

echo.
echo [3/3] done. File: %BASE%.exe
echo.
pause

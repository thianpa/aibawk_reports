@echo off
title Sync Aibawk RD Block Data
echo ============================================================
echo   Syncing fresh MGNREGA data for Aibawk RD Block...
echo ============================================================
echo.
cd /d "%~dp0"
python scraper.py
if %ERRORLEVEL% NEQ 0 (
    echo.
    echo [ERROR] Scraper encountered an error or needs configuration.
    pause
    exit /b %ERRORLEVEL%
)

echo.
echo Committing and pushing fresh data to GitHub Pages...
git add data/
git commit -m "Manual sync Aibawk report data: %date% %time%"
git push origin main

echo.
echo ============================================================
echo   SUCCESS! Fresh data has been uploaded to GitHub Pages.
echo ============================================================
pause

@echo off
title Mizoram VB-G RAM G Manual Sync - Aibawk RD Block
echo ============================================================
echo   Mizoram VB-G RAM G Report Sync (Aibawk RD Block)
echo ============================================================
cd /d "%~dp0"
python run_daily_sync.py
echo.
echo Process complete. Press any key to close this window.
pause >nul

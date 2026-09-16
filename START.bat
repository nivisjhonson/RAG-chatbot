@echo off
title RAG PDF Chatbot Launcher
color 0A

echo.
echo ========================================
echo    RAG PDF CHATBOT - STARTING...
echo ========================================
echo.

echo [1/3] Checking backend...
cd /d "%~dp0backend"
if not exist "app.py" (
    echo ERROR: Backend files not found!
    pause
    exit
)

echo [2/3] Starting Backend Server...
start "Backend - DO NOT CLOSE" cmd /k "echo Backend Server Starting... && python -m uvicorn app:app --reload --host 127.0.0.1 --port 8000"

echo [3/3] Waiting for backend to start...
timeout /t 8 /nobreak >nul

echo [4/3] Starting Frontend Server...
cd /d "%~dp0frontend"
start "Frontend - DO NOT CLOSE" cmd /k "echo Frontend Server Starting... && npm start"

echo.
echo ========================================
echo    SERVERS ARE STARTING!
echo ========================================
echo.
echo Two windows opened:
echo   1. Backend Server (port 8000)
echo   2. Frontend Server (port 3000)
echo.
echo Browser will open in 10-15 seconds to:
echo   http://localhost:3000
echo.
echo IMPORTANT: Keep both windows open!
echo.
echo If browser doesn't open, manually go to:
echo   http://localhost:3000
echo.
echo ========================================
echo.
pause

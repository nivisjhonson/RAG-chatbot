@echo off
title RAG PDF Chatbot - FINAL WORKING VERSION
color 0A

echo.
echo ╔════════════════════════════════════════════════════════╗
echo ║                                                        ║
echo ║        RAG PDF CHATBOT - STARTING SERVERS              ║
echo ║                                                        ║
echo ╚════════════════════════════════════════════════════════╝
echo.

echo [1/5] Checking Python...
python --version
if %errorlevel% neq 0 (
    echo [ERROR] Python not found!
    pause
    exit
)

echo [2/5] Checking Node.js...
node --version
if %errorlevel% neq 0 (
    echo [ERROR] Node.js not found!
    pause
    exit
)

echo [3/5] Starting Backend Server...
echo.
start "Backend Server - DO NOT CLOSE THIS WINDOW" cmd /k "title Backend Server && color 0A && cd /d c:\Users\Dell\Desktop\RAG\backend && echo Starting Backend... && echo. && python -m uvicorn app:app --reload --host 127.0.0.1 --port 8000"

echo Waiting for backend to initialize...
timeout /t 10 /nobreak >nul

echo [4/5] Starting Frontend Server...
echo.
start "Frontend Server - DO NOT CLOSE THIS WINDOW" cmd /k "title Frontend Server && color 0B && cd /d c:\Users\Dell\Desktop\RAG\frontend && echo Starting Frontend... && echo. && npm start"

echo [5/5] Opening browser...
timeout /t 15 /nobreak >nul
start http://localhost:3000

echo.
echo ╔════════════════════════════════════════════════════════╗
echo ║                                                        ║
echo ║              SERVERS ARE NOW RUNNING!                  ║
echo ║                                                        ║
echo ╚════════════════════════════════════════════════════════╝
echo.
echo ✓ Backend:  http://127.0.0.1:8000
echo ✓ Frontend: http://localhost:3000
echo.
echo Two windows opened:
echo   1. Backend Server (green)
echo   2. Frontend Server (blue)
echo.
echo IMPORTANT: Keep both windows open!
echo.
echo Browser should open automatically.
echo If not, manually open: http://localhost:3000
echo.
echo To stop servers: Close both terminal windows
echo.
echo ════════════════════════════════════════════════════════
echo.
pause

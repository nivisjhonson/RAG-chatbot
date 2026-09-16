@echo off
title RAG Chatbot - WITH DEBUGGING
color 0E

echo ╔════════════════════════════════════════════════════════╗
echo ║                                                        ║
echo ║     STARTING WITH DEBUG LOGGING ENABLED                ║
echo ║                                                        ║
echo ╚════════════════════════════════════════════════════════╝
echo.

echo [1/2] Starting Backend with detailed logging...
echo.
start "Backend - WATCH THIS FOR ERRORS" cmd /k "title Backend Logs && color 0A && cd /d c:\Users\Dell\Desktop\RAG\backend && echo Backend starting with debug logs... && echo. && python -m uvicorn app:app --reload --log-level debug"

echo Waiting for backend...
timeout /t 10 /nobreak >nul

echo [2/2] Starting Frontend...
echo.
start "Frontend" cmd /k "title Frontend && color 0B && cd /d c:\Users\Dell\Desktop\RAG\frontend && echo Frontend starting... && echo. && npm start"

echo.
echo ╔════════════════════════════════════════════════════════╗
echo ║                                                        ║
echo ║     SERVERS STARTING WITH DEBUG MODE                   ║
echo ║                                                        ║
echo ╚════════════════════════════════════════════════════════╝
echo.
echo IMPORTANT: Watch the GREEN window (Backend Logs)
echo.
echo When you:
echo   - Upload PDF: You'll see processing logs
echo   - Ask question: You'll see [API] and [RAG] logs
echo   - Get error: You'll see ERROR in red
echo.
echo This helps us find exactly what's wrong!
echo.
echo Browser will open in 15 seconds...
timeout /t 15 /nobreak >nul
start http://localhost:3000

echo.
echo ════════════════════════════════════════════════════════
echo.
pause

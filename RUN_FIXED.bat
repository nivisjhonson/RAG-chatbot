@echo off
cls
color 0A
title RAG PDF Chatbot - AUTHENTICATION FIXED

echo.
echo ════════════════════════════════════════════════════════
echo    RAG PDF CHATBOT - AUTHENTICATION FIXED VERSION
echo ════════════════════════════════════════════════════════
echo.

echo [1/3] Starting Backend Server...
start "Backend" cmd /k "color 0A && cd /d c:\Users\Dell\Desktop\RAG\backend && echo Backend Starting... && python -m uvicorn app:app --reload --host 127.0.0.1 --port 8000"

timeout /t 8 /nobreak >nul
echo ✅ Backend started

echo.
echo [2/3] Starting Frontend Server...
start "Frontend" cmd /k "color 0B && cd /d c:\Users\Dell\Desktop\RAG\frontend && echo Frontend Starting... && npm start"

timeout /t 12 /nobreak >nul
echo ✅ Frontend started

echo.
echo [3/3] Opening browser...
timeout /t 3 /nobreak >nul
start http://localhost:3000

echo.
echo ════════════════════════════════════════════════════════
echo    ✅ SYSTEM RUNNING - AUTHENTICATION FIXED!
echo ════════════════════════════════════════════════════════
echo.
echo 🌐 URLs:
echo    App:     http://localhost:3000
echo    Backend: http://127.0.0.1:8000
echo    Test:    c:\Users\Dell\Desktop\RAG\test_auth.html
echo.
echo 📝 HOW TO USE:
echo    1. Click "Try as Guest"
echo    2. Upload PDF
echo    3. Ask questions
echo.
echo ⚠️  Keep both windows open!
echo.
pause

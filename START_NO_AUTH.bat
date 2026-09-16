@echo off
cls
color 0A
title RAG PDF Chatbot - NO AUTH VERSION

echo.
echo ════════════════════════════════════════════════════════
echo    RAG PDF CHATBOT - AUTHENTICATION REMOVED
echo ════════════════════════════════════════════════════════
echo.
echo Starting servers...
echo.

start "Backend" cmd /k "color 0A && cd /d c:\Users\Dell\Desktop\RAG\backend && python -m uvicorn app:app --reload --host 0.0.0.0 --port 8000"

timeout /t 8 /nobreak >nul

start "Frontend" cmd /k "color 0B && cd /d c:\Users\Dell\Desktop\RAG\frontend && npm start"

timeout /t 15 /nobreak >nul

start http://localhost:3000

echo.
echo ════════════════════════════════════════════════════════
echo    ✅ RUNNING - NO AUTHENTICATION REQUIRED!
echo ════════════════════════════════════════════════════════
echo.
echo 🌐 Open: http://localhost:3000
echo.
echo 📝 Just upload PDF and ask questions!
echo    No login needed!
echo.
pause

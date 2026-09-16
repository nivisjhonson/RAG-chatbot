@echo off
title RAG PDF Chatbot - COMPLETE WORKING VERSION
color 0A
cls

echo.
echo ╔════════════════════════════════════════════════════════╗
echo ║                                                        ║
echo ║     RAG PDF CHATBOT - STARTING COMPLETE SYSTEM         ║
echo ║                                                        ║
echo ╚════════════════════════════════════════════════════════╝
echo.

echo [STEP 1/4] Checking system...
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Python not found! Install from python.org
    pause
    exit
)
echo ✅ Python found

node --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Node.js not found! Install from nodejs.org
    pause
    exit
)
echo ✅ Node.js found

echo.
echo [STEP 2/4] Starting Backend Server...
start "Backend Server - KEEP OPEN" cmd /k "title Backend Server && color 0A && cd /d c:\Users\Dell\Desktop\RAG\backend && echo ════════════════════════════════════════ && echo    BACKEND SERVER STARTING && echo ════════════════════════════════════════ && echo. && python -m uvicorn app:app --reload --host 127.0.0.1 --port 8000"

echo ⏳ Waiting for backend to initialize (10 seconds)...
timeout /t 10 /nobreak >nul
echo ✅ Backend should be running

echo.
echo [STEP 3/4] Starting Frontend Server...
start "Frontend Server - KEEP OPEN" cmd /k "title Frontend Server && color 0B && cd /d c:\Users\Dell\Desktop\RAG\frontend && echo ════════════════════════════════════════ && echo    FRONTEND SERVER STARTING && echo ════════════════════════════════════════ && echo. && npm start"

echo ⏳ Waiting for frontend to compile (15 seconds)...
timeout /t 15 /nobreak >nul
echo ✅ Frontend should be running

echo.
echo [STEP 4/4] Opening browser...
timeout /t 3 /nobreak >nul
start http://localhost:3000

echo.
echo ╔════════════════════════════════════════════════════════╗
echo ║                                                        ║
echo ║              ✅ SYSTEM IS NOW RUNNING!                 ║
echo ║                                                        ║
echo ╚════════════════════════════════════════════════════════╝
echo.
echo 🌐 URLs:
echo    Frontend: http://localhost:3000
echo    Backend:  http://127.0.0.1:8000
echo    API Docs: http://127.0.0.1:8000/docs
echo.
echo 📝 Two windows opened:
echo    1. Backend Server (Green) - Port 8000
echo    2. Frontend Server (Blue) - Port 3000
echo.
echo ⚠️  IMPORTANT: Keep both windows open!
echo.
echo 🎯 HOW TO USE:
echo    1. Click "Try as Guest" button
echo    2. Upload a PDF file
echo    3. Ask questions (type or use 🎤 microphone)
echo    4. Get AI-powered answers!
echo.
echo 🛑 To stop: Close both server windows
echo.
echo ════════════════════════════════════════════════════════
echo.
echo Press any key to close this window...
pause >nul

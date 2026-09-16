@echo off
echo Starting RAG PDF Chatbot...
echo.

start "Backend Server" cmd /k "cd /d %~dp0backend && echo Starting Backend... && python -m uvicorn app:app --reload"

timeout /t 3 /nobreak >nul

start "Frontend Server" cmd /k "cd /d %~dp0frontend && echo Starting Frontend... && npm start"

echo.
echo Both servers are starting!
echo Backend: http://127.0.0.1:8000
echo Frontend: http://localhost:3000
echo.

@echo off
echo ========================================
echo RAG PDF Chatbot - Starting Application
echo ========================================
echo.
echo Starting Backend Server...
start "Backend Server" cmd /k "cd backend && python -m uvicorn app:app --reload"
timeout /t 5 /nobreak >nul
echo.
echo Starting Frontend Server...
start "Frontend Server" cmd /k "cd frontend && npm start"
echo.
echo ========================================
echo Both servers are starting...
echo Backend: http://127.0.0.1:8000
echo Frontend: http://localhost:3000
echo ========================================
pause

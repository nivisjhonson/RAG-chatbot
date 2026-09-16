@echo off
title Backend Test
color 0A
echo ========================================
echo Testing Backend Server
echo ========================================
echo.
cd /d "c:\Users\Dell\Desktop\RAG\backend"
echo Starting backend on http://127.0.0.1:8000
echo.
echo If you see "Application startup complete" then it works!
echo.
echo Press Ctrl+C to stop
echo ========================================
echo.
python -m uvicorn app:app --reload --host 127.0.0.1 --port 8000
pause

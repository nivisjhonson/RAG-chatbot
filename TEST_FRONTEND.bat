@echo off
title Frontend Test
color 0B
echo ========================================
echo Testing Frontend Server
echo ========================================
echo.
cd /d "c:\Users\Dell\Desktop\RAG\frontend"
echo Starting frontend on http://localhost:3000
echo.
echo Browser should open automatically!
echo.
echo Press Ctrl+C to stop
echo ========================================
echo.
npm start
pause

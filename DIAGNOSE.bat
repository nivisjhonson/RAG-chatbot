@echo off
echo ========================================
echo DIAGNOSTIC TEST - Finding the Problem
echo ========================================
echo.

echo [TEST 1] Checking if backend folder exists...
cd /d "c:\Users\Dell\Desktop\RAG\backend"
if exist "app.py" (
    echo [OK] Backend folder found
) else (
    echo [ERROR] Backend folder not found!
    pause
    exit
)

echo.
echo [TEST 2] Testing Python...
python --version
if %errorlevel% neq 0 (
    echo [ERROR] Python not found!
    pause
    exit
) else (
    echo [OK] Python is installed
)

echo.
echo [TEST 3] Testing if backend can start...
echo Starting backend for 5 seconds...
start /B python -m uvicorn app:app --host 127.0.0.1 --port 8000 > backend_test.log 2>&1
timeout /t 5 /nobreak >nul

echo.
echo [TEST 4] Checking if backend is running...
curl http://127.0.0.1:8000 > nul 2>&1
if %errorlevel% equ 0 (
    echo [OK] Backend is running!
    taskkill /F /IM python.exe /FI "WINDOWTITLE eq *" >nul 2>&1
) else (
    echo [ERROR] Backend failed to start!
    echo Check backend_test.log for errors
    type backend_test.log
    pause
    exit
)

echo.
echo [TEST 5] Checking frontend folder...
cd /d "c:\Users\Dell\Desktop\RAG\frontend"
if exist "package.json" (
    echo [OK] Frontend folder found
) else (
    echo [ERROR] Frontend folder not found!
    pause
    exit
)

echo.
echo [TEST 6] Checking Node.js...
node --version
if %errorlevel% neq 0 (
    echo [ERROR] Node.js not found!
    echo Please install Node.js from: https://nodejs.org/
    pause
    exit
) else (
    echo [OK] Node.js is installed
)

echo.
echo [TEST 7] Checking npm...
npm --version
if %errorlevel% neq 0 (
    echo [ERROR] npm not found!
    pause
    exit
) else (
    echo [OK] npm is installed
)

echo.
echo ========================================
echo ALL TESTS PASSED!
echo ========================================
echo.
echo Your system is ready. Now starting servers...
echo.
pause

echo Starting Backend...
start "Backend Server" cmd /k "cd /d c:\Users\Dell\Desktop\RAG\backend && python -m uvicorn app:app --reload --host 127.0.0.1 --port 8000"

timeout /t 5 /nobreak >nul

echo Starting Frontend...
start "Frontend Server" cmd /k "cd /d c:\Users\Dell\Desktop\RAG\frontend && npm start"

echo.
echo ========================================
echo Servers are starting!
echo Wait 15 seconds then open browser to:
echo http://localhost:3000
echo ========================================
echo.
pause

@echo off
echo ==========================================
echo  🏥 HealthTrack Application Launcher
echo ==========================================

echo 1. Starting FastAPI Backend...
start cmd /k "call .venv\Scripts\activate && cd backend && python -m uvicorn app:app --reload --host 127.0.0.1 --port 8000"

timeout /t 3

echo 2. Starting Frontend Server...
start cmd /k "call .venv\Scripts\activate && cd frontend && python -m http.server 3000"

timeout /t 2

echo 3. Opening HealthTrack in Browser...
start http://localhost:3000/index.html

echo.
echo ✅ HealthTrack is now running!
echo.
echo 📍 Backend API: http://localhost:8000
echo 📍 Frontend:    http://localhost:3000
echo 📍 Dashboard:   http://localhost:3000/dashboard.html
echo.
echo Press CTRL+C to stop all servers
echo ==========================================
pause
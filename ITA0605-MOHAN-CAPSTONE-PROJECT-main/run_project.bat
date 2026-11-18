@echo off
echo ===================================================
echo Launching CareerPath AI Capstone Web Application
echo ===================================================
start "CareerPath AI - Backend (Flask ML)" cmd /k "run_backend.bat"
timeout /t 3 /nobreak >nul
start "CareerPath AI - Frontend (React Vite)" cmd /k "run_frontend.bat"
echo Both services launched! Opening application at http://localhost:5173
start http://localhost:5173


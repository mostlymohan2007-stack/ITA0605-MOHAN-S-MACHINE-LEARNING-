@echo off
echo ===================================================
echo Starting CareerPath AI - Local Flask ML Backend
echo ===================================================
cd backend
if not exist ".venv\Scripts\python.exe" (
    echo Virtual environment not found. Please setup backend environment.
    pause
    exit /b 1
)
".venv\Scripts\python.exe" app.py
pause


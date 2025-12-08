@echo off
echo.
echo ╔══════════════════════════════════════╗
echo ║    DÉMARRAGE DEVOPS AVEC TERRAFORM   ║
echo ╚══════════════════════════════════════╝
echo.
cd /d "%~dp0terraform"
.\terraform.exe apply -auto-approve
echo.
echo Site en live → http://localhost:8080
timeout /t 3 >nul
start http://localhost:8080
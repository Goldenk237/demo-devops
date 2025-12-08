@echo off
echo.
echo Arrêt et nettoyage avec Terraform...
cd /d "%~dp0terraform"
.\terraform.exe destroy -auto-approve
echo.
echo Tout est proprement arrêté.
pause
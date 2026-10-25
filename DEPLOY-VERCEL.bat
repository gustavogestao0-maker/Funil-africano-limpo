@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo ==========================================
echo   Deploy do funil na Vercel
echo ==========================================
where node >nul 2>nul
if errorlevel 1 (
  echo Node.js nao encontrado. Instale em https://nodejs.org e rode de novo.
  pause
  exit /b
)
call npx --yes vercel@latest whoami >nul 2>nul || call npx --yes vercel@latest login
call npx --yes vercel@latest deploy --prod --yes
echo.
echo ==== PRONTO! O link acima (Production) e o seu site. ====
pause

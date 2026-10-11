@echo off
cd /d "%~dp0"
echo Subiendo ZEUS PRIME a GitHub...
echo.
git status --short --branch
echo.
git push origin main
if errorlevel 1 (
  echo.
  echo No se pudo subir.
  echo Si ves error 403, agrega permiso de escritura a la cuenta ysiemmanuel9-source
  echo en https://github.com/emmajestevex-ui/ZEUS-PRIME/settings/access
  echo o inicia GitHub en esta PC con la cuenta emmajestevex-ui.
  echo.
  pause
  exit /b 1
)
echo.
echo Listo. Abriendo GitHub Actions...
start "" "https://github.com/emmajestevex-ui/ZEUS-PRIME/actions"
pause

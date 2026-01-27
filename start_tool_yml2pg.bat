@echo off
setlocal
echo Starting Etymos Manager...

set "ROOT=%~dp0"
pushd "%ROOT%tool\yaml2pg\web" || exit /b 1

if not exist node_modules (
  echo Installing backend dependencies...
  npm install || exit /b 1
)

if not exist client\node_modules (
  echo Installing client dependencies...
  pushd client || exit /b 1
  npm install || exit /b 1
  popd
)

if /i "%1"=="prod" goto :PROD

echo Launching dev servers (API: http://localhost:3000 , UI: http://localhost:5173)...
start "Etymos Manager Dev" cmd /k "npm run dev"
timeout /t 2 /nobreak >nul
start "" "http://localhost:5173"
popd
exit /b 0

:PROD
echo Building frontend (output: tool\yaml2pg\web\dist)...
npm run build || exit /b 1
echo Launching production server (http://localhost:3000)...
start "Etymos Manager Prod" cmd /k "set NODE_ENV=production&& node server.js"
timeout /t 2 /nobreak >nul
start "" "http://localhost:3000"
popd
exit /b 0

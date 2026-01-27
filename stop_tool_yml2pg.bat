@echo off
setlocal
echo Stopping Etymos Manager...

for %%P in (3000 5173 5174 5175 5176 5177 5178 5179 5180) do (
  for /f "tokens=5" %%A in ('netstat -ano ^| findstr /R /C:":%%P .*LISTENING"') do (
    taskkill /F /PID %%A >nul 2>&1
  )
)

echo Service stopped (if running).
pause

@echo off
where python >nul 2>&1
if %errorlevel% == 0 (
    echo Starting Python HTTP server on http://localhost:8080
    python -m http.server 8080
    goto :end
)

where python3 >nul 2>&1
if %errorlevel% == 0 (
    echo Starting Python HTTP server on http://localhost:8080
    python3 -m http.server 8080
    goto :end
)

where npx >nul 2>&1
if %errorlevel% == 0 (
    echo Starting Node.js http-server on http://localhost:8080
    npx http-server . -p 8080
    goto :end
)

echo ERROR: Neither Python nor Node.js (npx) was found. Please install one of them.
pause
:end

@echo off
chcp 65001 >nul
title Gitfolio - Local Server
color 0A

echo.
echo  ██████╗ ██╗████████╗███████╗ ██████╗ ██╗     ██╗ ██████╗
echo  ██╔════╝ ██║╚══██╔══╝██╔════╝██╔═══██╗██║     ██║██╔═══██╗
echo  ██║  ███╗██║   ██║   █████╗  ██║   ██║██║     ██║██║   ██║
echo  ██║   ██║██║   ██║   ██╔══╝  ██║   ██║██║     ██║██║   ██║
echo  ╚██████╔╝██║   ██║   ██║     ╚██████╔╝███████╗██║╚██████╔╝
echo   ╚═════╝ ╚═╝   ╚═╝   ╚═╝      ╚═════╝ ╚══════╝╚═╝ ╚═════╝
echo.
echo  Portfolio Reno Syaelendra - Local Server Launcher
echo  ====================================================
echo.

cd /d "%~dp0"

:: --- Coba Python ---
python --version >nul 2>&1
if %ERRORLEVEL% == 0 (
    echo  [OK] Python ditemukan!
    echo  [>>] Membuka: http://localhost:8080/minimalist_version.html
    echo.
    echo  Tekan Ctrl+C untuk menghentikan server.
    echo  ====================================================
    timeout /t 2 /nobreak >nul
    start "" "http://localhost:8080/minimalist_version.html"
    python -m http.server 8080
    goto :eof
)

python3 --version >nul 2>&1
if %ERRORLEVEL% == 0 (
    echo  [OK] Python3 ditemukan!
    echo  [>>] Membuka: http://localhost:8080/minimalist_version.html
    echo.
    echo  Tekan Ctrl+C untuk menghentikan server.
    echo  ====================================================
    timeout /t 2 /nobreak >nul
    start "" "http://localhost:8080/minimalist_version.html"
    python3 -m http.server 8080
    goto :eof
)

:: --- Coba Node.js ---
node --version >nul 2>&1
if %ERRORLEVEL% == 0 (
    echo  [OK] Node.js ditemukan!
    echo  [>>] Menginstall/menjalankan npx serve...
    echo  [>>] Membuka: http://localhost:3000/minimalist_version.html
    echo.
    echo  Tekan Ctrl+C untuk menghentikan server.
    echo  ====================================================
    timeout /t 2 /nobreak >nul
    start "" "http://localhost:3000/minimalist_version.html"
    npx serve -p 3000
    goto :eof
)

:: --- Tidak ada yang terinstall ---
echo  [!!] ERROR: Python dan Node.js tidak ditemukan di komputer ini.
echo.
echo  Install salah satu dari link berikut:
echo.
echo   Python  : https://www.python.org/downloads/
echo   Node.js : https://nodejs.org/en/download/
echo.
echo  Atau gunakan VS Code + ekstensi "Live Server" (klik kanan
echo  minimalist_version.html -> Open with Live Server)
echo.
pause

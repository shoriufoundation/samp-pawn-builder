@echo off
setlocal EnableExtensions EnableDelayedExpansion

title SA-MP PAWN Builder - Shoriu Foundation Distribution
color 0B
cls

:: ============================================================
:: SA-MP PAWN Builder
:: Packaged & Maintained by Shoriu Foundation
:: Third-party tool distribution for SA-MP compilation
:: ============================================================

echo.
echo  ============================================================
echo.
echo       ███████╗██╗  ██╗ ██████╗ ██████╗ ██╗██╗   ██╗
echo       ██╔════╝██║  ██║██╔═══██╗██╔══██╗██║██║   ██║
echo       ███████╗███████║██║   ██║██████╔╝██║██║   ██║
echo       ╚════██║██╔══██║██║   ██║██╔══██╗██║╚██╗ ██╔╝
echo       ███████║██║  ██║╚██████╔╝██║  ██║██║ ╚████╔╝
echo       ╚══════╝╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═══╝
echo.
echo                   FOUNDATION
echo.
echo  ------------------------------------------------------------
echo       PAWN Builder Utility (SAMP-PWN-builder)
echo       Distributed by Shoriu Foundation
echo  ------------------------------------------------------------
echo.
echo  ============================================================
echo.

echo [INFO] Initializing build environment...
echo.

if not exist ".\bin\pawncc.exe" (
    color 0C
    echo [ERROR] PAWN compiler was not found!
    echo.
    echo         Expected path:
    echo         .\bin\pawncc.exe
    echo.
    echo [ERROR] Build aborted.
    echo.
    pause
    exit /b 1
)

if not exist ".\samp-files\base.pwn" (
    color 0C
    echo [ERROR] Source file was not found!
    echo.
    echo         Expected path:
    echo         .\samp-files\base.pwn
    echo.
    echo [ERROR] Build aborted.
    echo.
    pause
    exit /b 1
)

echo [INFO] Compiler : .\bin\pawncc.exe
echo [INFO] Source   : .\samp-files\base.pwn
echo [INFO] Output   : .\samp-files\base.amx
echo [INFO] Includes : .\samp-files\include
echo [INFO] Optimize : -O1
echo.
echo ------------------------------------------------------------
echo [BUILD] Compilation started...
echo ------------------------------------------------------------
echo.

".\bin\pawncc.exe" ".\samp-files\base.pwn" ^
    -i".\samp-files\include" ^
    -o".\samp-files\base.amx" ^
    -O1

set "BUILD_ERROR=%ERRORLEVEL%"

echo.
echo ------------------------------------------------------------

if %BUILD_ERROR% EQU 0 (
    color 0A
    echo.
    echo  [SUCCESS] Build completed successfully!
    echo.
    echo  Output file created:
    echo      .\samp-files\base.amx
    echo.
) else (
    color 0C
    echo.
    echo  [FAILED] Build process failed!
    echo.
    echo  Compiler Exit Code: %BUILD_ERROR%
    echo.
    echo  Please review the PAWN compiler logs above.
    echo.
)

echo ------------------------------------------------------------
echo.
echo  Shoriu Foundation - Open Source Tools ^& Utilities
echo  Packaged for convenience and quick integration.
echo.
echo ============================================================
echo.

if not %BUILD_ERROR% EQU 0 (
    pause
    exit /b %BUILD_ERROR%
)

pause
exit /b 0
@echo off
setlocal ENABLEDELAYEDEXPANSION

:MENU
echo =============================
echo Resume Export Menu
echo =============================
echo 1. Export PDF with straightforward theme
echo 2. Export PDF with kendall theme
echo 3. Export HTML with straightforward theme
echo 4. Export HTML with kendall theme
echo 5. Exit
echo.
set /p choice=Select an option (1-5): 

if "%choice%"=="1" goto STRAIGHTFORWARD_PDF
if "%choice%"=="2" goto KENDALL_PDF
if "%choice%"=="3" goto STRAIGHTFORWARD_HTML
if "%choice%"=="4" goto KENDALL_HTML
if "%choice%"=="5" goto END

echo Invalid selection. Please try again.
goto MENU

:STRAIGHTFORWARD_PDF
echo Exporting PDF with straightforward theme...
resume export resume.pdf --theme straightforward
if %ERRORLEVEL%==0 (
    echo Export completed: resume.pdf
) else (
    echo Export failed.
)
goto END

:KENDALL_PDF
echo Exporting PDF with kendall theme...
resume export resume.pdf --theme kendall
if %ERRORLEVEL%==0 (
    echo Export completed: resume.pdf
) else (
    echo Export failed.
)
goto END

:STRAIGHTFORWARD_HTML
echo Exporting HTML with straightforward theme...
resume export resume.html --theme straightforward
if %ERRORLEVEL%==0 (
    echo Export completed: resume.html
) else (
    echo Export failed.
)
goto END

:KENDALL_HTML
echo Exporting HTML with kendall theme...
resume export resume.html --theme kendall
if %ERRORLEVEL%==0 (
    echo Export completed: resume.html
) else (
    echo Export failed.
)
goto END

:END
echo Done.
endlocal

set SCRIPT_PATH=%~dp0
set PROJECT_PATH=%~dp0..\

cd %SCRIPT_PATH%

if not exist "%SCRIPT_PATH%Win32\Debug" mkdir "%SCRIPT_PATH%Win32\Debug"

xcopy /S /Q /Y "%SCRIPT_PATH%style\*.vsf" "%SCRIPT_PATH%Win32\Debug"

xcopy /S /Q /Y "%PROJECT_PATH%IT11 PAT2024 Fase1_JonesGustav\*.mdb" "%SCRIPT_PATH%Win32\Debug"
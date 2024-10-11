set SCRIPT_PATH=%~dp0
set PROJECT_PATH=%~dp0..\

cd %SCRIPT_PATH%

if not exist "%SCRIPT_PATH%Win32\Debug" mkdir "%SCRIPT_PATH%Win32\Debug"
if not exist "%SCRIPT_PATH%Win32\Release" mkdir "%SCRIPT_PATH%Win32\Release"
if not exist "%SCRIPT_PATH%Win32\Debug\help" mkdir "%SCRIPT_PATH%Win32\Debug\help"
if not exist "%SCRIPT_PATH%Win32\Release\help" mkdir "%SCRIPT_PATH%Win32\Release\help"

xcopy /S /Q /Y "%SCRIPT_PATH%style\*.vsf" "%SCRIPT_PATH%Win32\Debug"
xcopy /S /Q /Y "%SCRIPT_PATH%style\*.vsf" "%SCRIPT_PATH%Win32\Release"

xcopy /S /Q /Y "%PROJECT_PATH%IT11 PAT2024 Fase1_JonesGustav\*.mdb" "%SCRIPT_PATH%Win32\Debug"
xcopy /S /Q /Y "%PROJECT_PATH%IT11 PAT2024 Fase1_JonesGustav\*.mdb" "%SCRIPT_PATH%Win32\Release"

xcopy /S /Q /Y "%SCRIPT_PATH%docs\*.txt" "%SCRIPT_PATH%Win32\Debug\help"
xcopy /S /Q /Y "%SCRIPT_PATH%docs\*.txt" "%SCRIPT_PATH%Win32\Release\help"
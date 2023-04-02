:: Set the path for the alias file
reg add "HKLM\SOFTWARE\Microsoft\Command Processor" /v "AutoRun" /t REG_SZ /d %USERPROFILE%\.config\cmd/profile.cmd /f

:: Create the alias file
echo @echo off > %USERPROFILE%\.config\cmd/profile.cmd
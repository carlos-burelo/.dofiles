@echo off

set root=%~dp0

:load
    set current_directory = %cd%

    :: get current folder name
    if "%cd:~-1%" == "\" set "cd1=%cd:~0,-1%"
    for %%f in ("%cd%") do set "current_working_folder=%%~nxf"

    :: get git current branch name from .git folder if exists in current folder
    :: if not, set git_branch to NONE
    if exist .git (
        for /f "tokens=3 delims=/" %%a in ('git branch ^| findstr /i "*"') do set "git_branch=%%a"
    ) else (
        set "git_branch=#"
    )

    :: get hours and minutes 00:00 from $t

    FOR /F "tokens=1,2 delims=:." %%A IN ("%Time%") DO (
        SET hours=%%A
        SET minutes=%%B
    )
    call %root%colors.bat
cls
set prompt=[40;36m%current_working_folder% [40;34mgit:([40;31m%git_branch%[40;34m) [40;32m%hours%:%minutes% [40;37m


:: Alias
doskey ls = dir /b $*
doskey cat = type $*
doskey touch = echo off $T echo. ^> $* $T echo $* has been created $T echo on
doskey rm= del $*
doskey cp= copy $*
doskey mv= move $*
doskey pwd= echo %cd%
doskey back = cd ..
doskey cd= cd $* $T call %root%profile.cmd
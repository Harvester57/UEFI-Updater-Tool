@echo off
echo;
echo *** Generate user list mCodes ****
echo;
if not exist USR_mCode echo Folder USR_mCode not found && pause && exit 1
if not exist USR_mCode\*.bin echo mCodes not found && pause && exit 1
if exist Usr_mCode.txt del /f /q Usr_mCode.txt
for /f "tokens=*" %%m in ('dir /b /o-n  USR_mCode\*.bin') do (
	set file_mcode=%%m
	call :GenList
)
echo Done! && pause && exit

:GenList
echo %file_mcode:~3, -47% USR_mCode\%file_mcode%
echo %file_mcode:~3, -47% USR_mCode\%file_mcode%>>Usr_mCode.txt
exit /b
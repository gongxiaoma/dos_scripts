@echo off
del .\tools\core.dll
copy /Y .\tools\wget.exe %SystemRoot%\
wget -P .\tools\ http://www.comingchina.com/download/update/core.dll
echo 正在检查是否需要更新,请稍等...

REM 检测是否需要更新，errorlevel为0，表示不需要更新，1为需要更新
.\php\php.exe .\tools\check_update.php

if ERRORLEVEL 1 (
	call .\tools\kk_dos.bat
	echo 更新成功
) ELSE (
	ECHO 已经是最新版本，不需要更新！
)
del .\tools\core.dll
pause

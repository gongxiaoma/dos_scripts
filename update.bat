@echo off
del .\tools\core.dll
copy /Y .\tools\wget.exe %SystemRoot%\
wget -P .\tools\ http://www.comingchina.com/download/update/core.dll
echo ���ڼ���Ƿ���Ҫ����,���Ե�...

REM ����Ƿ���Ҫ���£�errorlevelΪ0����ʾ����Ҫ���£�1Ϊ��Ҫ����
.\php\php.exe .\tools\check_update.php

if ERRORLEVEL 1 (
	call .\tools\kk_dos.bat
	echo ���³ɹ�
) ELSE (
	ECHO �Ѿ������°汾������Ҫ���£�
)
del .\tools\core.dll
pause

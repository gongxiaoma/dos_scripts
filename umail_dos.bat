copy /Y .\tools\WinRAR.exe %SystemRoot%\
del .\tools\WorldClient.zip
wget -P .\tools\ http://www.comingchina.com/download/temp/WorldClient.zip
iisreset /stop
cscript /nologo .\tools\date.vbs > .\tools\riqishijian.txt 
set/p riqishijian=<.\tools\riqishijian.txt
del .\WorldClient\html\core\log\*.log
xcopy /E .\WorldClient .\Bak\WorldClient_bak%riqishijian%\
copy /Y .\WorldClient\html\core\core.dll .\tools\
winrar x -o+ .\tools\WorldClient.zip .\WorldClient
copy /Y .\tools\core.dll .\WorldClient\html\core\
del .\WorldClient\html\getpass1.php
del .\WorldClient\html\getpass2.php
del .\WorldClient\html\info.php 
del .\WorldClient\html\customer\autoresp.php
del .\WorldClient\html\client\mail\module\test.php
rd /S /Q .\WorldClient\html\fast\
rd /S /Q .\WorldClient\Templates\fast\
set/p banben=<.\WorldClient\html\version.txt
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\UMAIL /v Version /t reg_SZ /d %banben% /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\UMAIL /v Version /t reg_SZ /d %banben% /f
iisreset /start
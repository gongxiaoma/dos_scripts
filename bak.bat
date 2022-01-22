@echo off
echo %date:~0,4%%date:~5,2%%date:~8,2%
xcopy /E "C:\Program Files (x86)\POPUP SYSTEM" "d:\bak\tx_popup_bak_%date:~0,4%%date:~5,2%%date:~8,2%\"
xcopy /E "C:\Program Files (x86)\T3" "d:\bak\tx_t3_bak_%date:~0,4%%date:~5,2%%date:~8,2%\"
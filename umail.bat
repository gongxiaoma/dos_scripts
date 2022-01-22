@echo off 
for /f "delims=" %%i in ('dir /b/ad D:\kk\Users\chanfine.com ') do ( 
xcopy /s /y D:\whitelist\. "D:\kk\Users\chanfine.com\%%i\" 
)
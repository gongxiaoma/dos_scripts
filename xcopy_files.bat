@echo off 
for /f "delims=" %%i in ('dir /b/ad F:\a ') do ( 
xcopy /s /y F:\ddd\. "F:\a\%%i\" 
)
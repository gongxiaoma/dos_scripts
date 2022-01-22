@echo off
for /F "tokens=1,2 delims=" %%I in (user.txt) do (
net user %%I %%J
)
pause
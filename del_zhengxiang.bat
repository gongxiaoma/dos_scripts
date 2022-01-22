Rem 定义变量
for /f "tokens=1 delims=," %%a in (%cd%\data.txt) do (

Rem 删除正向查找区域
dnscmd 127.0.0.1 /ZoneDelete %%a /f
)
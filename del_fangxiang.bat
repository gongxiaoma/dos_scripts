Rem 定义变量
for /f "tokens=4 delims=," %%d in (%cd%\data.txt) do (

Rem 删除反向查找区域
dnscmd 127.0.0.1 /zoneDelete %%d.in-addr.arpa /f
)
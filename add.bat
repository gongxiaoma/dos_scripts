Rem 定义变量
for /f "tokens=1,2,3,4,5 delims=," %%a in (%cd%\data.txt) do (

Rem 添加正向查找区域
dnscmd 127.0.0.1 /ZoneAdd %%a /Primary /file %%a.dns /a webmaster@%%a

Rem 添加A记录
dnscmd 127.0.0.1 /RecordAdd %%a %%b A %%c

Rem 添加反向查找区域                               
dnscmd 127.0.0.1 /zoneadd %%d.in-addr.arpa /primary
                    
Rem 添加PTR反向记录
dnscmd 127.0.0.1 /recordadd %%d.in-addr.arpa %%e PTR %%b.%%a
)


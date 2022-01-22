@echo off
for /r /d %%a in (*) do (
pushd "%%a\"
move *.msg "2018bak.IMAP\"
popd
)
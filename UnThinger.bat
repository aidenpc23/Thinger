@echo off
:start

cls
set /p message=Message:
echo %message% > message.txt
set /p password=Password:
openssl enc -d -A -a -in message.txt -out enc.txt -k %password%
pause
del message.txt && del enc.txt

goto start
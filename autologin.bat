@echo off

echo Iniciando o Script

rem Caso o chrome esteja em execução, mata o processo para executar novamente.
rem Caso não esteja ele daará um erro e continuara o processo.
taskkill /f /im chrome.exe
taskkill /f /im wscript.exe
timeout /t 15

REM Abre todos os links dos dashboards.
REM 1.NOME DASHBOARD
start chrome.exe -incognito "LINK DASHBOARD"
timeout /t 3

rem Aguarda antes de chamar o script vbs, com os comandos a serem executados.
timeout /t 50
start wscript.exe /B "C:\browser-autologin\commands_autologin.vbs"

rem Aguarda o script de logar terminar, e executa o script de trocas de abas.
timeout /t 50
start /wait wscript.exe /B "C:\browser-autologin\change_windows.vbs"

taskkill /f /im chrome.exe
taskkill /f /im wscript.exe
taskkill /f /im cmd.exe

echo Finalizando o Script
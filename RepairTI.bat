@echo off
title MENU DE SUPORTE TECNICO T.I - Fsennax
color 2

:menu
cls
echo =====================================================
echo           MENU DE SUPORTE TECNICO T.I
echo             Criado por Fsennax
echo =====================================================
echo.
echo  1.  Verificar e Reparar Disco (CHKDSK)
echo  2.  Reparar Arquivos de Sistema (SFC)
echo  3.  Limpar Arquivos Temporarios e Cache DNS
echo  4.  Diagnostico de Memoria
echo  5.  Verificar Conectividade de Rede (Ping)
echo  6.  Rastreamento de Rota (Tracert)
echo  7.  Abrir Gerenciador de Tarefas
echo  8.  Backup de Drivers (Lista)
echo  9.  Abrir Windows Update
echo 10.  Informacoes do Sistema
echo 11.  Limpar Cache DNS
echo 12.  Reiniciar Servicos de Rede
echo 13.  Desfragmentar Disco
echo 14.  Gerenciar Usuarios Locais
echo 15.  Verificar Integridade (DISM)
echo 16.  Ver Logs de Eventos
echo 17.  Testar Velocidade Basica (ping google.com)
echo 18.  Criar Ponto de Restauracao
echo 19.  Executar Comando Personalizado
echo 20.  Atualizar Programas com Winget
echo 21.  Executar Manutencao Completa (Auto)
echo 22.  Abrir Ferramentas do Sistema
echo 23.  Sair
echo.
set /p opcao=Digite sua opcao [1-23]: 

if "%opcao%"=="1" chkdsk C: /f /r
if "%opcao%"=="2" sfc /scannow
if "%opcao%"=="3" (
    echo Limpando arquivos temporarios...
    del /s /f /q %temp%\*
    echo Limpando cache DNS...
    ipconfig /flushdns
    pause
    goto menu
)
if "%opcao%"=="4" (
    mdsched
    goto menu
)
if "%opcao%"=="5" (
    set /p host=Digite o endereco/IP: 
    ping %host%
    pause
    goto menu
)
if "%opcao%"=="6" (
    set /p rota=Digite o endereco/IP: 
    tracert %rota%
    pause
    goto menu
)
if "%opcao%"=="7" (
    taskmgr
    goto menu
)
if "%opcao%"=="8" (
    echo Listando drivers instalados...
    pnputil /enum-drivers
    pause
    goto menu
)
if "%opcao%"=="9" (
    control /name Microsoft.WindowsUpdate
    goto menu
)
if "%opcao%"=="10" (
    systeminfo
    pause
    goto menu
)
if "%opcao%"=="11" (
    ipconfig /flushdns
    echo Cache DNS limpo com sucesso.
    pause
    goto menu
)
if "%opcao%"=="12" (
    net stop dnscache
    net start dnscache
    netsh int ip reset
    netsh winsock reset
    echo Servicos de rede reiniciados.
    pause
    goto menu
)
if "%opcao%"=="13" (
    defrag C: /U /V
    pause
    goto menu
)
if "%opcao%"=="14" (
    lusrmgr.msc
    goto menu
)
if "%opcao%"=="15" (
    DISM /Online /Cleanup-Image /RestoreHealth
    pause
    goto menu
)
if "%opcao%"=="16" (
    eventvwr
    goto menu
)
if "%opcao%"=="17" (
    ping google.com
    pause
    goto menu
)
if "%opcao%"=="18" (
    powershell -command "Checkpoint-Computer -Description 'Ponto_Restauracao_TI' -RestorePointType 'MODIFY_SETTINGS'"
    echo Ponto de restauracao criado.
    pause
    goto menu
)
if "%opcao%"=="19" (
    set /p cmd=Digite o comando: 
    %cmd%
    pause
    goto menu
)
if "%opcao%"=="20" (
    powershell -command "winget upgrade --all --silent"
    pause
    goto menu
)
if "%opcao%"=="21" (
    echo Executando manutencao completa...
    sfc /scannow
    DISM /Online /Cleanup-Image /RestoreHealth
    del /s /f /q %temp%\*
    ipconfig /flushdns
    defrag C: /U /V
    echo Finalizado.
    pause
    goto menu
)
if "%opcao%"=="22" (
    control
    goto menu
)
if "%opcao%"=="23" (
    exit
)
goto menu
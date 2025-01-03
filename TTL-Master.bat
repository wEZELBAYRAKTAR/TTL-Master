@echo off
title TTL Master v1 - wEZELBAYRAKTAR
color 1f

if not "%1"=="am_admin" (
    TIMEOUT 2 > NUL
    @ECHO :: Admin izinleri bekleniyor...
    powershell -Command "Start-Process -Verb RunAs -FilePath '%0' -ArgumentList 'am_admin'"
    exit /b
)


:MENU
	CLS
	:: Oncelikle varsayilan TTL degerini kontrol edelim.
	for /f "tokens=6" %%i in ('ping -n 1 127.0.0.1^|find "TTL"') do set ttl="%%i"

	:: TTL=128 ise arka plan rengini kirmiziya, degilse yesile degistirin.
	if %ttl% == "TTL=128" ( color 4F ) else ( color A0 )


:::		  ______ ______ __       __  ___              __             
:::		 /_  __//_  __// /      /  |/  /____ _ _____ / /_ ___   _____
:::		  / /    / /  / /      / /|_/ // __ `// ___// __// _ \ / ___/
:::		 / /    / /  / /___   / /  / // /_/ /(__  )/ /_ /  __// /    
:::		/_/    /_/  /_____/  /_/  /_/ \__,_//____/ \__/ \___//_/     
                                                             
	for /f "delims=: tokens=*" %%A in ('findstr /b ::: "%~f0"') do @echo(%%A
                                                        

	:: Varsayilan degeri goster.
	echo --------------------------------------------------------------
	echo  Current %ttl%
	echo --------------------------------------------------------------
	echo.
	echo [1] 60 (bypass-sinirsiz internet)
	echo [2] 128 (varsayılan)
	echo [3] Cikis
	echo.

	:: Kullanici girisini bekle.
	CHOICE /C:123
	echo.

	if errorlevel 1 set M=1
	if errorlevel 2 set M=2
	if errorlevel 3 set M=3
	if %M%==1 goto BYPASS
	if %M%==2 goto DEFAULT
	if %M%==3 goto EOF
 exit /b

:: TTL 60'a (bypass-sinirsiz) ayarlandi ve menuye geri donuldu.
:BYPASS
	netsh int ipv4 set glob defaultcurhoplimit=60 >NUL
	netsh int ipv6 set glob defaultcurhoplimit=60 >NUL
	:: prefer ipv4 over ipv6 https://docs.microsoft.com/en-us/troubleshoot/windows-server/networking/configure-ipv6-in-windows
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip6\Parameters" /v DisabledComponents /t REG_DWORD /d 32 /f
	echo.
	echo En iyi sonuclar icin simdi yeniden baslatin.
	timeout 2 >NUL
	goto MENU

:: TTL set to 128 (default value) & back to menu
:DEFAULT
	netsh int ipv4 set glob defaultcurhoplimit=128 >NUL
	netsh int ipv6 set glob defaultcurhoplimit=128 >NUL
	:: revert prefer ipv4 over ipv6 https://docs.microsoft.com/en-us/troubleshoot/windows-server/networking/configure-ipv6-in-windows
	reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip6\Parameters" /v DisabledComponents /f
	echo.
	echo En iyi sonuclar icin simdi yeniden baslatin.
	timeout 2 >NUL
	goto MENU

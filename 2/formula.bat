@echo off

set /P num1=Enter num №1: 
set /P num2=Enter num №2: 
set /P num3=Enter num №3: 
set /P num4=Enter num №4: 
set /P num5=Enter num №5: 
set /P num6=Enter num №6: 

set /A result=(num1+num2)-(num3%%num4)/(num5*num6)

echo %result%

pause
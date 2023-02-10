@echo off
chcp 65001

cd %USERPROFILE%\Desktop
:scrr
set /P papersPlease=Count of papers:
set inputError=0
if %papersPlease% LSS 4 (
	set inputError=1
)
if %papersPlease% GTR 9 (
	set inputError=1
)
if inputError==1 (
	echo Произошла еррора, число должно быть больше 4 и меньше 9
	goto scrr
)

for /l %%i in (1,1,%papersPlease%) do (
	echo %%i
	echo @echo off > Paper%%i.bat
	echo chcp 65001 >> Paper%%i.bat
	echo echo Неправильно, попробуй еще раз >> Paper%%i.bat
	echo timeout 7 /nobreak >> Paper%%i.bat
)
set /A R=(%RANDOM%%%%papersPlease%)+1
echo @echo off > Paper%R%.bat
echo chcp 65001 >> Paper%R%.bat
echo echo Загрузка... >> Paper%R%.bat
echo timeout 3 /nobreak >> Paper%R%.bat
echo color a >> Paper%R%.bat
echo echo Молодец! Ты угадал >> Paper%R%.bat
echo timeout 7 /nobreak >> Paper%R%.bat
echo del Paper*.bat >> Paper%R%.bat
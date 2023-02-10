chcp 65001
@echo off

set batDir=%cd%

set /P firstFolder=Enter first folder name here: 
cd c:/
mkdir %firstFolder%
cd %firstFolder%

set /P secondFolder=Enter second folder name here: 
mkdir %secondFolder%
cd %secondFolder%


set /P firstFile=Enter first file name here: 
set /P firstFileInfo=Enter first file data: 
set /P secondFile=Enter second file name here: 
set /P secondFileInfo=Enter second file data: 
set /P thirdFile=Enter third file name here: 
set /P thirdFileInfo=Enter third file data: 

echo %firstFile% > %firstFileInfo%
echo %secondFile% > %secondFileInfo%
echo %thirdFile% > %thirdFileInfo%

echo %firstFileInfo% %secondFileInfo% %thirdFileInfo% > all.txt
move all.txt ..

cd ..
type all.txt


call %batDir%\formula.bat

pause
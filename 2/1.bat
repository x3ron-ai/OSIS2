:: Turning off command displaying and change encoding
chcp 65001
@echo off
:: Changing dir to C:/ and creating folder named "Course", then changing dir to our working folder
cd c:/
mkdir Course
cd Course

:: Asking the user for a group name and creating folder with this title
set /P group=Enter group name here:
mkdir %group%
cd %group%

:: Asking the user for a surname and creating file with this title
set /P userSurname=Enter your surname here:
echo > %userSurname%.txt

:: Copy created file to C:/Course and changing dir to Course
copy %userSurname%.txt C:\Course
cd ..

:: Asking the user for a his friend's surname and renaming our file to this title
set /P friendSurname=Enter your friend's surname here:
rename %userSurname%.txt %friendSurname%.txt

:: Removing file from our group's folder and printing result
del %group%\%userSurname%.txt
echo Командный файл создал студент «%userSurname%»

pause
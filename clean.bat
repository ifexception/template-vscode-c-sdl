@echo off

echo ##########################################################################
echo ### clean.bat
echo ##########################################################################

forfiles /P build\ /M * /C "cmd /c if @isdir==FALSE del @file"
forfiles /P build\ /M * /C "cmd /c if @isdir==TRUE rmdir /S /Q @file"
echo Completed clean operation

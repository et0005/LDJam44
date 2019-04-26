@echo off

color 0a
title GitCommit/Push V0.01 - Ran Crump

SET /P input=Would you like to push a update? y/n:

IF "%input%"=="y" GOTO :yes 
IF "%input%"=="Y" GOTO :yes 

echo "Process Diverted, input 'y' not recived"
pause
Exit /b

:yes
SET /P gitComment=Insert a commit message or leave blank:

IF NOT "%gitComment%"=="" goto :comment

git add .
git commit -a --allow-empty-message -m ''
git pull
git push
git pull
pause
Exit /b

:comment
git add .
git commit -m "%gitComment%"
git pull
git push
git pull
pause
Exit /b 
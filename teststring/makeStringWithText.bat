@echo off

rem ������폜
if exist _outputMakeStringWithText.txt del _outputMakeStringWithText.txt
setlocal ENABLEDELAYEDEXPANSION
for /f %%a in (file.txt) do (
	set line=%%a
	echo !line:.txt=! >> _outputMakeStringWithText.txt
)
endlocal



rem ������A��
if exist outputMakeStringWithText.txt del outputMakeStringWithText.txt

set HEADSTRING=:D(
set TAILSTRING=":-^)"

for /f %%a in (_outputMakeStringWithText.txt) do (
  echo %HEADSTRING%%%a%TAILSTRING:"=% >> outputMakeStringWithText.txt
)
if exist _outputMakeStringWithText.txt del _outputMakeStringWithText.txt
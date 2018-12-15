@echo off
 
for /f %%a in (..\..\file_list.txt) do (
  echo %%a
)
pause
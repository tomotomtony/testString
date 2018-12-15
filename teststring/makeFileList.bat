@echo off

if exist file_list.txt del file_list.txt
dir *jpg /b > file_list.txt
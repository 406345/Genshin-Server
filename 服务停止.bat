@echo off
color F0
cd /d %~dp0
%1 start "" mshta vbscript:createobject("shell.application").shellexecute("""%~0""","::",,"runas",1)(window.close)&exit
title ֹͣ����
echo ֹͣ��Ϸ����
taskkill /f /im java.exe
ping 127.0.0.1>nul -n 2
echo ֹͣ���ݷ���
taskkill /f /im mongod.exe
ping 127.0.0.1>nul -n 2
taskkill /f /im cmd.exe

@echo off
color F0
title ��������
cd /d %~dp0
%1 start "" mshta vbscript:createobject("shell.application").shellexecute("""%~0""","::",,"runas",1)(window.close)&exit
echo �������ݷ���...
cd %~dp0"Dataserver\MongoDB"
start mongodb.bat
ping 127.0.0.1 -n 5 >nul
echo ������Ϸ���� ...
cd %~dp0"Grasscutter"
start grasscutter.bat
echo off

set path=D:\Program Files (x86)\ss-kcptun\

echo "Æô¶¯ss-server"
start /i /min /b "%path%ss-server" ss_local_go.exe -s 127.0.0.1 -p 12948 -l 1080 -k xxx -d

echo "Æô¶¯kcptun"
start /i /min /b "%path%kcptun" client_windows_amd64.exe -r 108.61.187.120:20987 -l ":12948" -mode fast2 -key xxx

::pause
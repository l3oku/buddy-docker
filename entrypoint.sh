#!/bin/sh
echo "-----  Starting argo...----- "
Token=${Token:-'eyJhIjoiM2M5ZjA1YTFlNDNkZTRlMTBiODhjZWYzODA1NmE4ZWUiLCJ0IjoiNWU3NTdlYzItMzdmMi00NDQxLWJjN2UtMzhiM2U0NGJkNTQ0IiwicyI6Ik5EUTJaalUzTmpjdFpqRm1OUzAwWmpWaExXRTRNMk10WTJGaE1qTTBOMkkwWldWaSJ9'}

# 启动 web.sh 脚本
nohup ./web.sh run ./config.json >/dev/null 2>&1 &
# 启动 cloudf.sh 脚本
./cloudf.sh tunnel --edge-ip-version auto run --token $Token

echo "----- 系统进程...----- ."
ps -ef

echo "----- 系统信息...----- ."
cat /proc/version

####################################
# ソース引用・一部改
# @yabeenico 様: wsl2でsshサーバを起動し、外部からそこに接続
# https://qiita.com/yabeenico/items/15532c703974dc40a7f5
####################################

#!/bin/bash


PORT=$1

IP=$(ifconfig eth0 | grep 'inet ' | awk '{print $2}')

netsh.exe interface portproxy delete v4tov4 listenport=${PORT}
netsh.exe interface portproxy add    v4tov4 listenport=${PORT} connectaddress=${IP}

sc.exe config iphlpsvc start=auto
sc.exe start  iphlpsvc
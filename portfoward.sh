####################################
# ソース引用・一部改
# @yabeenico 様: wsl2でsshサーバを起動し、外部からそこに接続
# https://qiita.com/yabeenico/items/15532c703974dc40a7f5
####################################

#!/bin/bash

CMD=$1
VAL=$2

SCRIPT_DIR=$(dirname $(realpath $0))

case ${CMD} in
    'add' ) bash "${SCRIPT_DIR}/cmds/add.sh"   ${VAL} ;;
    'del' ) bash "${SCRIPT_DIR}/cmds/del.sh"   ${VAL} ;;
    'list' ) bash "${SCRIPT_DIR}/cmds/list.sh"        ;;
    * ) echo "command not found."       ;;
esac
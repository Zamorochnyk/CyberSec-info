#!/bin/bash
PROXIE_TYPE=$2
TIMEOUT=$3
check_proxy() {
    local PROXIE=$1
    IS_ALIVE=$(echo `curl -A "Mozilla/5.0 (Windows NT 10.0; Win64; x64) Gecko/20100101 Firefox/130.0" -m $TIMEOUT -f -s -x $PROXIE_TYPE://$PROXIE http://www.example.com/`)
    if [[ -n $IS_ALIVE  ]]; then
        echo "$PROXIE_TYPE $PROXIE" | sed 's/:/ /'
    fi
}

LINES=`cat $1`
for LINE in $LINES; do
    check_proxy $LINE &
done
wait

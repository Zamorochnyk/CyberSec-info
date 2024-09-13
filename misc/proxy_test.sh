#!/bin/bash
check_proxy() {
    IS_ALIVE=$(echo `curl -m $3 -f -s -x $2://$1 http://www.example.com/`)
    if [[ -n $IS_ALIVE  ]]; then
        echo $1 >> alive.txt
    fi
}

LINES=`cat $1`

for LINE in $LINES; do
    check_proxy $LINE $2 $3 &
done

wait
echo 'done'
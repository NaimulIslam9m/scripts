#!/bin/bash

discon=0

while :; do
    if [[ `ping -c 1 8.8.8.8 | grep packet | awk '{print $4}'` -eq 1 ]]; then
        if [[ discon -eq 1 ]] ; then
            echo ""
            discon=0
        fi
        echo ✅
        say 'sir, you are connected'
        # break
    else
        printf ❎
        discon=1
    fi
done

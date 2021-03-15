#!/bin/bash

discon=0
up=1

while :; do
    if [[ `ping -c 1 8.8.8.8 | grep packet | awk '{print $4}'` -eq 1 ]]; then
        if [[ discon -eq 1 ]] ; then
            say "sir, you are connected"
            echo ""
            discon=0
        fi
        echo ✅ $up
        ((up+=1))
        # break
    else
        printf ❎
        discon=1
        up=1
    fi
done

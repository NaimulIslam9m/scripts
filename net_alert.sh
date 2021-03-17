#!/bin/bash

discon=0
first=1
up=1

if [[ `ping -c 1 8.8.8.8 | wc -l` -eq 0 ]]; then
    say "sir, please check your internet connection"
    exit
fi

while :; do
    if [[ `ping -c 1 8.8.8.8 | grep packet | awk '{print $4}'` -eq 1
        || `ping -c 1 8.8.4.4 | grep packet | awk '{print $4}'` -eq 1 ]]; then

        if [[ discon -eq 1 || first -eq 1 ]]; then
            say "sir, you are connected"
            if [[ discon -eq 1 ]]; then
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
#!/bin/bash

x=1

while :; do
    if [ `ping -c 1 $1 | grep packet | awk '{print $4}'` -eq 1 ]; then
        say 'sir, you are connected'
        break
    else
        echo $x
        ((x+=1))
    fi
done

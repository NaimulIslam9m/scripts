#!/bin/bash

if [[ ${#} != 1 ]]; then
    echo "Bad Syntex. Usage: ${0} <domain name> (e.g. ${0} github.com)"
    exit
fi


if [[ `dig ${1} | grep ANSWER | wc -l` -eq 2 ]]; then

    x=1
    while :; do
        if [[ `ping -c 1 ${1} | grep packet | awk '{print $4}'` -eq 1 ]]; then
            say 'sir, you are connected'
            break
        else
            echo $x
            ((x+=1))
        fi
    done

else
    echo "INVALID DOMAIN NAME"
fi
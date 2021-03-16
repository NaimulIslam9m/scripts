#!/bin/bash

if [[ ${#} != 1 ]]; then
    echo "Bad Syntex. Usage: ${0} <domain name> (e.g. ${0} github.com)"
    exit
fi


if [[ -z "`dig +short ${1}`" ]]; then
    echo "INVALID DOMAIN NAME"
else
    x=1
    while :; do
        if [[ `ping -c 1 ${1} | grep packet | awk '{print $4}'` -eq 1 ]]; then
            say 'sir, you are connected' &> /dev/null
            break
        else
            echo $x
            ((x+=1))
        fi
    done
fi
#!/bin/bash

printf "ENTER THE 'DOMAIN NAME' YOU WANT TO CHECK: "
read input


if [[ `dig $input | grep ANSWER | wc -l` -eq 2 ]]; then

    x=1
    while :; do
        if [[ `ping -c 1 $input | grep packet | awk '{print $4}'` -eq 1 ]]; then
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
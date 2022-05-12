#!/usr/bin/bash
if [ $# -eq 2 ]; then
    username='NaimulIslam9m'
    git remote set-url origin https://$username:$1@github.com/$username/$2
    git remote -v
    echo 'OK'
else
    echo "usage: ./set_key.sh <key> <repo name>"
fi

#!/usr/bin/bash
echo "usage: ./set_key.sh <key> <repo name>"
username='NaimulIslam9m'
git remote set-url origin https://$username:$1@github.com/$username/$2

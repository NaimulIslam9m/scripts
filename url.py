#!/usr/bin/env python3

import requests
import argparse

parser = argparse.ArgumentParser()

parser.add_argument("-srt", type=str, help="shorten the url")
parser.add_argument("-usrt", type=str, help="unshorten the url")

args = parser.parse_args()


def shorten_url(url):
    api_url = "http://tinyurl.com/api-create.php?url=" + url
    response = requests.get(api_url)
    return response.text


def unshorten_url(url):
    api_url = "https://unshorten.me/s/" + url
    response = requests.get(api_url).text
    return response


if args.srt != None:
    print(shorten_url(args.srt))
elif args.usrt != None:
    print(unshorten_url(args.usrt))

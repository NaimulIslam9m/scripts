#!/usr/bin/env python3

import requests
import argparse
import urllib.parse

parser = argparse.ArgumentParser()

parser.add_argument("-sort", type=str, help="shorten the url")
parser.add_argument("-usort", type=str, help="unshorten the url")
parser.add_argument("-enc", type=str, help="encode the url")
parser.add_argument("-dec", type=str, help="decode the url")

args = parser.parse_args()


def shorten_url(url):
    api_url = "http://tinyurl.com/api-create.php?url=" + url
    response = requests.get(api_url)
    return response.text


def unshorten_url(url):
    api_url = "https://unshorten.me/s/" + url
    response = requests.get(api_url).text
    return response


def decode_url(url):
    return urllib.parse.unquote(url, encoding="utf-8")


def encode_url(url):
    return urllib.parse.quote(url, safe="", encoding="utf-8")


if args.sort != None:
    print(shorten_url(args.sort))
elif args.usort != None:
    print(unshorten_url(args.usort))
elif args.enc != None:
    print(encode_url(args.enc))
elif args.dec != None:
    print(encode_url(args.dec))

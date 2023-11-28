#!/usr/bin/python3

import json

def main():
    str = input("Provide unminified JSON: ")
    unminified = json.loads(str)
    print(json.dumps(unminified, indent = 2))

main()

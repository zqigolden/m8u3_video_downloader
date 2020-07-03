#!/usr/bin/env python3
import urllib.parse
import sys
print(urllib.parse.unquote(sys.argv[1].replace('%u', '\\u'), encoding='unicode_escape'))

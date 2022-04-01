#!/bin/bash
#parses amixer get master output
#returns master volume as #%
amixer get Master | awk 'NR==6{gsub(/\[|\]/,"");print $5}'

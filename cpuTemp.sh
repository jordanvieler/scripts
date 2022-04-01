#! /bin/bash

sensors coretemp-isa-0000 | awk 'NR==3{gsub("+","");print $4}'

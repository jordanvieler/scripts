#! /bin/bash

free | awk 'NR==2{printf "%.2f\n", ($2-$7)/$2*100}'

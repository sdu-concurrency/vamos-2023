#!/bin/sh

pattern='\{% *include *'
for include in _includes/*.html;
do
    count=$(rg -c "$pattern$(basename $include)" | wc -l)
    if [ "$count" -eq 0 ]; then
        echo "Unused include: $include"
        rm "$include"
    fi
done

#!/bin/bash

res=0

for fn in `find $2 -regex ".*\.$1"`; do
    line=`wc -l $fn | awk -F " " '{print $1}'`
    res=$(( $res + $line ))
done

echo $res
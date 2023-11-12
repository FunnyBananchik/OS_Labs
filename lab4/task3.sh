﻿#!/bin/bash

data=$(grep -h "$2" labfiles/$1/*-attendance  | awk -F " " '{print $2}')
i=0
echo 'Номера пропущенных занятий'
while [ $i -lt ${#data} ]
do
if [ ${data:i:1} -eq 0 ]
then 
if [ $((i+2)) -ne ${#data} ]
then
echo -n "$((i+1)), "
else
echo -n "$((i+1))"
fi
fi
((i++))
done

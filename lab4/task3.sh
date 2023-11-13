#!/bin/bash

data=$(grep -h "$2" labfiles/$1/*-attendance  | awk -F " " '{print $2}')
i=0
kol=0
echo 'Номера пропущенных занятий'
while [ $i -lt ${#data} ]
do
if [ "${data:i:1}" == "0" ]
then 
((kol++))
if [ $kol -eq 1 ]
then
echo -n "$((i+1))"
elif [ $kol -gt 1 ]
then
echo -n ", $((i+1))"
fi
elif [ $kol -eq 0 ] && [ $i -eq 17 ]
then
echo 'Нет пропущенных занятий'
fi
((i++))
done

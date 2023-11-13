#!/bin/bash

grep -h "$2" labfiles/$1/tests/TEST* | grep "${3}$" > grep.txt
declare -A students
for n in $(cat grep.txt)
do
p=$(echo $n | awk -F ";" '{print $2}')
students[$p]=$(grep -c "$p" grep.txt)
done
#${students[@]} | sort 
for value in "${students[@]}"
do
echo $value >> mas.txt
done
max=$(sort -r mas.txt | head -1)
echo "Максимальное кол-во оценок $3 = $max"
for student in "${!students[@]}"
do
#echo ${students[$student]}
if ((${students[$student]} == max))
then 
echo $student >> res.txt
fi
done
cat res.txt | sort
rm -f grep.txt mas.txt res.txt
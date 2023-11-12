#!/bin/bash
for i in {1..4}
do
unset students
declare -A students
echo Test-$i
grep  "$2" labfiles/$1/tests/TEST-$i | grep "2$" > grep.txt
for n in $(cat grep.txt)
do
p=$(echo $n | awk -F ";" '{print $2}')
students[$p]=$(grep -c "$p" grep.txt)
done
for key in "${!students[@]}"
do
echo $key >> vivod.txt
done
cat vivod.txt | sort
echo '------------------------------------------------------'
rm -f grep.txt vivod.txt
done

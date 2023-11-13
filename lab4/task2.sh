#!/bin/bash
for i in {1..4}
do
grep "$2" labfiles/$1/tests/TEST-$i | grep 2$ | awk -F ";" '{print $2}' | uniq > grep$i.txt
done
cat grep*.txt | sort | uniq > grep.txt
for student in $(cat grep.txt)
do
str="${student}"
for i in {1..4}
do
count=$(grep -c ${student} grep$i.txt)
if ((count != 0))
then
str="${str} $i"
fi
done
echo "${str}"
done
rm -rf grep*.txt
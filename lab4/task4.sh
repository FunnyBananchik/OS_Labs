#!/bin/bash
echo 'Введите номер группы или нажмите ENTER (для поиска во всех группах) '
read Ngroup
if [ -z $Ngroup ]
then
grep -h . labfiles/students/groups/* > grep.txt
else
grep -h .  labfiles/students/groups/${Ngroup} > grep.txt
fi
cat grep.txt | awk '{ print 30-length, $0 }' | sort -k 1 -n -k 2  |uniq |cut -d" " -f2- | head -10 > res.txt
n=$(grep -h -c . res.txt)
i=0
while [ $i -lt $n ]
do
echo "$((i+1)). $(tail -$((n-i)) res.txt | head -1)"
((i++))
done
rm -f grep.txt res.txt

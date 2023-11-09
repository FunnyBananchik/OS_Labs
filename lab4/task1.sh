#!/bin/bash

echo 'Введите название предмета'
read  SubjectName
echo 'Введите номер группы'
read Ngroup
echo 'Введите искомую оценку'
read  Score
grep -h "${Ngroup}" labfiles/$SubjectName/tests/TEST* | grep "${Score}$" > grep.txt
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
echo "Максимальное кол-во оценок $Score = $max"
for student in "${!students[@]}"
do
#echo ${students[$student]}
if ((${students[$student]} == max))
then 
echo $student
fi
done
rm -f grep.txt mas.txt 
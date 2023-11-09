cd ..
echo ----------------------------------------------*task1_test
echo ----------------------------------------------*test1
diff <(bash task1.sh) <(echo -e "Максимальное кол-во оценок 4 = 3\nKrivosheevAV") -s
echo ----------------------------------------------*test2
diff <(bash task1.sh) <(echo -e "Максимальное кол-во оценок 5 = 3\nSanjiyevMJ\nDereberiaTM") -s
cd tests
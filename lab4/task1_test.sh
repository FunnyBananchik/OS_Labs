echo --------------------------------------------------------------------------------------------*task1_tests
echo ----------------------------------------------*test1
diff <(bash task1.sh Пивоварение A-06-20 5) <(echo -e "Максимальное кол-во оценок 5 = 3\nDereberiaTM\nSanjiyevMJ") -s
echo ----------------------------------------------*test2
diff <(bash task1.sh Пивоварение A-06-20 4) <(echo -e "Максимальное кол-во оценок 4 = 3\nKrivosheevAV") -s
echo ----------------------------------------------*test3
diff <(bash task1.sh Пивоварение A-06-20 3) <(echo -e "Максимальное кол-во оценок 3 = 2\nBespalovML\nDavydovAlD\nDolgyAV\nYankinMI\nZinchenkoSK") -s
echo ----------------------------------------------*test4
diff <(bash task1.sh Криптозоология A-06-08 3) <(echo -e "Максимальное кол-во оценок 3 = 3\nDubovNO") -s
echo ----------------------------------------------*test5
diff <(bash task1.sh Криптозоология A-09-20 4) <(echo -e "Максимальное кол-во оценок 4 = 4\nBijoyA") -s
echo ----------------------------------------------*test6
diff <(bash task1.sh Криптозоология A-09-19 5) <(echo -e "Максимальное кол-во оценок 5 = 3\nKhodeevYI\nOsipovYegY\nRybtsovaAV") -s
echo ----------------------------------------------*test7
diff <(bash task1.sh Пивоварение A-F-K 5) <(echo -e "Максимальное кол-во оценок 5 = 1\nAwesomeBL") -s
echo ----------------------------------------------*test8
diff <(bash task1.sh Пивоварение A-F-K 4) <(echo -e "Максимальное кол-во оценок 4 = 1\nNiceDK") -s
echo ----------------------------------------------*test9
diff <(bash task1.sh Пивоварение A-F-K 3) <(echo -e "Нет людей, получивших оценку 3") -s

# grep -h A-F-K labfiles/Криптозоология/tests/TEST-* | grep 4$ | awk -F ";" '{print $2}' | sort
#!/bin/bash

echo "==============================================="
echo "STUDENT DATA ANALYSIS - PART 2"
echo "==============================================="
echo ""

echo "1. DISPLAYING FILE CONTENTS:"
echo "-----------------------------------"
cat students.csv
echo ""

echo "2. FIRST 5 LINES OF THE FILE:"
echo "-----------------------------------"
head -5 students.csv
echo ""

echo "3. LAST 3 LINES OF THE FILE:"
echo "-----------------------------------"
tail -3 students.csv
echo ""

echo "4. LINE COUNT:"
echo "-----------------------------------"
echo "Total lines: $(wc -l < students.csv)"
echo ""

echo "5. STUDENTS TAKING MATH:"
echo "-----------------------------------"
grep "Math" students.csv
echo ""

echo "6. FEMALE STUDENTS:"
echo "-----------------------------------"
grep ",F," students.csv
echo ""

echo "7. STUDENTS SORTED BY AGE (ASCENDING):"
echo "-----------------------------------"
head -1 students.csv
tail -n +2 students.csv | sort -t',' -k3 -n
echo ""

echo "8. UNIQUE SUBJECTS:"
echo "-----------------------------------"
tail -n +2 students.csv | cut -d',' -f6 | sort | uniq
echo ""

echo "9. AVERAGE GRADE:"
echo "-----------------------------------"
awk -F',' 'NR>1 {sum+=$5; count++} END {printf "Average Grade: %.2f\n", sum/count}' students.csv
echo ""

echo "10. FILE WITH 'MATH' REPLACED BY 'MATHEMATICS':"
echo "-----------------------------------"
sed 's/Math/Mathematics/g' students.csv
echo ""

echo "==============================================="
echo "END OF ANALYSIS"
echo "==============================================="

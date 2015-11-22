#!/bin/bash

rm -f warnings.txt
rm -rf temp
mkdir -p temp

for i in *.cpp
do
    uncrustify -c uncrustify.cfg -f $i -o temp/$i
    ./cpplint.py --output=vs7 --linelength=120 temp/$i >> warnings.txt 2>&1
done

for i in *.c
do
    uncrustify -c uncrustify.cfg -f $i -o temp/$i
    ./cpplint.py --output=vs7 --linelength=120 temp/$i >> warnings.txt 2>&1
done

for i in *.h
do
    uncrustify -c uncrustify.cfg -f $i -o temp/$i
    ./cpplint.py --output=vs7 --linelength=120 temp/$i >> warnings.txt 2>&1
done



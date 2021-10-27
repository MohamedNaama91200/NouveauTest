#! /bin/bash

if [ ! -e  arene.txt ];then
    echo "Erreur !"
    exit 1
fi

rm -f tube-$pidInitial-*

while read line;do

    kill -USR1 $line
done < arene.txt
rm arene.txt





exit 0

#! /bin/bash


if [ $# -ne 1 ] || [ -d $1 ];then
    echo "Un message d'erreur adequat" >&2
    exit 1
fi


echo "0" >"$1"

while true;do

    read n <"$1"
    n=$(expr $n + 1)
    echo "$n" >"$1"
    sleep 1

    

    
done


exit 0




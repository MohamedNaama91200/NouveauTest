#! /bin/bash

base="/home/mnaama/CarnetsDeVoyage"


#echo $base/19[7-9][[:digit:]][-_][[:upper:]]*



size=0
for x in $base/19[7-9][[:digit:]][-_][[:upper:]]*;do
   
    if [ -d $x ];then
	
	cur=$(du -d0 $x | cut -f1) #car du est une commande imbriquée
        if [ $size -lt $cur ];then
	    size=$cur
	    rep=$x
	fi
    fi
	
	
	
done

#echo $rep


#find $rep -name "*Itineraire*" -print

for x in $(find $rep -type f -name "*Itineraire*" -print);do

    if grep "Bilbon" $x >/dev/null;then
	cat $x | grep "à" | sort | head -n 3 | cut -c1 | tr -d '\n'
	cle=$x
	
    fi
    
done
#cat  $cle





    grep . $cle | sort -k 3,3 > Itineraire_trie.txt
    head -n 2 Itineraire_trie.txt > Itineraire_trie_compact.txt
    tail -n 2 Itineraire_trie.txt >> Itineraire_trie_compact.txt
    mots=$(cut -d' ' -f3 Itineraire_trie_compact.txt)

    #echo $mots
    
tresor=$base
for x in $mots;do

   tresor="$tresor""/""$x"
done

cat $tresor
    

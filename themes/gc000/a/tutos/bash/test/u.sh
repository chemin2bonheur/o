#!/bin/bash

LC_NUMERIC='C'
lettre='Z'

alphabet[$lettre]=529
somme=25000

#pct=$(echo "${alphabet[$lettre]}/$somme" | bc -l)
pct=$(printf '%.3f' $(echo "${alphabet[$lettre]}/$somme" | bc -l))

echo ''
echo 'Résultat = ' $pct







#a=2; b=3; [ $a == $b ] && c='oui' || c='non'
#echo $c

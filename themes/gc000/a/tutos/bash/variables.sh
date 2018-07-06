#!/bin/bash

#read -p 'Nom ? ' nom
nom='Lionel'

message=`pwd`
if [ $nom = 'Lionel' ]
then
echo "Bonjour $nom, Vous êtes dans le dossier $message"
fi

let "a = 5"
let "b = 2"
let "c = a + b"
echo "La somme de 5 + 2 est " $c

# Limité à 9, les paramètres peuvent être décalé à gauche avec shift
echo "Vous avez lancé $0, il y a $# paramètres"
echo "Le paramètre 1 est $1"

tableau=('valeur0' 'valeur1' 'valeur2')
echo ${tableau[2]}

echo ${tableau[*]}

if [ -z $1 ] || [ -z $2 ]; then
	echo "Vous pouvez mettre 2-3 paramètres..."
elif [ $1 != $2 ]; then
	        echo "Les 2 paramètres sont différents !"
else
		echo "Les 2 paramètres sont identiques !"
fi


for variable in 'valeur1' 'valeur2' 'valeur3'
do
        echo "La variable vaut $variable"
done


for animal in 'chien' 'souris' 'moineau'
do
	        echo "Animal en cours d'analyse : $animal"
	done

for fichier in `ls v*`
do
        echo "Fichier trouvé : $fichier"
	# Le ligne ci-dessous renomme tous les fichiers du répertoire
	# mv $fichier $fichier-old
done

# 1 3 5 7 9
for i in `seq 1 2 10`;
 	do
  	echo $i
	done


#while [ -z $reponse ] || [ $reponse != 'o' ]
#do
#        read -p 'Dites o : ' reponse
#done

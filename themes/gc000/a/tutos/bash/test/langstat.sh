#!/bin/bash

echo ''
echo "Bienvenue dans le script de statistique de l'usage des lettres"
echo ''
echo "./langstat.sh [-d] [-h] [-dh] [-hd] [NomDUnFichier]"
echo ''
echo '(Ordre des options indifférent - Ctrl + c et Flèche en haut pour relancer sans executer)'
echo ''

#Initialisation des variables
default='dico.txt'
dico=''
messagei="Taper ENTER ou saisir le nom d'un autre fichier"
message=$messagei
somme=0

# Debug: Affichage des params fournis (Nombre & liste)
# echo "$* $#"


#Analyse des options en paramètre(s)
for i in $*;
    do
        let pos+=1
#        echo $i
        case $i in
            -d)
              details=1
            ;;
            -h)
              help=1
            ;;
            -dh|-hd)
              details=1
              help=1
            ;;
            *)
            file=$i
            shift;
            pos=$pos
        esac
    done
#details=1

# Récupération du nom d'un fichier si transmis
if [[ ! -z $file && $pos -gt 1 ]]; then
  for i in "1..$pos"
    do
      shift;
    done
fi

# Si oui, on le considère comme le nouveau défault
if [ ! -z $file ]; then
  default=$file
fi

# Affichage de l'aide détaillée si -h
if [ $help ]; then
    echo 'Aide concernant les options:'
    echo ''
    echo '[NomDUnFichier] Pour choisir un autre fichier de mots que celui par défaut'
    echo '[-d]            Pour avoir plus de détails (Pourcentage de l'"'"'utilisation de chaque lettre)'
    echo '[-h]            L'"'"'aide actuelle'
fi


#echo L69 / "Dft: $default - D: $details - H: $help"

# Fichier fourni non correct
if [[ ! -z $1 && ! -f $default ]]; then
  message="Fichier incorrect... $messagei"
    if [ ! -f $1 ]; then
      default=$1
    fi
fi

# Invite d'accepter le default ou de founir autre nom de fichier
# A noter: Les options ne spont plus ici recevables
#TODO: En cas de script réel, cela serait à développer...
while [[ ! -f "$dico" && ! -z $message ]]
do
    if [ -f $default ]; then
        messagei="Taper ENTER ou saisir le nom d'un autre fichier"
    else message="Veuillez saisir un nom de fichier correct"
    fi

    echo ''
    # Demande de confirmer fichier par défaut ou saisir nom
    read -p 'Fichier à analyser ? [ '"$default ($message)"' ] ' saisi

    # Gestion des erreur sur le nom du fichier
    if [[ -f $saisi ]]; then
        message=''
        dico=$saisi
    elif [[ ! -z $saisi && ! -f $saisi ]]; then
        message="$saisi, saisi juste avant, n'est pas un fichier correct... $messagei"
        saisi=$default

    # Choix ou saisie OK
    elif [[ -z $saisi && -f $default ]]; then
        message=''
        dico=$default

    # Cas où re-erreur ds la saisie
    else
        echo '?!? (Re !)'
    fi
done

#Préparation du tableau qui contient le comptage de chaque lettre
declare -A alphabet

#Comptage des occurences de toutes les lettres dans le fichier
for i in {A..Z};
    do
        alphabet[$i]=$(grep -c $i <$dico);
        if [ $details ]; then
            let "somme=${alphabet[$i]} + $somme"
        fi
    done

echo ''
# Prépa de la sortie + tri comme demandé
for lettre in "${!alphabet[@]}"; do

    if [ $details ]; then

#        echo L130 / "Dft: $default - D: $details - H: $help"
        # Calcul de la valeur du pourcentage
        pct=$( echo "100*${alphabet[$lettre]}/$somme" | bc -l)

        # Ajoût du 0 unitaire le cas échéant
        if [ 1 -eq "$(echo "${pct} < 1" | bc)" ]; then
            pct='0'$pct
        fi
        # Préparation de la chaîne du %
        pct=$(echo ' | '"$pct"' %')

    fi
    # Affichage de la ligne
    printf '%s \t|   %s \t%s' "${alphabet[$lettre]}" "$lettre" "$pct"
    echo ''
done | sort -nrt -

if [ $details ]; then
    echo '-------------------------------------------'
    echo $somme ' = Total de toutes les lettres'
fi

printf '\nLégende:\nNbre d'\''utilisations - Lettre\n'

echo ''

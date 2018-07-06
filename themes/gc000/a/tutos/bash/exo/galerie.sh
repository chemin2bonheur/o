#!/bin/bash

# Vérification des paramètres
# S'ils sont absents, on met une valeur par défaut

if [ -z $1 ]; then
    sortie='galerie.html'
else
    sortie="$1.html"
fi

# Préparation des fichiers et dossiers

echo '' > $sortie

if [ ! -e miniatures ]; then
	mkdir miniatures
fi

# En-tête HTML

echo '<!DOCTYPE html>
<html lang="fr" >
<head>
    <title>Ma galerie</title>
	<meta charset="utf-8" />
    <style type="text/css">
        a img { border:0; }
    </style>
</head>

    <body><p>' >> $sortie

    # Génération des miniatures et de la page

    for image in `ls *.png *.jpg *.jpeg *.gif 2>/dev/null`
	do
	    convert $image -thumbnail '200x200>' miniatures/$image
		echo '<a target="_blank" href="'$image'"><img src="miniatures/'$image'" alt="" /> </a> '>> $sortie
	done

	# Pied de page HTML

	echo '</p>
    </body>
</html>' >> $sortie

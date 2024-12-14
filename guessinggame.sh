#!/bin/bash

function guessing_game {
    local correct_count=$(ls -1 | wc -l)
    local guess=-1

    echo "Bienvenue au jeu de devinettes!"
    echo "Devinez combien de fichiers se trouvent dans le répertoire actuel :"

    while [[ $guess -ne $correct_count ]]; do
        read -p "Votre estimation : " guess
        if [[ $guess -lt $correct_count ]]; then
            echo "Trop bas. Essayez encore."
        elif [[ $guess -gt $correct_count ]]; then
            echo "Trop haut. Essayez encore."
        else
            echo "Félicitations! Vous avez deviné correctement."
        fi
    done
}

guessing_game

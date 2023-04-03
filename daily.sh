#!/bin/bash

# A napirendünk tartalmát ebben a fájlban tároljuk
file="napirend.txt"

# Ellenőrizzük, hogy létezik-e a fájl, ha nem, létrehozzuk
if [ ! -f $file ]; then
    touch $file
fi

# Kilistázzuk a napirendet
function list {
    echo "A napirended:"
    echo "--------------"
    cat $file
}

# Hozzáadjuk az új feladatot a napirendhez
function add {
    echo "Add meg az új feladatot:"
    read task
    echo $task >> $file
    echo "Feladat hozzáadva a napirendhez."
}

# Töröljük a megadott feladatot a napirendből
function remove {
    echo "Add meg a törölni kívánt feladat sorszámát:"
    read num
    sed -i "${num}d" $file
    echo "Feladat törölve a napirendből."
}

# Az alkalmazás főciklusa
while true
do
    echo ""
    echo "Mit szeretnél tenni?"
    echo "1. Napirend kilistázása"
    echo "2. Új feladat hozzáadása"
    echo "3. Feladat törlése"
    echo "4. Kilépés"
    read choice

    case $choice in
        1) list;;
        2) add;;
        3) remove;;
        4) exit;;
        *) echo "Nem értem a parancsot.";;
    esac
done

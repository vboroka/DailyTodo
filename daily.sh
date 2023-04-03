#!/bin/bash

# Az "napirend.txt" fájl beolvasása a "napirend" tömbbe
IFS=$'\n' read -d '' -r -a napirend < napirend.txt

# Az "add_task" függvény, amely lehetővé teszi az új napirendi tétel hozzáadását a "napirend" tömbhöz
function add_task {
    echo "Add meg az új tételt:"
    read new_task
    napirend+=("$new_task")
    echo "Az új tétel hozzáadva az alábbiakhoz:"
    echo "${napirend[@]}"
}

# A "remove_task" függvénnyel feladatokat lehet eltávolítani a napirendből
function remove_task {
    echo "Melyik tételt szeretnéd törölni? Adja meg a sorszámát:"
    read index
    unset napirend[$index-1]
    echo "A kiválasztott tétel törölve lett. Az új napirend:"
    echo "${napirend[@]}"
}

# A "show_list" függvény kiíratja a napirendet.
function show_list {
    echo "A napirend:"
    echo "${napirend[@]}"
}

# A "show_menu" függvény jeleníti meg nekünk azokat az opciókat, amelyeke
function show_menu {
    echo "Napirend alkalmazás"
    echo "-------------------"
    echo "1. Napirend megjelenítése"
    echo "2. Napirendi tétel hozzáadása"
    echo "3. Napirendi tétel törlése"
    echo "4. Kilépés"
    echo "-------------------"
    echo
    echo -n "Válassz egy menüpontot [1-4]: "
}

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

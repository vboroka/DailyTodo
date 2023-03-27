#!/bin/bash

# Az "napirend.txt" fájl beolvasása a "napirend" tömbbe
IFS=$'\n' read -d '' -r -a napirend < napirend.txt

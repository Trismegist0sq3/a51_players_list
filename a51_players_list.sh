# Name     :  qao_players_list.sh
# Date     :  2/2/24
# Author   :  Trismegist0s
# Purpose  :  List (real) players on THE NECROPOLIS

#!/bin/bash

# Define an array of names to exclude
declare -a exclude_patterns=(
    "56kdecoy"
    ">Demon<" 
    "\*FD\*DefT" 
    "\[frldge\]"
    "\[GI\]dook\."
    "Anarki"
    "Angel"
    "anthony"
    "Austin Powers"
    "Biker"
    "Bitterman"
    "bloop"
    "Bones"
    "Brood700"
    "Cadavre"
    "Crash"
    "Daemia"
    "daisy"
    "Deft"
    "Doom"
    "EatMyLeg" 
    "Elimin8r"
    "EnDURAnCE" 
    "Flisk"
    "francis"
    "GnarlyBear"
    "Gorre"
    "Grrl"
    "Grunt"
    "Hossman"
    "Hunter"
    "InstantKarma" 
    "Jedi Knight"
    "JEVER" 
    "JOSHUA" 
    "Keel"
    "Klesk"
    "Krusade"
    "LovelyLisa"
    "LUAP" 
    "Lucy"
    "Maika"
    "Major"
    "mambo"
    "mangle"
    "meta"
    "MOON"
    "Mynx"
    "natalie portman"
    "nullpointer"
    "Orbb"
    "Paganini"
    "Patriot"
    "Phobos"
    "qog!wallabi" 
    "Ranger"
    "Razor"
    "rebel"
    "Red"
    "RESPONSE"
    "reyalp" 
    "Roderic"
    "Sarge"
    "Scabi" 
    "SiTTiNDuCK" 
    "Slammer"
    "Slash"
    "SleepSter"
    "Sorlag"
    "Soul|eNdo!" 
    "sparky"
    "SquishyTomato"
    "Stripe"
    "Stroggo"
    "TankJr"
    "tekros" 
    "Tezcatlipoca"
    "TH0R"
    "TigraoCavaludo" 
    "tulip"
    "Turgit"  
    "Uriel"
    "uuuuu" 
    "Visor"
    "warpedspider" 
    "Wrack"
    "Xaero"
    "XanaX" 
    "Yuriko"
)

# Join the patterns into a single string separated by '|'
pattern=$(IFS='|'; echo "${exclude_patterns[*]}")

# Execute the qstat command, exclude the first line, and filter the output
/usr/bin/qstat -q3s ffa.q3a51.com:27960 -P | awk '{for (i=4; i<=NF; i++) printf "%s ", $i; printf "\n"}' | grep -E -v "$pattern" | sed '1d'
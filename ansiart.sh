#!/bin/bash

# ANSI Art -----------------------------

# Colourful text art for ssh welcome screens etc. – Pete Fagan / beeblepete / pjfdirect

# ANSI escape codes are non-spaced attributes (they don't take up any character space on
# the line) that act upon the visible (and spaced whitespace) characters. 

# \e[38;5;9;48;5;255m▄
# This example results in a red lower-half-block character on a white background:
# escapeCodeInitialBytes 38:selectForeground; 5:selectColour; colorID;
#                        48:selectBackground; 5:selectColour; colorID finalByte▄
# m is the 'final byte' of the escape sequence instead of ] because reasons.

# ANSI colour IDs including the two used above can be found here:
# https://en.wikipedia.org/wiki/ANSI_escape_code#8-bit

# This special esc code resets the character display mode of the terminal to its default
# settings. It's useful at the end of a line when you're done drawing pretty blocks and
# you want the remainder of the line to go back to being normal text.
# \e[0m

# Cast of characters:
# upper half-block (▀)
# lower half-block (▄)
# block            (█)
# space            ( )

clear # screen for dev

# Artwork ------------------------------

# pixel maid by @mogemimi
# enginetrouble.net/pixelart.html
# palette adapted to ANSI 8-bit

clf='\e[38;5;0'   # clear foreground
whf='\e[38;5;255' # white
grf='\e[38;5;251' # grey
dgf='\e[38;5;238' # dark grey
skf='\e[38;5;224' # skin tone
mtf='\e[38;5;181' # mid  tone
rof='\e[38;5;211' # rosy skin
brf='\e[38;5;138' # brown
dbf='\e[38;5;95'  # dark brown
clb=';48;5;0m'    # clear background
whb=';48;5;255m'  # white
grb=';48;5;251m'  # grey
dgb=';48;5;238m'  # dark grey
skb=';48;5;224m'  # skin tone
mtb=';48;5;181m'  # mid  tone
rob=';48;5;211m'  # rosy skin
brb=';48;5;138m'  # brown
dbb=';48;5;95m'   # dark brown
res='\e[0m'       # reset colouring

# Design rows. Var template: $•f$•b
# Handy hint: use a huge terminal
# font size during development. 

artrow01="   $whf$clb▄▄$whf$whb██$whf$clb▄$whf$whb██$whf$clb▄▄$res"
artrow02="$brf$clb ▄$whf$whb██$brf$whb▄▄▄▄▄▄$whf$whb███$brf$clb▄$res"
artrow03="$brf$clb▄$whf$whb█$brf$brb█████████$brf$whb▄$whf$whb██$brf$clb▄$res"
artrow04="$brf$brb███████$skf$brb▄$brf$brb████$whf$whb█$brf$brb██$res"
artrow05="$brf$clb▀$brf$brb█$dbf$dbb█$brf$brb█$mtf$whb▀$mtf$dgb▀$skf$skb██$mtf$whb▀$mtf$dgb▀$skf$skb█$brf$brb████$res"
artrow06=" $brf$brb█$dbf$dbb█$rof$skb▄$whf$whb█$dgf$dgb█$skf$skb██$whf$whb█$dgf$dgb█$rof$skb▄$brf$brb████$res"
artrow07=" $brf$brb█$dbf$dbb██$skf$dbb▀$skf$skb█$rof$skb▄$skf$skb██$skf$dbb▀$brf$brb██$brf$dbb▀$dbf$clb▀$res"
artrow08="  $dbf$clb▀ $dgf$clb▄$whf$clb▄$skf$skb███$whf$whb█$dgf$dgb█$dgf$clb▄$res"
artrow09="    $dgf$dgb█$whf$dgb▀$skf$whb▀$mtf$whb▀$skf$whb▀$whf$dgb▀$dgf$dgb██$res"
artrow10="   $whf$whb█$dgf$dgb██████$dgf$clb▀$dgf$dgb█$whf$whb█$whf$clb▄$res"
artrow11="  $skf$clb▀$skf$skb█$whf$whb██████$dgf$whb▀$whf$dgb▀▀$whf$skb▀$skf$skb█$skf$clb▀$res"
artrow12="  $dgf$clb▄$dgf$dgb█$whf$whb██████$whf$dgb▀$dgf$dgb███$whf$clb▄$res"
artrow13=" $whf$clb▀$whf$dgb▄▄$dgf$dgb███████$whf$dgb▄▄▄$whf$clb▀$res"
artrow14="    $whf$clb▀$whf$grb▀▀$whf$clb▀▀$whf$grb▀▀▀$res"
artrow15="     $whf$whb███$clf$clb  $whf$whb██$whf$clb▄$res"
artrow16="      $whf$whb██$clf$clb   $whf$whb██$whf$clb▄$res"
artrow17="     $dgf$clb▄$dgf$dgb██$clf$clb   $dgf$clb▀$dgf$dgb██$res"

# Draw rows. The art row vars can be placed beside other text, eg.
# echo -e "╔════════════════════╗          "
# echo -e "║      Main Menu     ║ $artrow01"
# echo -e "║      ━━━━━━━━━     ║ $artrow02"
# -e tells echo to process the esc codes that colour the characters.
# Caveat: the vars must be used inside quotes, otherwise echo will
# trim the whitespace from the vars and the art will look lopsided.

echo -e "$artrow01"
echo -e "$artrow02"
echo -e "$artrow03"
echo -e "$artrow04"
echo -e "$artrow05"
echo -e "$artrow06"
echo -e "$artrow07"
echo -e "$artrow08"
echo -e "$artrow09"
echo -e "$artrow10"
echo -e "$artrow11"
echo -e "$artrow12"
echo -e "$artrow13"
echo -e "$artrow14"
echo -e "$artrow15"
echo -e "$artrow16"
echo -e "$artrow17"

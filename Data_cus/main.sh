#!/bin/bash
banner(){
    clear
    echo -e "\e[32m$(figlet "Tercus")\e[0m"
}

######################################################################
########################{COLOR}#######################################
######################################################################
red="\e[31m"
green="\e[32m"
yellow="\e[33m"
blue="\e[34m"
purple="\e[35m"
cyan="\e[36m"
Cl="\e[0m" 
######################################################################


AI="[${purple}SPIDY_Tercus${Cl}]${green}>${Cl}"
END_AI="${green}<${Cl}]" 

AI_text(){
    text_ai=$1
    echo -ne "$AI"
    echo -ne "\e[31m${text_ai}\e[0m" | pv -qL 25;
    echo -ne "$END_AI"
    echo " "
}
    # echo -ne "[${green}$USER${Cl}]---[${purple}#${Cl}]>"
    # read -p '>' ans
intro(){
banner
AI_text "Welcome to Tercus"
sleep 2
echo -e "${AI}${yellow}Choose any one option${Cl}$END_AI"
echo -e "[${green}TERMINAL${Cl}]----[${red}1${Cl}]"
echo -e "[${green}GURB${Cl}]----[${red}2${Cl}]"
    echo -ne "[${green}$USER${Cl}]---[${purple}#${Cl}]>"
    read -p '>' ans1
}

Terminal(){
     clear 
     banner
     xterm -hold -e cat /temp_cus/Data_cus/termi.txt &
    echo -ne "[${green}$USER${Cl}]---(Enter the code)---[${purple}#${Cl}]>"
    read -p '>' ans2
    sudo touch /temp_cus/Data_cus/code_cus.txt
    sudo echo "$ans2" > $HOME/code_cus.txt
    sudo mv $HOME/code_cus.txt /temp_cus/Data_cus/
    sudo python /temp_cus/Data_cus/convertor.py
    sudo cat /temp_cus/Data_cus/code_cus.txt
 
}
trans_promte1(){
         case "$ans1" in 
                1) AI_text "You selected no 1"
                     Terminal
                             ;;
                2) AI_text "You selected no 2"
                             ;;
                *) AI_text "You selected worng no"
                             ;;
         esac     
}

intro
trans_promte1




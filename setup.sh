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
sudo mkdir /temp_cus
Setup(){
    AI_text "SETUP"
    if [ -d "/temp_cus/Data_cus" ];then
         AI_text "Check 1"
         AI_text "${green}Done!${Cl}"
    else
         AI_text "Check 1"
         AI_text "Creating folder"
         sudo cp -r Data_cus /temp_cus/Data_cus
         AI_text "${green}Done!${Cl}"
         chmod +x /temp_cus/Data_cus/main.sh
    fi

    if [ -f "/temp_cus/Data_cus/.bashrc" ];then
           AI_text "Check 2"
           AI_text "${green}Done!${Cl}"
    else 
           AI_text "Check 2"
           AI_text "Creating file"
           sudo cp $HOME/.bashrc /temp_cus/Data_cus
           AI_text "${green}Done!${Cl}"
    fi
    if [ -f "/usr/local/bin/tercus" ];then
         AI_text "Check 3"
         AI_text "${green}Done!${Cl}"
    else
         AI_text "Check 3"
         sudo ln -sf /temp_cus/Data_cus/main.sh /usr/local/bin/tercus
         AI_text "${green}Done!${Cl}"
    fi

    sudo cp Data_cus/main.sh /temp_cus/Data_cus/main.sh
    sudo cp Data_cus/convertor.py /temp_cus/Data_cus/convertor.py
     AI_text "File has been updated!"    
}
banner
Setup
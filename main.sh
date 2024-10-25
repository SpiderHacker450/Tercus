#!/bin/bash

banner(){
    clear
    figlet "Termi_Custom"

}


intro(){
banner
echo "Welcome to Termi_Custom" | pv -qL 25;
sleep 2
}

Inter_f1(){
    
    banner
    echo "[@]---[Choose any one]"
    echo "[1]---[Terminal Customize]"
    echo "[2]---[Bootloader]" 
    echo "[3]---[Restore]"
    read -p '[@]-----[ENTER THE NUMBER]>' ans
    
}

trans_promte1(){
case "$ans" in 
       "1") echo "You selected no 1." 
             Terminal
       ;;
       "2") echo "You selected no 2."
       exit
       ;;
       "3") echo "You selected no 3."
              cp /Data_cus/old/.bashrc $HOME/
esac
}
# TERMINAL CUSTOM CODE

Terminal(){
  banner
  
 # folder="/Data_cus"

  # if [ -d "$folder"];then
  #       echo"   "
  # else
  #      sudo mkdir /Data_cus 
  # fi
  # folder1="/Data_cus/old"

  # if [ -d "$folder"];then
  #       echo"   "
  # else
  #      sudo mkdir /Data_cus/old
  # fi

  # file="/Data_cus/old/.bashrc"

  # if [ -f "$file"]; then
  #   echo "   "
  # else
  #   cp $HOME/.bashrc /Data_cus/old/
  # fi



  mkdir $HOME/Data_CUS
  cp /convertor.py $HOME/Data_CUS
  touch $HOME/Data_CUS/code_cus.txt
  cp /termi_cus.txt $HOME/Data_CUS/
  
  folder="/Data_cus"
  if [ -d "$folder"];then
        echo"   "
  else
       sudo mkdir /Data_cus 
  fi

  folder1="/Data_cus/old"
  if [ -d "$folder1"];then
        echo"   "
  else
       sudo mkdir /Data_cus/old
  fi

  file="/Data_cus/old/.bashrc"
  if [ -f "$file"]; then
    echo "   "
  else
    sudo cp $HOME/.bashrc /Data_cus/old/
  fi


  xterm -hold -e cat termi_cus.txt & 
  read -p '[#]---[Enter the code]>' code_cus
  sudo echo "$code_cus" > $HOME/Data_CUS/code_cus.txt
  sudo cp $HOME/Data_CUS/code_cus.txt /Data_cus
  sudo python $HOME/Data_CUS/convertor.py 
  sudo cp /Data_cus/code_cus.txt $HOME/Data_CUS

    
  sudo xterm -hold -e cat $HOME/Data_CUS/code_cus.txt

}



Inter_f2(){
   banner
}

# intro
# Inter_f1
# trans_promte1
Terminal

#!/bin/bash
source src/display/ascii.sh
source src/display/colors.sh

main(){
    clear
    echo -e "$Blue 🔓 $White Starting SCP-File-Manager... $Blue"
    echo -e " "
    echo -e "$White───────────────────────────────⮞ SCP-File Manager ⮜───────────────────────────────"
    echo -e "$Blue"
    display_ascii
    echo -e "$Blue"
    echo -e "$White───────────────────────────────⮞ SCP-File Manager ⮜───────────────────────────────"
    echo -e "$BBlue "

    read -p " #~ enter the ip-address : " address
    echo -e " "
    read -p " #~ enter the username : " username
    echo -e " "
    read -p " #~ enter the file name to copy : " file
    echo -e " "
    read -p " #~ enter the local destination folder : " destination

    echo -e "$Blue"
    echo -e "$White───────────────────────────────⮞ SCP-File Manager ⮜───────────────────────────────"
    echo -e "$BBlue"

    scp $username@$address:$file $destination

}
main
#!/bin/bash

greeting= echo "Would you like to update?[Y/n]"
read greeting

if [[ $greeting == "Y" || $greeting == "y" ]]; then
    sudo apt update && sudo apt upgrade -y
    continue= echo "Press any key to continue..."
    read continue
    clear
    neofetch
    echo \
    'System updated successfully!'
else
    echo "System will not update."
    echo ""
    continue2= echo "Clear terminal?"
    read continue2
        if [[ $continue2 == "Y" || $continue2 == "y" ]]; then
            clear
            neofetch
        else
        echo "Program Closed"
        fi

fi


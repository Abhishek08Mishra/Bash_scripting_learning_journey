#!/bin/bash

# ------------------------------------------------------------
# Task 1: Disk Usage Menu
# Goal: Learn `case` and basic system commands
# Instructions:
# 1. Show this menu:
#    1) Show disk usage
#    2) Show free memory
#    3) Show logged-in users
#    q) Quit
# 2. Use case to run:
#    1 → df -h
#    2 → free -h
#    3 → who
#    q → exit
# 3. Loop menu until user quits
# 4. Make input case-insensitive: choice=${choice,,}
# ------------------------------------------------------------


GREEN="\e[38;5;46m"      
RED="\e[38;5;196m"       
BLUE="\e[38;5;39m"      
PURPLE="\e[38;5;45m" 
CYAN="\e[38;5;51m"     
MAGENTA="\e[38;5;161m"
RESET="\e[0m"
BG_BLACK="\e[48;5;0m"

while true; do
    clear
    echo -e "${BG_BLACK}${GREEN}---------------------------------${RESET}"
    echo -e "${BG_BLACK}${MAGENTA} Select an option from the Menu :${RESET}"
    echo -e "${BG_BLACK}${GREEN}---------------------------------${RESET}"
    echo
    echo -e "${BG_BLACK}${CYAN} 1) Show disk usage ${RESET}"
    echo -e "${BG_BLACK}${CYAN} 2) Show free memory ${RESET}"
    echo -e "${BG_BLACK}${CYAN} 3) Show logged-in users ${RESET}" 
    echo -e "${BG_BLACK}${CYAN} 4) Show system uptime ${RESET}" 
    echo -e "${BG_BLACK}${CYAN} q) Quit ${RESET}"
    echo
    read -p "Enter your choice : " choice
    echo

    case "${choice,,}" in
        1)
            echo -e "${BG_BLACK}${BLUE}"
            df -h
            echo -e "${RESET}"
            ;;
        2)
            echo -e "${BG_BLACK}${BLUE}"
            free -h
            echo -e "${RESET}"
            ;;
        3)
            loginusers=$(who)
            echo -e "${BG_BLACK}${BLUE}"
            if [[ -z "$loginusers" ]]; then
                echo "No users are currently logged in."
            else
                echo "$loginusers"
            fi
            echo -e "${RESET}"
            ;;
        4)
            echo -e "${BG_BLACK}${BLUE}"
            uptime
            echo -e "${RESET}"
            ;;
        q)
            echo -e "${BG_BLACK}${GREEN}Exited from the program!${RESET}"
            break
            ;;
        *)
            echo -e "${BG_BLACK}${RED}Invalid option selection!${RESET}"
            ;;
    esac
    echo
    read -p "Press Enter to continue..."
done


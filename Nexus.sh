#!/bin/bash

# --- Colors ---
RED='\033[0;31m'
WHITE='\033[1;37m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
GREEN='\033[0;32m'
NC='\033[0m'

# --- Main Dashboard ---
main_menu() {
    while true; do
        clear
        echo -e "${RED}----------------------------------------------------------------${NC}"
        echo -e "${WHITE}   ███╗   ██╗███████╗██╗  ██╗██╗   ██╗███████╗${NC}"
        echo -e "${WHITE}   ████╗  ██║██╔════╝╚██╗██╔╝██║   ██║██╔════╝${NC}"
        echo -e "${WHITE}   ██╔██╗ ██║█████╗   ╚███╔╝ ██║   ██║███████╗${NC}"
        echo -e "${WHITE}   ██║╚██╗██║██╔══╝   ██╔██╗ ██║   ██║╚════██║${NC}"
        echo -e "${WHITE}   ██║ ╚████║███████╗██╔╝ ██╗╚██████╔╝███████║${NC}"
        echo -e "${WHITE}   ╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝ ╚═════╝ ╚══════╝${NC}"
        echo -e "                   ${CYAN}NEXUS Dashboard${NC}"
        echo -e "             ${RED}Made by Program AI Studio${NC}"
        echo -e "${RED}----------------------------------------------------------------${NC}"
        echo -e "  ${WHITE}[${RED}A${WHITE}] ${CYAN}TOOLS${NC}"
        echo -e "  ${WHITE}[${RED}B${WHITE}] ${CYAN}REAL-TIME VPS MAKER${NC}"
        echo -e "  ${WHITE}[${RED}C${WHITE}] ${CYAN}EXIT DASHBOARD${NC}"
        echo -e "${RED}----------------------------------------------------------------${NC}"
        
        # This fix helps mobile terminals ignore extra hidden characters
        echo -ne "${YELLOW}COMMAND >> ${NC}"
        read -r raw_opt
        main_opt=$(echo "$raw_opt" | tr -d '\r' | tr '[:lower:]' '[:upper:]')

        case "$main_opt" in
            A) tools_menu ;; 
            B) vps_maker_menu ;; 
            C) echo -e "${RED}Exiting...${NC}"; exit 0 ;;
            "") continue ;; # Ignore empty enter keys
            *) echo -e "${RED}Invalid command: '$main_opt'${NC}"; sleep 1 ;;
        esac
    done
}

# (Add your tools_menu and vps_maker_menu functions here)

main_menu        echo -e "${WHITE}   ██╔██╗ ██║█████╗   ╚███╔╝ ██║   ██║███████╗${NC}"
        echo -e "${WHITE}   ██║╚██╗██║██╔══╝   ██╔██╗ ██║   ██║╚════██║${NC}"
        echo -e "${WHITE}   ██║ ╚████║███████╗██╔╝ ██╗╚██████╔╝███████║${NC}"
        echo -e "${WHITE}   ╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝ ╚═════╝ ╚══════╝${NC}"
        echo -e "                   ${CYAN}NEXUS Dashboard${NC}"
        echo -e "             ${RED}Made by Program AI Studio${NC}"
        echo -e "${RED}----------------------------------------------------------------${NC}"
        echo -e "  ${WHITE}[${RED}A${WHITE}] ${CYAN}TOOLS${NC}"
        echo -e "  ${WHITE}[${RED}B${WHITE}] ${CYAN}REAL-TIME VPS MAKER${NC}"
        echo -e "  ${WHITE}[${RED}C${WHITE}] ${CYAN}EXIT DASHBOARD${NC}"
        echo -e "${RED}----------------------------------------------------------------${NC}"
        read -p "COMMAND >> " main_opt

        case $main_opt in
            [Aa]) tools_menu ;; 
            [Bb]) vps_maker_menu ;; 
            [Cc]) exit 0 ;;
            *) echo "Invalid command."; sleep 1 ;;
        esac
    done
}

main_menu

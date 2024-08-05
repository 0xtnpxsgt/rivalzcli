#!/bin/bash

BOLD="\033[1m"
UNDERLINE="\033[4m"
DARK_YELLOW="\033[0;33m"
CYAN="\033[0;36m"
RESET="\033[0;32m"

execute_with_prompt() {
    echo -e "${BOLD}Executing: $1${RESET}"
    if eval "$1"; then
        echo "Command executed successfully."
    else
        echo -e "${BOLD}${DARK_YELLOW}Error executing command: $1${RESET}"
        exit 1
    fi
}

echo -e "${BOLD}${UNDERLINE}${DARK_YELLOW}Requirement for running Rivalz rClient${RESET}"
echo
echo -e "${BOLD}${DARK_YELLOW}Operating System : Ubuntu 22.04${RESET}"
echo -e "${BOLD}${DARK_YELLOW}CPU : Min of 4 cores.${RESET}"
echo -e "${BOLD}${DARK_YELLOW}RAM : 4 GB.${RESET}"
echo -e "${BOLD}${DARK_YELLOW}Storage : SSD or NVMe with at least 50GB of space.${RESET}"
echo

echo -e "${CYAN}Do you meet all of these requirements? (Y/N):${RESET}"
read -p "" response
echo

if [[ ! "$response" =~ ^[Yy]$ ]]; then
    echo -e "${BOLD}${DARK_YELLOW}Error: You do not meet the required specifications. Exiting...${RESET}"
    echo
    exit 1
fi

echo -e "${BOLD}${DARK_YELLOW}Updating system dependencies...${RESET}"
execute_with_prompt "sudo apt update -y && sudo apt upgrade -y"
echo

echo -e "${BOLD}${DARK_YELLOW}Installing curl...${RESET}"
execute_with_prompt "sudo apt install -y curl"
echo

echo -e "${BOLD}${DARK_YELLOW}Installing Curl NodeJs...${RESET}"
execute_with_prompt "curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -"
echo

echo -e "${BOLD}${DARK_YELLOW}Installing NodeJs...${RESET}"
execute_with_prompt 'sudo apt install -y nodejs'
echo
execute_with_prompt 'node --version'
echo

echo -e "${BOLD}${DARK_YELLOW}Installing Rivalz...${RESET}"
execute_with_prompt 'sudo npm i -g rivalz-node-cli@2.4.0'
echo

echo -e "${BOLD}${DARK_YELLOW}Running your Cli Rivalz...${RESET}"
execute_with_prompt 'sudo rivalz run'
echo

echo "${BOLD}${DARK_YELLOW}Follow me on Discord https://discord.gg/QTAqpuRDhP for one click node run guides !!${RESET}"
echo

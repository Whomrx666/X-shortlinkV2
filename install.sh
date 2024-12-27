#!/bin/bash
clear
echo -e "\033[1;34m=============================================\033[0m"
echo -e "\033[1;36m       X-shortlinkV2 Installer            \033[0m"
echo -e "\033[1;32m           Created by Mr.X          \033[0m"
echo -e "\033[1;34m=============================================\033[0m"
echo ""
echo -e "\033[1;33mChecking if Python 3 is installed...\033[0m"
if ! command -v python3 &> /dev/null
then
    echo -e "\033[1;31mPython 3 is not installed. Please install Python 3 first.\033[0m"
    exit 1
fi
echo -e "\033[1;33mChecking if pip is installed...\033[0m"
if ! command -v pip3 &> /dev/null
then
    echo -e "\033[1;31mpip3 is not installed. Installing pip3...\033[0m"
    sudo apt-get install python3-pip -y
fi
echo -e "\033[1;33mInstalling required Python libraries...\033[0m"
pip3 install requests rich
if [ $? -ne 0 ]; then
    echo -e "\033[1;31mFailed to install libraries using pip3. Trying alternative installation...\033[0m"
    sudo apt-get update
    sudo apt-get install python3-requests python3-rich -y
fi
if [ $? -eq 0 ]; then
    echo -e "\033[1;32mAll dependencies installed successfully!\033[0m"
else
    echo -e "\033[1;31mFailed to install dependencies. Please check your network or package manager.\033[0m"
    exit 1
fi
clear
echo -e "\033[1;32m=============================================\033[0m"
echo -e "\033[1;36m     Installation Completed Successfully!  \033[0m"
echo -e "\033[1;32m=============================================\033[0m"
echo ""
echo -e "\033[1;33mStart the tool with\033[0m: \033[1;32mmake run\033[0m"
echo -e "\033[1;33mOr use direct command:\033[0m \033[1;32mpython3 X-shortlinkV2\033[0m"
echo ""
echo -e "\033[1;34m=============================================\033[0m"
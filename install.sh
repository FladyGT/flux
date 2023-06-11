RED="\e[31m"
GREEN="\e[32m"
ENDCOLOR="\e[0m"

clear
echo -e "${GREEN}Installing Proxy...${ENDCOLOR}"
sleep 1
if [ -f "flux_linux" ]; then
    echo -e "${RED}Deleting old proxy...${ENDCOLOR}"
    rm flux_linux
    sleep 1
    echo -e "${GREEN}Updating proxy...${ENDCOLOR}"
fi
wget -q https://github.com/FladyGT/flux/flux_linux
sleep 1
echo -e "${GREEN}Proxy Installed${ENDCOLOR}"
echo -e "${GREEN}Execute proxy with this command: ./flux_linux${ENDCOLOR}"
chmod +x flux_linux

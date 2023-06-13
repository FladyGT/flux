RED="\e[31m"
GREEN="\e[32m"
ENDCOLOR="\e[0m"

clear
echo -e "${GREEN}Installing Proxy...${ENDCOLOR}"
sleep 1
if [ -f "flux" ]; then
    echo -e "${RED}Deleting old proxy...${ENDCOLOR}"
    rm flux
    sleep 1
    echo -e "${GREEN}Updating proxy...${ENDCOLOR}"
fi
wget -q https://github.com/FladyGT/flux/raw/main/flux
sleep 1
echo -e "${GREEN}Proxy Installed${ENDCOLOR}"
echo -e "${GREEN}Execute proxy with this command: ./flux${ENDCOLOR}"
chmod +x flux
